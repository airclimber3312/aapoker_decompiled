.class final Lcom/google/android/gms/internal/zzcba;
.super Lcom/google/android/gms/internal/zzbxu;


# instance fields
.field private synthetic zzhmw:Lcom/google/android/gms/fitness/data/DataType;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcaw;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcba;->zzhmw:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbxu;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzbxp;

    new-instance v0, Lcom/google/android/gms/internal/zzcbq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcbq;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbze;

    new-instance v1, Lcom/google/android/gms/fitness/request/zzbn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcba;->zzhmw:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/fitness/request/zzbn;-><init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/internal/zzbzt;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/zzbze;->zza(Lcom/google/android/gms/fitness/request/zzbn;)V

    return-void
.end method
