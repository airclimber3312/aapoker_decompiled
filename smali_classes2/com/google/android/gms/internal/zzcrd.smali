.class final Lcom/google/android/gms/internal/zzcrd;
.super Lcom/google/android/gms/internal/zzcrs;


# instance fields
.field private synthetic val$name:Ljava/lang/String;

.field private synthetic zzjyx:J

.field private synthetic zzjyy:Lcom/google/android/gms/common/api/internal/zzci;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcqw;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLcom/google/android/gms/common/api/internal/zzci;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcrd;->val$name:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzcrd;->zzjyx:J

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcrd;->zzjyy:Lcom/google/android/gms/common/api/internal/zzci;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/zzcrs;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcqx;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcov;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcrd;->val$name:Ljava/lang/String;

    const-string v4, "__LEGACY_SERVICE_ID__"

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzcrd;->zzjyx:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcrd;->zzjyy:Lcom/google/android/gms/common/api/internal/zzci;

    new-instance v1, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;-><init>()V

    sget-object v2, Lcom/google/android/gms/nearby/connection/Strategy;->P2P_CLUSTER:Lcom/google/android/gms/nearby/connection/Strategy;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->setStrategy(Lcom/google/android/gms/nearby/connection/Strategy;)Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/nearby/connection/AdvertisingOptions$Builder;->build()Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcso;

    new-instance v9, Lcom/google/android/gms/internal/zzcuk;

    new-instance v1, Lcom/google/android/gms/internal/zzcpy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcpy;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzew;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzcpe;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzcpe;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzew;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzcuk;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/AdvertisingOptions;Landroid/os/IBinder;)V

    invoke-interface {p1, v9}, Lcom/google/android/gms/internal/zzcso;->zza(Lcom/google/android/gms/internal/zzcuk;)V

    return-void
.end method
