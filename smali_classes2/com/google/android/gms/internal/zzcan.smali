.class final Lcom/google/android/gms/internal/zzcan;
.super Lcom/google/android/gms/internal/zzbxo;


# instance fields
.field private synthetic zzhmp:Lcom/google/android/gms/fitness/data/DataSet;

.field private synthetic zzhmq:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcam;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSet;Z)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcan;->zzhmp:Lcom/google/android/gms/fitness/data/DataSet;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcan;->zzhmq:Z

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbxo;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbxj;

    new-instance v0, Lcom/google/android/gms/internal/zzcbq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcbq;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbzc;

    new-instance v1, Lcom/google/android/gms/fitness/request/zzk;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcan;->zzhmp:Lcom/google/android/gms/fitness/data/DataSet;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzcan;->zzhmq:Z

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/fitness/request/zzk;-><init>(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/internal/zzbzt;Z)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/zzbzc;->zza(Lcom/google/android/gms/fitness/request/zzk;)V

    return-void
.end method
