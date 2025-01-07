.class public final Lcom/google/android/gms/internal/zzecm;
.super Lcom/google/android/gms/internal/zzeck;


# instance fields
.field private final zzdka:Ljava/lang/Throwable;

.field private final zzmuq:Lcom/google/android/gms/internal/zzecy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/crash/FirebaseCrash$zza;Ljava/lang/Throwable;Lcom/google/android/gms/internal/zzecy;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzeck;-><init>(Landroid/content/Context;Lcom/google/firebase/crash/FirebaseCrash$zza;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzecm;->zzdka:Ljava/lang/Throwable;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzecm;->zzmuq:Lcom/google/android/gms/internal/zzecy;

    return-void
.end method


# virtual methods
.method protected final getErrorMessage()Ljava/lang/String;
    .locals 1

    const-string v0, "Failed to report caught exception"

    return-object v0
.end method

.method public final bridge synthetic run()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzeck;->run()V

    return-void
.end method

.method protected final zzd(Lcom/google/android/gms/internal/zzect;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecm;->zzmuq:Lcom/google/android/gms/internal/zzecy;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzecy;->zza(ZJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzecm;->zzdka:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzect;->zzaf(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method
