# =====================
# Android SDK Rules
# =====================
-keep class android.support.** { *; }
-keep class androidx.** { *; }

# =====================
# Retrofit + OkHttp
# =====================
-dontwarn okhttp3.**
-dontwarn retrofit2.**
-keep class okhttp3.** { *; }
-keep interface okhttp3.** { *; }
-keep class retrofit2.** { *; }
-keep interface retrofit2.** { *; }

# =====================
# Gson
# =====================
-keep class com.google.gson.** { *; }
-dontwarn com.google.gson.**
-keepattributes Signature
-keepattributes *Annotation*
-keep @interface com.google.gson.annotations.SerializedName

# =====================
# WebView JS Interface (optional)
# Uncomment if using WebView + JS
# -keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
# }

# =====================
# Kotlin Metadata
# =====================
-keep class kotlin.Metadata { *; }
-dontwarn kotlin.**

# =====================
# Lifecycle + ViewModel
# =====================
-keep class androidx.lifecycle.ViewModel { *; }

# =====================
# App Entry Points
# =====================
-keep class com.gitnova.app.** { *; }

# =====================
# Javax annotations (required for some libs)
# =====================
-dontwarn javax.annotation.**
-keep class javax.annotation.** { *; }
