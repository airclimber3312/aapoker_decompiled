.class public final Lcom/google/android/gms/internal/zzcov;
.super Lcom/google/android/gms/common/internal/zzab;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzab<",
        "Lcom/google/android/gms/internal/zzcso;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzjxi:J

.field private final zzjxj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/zzcpi;",
            ">;"
        }
    .end annotation
.end field

.field private final zzjxk:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/zzcox;",
            ">;"
        }
    .end annotation
.end field

.field private zzjxl:Lcom/google/android/gms/internal/zzctz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzr;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x36

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzab;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzr;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcov;->zzjxj:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcov;->zzjxk:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcov;->zzjxi:J

    return-void
.end method

.method private final reset()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcov;->zzjxj:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzcpi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcpi;->shutdown()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcov;->zzjxk:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzcox;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcox;->shutdown()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcov;->zzjxj:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcov;->zzjxk:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcov;->zzjxl:Lcom/google/android/gms/internal/zzctz;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzctz;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcov;->zzjxl:Lcom/google/android/gms/internal/zzctz;

    :cond_2
    return-void
.end method

.method private static zzcm(I)Lcom/google/android/gms/common/api/Status;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-static {p0}, Lcom/google/android/gms/nearby/connection/ConnectionsStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method static synthetic zzeq(I)Lcom/google/android/gms/common/api/Status;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzcov;->zzcm(I)Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final disconnect()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcso;

    new-instance v1, Lcom/google/android/gms/internal/zzcot;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzcot;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcso;->zza(Lcom/google/android/gms/internal/zzcot;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NearbyConnectionsClient"

    const-string v2, "Failed to notify client disconnect."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcov;->reset()V

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzab;->disconnect()V

    return-void
.end method

.method public final disconnectFromEndpoint(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcso;

    new-instance v1, Lcom/google/android/gms/internal/zzcrv;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzcrv;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcso;->zza(Lcom/google/android/gms/internal/zzcrv;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcov;->reset()V

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/zzab;->onConnectionSuspended(I)V

    return-void
.end method

.method public final stopAdvertising()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcso;

    new-instance v1, Lcom/google/android/gms/internal/zzcuo;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzcuo;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcso;->zza(Lcom/google/android/gms/internal/zzcuo;)V

    return-void
.end method

.method public final stopAllEndpoints()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcso;

    new-instance v1, Lcom/google/android/gms/internal/zzcuq;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzcuq;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcso;->zza(Lcom/google/android/gms/internal/zzcuq;)V

    return-void
.end method

.method public final stopDiscovery()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcso;

    new-instance v1, Lcom/google/android/gms/internal/zzcus;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzcus;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcso;->zza(Lcom/google/android/gms/internal/zzcus;)V

    return-void
.end method

.method protected final synthetic zza(Landroid/os/IInterface;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzcso;

    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/zzab;->zza(Landroid/os/IInterface;)V

    new-instance p1, Lcom/google/android/gms/internal/zzctz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzctz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcov;->zzjxl:Lcom/google/android/gms/internal/zzctz;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/zzn;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzn<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcso;

    new-instance v1, Lcom/google/android/gms/internal/zzcor;

    new-instance v2, Lcom/google/android/gms/internal/zzcpw;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/zzcpw;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzew;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/zzcor;-><init>(Landroid/os/IBinder;J)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcso;->zza(Lcom/google/android/gms/internal/zzcor;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzn<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Lcom/google/android/gms/nearby/connection/PayloadCallback;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcso;

    new-instance v7, Lcom/google/android/gms/internal/zzcop;

    new-instance v1, Lcom/google/android/gms/internal/zzcpw;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzcpw;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzew;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    new-instance p1, Lcom/google/android/gms/internal/zzcpt;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/zzcpt;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzew;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object v1, v7

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzcop;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;[BLandroid/os/IBinder;)V

    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/zzcso;->zza(Lcom/google/android/gms/internal/zzcop;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzn<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Lcom/google/android/gms/nearby/connection/EndpointDiscoveryCallback;",
            ">;",
            "Lcom/google/android/gms/nearby/connection/DiscoveryOptions;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzcpi;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzcpi;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/zzcov;->zzjxj:Ljava/util/Set;

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/zzcso;

    new-instance v9, Lcom/google/android/gms/internal/zzcum;

    new-instance v1, Lcom/google/android/gms/internal/zzcpw;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzcpw;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzew;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzew;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    move-object v1, v9

    move-object v4, p2

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/zzcum;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/DiscoveryOptions;Landroid/os/IBinder;)V

    invoke-interface {p3, v9}, Lcom/google/android/gms/internal/zzcso;->zza(Lcom/google/android/gms/internal/zzcum;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzn<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzcox;

    invoke-direct {v0, p4}, Lcom/google/android/gms/internal/zzcox;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    iget-object p4, p0, Lcom/google/android/gms/internal/zzcov;->zzjxk:Ljava/util/Set;

    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/zzcso;

    new-instance v9, Lcom/google/android/gms/internal/zzcug;

    new-instance v1, Lcom/google/android/gms/internal/zzcpw;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzcpw;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzew;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzew;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    move-object v1, v9

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/zzcug;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;[BLandroid/os/IBinder;)V

    invoke-interface {p4, v9}, Lcom/google/android/gms/internal/zzcso;->zza(Lcom/google/android/gms/internal/zzcug;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzn<",
            "Lcom/google/android/gms/nearby/connection/Connections$StartAdvertisingResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;",
            ">;",
            "Lcom/google/android/gms/nearby/connection/AdvertisingOptions;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzcox;

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzcox;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    move-object v1, p0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcov;->zzjxk:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcso;

    new-instance v12, Lcom/google/android/gms/internal/zzcuk;

    new-instance v3, Lcom/google/android/gms/internal/zzcpy;

    move-object v4, p1

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/zzcpy;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzew;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzew;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    move-object v3, v12

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/zzcuk;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/AdvertisingOptions;Landroid/os/IBinder;)V

    invoke-interface {v2, v12}, Lcom/google/android/gms/internal/zzcso;->zza(Lcom/google/android/gms/internal/zzcuk;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/zzn;[Ljava/lang/String;Lcom/google/android/gms/nearby/connection/Payload;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzn<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;[",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/nearby/connection/Payload;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-static {p3}, Lcom/google/android/gms/internal/zzcud;->zza(Lcom/google/android/gms/nearby/connection/Payload;)Landroid/util/Pair;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzcso;

    new-instance v2, Lcom/google/android/gms/internal/zzcui;

    new-instance v3, Lcom/google/android/gms/internal/zzcpw;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/zzcpw;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzew;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/zzcub;

    invoke-direct {v2, p1, p2, v3, p4}, Lcom/google/android/gms/internal/zzcui;-><init>(Landroid/os/IBinder;[Ljava/lang/String;Lcom/google/android/gms/internal/zzcub;Z)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzcso;->zza(Lcom/google/android/gms/internal/zzcui;)V

    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcov;->zzjxl:Lcom/google/android/gms/internal/zzctz;

    invoke-virtual {p3}, Lcom/google/android/gms/nearby/connection/Payload;->asStream()Lcom/google/android/gms/nearby/connection/Payload$Stream;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/nearby/connection/Payload$Stream;->asInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p3}, Lcom/google/android/gms/nearby/connection/Payload;->getId()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzctz;->zza(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;J)V

    :cond_0
    return-void

    :catch_0
    const/16 p2, 0x1f4d

    invoke-static {p2}, Lcom/google/android/gms/internal/zzcov;->zzcm(I)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/common/api/internal/zzn;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method protected final zzabt()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "clientId"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcov;->zzjxi:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method protected final synthetic zzd(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzcso;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzcso;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzcsp;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzcsp;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method protected final zzhm()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.nearby.connection.service.START"

    return-object v0
.end method

.method protected final zzhn()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    return-object v0
.end method

.method public final zzj(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzn<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzalw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcso;

    new-instance v1, Lcom/google/android/gms/internal/zzcue;

    new-instance v2, Lcom/google/android/gms/internal/zzcpw;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/zzcpw;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzew;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzcue;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcso;->zza(Lcom/google/android/gms/internal/zzcue;)V

    return-void
.end method
