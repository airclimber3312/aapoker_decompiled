.class final Lcom/google/android/gms/internal/zzcre;
.super Lcom/google/android/gms/internal/zzcru;


# instance fields
.field private synthetic zzjym:Ljava/lang/String;

.field private synthetic zzjyx:J

.field private synthetic zzjyz:Lcom/google/android/gms/common/api/internal/zzci;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcqw;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLcom/google/android/gms/common/api/internal/zzci;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcre;->zzjym:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzcre;->zzjyx:J

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcre;->zzjyz:Lcom/google/android/gms/common/api/internal/zzci;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/zzcru;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcqx;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcov;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcre;->zzjym:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcre;->zzjyx:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcre;->zzjyz:Lcom/google/android/gms/common/api/internal/zzci;

    new-instance v1, Lcom/google/android/gms/nearby/connection/DiscoveryOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/nearby/connection/DiscoveryOptions$Builder;-><init>()V

    sget-object v2, Lcom/google/android/gms/nearby/connection/Strategy;->P2P_CLUSTER:Lcom/google/android/gms/nearby/connection/Strategy;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/nearby/connection/DiscoveryOptions$Builder;->setStrategy(Lcom/google/android/gms/nearby/connection/Strategy;)Lcom/google/android/gms/nearby/connection/DiscoveryOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/nearby/connection/DiscoveryOptions$Builder;->build()Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcso;

    new-instance v8, Lcom/google/android/gms/internal/zzcum;

    new-instance v1, Lcom/google/android/gms/internal/zzcpw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcpw;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzew;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v7, Lcom/google/android/gms/internal/zzcpm;

    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/zzcpm;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzew;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzcum;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/DiscoveryOptions;Landroid/os/IBinder;)V

    invoke-interface {p1, v8}, Lcom/google/android/gms/internal/zzcso;->zza(Lcom/google/android/gms/internal/zzcum;)V

    return-void
.end method
