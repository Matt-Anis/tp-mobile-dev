# Mobile Dev Projects (Flutter)

This repository contains two Flutter projects:
- `tp1/exo1`
- `tp1/exo2`

If the projects do not run after cloning, it is usually a local setup/dependency issue.

## 1) Prerequisites

Install and verify Flutter on your machine:

```bash
flutter --version
flutter doctor
```

Fix all required items reported by `flutter doctor` before continuing.

## 2) Install dependencies (required)

Run these commands from the repository root:

```bash
cd tp1/exo1
flutter pub get

cd ../exo2
flutter pub get
```

## 3) Run a project

Example (Windows desktop):

```bash
cd tp1/exo1
flutter run -d windows
```

Or for web:

```bash
flutter run -d chrome
```

## 4) Common issues

- **`pub get failed`**: Check internet connection and run again.
- **Flutter not recognized**: Add Flutter to PATH and restart terminal.
- **Analyzer returns warnings/info**: These do not always block app execution.
- **No device found**: Start an emulator or run on web/desktop target.

## 5) exo1 asset note

`exo1` expects an image in `assets/images/`.
If needed, update the file name used in `tp1/exo1/lib/main.dart` to match your image.

## Quick reset commands

If something is still broken inside a project folder:

```bash
flutter clean
flutter pub get
flutter run -d windows
```
