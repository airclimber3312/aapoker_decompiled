.class final Lcom/google/android/gms/internal/zzcwb;
.super Lcom/google/android/gms/internal/zzcwc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcwa;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/zzcwc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcwb;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/plus/internal/zzh;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/plus/internal/zzh;->zzk(Lcom/google/android/gms/common/api/internal/zzn;)V

    return-void
.end method
