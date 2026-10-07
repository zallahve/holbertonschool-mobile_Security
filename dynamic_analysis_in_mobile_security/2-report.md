# Task 2 — Android Cryptography Challenge: Intercepting and Decrypting Data

## Objective
Analyze the app's cryptographic implementation, recover the key, and decrypt the
hidden flag.

- Package: com.holberton.task3
- APK: app-release-task2.apk

## Tools
Burp Suite / mitmproxy (traffic interception), APKTool, jadx (decompilation).

## Step 1 — Set up interception
Routed the emulator through an intercepting proxy and installed the proxy CA as a
system certificate so TLS could be read:

    # mitmproxy
    mitmproxy --mode regular --listen-port 8080
    adb shell settings put global http_proxy 10.0.2.2:8080

## Step 2 — Observe traffic
With the proxy live, the app did not perform the expected server round-trip to
fetch the flag — the decryption happens entirely on-device. This pointed the
analysis at the APK itself rather than the network, so the next step was static
decompilation.

## Step 3 — Decompile the APK
    jadx --no-res -d out app-release-task2.apk
    # key class: com/holberton/task3/MainActivityKt.java

The crypto is self-contained in three functions:

    public static String performslowDecryption() {
        byte[] decode = Base64.getDecoder().decode(
            "cVZaW1dDQllZTFdRW1xeUlBbX21CWFtHalRZXUJFRFhNX1ZcbllGQ15cUUNSRFpcVks=");
        return xorDecrypt(new String(decode, UTF_8), String.valueOf(slowRecursive(150)));
    }

    public static long slowRecursive(int i) {
        return i <= 1 ? i : slowRecursive(i-1) + slowRecursive(i-2);   // Fibonacci
    }

    public static String xorDecrypt(String enc, String key) {
        // result[i] = key[i % key.length] XOR enc[i]
    }

## Step 4 — Analyze the scheme
- The ciphertext is a Base64 blob.
- The key is the decimal string of slowRecursive(150) — i.e. Fibonacci(150).
- Decryption is a repeating-key XOR of the key digits against the decoded bytes.
- Fibonacci(150) = 9969216677189303386214405760200 (31-digit key, applied cyclically).

The function name "slow_computation" is the hint: naive recursive Fibonacci of
150 is astronomically slow, but the value itself is the key.

## Step 5 — Decrypt
    import base64
    enc = base64.b64decode(
        "cVZaW1dDQllZTFdRW1xeUlBbX21CWFtHalRZXUJFRFhNX1ZcbllGQ15cUUNSRFpcVks=").decode()
    a, b = 0, 1
    for _ in range(150): a, b = b, a + b
    key = str(a)   # 9969216677189303386214405760200
    print(''.join(chr(ord(key[i % len(key)]) ^ ord(enc[i])) for i in range(len(enc))))

## Flag
Holberton{fibonacci_slow_computation_optimization}

## Challenges faced
- Interception showed no server traffic; the "remote communication" framing was a
  misdirection — the crypto is local, so analysis had to pivot to the APK.
- The key derives from Fibonacci(150); the decimal string of the full value (not a
  truncated/overflowed 64-bit long) is what correctly decrypts the ciphertext.

## Summary
The flag is produced on-device by XOR-decrypting a Base64 blob with the decimal
digits of Fibonacci(150). Decompiling the APK exposed the ciphertext, key
derivation, and XOR routine, which were reproduced offline to recover the flag.
