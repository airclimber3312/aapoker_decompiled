.class final Lcom/google/android/gms/internal/zzcem;
.super Lcom/google/android/gms/internal/zzcer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcer<",
        "Lcom/google/android/gms/instantapps/zzd;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcej;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcer;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzcef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/zzceo;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzceo;-><init>(Lcom/google/android/gms/internal/zzcem;)V

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/zzcef;->zza(Lcom/google/android/gms/internal/zzced;)V

    return-void
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcen;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzcen;-><init>(Lcom/google/android/gms/internal/zzcem;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
