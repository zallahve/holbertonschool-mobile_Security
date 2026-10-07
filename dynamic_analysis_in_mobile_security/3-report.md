# Task 3 — Android Security Challenge: Revealing Hidden Functions

## Objective
Locate a hidden function that decrypts a secret flag but is never called during
normal execution, invoke it dynamically, and reverse its encoding.

- Package: com.holberton.task4_d
- APK: task3_d.apk

## Tools
jadx / APKTool (decompilation), Frida and Objection (runtime hooking), Python
(offline reversing).

## Step 1 — Decompile and inspect structure
    jadx --no-res -d out task3_d.apk

MainActivity exposes decodedFlag state and a retrieveEncryptedData() coroutine,
but the UI only ever renders an empty/placeholder string via Greeting(). The
actual decryption is not wired into that path.

## Step 2 — Identify the hidden method
In com/holberton/task4_d/MainActivityKt.java there is a deliberately
odd-named private static method that is never invoked by the running app:

    private static final void aBcDeFgHiJkLmNoPqRsTuVwXyZ123456(Function1<String,Unit> cb) {
        byte[] decode = Base64.decode("8CP4zSyn62t78lwwc383rxcgtv/UiMv3Pw+Mfw12LzXvorIpBypNK/oB7XvWNV0oWfoX", 0);
        // per-byte transform (see Step 4), result handed to cb.invoke(flag)
    }

It takes a callback and passes the decoded flag to it — this is the concealed
function to invoke.

## Step 3 — Invoke it with Frida
The method is private and takes a Kotlin Function1. Register a callback class and
call the method directly (Frida ignores the private modifier):

    // hook.js
    Java.perform(function () {
        var Cb = Java.registerClass({
            name: "com.hbx.Cb",
            implements: [Java.use("kotlin.jvm.functions.Function1")],
            methods: { invoke: function (s) { console.log("[+] FLAG = " + s); return null; } }
        });
        var K = Java.use("com.holberton.task4_d.MainActivityKt");
        K.aBcDeFgHiJkLmNoPqRsTuVwXyZ123456(Cb.$new());
    });

    frida -U -f com.holberton.task4_d -l hook.js --no-pause

Objection can also list and reach the method:

    objection -g com.holberton.task4_d explore
    # android hooking list class_methods com.holberton.task4_d.MainActivityKt

## Step 4 — Understand and reverse the encoding
For each byte at index i (v = byte & 0xFF) the function computes:
1. x = v XOR 19
2. r = rotate-right-by-2 of x over 8 bits:  ((x >> 2) | (x << 6)) & 0xFF
3. t = (r - 3*i) mod 256   (kept non-negative)
4. char = (t * 183) mod 256

183 is the modular inverse-style multiplier applied last. Reproduced offline:

    import base64
    data = base64.b64decode("8CP4zSyn62t78lwwc383rxcgtv/UiMv3Pw+Mfw12LzXvorIpBypNK/oB7XvWNV0oWfoX")
    out = []
    for i, b in enumerate(data):
        x = (b & 0xFF) ^ 19
        r = ((x >> 2) | (x << 6)) & 0xFF
        t = (r - 3*i) % 256
        out.append(chr((t * 183) % 256))
    print("".join(out))

## Flag
Holberton{calling_uncalled_functions_is_now_known!}

## Challenges faced
- The method is never referenced on any live code path, so it cannot be reached
  through the UI; it has to be called explicitly at runtime.
- It is private and takes a Kotlin Function1, so invoking it via Frida required
  registering a callback class to receive the decoded result.
- The encoding chains four reversible per-index operations (XOR, 8-bit rotate,
  index-dependent subtraction, modular multiply), which had to be reproduced
  exactly to decode the Base64 payload.

## Summary
Decompilation revealed a concealed, odd-named static method that decodes an
embedded Base64 payload through a multi-step per-byte transform and returns the
flag via a callback. Invoking it dynamically with Frida (or reproducing the
transform offline) yields the hidden flag.
