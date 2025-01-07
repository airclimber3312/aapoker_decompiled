.class public final Lcom/google/android/gms/internal/zzecq;
.super Lcom/google/android/gms/internal/zzeck;


# instance fields
.field private final zzmvf:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/crash/FirebaseCrash$zza;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzeck;-><init>(Landroid/content/Context;Lcom/google/firebase/crash/FirebaseCrash$zza;)V

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzecq;->zzmvf:Z

    return-void
.end method


# virtual methods
.method protected final getErrorMessage()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzecq;->zzmvf:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to set crash enabled to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final run()V
    .locals 3

    const-string v0, "FirebaseCrash"

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzecq;->zzmvb:Lcom/google/firebase/crash/FirebaseCrash$zza;

    invoke-interface {v1}, Lcom/google/firebase/crash/FirebaseCrash$zza;->zzbux()Lcom/google/android/gms/internal/zzect;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "Crash api not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzeck;->zzd(Lcom/google/android/gms/internal/zzect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzecq;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/google/android/gms/common/util/zzg;->zza(Landroid/content/Context;Ljava/lang/Throwable;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeck;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected final zzd(Lcom/google/android/gms/internal/zzect;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzecq;->zzmvf:Z

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzect;->zzcq(Z)V

    return-void
.end method
