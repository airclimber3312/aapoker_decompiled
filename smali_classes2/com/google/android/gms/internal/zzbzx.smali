.class final Lcom/google/android/gms/internal/zzbzx;
.super Lcom/google/android/gms/internal/zzbwx;


# instance fields
.field private synthetic zzhmh:Lcom/google/android/gms/fitness/request/StartBleScanRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbzw;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/StartBleScanRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbzx;->zzhmh:Lcom/google/android/gms/fitness/request/StartBleScanRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbwx;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbws;

    new-instance v0, Lcom/google/android/gms/internal/zzcbq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcbq;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbyw;

    new-instance v1, Lcom/google/android/gms/fitness/request/StartBleScanRequest;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbzx;->zzhmh:Lcom/google/android/gms/fitness/request/StartBleScanRequest;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/fitness/request/StartBleScanRequest;-><init>(Lcom/google/android/gms/fitness/request/StartBleScanRequest;Lcom/google/android/gms/internal/zzbzt;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/zzbyw;->zza(Lcom/google/android/gms/fitness/request/StartBleScanRequest;)V

    return-void
.end method
