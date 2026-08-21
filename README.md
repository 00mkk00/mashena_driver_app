# 🚖 Mashena Driver App

[![Flutter](https://img.shields.io/badge/Flutter-3.10%2B-blue.svg?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.0%2B-0175C2.svg?logo=dart)](https://dart.dev)
[![Architecture](https://img.shields.io/badge/Architecture-Clean%20Architecture-brightgreen.svg)]()
[![State Management](https://img.shields.io/badge/State%20Management-Bloc%2FCubit-blueviolet.svg)](https://bloclibrary.dev)
[![License](https://img.shields.io/badge/License-Private-red.svg)]()

**Mashena Driver App** is a real-time, cross-platform mobile application designed for drivers in the Mashena ride-hailing and transportation network. Built with **Flutter**, **Clean Architecture**, and **BLoC/Cubit**, it provides drivers with seamless live ride matching, interactive map navigation, instant socket communications, digital wallet management, and comprehensive document verification.

---

## 📑 Table of Contents

- [Features](#-features)
- [Architecture & Folder Structure](#-architecture--folder-structure)
- [Tech Stack & Dependencies](#-tech-stack--dependencies)
- [Prerequisites](#-prerequisites)
- [Getting Started](#-getting-started)
- [Environment Configuration](#-environment-configuration)
- [Code Generation & Localization](#-code-generation--localization)
- [Running & Building the App](#-running--building-the-app)
- [Push Notifications & Firebase](#-push-notifications--firebase)

---

## 🌟 Features

### 1. Authentication & Onboarding
- **Phone & OTP Verification**: Fast and secure driver authentication using phone numbers and SMS OTP via [Pinput](https://pub.dev/packages/pinput).
- **Driver Registration & Profile Setup**: Seamless onboarding flow capturing personal and vehicle details.
- **Document Verification Flow**: Upload and review legal driver documents (driver's license, vehicle registration, ID) with status tracking (Approved, Pending, Rejected).

### 2. Real-Time Ride Dispatch & Management
- **Instant Ride Offers**: WebSocket integration via [Socket.IO](https://pub.dev/packages/socket_io_client) for receiving instantaneous ride requests and counter-offers.
- **Interactive Trip Lifecycle**: Accept/reject offers, navigate to pickup, confirm passenger pickup, manage multi-stop trips, and complete rides.
- **Live Location Tracking**: Continuous GPS driver location updates powered by [Geolocator](https://pub.dev/packages/geolocator).

### 3. Interactive Maps & Navigation
- **OpenStreetMap & Flutter Map**: Responsive, lightweight vector map rendering using [flutter_map](https://pub.dev/packages/flutter_map) and [latlong2](https://pub.dev/packages/latlong2).
- **Geocoding & Route Visualization**: Pickup, drop-off, and stopover waypoint markers with live distance/route calculations.

### 4. Wallet & Financial Insights
- **Driver Earnings Dashboard**: Real-time revenue overview, daily/weekly breakdown, and balance tracking.
- **Transaction Logs**: Detailed history of completed trips, commissions, and payout transactions.

### 5. Ride History & Trip Details
- Detailed archive of past rides, including pickup/destination points, stops, timestamps, fare calculations, and client details.

### 6. Notifications & Alerts
- **Firebase Cloud Messaging (FCM)**: Push notification support for background and terminated app states.
- **In-App Local Notifications**: Foreground alerts using [flutter_local_notifications](https://pub.dev/packages/flutter_local_notifications).

### 7. Multi-Language & RTL Support
- Full localization support for **Arabic (العربية)** and **English (en)** with seamless RTL/LTR layout transitions.

---

## 🏗 Architecture & Folder Structure

The project strictly follows **Clean Architecture** principles and is modularized by feature.

```text
lib/
├── app/
│   ├── config/              # App environment config & global constants
│   ├── di/                  # Dependency Injection (GetIt & Injectable)
│   ├── router/              # Declarative routing with GoRouter
│   └── app.dart             # Root MaterialApp configuration
├── core/
│   ├── common/              # Shared entities, state classes & models
│   ├── constants/           # Colors, assets, font sizes, API endpoints
│   ├── enums/               # Global enums (RideStatus, AuthStatus, etc.)
│   ├── errors/              # Custom exceptions & failure handling
│   ├── helper_functions/    # UI & math helper utilities
│   ├── l10n/                # Localization arb files & generated delegates
│   ├── network/             # Dio client, interceptors, TokenManager
│   ├── services/            # Background & platform services (FCM, Geocoding)
│   ├── storage/             # Secure storage & SharedPreferences wrappers
│   ├── theme/               # Light/Dark themes and color palettes
│   └── widgets/             # Reusable UI components & custom buttons
├── feature/
│   ├── auth/                # Login, Signup, OTP, Document Upload
│   │   ├── data/            # Data sources, DTOs & repositories
│   │   ├── domain/          # Entities & UseCases
│   │   └── presentation/    # Cubits, UI Views & Widgets
│   ├── home/                # Active map, Ride requests, Trip lifecycle
│   │   ├── data/            # Socket services, ride repositories
│   │   ├── domain/          # Ride entities & use cases
│   │   └── presentation/    # MapCubit, SocketCubit, Home views & cards
│   ├── notification/        # Notifications list & handling
│   ├── onboarding/          # App intro slides & onboarding flow
│   ├── settings/            # Language switcher, profile settings & preferences
│   ├── shared/              # Shared feature widgets
│   └── splash/              # Splash screen & initial auth check
├── firebase_options.dart    # Firebase CLI generated configuration
└── main.dart                # Application entry point
```

---

## 🛠 Tech Stack & Dependencies

| Category | Technology / Package |
| :--- | :--- |
| **Framework** | [Flutter](https://flutter.dev) (SDK `^3.10.7`) |
| **State Management** | [flutter_bloc](https://pub.dev/packages/flutter_bloc) / [bloc](https://pub.dev/packages/bloc) |
| **Routing** | [go_router](https://pub.dev/packages/go_router) |
| **Dependency Injection**| [get_it](https://pub.dev/packages/get_it) |
| **Networking** | [dio](https://pub.dev/packages/dio), [connectivity_plus](https://pub.dev/packages/connectivity_plus) |
| **Real-time WebSockets**| [socket_io_client](https://pub.dev/packages/socket_io_client) |
| **Maps & Location** | [flutter_map](https://pub.dev/packages/flutter_map), [latlong2](https://pub.dev/packages/latlong2), [geolocator](https://pub.dev/packages/geolocator) |
| **Push Notifications** | [firebase_core](https://pub.dev/packages/firebase_core), [firebase_messaging](https://pub.dev/packages/firebase_messaging), [flutter_local_notifications](https://pub.dev/packages/flutter_local_notifications) |
| **Code Generation** | [freezed](https://pub.dev/packages/freezed), [json_serializable](https://pub.dev/packages/json_serializable), [build_runner](https://pub.dev/packages/build_runner) |
| **Responsive UI & Styles** | [flutter_screenutil](https://pub.dev/packages/flutter_screenutil), [google_fonts](https://pub.dev/packages/google_fonts), [flutter_svg](https://pub.dev/packages/flutter_svg), [shimmer](https://pub.dev/packages/shimmer) |
| **Functional Programming**| [dartz](https://pub.dev/packages/dartz) (Either / Option) |
| **Security & Storage** | [shared_preferences](https://pub.dev/packages/shared_preferences), [flutter_dotenv](https://pub.dev/packages/flutter_dotenv) |

---

## 📋 Prerequisites

Before running the application, make sure you have the following installed:

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (version 3.10 or higher)
- [Dart SDK](https://dart.dev/get-dart) (version 3.0 or higher)
- [Android Studio](https://developer.android.com/studio) / Xcode (for iOS builds)
- [Git](https://git-scm.com/)

---

## 🚀 Getting Started

### 1. Clone the repository
```bash
git clone https://github.com/00mkk00/mashena_driver_app.git
cd mashena_driver_app
```

### 2. Install dependencies
```bash
flutter pub get
```

---

## 🔐 Environment Configuration

Create a `.env` file in the root of the project (or verify the existing `.env` file):

```env
BASE_URL=https://api-mashena.wasta-jobs.com/api
SOCKET_URL=https://api-mashena.wasta-jobs.com/
```

> **Note**: For local backend development, update `BASE_URL` and `SOCKET_URL` to your local machine's IP (e.g., `http://192.168.1.X:3000/api`).

---

## ⚙️ Code Generation & Localization

### Run Code Generation (`freezed` & `json_serializable`)
Whenever you add or modify entities, data models, or state classes:
```bash
# Run once
dart run build_runner build --delete-conflicting-outputs

# Or watch for changes during active development
dart run build_runner watch --delete-conflicting-outputs
```

### Generate Localization Files (`l10n`)
Whenever you update translation strings in `lib/core/l10n/app_en.arb` or `lib/core/l10n/app_ar.arb`:
```bash
flutter gen-l10n
```

### Generate App Launcher Icons
```bash
dart run flutter_launcher_icons
```

---

## 📱 Running & Building the App

### Running in Debug Mode
```bash
# Run on connected device or emulator
flutter run

# Run with a specific target device
flutter run -d <device_id>
```

### Building for Production

#### Android
```bash
# Build APK
flutter build apk --release

# Build App Bundle (for Google Play Store)
flutter build appbundle --release
```

#### iOS
```bash
# Build iOS IPA (Requires macOS & Xcode)
flutter build ipa --release
```

---

## 🔔 Push Notifications & Firebase

1. **Firebase Configuration**: The project uses `firebase_options.dart` generated via FlutterFire CLI.
2. **Android**: Ensure `android/app/google-services.json` is configured.
3. **iOS**: Ensure `ios/Runner/GoogleService-Info.plist` is registered and APNs certificates are configured in the Apple Developer portal.

---

## 🤝 Contributing & Code Guidelines

1. **Architecture**: Keep business logic inside UseCases and Cubits; keep UI dumb and reactive.
2. **Naming Conventions**: Use `snake_case` for file names and `PascalCase` for classes.
3. **Error Handling**: Return `Either<Failure, T>` using `dartz` across repositories and use cases.
4. **Strings**: Never hardcode user-facing strings; always use `AppLocalizations.of(context)` / `context.l10n`.
