# Android SDK default rules
-keep class android.support.** { *; }
-keep class androidx.** { *; }

# OkHttp (networking)
-dontwarn okhttp3.**
-keep class okhttp3.** { *; }
-keep interface okhttp3.** { *; }

# Retrofit (networking and serialization)
-dontwarn retrofit2.**
-keep class retrofit2.** { *; }
-keep interface retrofit2.** { *; }

# Gson (JSON serialization)
-keep class com.google.gson.** { *; }
-dontwarn com.google.gson.**

# WebView JS interface (optional)
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Preserve Kotlin Metadata
-keep class kotlin.Metadata { *; }
-dontwarn kotlin.**

# Keep all annotations
-keepattributes *Annotation*

# Application entry point
-keep class com.gitnova.app.MainActivity { *; }
