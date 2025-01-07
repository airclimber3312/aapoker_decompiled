.class final Lcom/google/android/gms/internal/zzcrg;
.super Lcom/google/android/gms/internal/zzcru;


# instance fields
.field private synthetic zzjyt:Ljava/lang/String;

.field private synthetic zzjza:[B

.field private synthetic zzjzc:Lcom/google/android/gms/common/api/internal/zzci;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcqw;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLcom/google/android/gms/common/api/internal/zzci;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcrg;->zzjyt:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcrg;->zzjza:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcrg;->zzjzc:Lcom/google/android/gms/common/api/internal/zzci;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/zzcru;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcqx;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcov;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcrg;->zzjyt:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcrg;->zzjza:[B

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcrg;->zzjzc:Lcom/google/android/gms/common/api/internal/zzci;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcso;

    new-instance v6, Lcom/google/android/gms/internal/zzcop;

    new-instance v1, Lcom/google/android/gms/internal/zzcpw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcpw;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzew;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzcpp;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzcpp;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzew;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcop;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;[BLandroid/os/IBinder;)V

    invoke-interface {p1, v6}, Lcom/google/android/gms/internal/zzcso;->zza(Lcom/google/android/gms/internal/zzcop;)V

    return-void
.end method
