.class final Lcom/google/android/gms/cast/zzj;
.super Lcom/google/android/gms/internal/zzbea;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$zza;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbea;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbdp;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbea;->zza(Lcom/google/android/gms/internal/zzbdp;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbdp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzbdp;->zzb(Lcom/google/android/gms/common/api/internal/zzn;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/16 p1, 0x7d1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbdf;->zzbj(I)V

    return-void
.end method
