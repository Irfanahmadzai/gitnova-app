# ProGuard rules for GITNova
-dontwarn okhttp3.**
-keep class okhttp3.** { *; }
-keep interface okhttp3.** { *; }

# Keep application classes
-keep class com.yourpackage.** { *; }

# If you're using Retrofit or Gson:
-keepattributes Signature
-keepattributes *Annotation*

# For Kotlin metadata
-keep class kotlin.Metadata { *; }

# Keep UI
-keep class android.support.** { *; }
-keep class androidx.** { *; }

# Optional for WebView JS interface
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#    public *;
#}
