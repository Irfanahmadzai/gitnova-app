# =====================
# Android SDK
# =====================
-keep class android.support.** { *; }
-keep class androidx.** { *; }

# =====================
# Retrofit + OkHttp
# =====================
-dontwarn okhttp3.**
-keep class okhttp3.** { *; }
-keep interface okhttp3.** { *; }

-dontwarn retrofit2.**
-keep class retrofit2.** { *; }
-keep interface retrofit2.** { *; }

# =====================
# Gson
# =====================
-dontwarn com.google.gson.**
-keep class com.google.gson.** { *; }
-keepclassmembers class * {
    @com.google.gson.annotations.SerializedName <fields>;
}
-keepattributes Signature
-keepattributes *Annotation*

# =====================
# Lifecycle, ViewModel, Kotlin Metadata
# =====================
-keep class androidx.lifecycle.ViewModel { *; }
-keep class kotlin.Metadata { *; }
-dontwarn kotlin.**

# =====================
# Javax annotations (required)
# =====================
-dontwarn javax.annotation.**
-keep class javax.annotation.** { *; }

# =====================
# Activities, Services, Views
# =====================
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider

# =====================
# Custom Views
# =====================
-keep public class * extends android.view.View {
    public <init>(android.content.Context);
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
}

# =====================
# App-specific classes
# =====================
-keep class com.gitnova.app.** { *; }
