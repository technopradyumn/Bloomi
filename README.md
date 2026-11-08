# Bloomi - Mindful Health & Food Tracker 🌸

Bloomi is a cute, colorful, animated, offline-first health and nutrition tracking application built with Flutter, Clean Architecture, and pure BLoC state management.

---

## 🏗️ Architecture

The project follows strict **Clean Architecture with the Repository Pattern**, organized **feature-first**:

```
lib/
├── main.dart
├── app/                       # App widget, central routing (GoRouter), DI (GetIt)
├── core/
│   ├── constants/             # Design tokens, color palette, spacing
│   ├── database/              # Central Drift (SQLite) database & schema
│   ├── errors/                # Failures & exceptions
│   ├── network/               # Central HTTP client
│   ├── theme/                 # Light/Dark typography & theme
│   ├── utils/                 # Pure domain calculators (BMR, TDEE, macros)
│   └── widgets/               # Reusable atomic design system widgets
└── features/
    ├── auth/                  # Google & Apple authentication
    ├── dev/                   # Component gallery test harness
    ├── food/                  # Food diary, barcode scanning, custom recipes, water tracker
    ├── health/                # Vitals, Health Connect, sleep, weight, workout logs
    ├── home/                  # Dashboard overview, mascot animations, quick-add
    ├── insights/              # Weekly analytics, streaks & badges
    ├── onboarding/            # Profile creation & target calculations
    ├── plan/                  # Daily & weekly meal plans, goals
    ├── profile/               # User profile management
    ├── settings/              # Reminders, Drive backup, units & language, paywall
    ├── splash/                # Animated launch & routing
    └── surroundings/          # Open-Meteo weather, UV index & air quality
```

- **Dependency Rule**: `presentation → domain ← data`. The domain layer has zero dependencies on Flutter, Drift, or network libraries.
- **State Management**: Pure BLoC (`flutter_bloc` + `equatable`) with `part`/`part of` conventions.
- **Local Database**: Drift (SQLite) with reactive streams (`watch()`) as the single source of truth.
- **Dependency Injection**: Centralized service locator with `get_it`.

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (stable, 3.24+)
- Dart SDK (3.5+)

### Installation
```bash
# Clone the repository
git clone <repo-url>
cd Bloomi

# Install dependencies
flutter pub get

# Run code analysis
flutter analyze

# Run unit and design system tests
flutter test

# Launch the app
flutter run
```
