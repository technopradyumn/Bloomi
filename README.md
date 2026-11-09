# 🌸 Bloomi – Friendly Health & Nutrition Tracker

<p align="center">
  <img src="assets/images/mascot.png" alt="Bloomi Mascot" width="120" />
</p>

<p align="center">
  <b>Bloomi</b> is a friendly, offline-first health, nutrition, and wellness tracking app designed to help you build healthy daily habits effortlessly. Featuring a warm, pastel-themed UI, an encouraging companion mascot, and robust privacy protections, Bloomi puts your health data entirely in your hands.
</p>

<p align="center">
  <a href="https://play.google.com/store/apps/details?id=com.bloomi.app"><img src="https://img.shields.io/badge/Google%20Play-Get%20it%20on-blue?style=for-the-badge&logo=google-play" alt="Get it on Google Play"></a>
  <img src="https://img.shields.io/badge/Platform-Android-green?style=for-the-badge&logo=android" alt="Platform">
  <img src="https://img.shields.io/badge/Framework-Flutter-blue?style=for-the-badge&logo=flutter" alt="Flutter">
  <img src="https://img.shields.io/badge/License-MIT-orange?style=for-the-badge" alt="License">
</p>

---

## ✨ Key Features

- **🥗 Nutrition & Calorie Tracking**: Log meals, track daily macronutrients (protein, carbs, fats), and monitor calorie intake with an extensive food diary.
- **💧 Hydration Management**: Easily log daily water intake and keep track of your hydration goals.
- **📊 Health & Body Overview**: Monitor your fitness progress, body metrics, and sync health data securely.
- **🌸 Friendly Companion & Milestones**: Stay motivated with your personal wellness mascot and celebrate daily streaks and milestones.
- **🔒 100% Offline-First & Private**: Your health data is stored securely on your device using local SQLite (Drift). No cloud account required, ensuring absolute data privacy.
- **🌙 Adaptive Light & Dark Mode**: Beautiful, custom-tailored themes designed for comfortable viewing at any time of day.
- **🔔 Smart Reminders & Notifications**: Gentle daily check-ins and habit reminders to keep you on track.

---

## 🛠️ Tech Stack & Architecture

Bloomi is built using modern, production-grade Flutter best practices:

- **Framework**: [Flutter](https://flutter.dev) (Dart)
- **State Management**: [Flutter BLoC (`flutter_bloc`)](https://pub.dev/packages/flutter_bloc) for predictable, testable state handling.
- **Local Database**: [Drift (`drift`)](https://pub.dev/packages/drift) (reactive SQLite wrapper for robust offline storage).
- **Routing**: [GoRouter (`go_router`)](https://pub.dev/packages/go_router) for declarative routing and deep linking.
- **Charts & Visualization**: [FL Chart (`fl_chart`)](https://pub.dev/packages/fl_chart) for smooth health statistics and progress graphs.
- **Health Integration**: [Health (`health`)](https://pub.dev/packages/health) for reading device health and fitness metrics.
- **Localization**: Multi-language support via Flutter `arb` localization.

---

## 📁 Project Structure

```text
lib/
├── core/                # Constants, themes, design system, and shared utilities
├── features/            # Feature-based modular architecture
│   ├── auth/            # Authentication & onboarding flow
│   ├── food/            # Food diary, database, and detailed nutrient tracking
│   ├── health/          # Health metrics, workouts, and body overview
│   ├── home/            # Dashboard, streak counters, and notifications
│   ├── plan/            # Daily wellness and nutrition targets
│   ├── profile/         # User profile and achievements
│   └── settings/        # App settings, theme selection, and data management
└── main.dart            # App entry point
```

---

## 🚀 Getting Started

### Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (v3.11.0 or higher)
- Android SDK / Xcode (for iOS development)
- A connected physical Android device or emulator.

### Installation & Setup

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/bloomi.git
   cd Bloomi
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Generate localization and database code (if needed):**
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Run the app:**
   ```bash
   flutter run
   ```

---

## 📱 Publishing & Release

To build a release Android App Bundle (`.aab`) for Google Play Store upload:

```bash
flutter build appbundle --release
```

The output bundle will be located at:
`build/app/outputs/bundle/release/app-release.aab`

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).
