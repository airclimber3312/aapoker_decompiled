.class abstract Lcom/google/android/gms/internal/zzeck;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final zzmvb:Lcom/google/firebase/crash/FirebaseCrash$zza;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/crash/FirebaseCrash$zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeck;->zzmvb:Lcom/google/firebase/crash/FirebaseCrash$zza;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeck;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected abstract getErrorMessage()Ljava/lang/String;
.end method

.method public run()V
    .locals 3

    const-string v0, "FirebaseCrash"

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeck;->zzmvb:Lcom/google/firebase/crash/FirebaseCrash$zza;

    invoke-interface {v1}, Lcom/google/firebase/crash/FirebaseCrash$zza;->zzbux()Lcom/google/android/gms/internal/zzect;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzect;->zzbuw()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzeck;->zzd(Lcom/google/android/gms/internal/zzect;)V

    return-void

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    const-string v1, "Firebase Crash Reporting not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v1, "Crash api not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzeck;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/google/android/gms/common/util/zzg;->zza(Landroid/content/Context;Ljava/lang/Throwable;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeck;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected abstract zzd(Lcom/google/android/gms/internal/zzect;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
