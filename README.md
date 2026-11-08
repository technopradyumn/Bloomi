<div align="center">

# 🌸 Bloomi
### Mindful Health, Nutrition & Wellness Companion

*A delightfully cute, animated, and offline-first health tracking application engineered with Flutter, Clean Architecture, and pure BLoC state management.*

[![Flutter](https://img.shields.io/badge/Flutter-3.24+-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.5+-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![Architecture](https://img.shields.io/badge/Architecture-Clean%20%2B%20BLoC-blueviolet?style=for-the-badge)](https://bloclibrary.dev)
[![Database](https://img.shields.io/badge/Database-Drift%20%28SQLite%29-003B57?style=for-the-badge&logo=sqlite&logoColor=white)](https://drift.simonbinder.eu)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS-3DDC84?style=for-the-badge&logo=android&logoColor=white)](https://android.com)
[![Tests](https://img.shields.io/badge/Tests-63%2F63%20Passing-brightgreen?style=for-the-badge&logo=checkmarx&logoColor=white)]()
[![Code Quality](https://img.shields.io/badge/Analyze-0%20Issues-success?style=for-the-badge)]()

</div>

---

## 🌟 Key Highlights

- **📶 100% Offline-First**: Reactive Drift (SQLite) database acts as the single source of truth. All metrics, logs, and food entries function seamlessly with zero internet connectivity.
- **🎨 13 Custom 60 FPS Health Metric Animations**: Hardware-accelerated Canvas & `CustomPainter` loops with battery-saving lifecycle hooks and accessibility **Reduce Motion** support.
- **🔔 Real System Notifications & Unique Sounds**: Dedicated Android notification channels for each metric type with custom audio tones (`res/raw`), interactive action buttons ("Log 250ml", "Snooze"), and timezone-aware exact scheduling.
- **↩️ Smart Notification & Milestone Center**: Staged 4.5s dismissals with instant single-item and "Clear All" **Undo** capabilities that preserve database integrity.
- **📱 Native Android Home-Screen Widget**: Live desktop widget synced via `AppWidgetProvider` with light/dark adaptive theme support and real-time step/hydration updates.
- **🥗 Nutrition & Food Diary**: Barcode scanning, custom recipe builder, dynamic macro-nutrient distribution, and daily meal planning.
- **🌦️ Environmental Surroundings**: Live hyper-local weather, UV index, and air quality metrics powered by Open-Meteo.

---

## 🎭 Animated Health Metrics

Bloomi includes dedicated 60 FPS interactive animations for all vital metrics:

| Metric | Visual Animation |
|---|---|
| **💧 Hydration** | Dual sinusoidal flowing wave with interactive dynamic liquid fill level |
| **👣 Steps** | Alternating walking footsteps along an active path |
| **❤️ Heart Rate** | Pulsing cardiac rhythm with synchronized EKG electrocardiogram wave line |
| **💤 Sleep** | Floating and fading typography drifting across moonlit clouds |
| **🔥 Active Calories** | Animated rising calorie flame with floating thermal particles |
| **🫁 Blood Oxygen ($SpO_2$)** | Orbiting oxygen bubbles with radiant saturation glow |
| **⚡ Burned Calories** | Dynamic fiery flare indicator |
| **⚖️ Weight** | Oscillating analog scale needle settling on the precise measurement |
| **🩺 Blood Pressure** | Rhythmic arterial gauge pulsing with systolic/diastolic waves |
| **🥑 Nutrition** | Macro distribution bars animating protein, carb, and healthy fat ratios |
| **🏃 Distance** | Animated pathway with dynamic runner silhouette |
| **📐 BMI** | Smooth multi-zone classification gauge needle (Underweight → Obese) |
| **🌱 Plant-Based** | Organically unfolding growing leaf with gentle sway |

> [!NOTE]
> All animators automatically pause when the app enters background states (`AppLifecycleState.paused`), respect system-level Reduce Motion accessibility toggles, and adapt seamlessly to Light and Dark themes.

---

## 🏗️ Architecture & Project Structure

Bloomi adheres to strict **Clean Architecture** with the **Repository Pattern**, structured **feature-first**:

```text
lib/
├── main.dart                          # Application entry point
├── app/                               # GoRouter routing, GetIt DI service locator
├── core/
│   ├── constants/                     # Design tokens, color palette, dimensions
│   ├── database/                      # Drift (SQLite) database, migrations & DAOs
│   ├── errors/                        # Typed domain failures & exceptions
│   ├── network/                       # Dio HTTP client & offline retry policies
│   ├── theme/                         # Light/Dark Material 3 typography & themes
│   ├── utils/                         # Calculators (BMR, TDEE, macros, BMI)
│   └── widgets/
│       ├── metric_animations/         # 13 CustomPainter animators & onboarding loops
│       ├── bloomi_overlays.dart       # Responsive dialogs & overflow-safe sheets
│       └── step_target_sheet.dart     # Adaptive target configuration sheets
├── services/
│   └── notifications/                 # FlutterLocalNotifications, channels & alarms
└── features/
    ├── auth/                          # Google & Apple biometric / OAuth sign-in
    ├── food/                          # Food diary, barcode scanning, water tracker
    ├── health/                        # Vitals, Health Connect, sleep & weight logs
    ├── home/                          # Dashboard, milestone feed & quick actions
    ├── insights/                      # Weekly trends, analytics & achievement badges
    ├── onboarding/                    # Animated profile setup & goal selection
    ├── plan/                          # Daily meal & workout plans
    ├── profile/                       # User profile & demographic preferences
    ├── settings/                      # Reminders, sound toggles, Drive backup
    └── surroundings/                  # Weather, UV index & air quality monitoring
```

### Architectural Principles
- **Dependency Flow**: `Presentation → Domain ← Data`. Domain entities and use cases have zero dependencies on Flutter UI, third-party plugins, or Drift.
- **State Management**: Pure BLoC (`flutter_bloc` + `equatable`) with unidirectional data flow.
- **Persistence**: Drift (SQLite) reactive streams (`watch()`) serve as the single source of truth across all features.

---

## 🛠️ Tech Stack & Libraries

- **Framework**: [Flutter](https://flutter.dev) (Dart 3.5+)
- **State Management**: [`flutter_bloc`](https://pub.dev/packages/flutter_bloc) & [`equatable`](https://pub.dev/packages/equatable)
- **Routing**: [`go_router`](https://pub.dev/packages/go_router) with custom slide & fade transitions
- **Local Database**: [`drift`](https://pub.dev/packages/drift) with [`sqlite3_flutter_libs`](https://pub.dev/packages/sqlite3_flutter_libs)
- **Dependency Injection**: [`get_it`](https://pub.dev/packages/get_it)
- **System Notifications**: [`flutter_local_notifications`](https://pub.dev/packages/flutter_local_notifications) & [`timezone`](https://pub.dev/packages/timezone)
- **Sensors & Hardware**: Health Connect client, pedometer, native camera barcode scanner
- **Networking**: [`dio`](https://pub.dev/packages/dio) with Open-Meteo REST APIs

---

## 🚀 Getting Started

### Prerequisites
- [Flutter SDK](https://flutter.dev/docs/get-started/install) (`3.24+` stable)
- [Android Studio](https://developer.android.com/studio) / [VS Code](https://code.visualstudio.com)
- Java 17+ (JDK 17)

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/technopradyumn/Bloomi.git
   cd Bloomi
   ```

2. **Install Flutter packages:**
   ```bash
   flutter pub get
   ```

3. **Run code generation (Drift database & models):**
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

4. **Verify static analysis:**
   ```bash
   flutter analyze
   ```

5. **Run test suite:**
   ```bash
   flutter test
   ```

6. **Launch on connected device or emulator:**
   ```bash
   flutter run
   ```

---

## 📦 Building for Production

### 1. Google Play Store Release (Android App Bundle)
To build the signed `.aab` file for Google Play Console submission:
```bash
flutter build appbundle --release
```
- **Output:** `build/app/outputs/bundle/release/app-release.aab`

### 2. Standalone Signed APK
To build a signed release APK for direct sideloading or internal distribution:
```bash
flutter build apk --release
```
- **Output:** `build/app/outputs/flutter-apk/app-release.apk`

*(Optional) Split APKs per ABI for smaller download footprints:*
```bash
flutter build apk --split-per-abi --release
```

---

## 🔒 Security & Keystore Configuration

Release builds are configured via [`android/key.properties`](file:///c:/Users/techn/Desktop/Bloomi/android/key.properties) pointing to [`android/app/upload-keystore.jks`](file:///c:/Users/techn/Desktop/Bloomi/android/app/upload-keystore.jks):

```properties
storePassword=YOUR_STORE_PASSWORD
keyPassword=YOUR_KEY_PASSWORD
keyAlias=YOUR_KEY_ALIAS
storeFile=upload-keystore.jks
```

> [!CAUTION]
> Sensitive keystores (`*.jks`, `*.keystore`) and credentials (`key.properties`) are strictly ignored in [`.gitignore`](file:///c:/Users/techn/Desktop/Bloomi/.gitignore) to protect keys from ever being leaked to version control.

---

## 🧪 Testing

Bloomi maintains high quality standards with a complete suite of unit, domain, and widget tests:

```bash
# Run all tests
flutter test

# Run tests with coverage output
flutter test --coverage
```
- **Analysis Status**: Clean (`0` errors, `0` warnings)
- **Test Suite**: `63/63` passing unit & widget test scenarios

---

## 📄 License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

<div align="center">
  <sub>Crafted with 💖 by the Bloomi Team</sub>
</div>
