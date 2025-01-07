.class public interface abstract Lcom/google/android/gms/instantapps/Launcher;
.super Ljava/lang/Object;


# static fields
.field public static final EXTRA_DO_NOT_LAUNCH_INSTANT_APP:Ljava/lang/String; = "com.google.android.gms.instantapps.DO_NOT_LAUNCH_INSTANT_APP"

.field public static final EXTRA_IS_REFERRER_TRUSTED:Ljava/lang/String; = "com.google.android.gms.instantapps.IS_REFERRER_TRUSTED"

.field public static final EXTRA_IS_USER_CONFIRMED_LAUNCH:Ljava/lang/String; = "com.google.android.gms.instantapps.IS_USER_CONFIRMED_LAUNCH"

.field public static final EXTRA_TRUSTED_REFERRER_PKG:Ljava/lang/String; = "com.google.android.gms.instantapps.TRUSTED_REFERRER_PKG"


# virtual methods
.method public abstract getInstantAppIntentData(Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/instantapps/InstantAppIntentData;
.end method

.method public abstract getInstantAppLaunchData(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/instantapps/LaunchData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initializeIntentClient()Z
.end method
