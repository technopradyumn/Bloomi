# R8 and ProGuard Keep Rules for Bloomi

# Flutter Engine & Embedding Keep Rules
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.embedding.** { *; }
-keep class io.flutter.provider.** { *; }
-keep class io.flutter.plugins.** { *; }

# Flutter In-App Purchase (Google Play Billing)
-keep class com.android.vending.billing.** { *; }
-keep class com.google.android.gms.internal.play_billing.** { *; }

# Flutter Local Notifications
-keep class com.dexterous.flutterlocalnotifications.** { *; }

# SQLite & Drift Database Native Bindings
-keep class org.sqlite.** { *; }
-keep class com.sqlite.database.** { *; }

# Health Connect API & Sensors
-keep class androidx.health.connect.client.** { *; }

# Bloomi App Native Widgets & Providers
-keep class com.bloomi.app.bloomi.** { *; }

# Preserve line numbers and source files for release crash stacktraces
-renamesourcefileattribute SourceFile
-keepattributes SourceFile,LineNumberTable,Signature,InnerClasses,EnclosingMethod,Exceptions,Annotation

# Flutter Play Core / Deferred Components (suppress optional Play Core classes if not using dynamic feature modules)
-dontwarn com.google.android.play.core.**

