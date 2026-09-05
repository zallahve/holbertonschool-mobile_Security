# Static Analysis in Mobile Security

## Description

This project focuses on static analysis techniques used to analyze Android applications without executing them.

The objective is to inspect an APK file, understand its structure, decompile its bytecode, analyze application resources and configuration files, and reverse engineer application logic to identify hidden information and security issues.

## Learning Objectives

By completing this project, I will be able to:

- Analyze Android APK files using static analysis techniques.
- Inspect Android application resources and manifest files.
- Decompile APK bytecode into readable Java and Smali code.
- Identify obfuscated strings and application logic.
- Analyze native libraries and compiled application components.
- Use reverse engineering tools such as JADX, APKTool, Ghidra, and IDA.
- Identify potential security vulnerabilities in Android applications.
- Recover hidden values and flags from application logic.

## Tools

The main tools used in this project include:

- JADX
- APKTool
- Ghidra
- IDA Pro
- Frida
- GDB
- Android Studio
- Python
- Kali Linux

## Environment

All analysis is performed locally in a controlled Kali Linux environment.

Online APK analysis services are not used.

## Task 0 - Android App Security

The objective of this task is to statically analyze the provided APK and determine the correct input expected by the application.

The APK will be examined using tools such as JADX and APKTool.

The recovered flag will be stored in:

```text
0-flag.txt


## Task 1 - Communication Between Device and Backend

The APK was decompiled using JADX and the application code was identified under:

`com.holberton.task2`

The application collects the following Android device information:

- Device model
- Device manufacturer
- Android version
- SDK version

The values are stored in a map and formatted as JSON before being transmitted using OkHttp.

The application builds an HTTP POST request using:

- `OkHttpClient`
- `RequestBody`
- `Request.Builder`
- `enqueue()` for asynchronous request handling

The backend domain was obfuscated using two transformations.

The hardcoded value:

`DmVhMT9gLJyhpl5upzHhMTShM2Ilo3Im`

is first decoded using ROT13:

`QzIuZG9tYWlucy5hcmUuZGFuZ2Vyb3Vz`

The resulting string is then Base64-decoded to:

`C2.domains.are.dangerous`

The application constructs the final URL by prepending `https://`.

A security concern identified during analysis is the collection and transmission of device information to an obfuscated remote domain. Obfuscating a destination makes the application's network behavior less transparent and can make security review more difficult.
