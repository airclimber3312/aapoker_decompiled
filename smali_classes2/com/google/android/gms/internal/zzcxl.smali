.class final Lcom/google/android/gms/internal/zzcxl;
.super Lcom/google/android/gms/internal/zzcxf$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcxf;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcxf$zzd;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcxs;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxl;->zzkkr:Lcom/google/android/gms/internal/zzcxb;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcxd;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzcxd;->zzd(Lcom/google/android/gms/internal/zzcxb;)V

    return-void
.end method
