# Task 1 — Hooking Native Functions in Android

## Objective
Hook a native (JNI) function in the target app and recover the decrypted flag
computed in native code but never shown in the UI.

- Package: com.holberton.task2_1d
- Native library: libnative-lib.so
- Target native function: getSecretMessage

## Tools
Frida, ADB, Objection, Android Studio (emulator).

## Step 1 — Analyze app behavior
    adb install task1_d.apk
    adb shell monkey -p com.holberton.task2_1d -c android.intent.category.LAUNCHER 1
The app calls a native method but does not display its result, so the flag must
be read at runtime from the native layer.

## Step 2 — Identify the native library and export
    nm -D lib/arm64-v8a/libnative-lib.so | grep -i secret
    # 00000000000007d4 T Java_com_holberton_task2_1d_MainActivity_getSecretMessage
The JNI symbol maps to MainActivity.getSecretMessage().

## Step 3 — Hook the native function with Frida
    // hook.js
    Java.perform(function () {
        var sym  = "Java_com_holberton_task2_1d_MainActivity_getSecretMessage";
        var addr = Module.getExportByName("libnative-lib.so", sym);
        Interceptor.attach(addr, {
            onLeave: function (retval) {
                var env   = Java.vm.getEnv();
                var chars = env.getStringUtfChars(retval, null);
                console.log("[+] getSecretMessage() -> " + chars.readUtf8String());
                env.releaseStringUtfChars(retval, chars);
            }
        });
    });

    frida -U -f com.holberton.task2_1d -l hook.js
    frida -U -n com.holberton.task2_1d -i

Quicker alternative — call the Java wrapper directly:
    Java.perform(function () {
        Java.choose("com.holberton.task2_1d.MainActivity", {
            onMatch: function (i) { console.log("[+] flag = " + i.getSecretMessage()); },
            onComplete: function () {}
        });
    });

## Step 4 — How the native code builds the flag
Static analysis of getSecretMessage confirms the hooked output:
1. A 48-byte obfuscated buffer is copied from .rodata (offset 0x570).
2. For each index i, a per-position key comes from a helper exported as lit(n),
   which disassembles to an iterative Fibonacci function (0,1,1,2,3,5,8,13,21,34).
3. Each byte is decrypted as: plain[i] = cipher[i] - lit(i % 10).

    cipher = bytes.fromhex(
      "48706d6468777c7c839d6e62756b796a677584916b6a6f69626e7b6c83915f65"
      "6a68696a7a7283965f6275616471748a")
    fib = [0,1,1,2,3,5,8,13,21,34]
    print(bytes((cipher[i]-fib[i%10]) & 0xff for i in range(len(cipher))).decode())

## Flag
Holberton{native_hooking_is_no_different_at_all}

## Summary
The flag is generated in native code and discarded by the UI. Locating the
getSecretMessage JNI export in libnative-lib.so and attaching Frida to read its
return value (or calling the Java wrapper via Java.choose) captures the
decrypted string at runtime; static analysis of the Fibonacci-keyed subtraction
cipher confirms it.
