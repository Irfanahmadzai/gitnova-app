# Retrofit
-keep class retrofit2.** { *; }
-dontwarn retrofit2.**

# OkHttp
-dontwarn okhttp3.**
-keep class okhttp3.** { *; }
-keep interface okhttp3.** { *; }

# Gson
-keep class com.google.gson.** { *; }
-dontwarn com.google.gson.**

# Glide
-keep public class * implements com.bumptech.glide.module.GlideModule
-keep public class * extends com.bumptech.glide.module.AppGlideModule
-keep class com.bumptech.glide.** { *; }
-dontwarn com.bumptech.glide.**

# Firebase (optional)
-dontwarn com.google.firebase.**
-keep class com.google.firebase.** { *; }

# General
-keepattributes *Annotation*
-keep class * extends java.lang.annotation.Annotation { *; }
-keepclasseswithmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}
