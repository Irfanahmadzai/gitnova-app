# Preserve OkHttp classes
-dontwarn okhttp3.**
-keep class okhttp3.** { *; }
-keep interface okhttp3.** { *; }

# Preserve Retrofit (optional)
-dontwarn retrofit2.**
-keep class retrofit2.** { *; }

# Preserve model classes
-keepclassmembers class * {
    @com.google.gson.annotations.SerializedName <fields>;
}

# Enable shrinking and obfuscation
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider

# Preserve custom views
-keep public class * extends android.view.View {
    public <init>(android.content.Context);
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
}
