.class final Lcom/google/android/gms/internal/zzcra;
.super Lcom/google/android/gms/internal/zzcru;


# instance fields
.field private synthetic zzjyw:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcqw;Lcom/google/android/gms/common/api/GoogleApiClient;J)V
    .locals 0

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzcra;->zzjyw:J

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/zzcru;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcqx;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcov;

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcra;->zzjyw:J

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/zzcov;->zza(Lcom/google/android/gms/common/api/internal/zzn;J)V

    return-void
.end method
