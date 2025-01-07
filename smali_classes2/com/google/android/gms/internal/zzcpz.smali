.class public final Lcom/google/android/gms/internal/zzcpz;
.super Lcom/google/android/gms/nearby/connection/ConnectionsClient;


# static fields
.field private static final CONNECTIONS_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzegu:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf<",
            "Lcom/google/android/gms/internal/zzcov;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzegv:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza<",
            "Lcom/google/android/gms/internal/zzcov;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzjye:Lcom/google/android/gms/internal/zzcon;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcpz;->zzegu:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v1, Lcom/google/android/gms/internal/zzcqi;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzcqi;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/zzcpz;->zzegv:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v2, Lcom/google/android/gms/common/api/Api;

    const-string v3, "Nearby.CONNECTIONS_API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v2, Lcom/google/android/gms/internal/zzcpz;->CONNECTIONS_API:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzcpz;->CONNECTIONS_API:Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$zza;->zzfsr:Lcom/google/android/gms/common/api/GoogleApi$zza;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionsClient;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzcon;->zzbdd()Lcom/google/android/gms/internal/zzcon;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcpz;->zzjye:Lcom/google/android/gms/internal/zzcon;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzcpz;->CONNECTIONS_API:Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$zza;->zzfsr:Lcom/google/android/gms/common/api/GoogleApi$zza;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionsClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApi$zza;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzcon;->zzbdd()Lcom/google/android/gms/internal/zzcon;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcpz;->zzjye:Lcom/google/android/gms/internal/zzcon;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzcqs;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzcqs;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzcqr;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzcqr;-><init>(Lcom/google/android/gms/internal/zzcpz;Lcom/google/android/gms/internal/zzcqs;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zzb(Lcom/google/android/gms/common/api/internal/zzde;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private final zza(Lcom/google/android/gms/internal/zzcqv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzcqv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzcqj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzcqj;-><init>(Lcom/google/android/gms/internal/zzcpz;Lcom/google/android/gms/internal/zzcqv;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zzb(Lcom/google/android/gms/common/api/internal/zzde;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method static final synthetic zza(JLcom/google/android/gms/internal/zzcov;Lcom/google/android/gms/common/api/internal/zzn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p2, p3, p0, p1}, Lcom/google/android/gms/internal/zzcov;->zza(Lcom/google/android/gms/common/api/internal/zzn;J)V

    return-void
.end method

.method static final synthetic zza(Lcom/google/android/gms/internal/zzcov;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcov;->stopAllEndpoints()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcpz;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcpz;->zzkw(Ljava/lang/String;)V

    return-void
.end method

.method static final synthetic zza(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/internal/zzcov;Lcom/google/android/gms/common/api/internal/zzn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p2, p3, p0, p1}, Lcom/google/android/gms/internal/zzcov;->zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;)V

    return-void
.end method

.method static final synthetic zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcov;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzcov;->disconnectFromEndpoint(Ljava/lang/String;)V

    return-void
.end method

.method static final synthetic zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcov;Lcom/google/android/gms/common/api/internal/zzn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/internal/zzcov;->zzj(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;)V

    return-void
.end method

.method static final synthetic zza(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/Payload;Lcom/google/android/gms/internal/zzcov;Lcom/google/android/gms/common/api/internal/zzn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p2, p3, v0, p1, v1}, Lcom/google/android/gms/internal/zzcov;->zza(Lcom/google/android/gms/common/api/internal/zzn;[Ljava/lang/String;Lcom/google/android/gms/nearby/connection/Payload;Z)V

    return-void
.end method

.method static final synthetic zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/internal/zzcov;Lcom/google/android/gms/common/api/internal/zzn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p3, p4, p0, p1, p2}, Lcom/google/android/gms/internal/zzcov;->zza(Lcom/google/android/gms/common/api/internal/zzn;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;)V

    return-void
.end method

.method static final synthetic zza(Ljava/util/List;Lcom/google/android/gms/nearby/connection/Payload;Lcom/google/android/gms/internal/zzcov;Lcom/google/android/gms/common/api/internal/zzn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {p2, p3, p0, p1, v0}, Lcom/google/android/gms/internal/zzcov;->zza(Lcom/google/android/gms/common/api/internal/zzn;[Ljava/lang/String;Lcom/google/android/gms/nearby/connection/Payload;Z)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcpz;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcpz;->zzkv(Ljava/lang/String;)V

    return-void
.end method

.method private final zzkv(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpz;->zzjye:Lcom/google/android/gms/internal/zzcon;

    const-string v1, "connection"

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/android/gms/internal/zzcon;->zza(Lcom/google/android/gms/common/api/GoogleApi;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpz;->zzjye:Lcom/google/android/gms/internal/zzcon;

    new-instance v1, Lcom/google/android/gms/internal/zzcqp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcqp;-><init>(Lcom/google/android/gms/internal/zzcpz;Lcom/google/android/gms/common/api/internal/zzci;)V

    new-instance v2, Lcom/google/android/gms/internal/zzcqq;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zzci;->zzakx()Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object p1

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/zzcqq;-><init>(Lcom/google/android/gms/internal/zzcpz;Lcom/google/android/gms/common/api/internal/zzck;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/zzcon;->zzb(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/android/gms/common/api/internal/zzcq;Lcom/google/android/gms/common/api/internal/zzdo;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private final zzkw(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpz;->zzjye:Lcom/google/android/gms/internal/zzcon;

    const-string v1, "connection"

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/android/gms/internal/zzcon;->zzb(Lcom/google/android/gms/common/api/GoogleApi;Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/zzcon;->zzb(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/android/gms/common/api/internal/zzck;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public final acceptConnection(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/PayloadCallback;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/nearby/connection/PayloadCallback;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/nearby/connection/PayloadCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/zzcqb;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzcqb;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcpz;->zza(Lcom/google/android/gms/internal/zzcqs;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final cancelPayload(J)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzcqf;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzcqf;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcpz;->zza(Lcom/google/android/gms/internal/zzcqs;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final disconnectFromEndpoint(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcqg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzcqg;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcpz;->zza(Lcom/google/android/gms/internal/zzcqv;)Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcpz;->zzkw(Ljava/lang/String;)V

    return-void
.end method

.method public final rejectConnection(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzcqc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzcqc;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcpz;->zza(Lcom/google/android/gms/internal/zzcqs;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final requestConnection(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzcqt;

    invoke-direct {v0, p0, p3}, Lcom/google/android/gms/internal/zzcqt;-><init>(Lcom/google/android/gms/internal/zzcpz;Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;)V

    const-class p3, Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object p3

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcpz;->zzkv(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzcqa;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzcqa;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcpz;->zza(Lcom/google/android/gms/internal/zzcqs;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p3, Lcom/google/android/gms/internal/zzcqo;

    invoke-direct {p3, p0, p2}, Lcom/google/android/gms/internal/zzcqo;-><init>(Lcom/google/android/gms/internal/zzcpz;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final sendPayload(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/Payload;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/nearby/connection/Payload;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzcqd;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzcqd;-><init>(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/Payload;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcpz;->zza(Lcom/google/android/gms/internal/zzcqs;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final sendPayload(Ljava/util/List;Lcom/google/android/gms/nearby/connection/Payload;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/nearby/connection/Payload;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzcqe;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzcqe;-><init>(Ljava/util/List;Lcom/google/android/gms/nearby/connection/Payload;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcpz;->zza(Lcom/google/android/gms/internal/zzcqs;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final startAdvertising(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Lcom/google/android/gms/tasks/Task;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;",
            "Lcom/google/android/gms/nearby/connection/AdvertisingOptions;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzcqt;

    invoke-direct {v0, p0, p3}, Lcom/google/android/gms/internal/zzcqt;-><init>(Lcom/google/android/gms/internal/zzcpz;Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;)V

    const-class p3, Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/common/api/GoogleApi;->zza(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object v6

    iget-object p3, p0, Lcom/google/android/gms/internal/zzcpz;->zzjye:Lcom/google/android/gms/internal/zzcon;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "advertising"

    invoke-virtual {p3, p0, v0, v1}, Lcom/google/android/gms/internal/zzcon;->zza(Lcom/google/android/gms/common/api/GoogleApi;Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpz;->zzjye:Lcom/google/android/gms/internal/zzcon;

    new-instance v8, Lcom/google/android/gms/internal/zzcqk;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzcqk;-><init>(Lcom/google/android/gms/internal/zzcpz;Lcom/google/android/gms/common/api/internal/zzci;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)V

    new-instance p1, Lcom/google/android/gms/internal/zzcql;

    invoke-virtual {p3}, Lcom/google/android/gms/common/api/internal/zzci;->zzakx()Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/zzcql;-><init>(Lcom/google/android/gms/internal/zzcpz;Lcom/google/android/gms/common/api/internal/zzck;)V

    invoke-virtual {v0, p0, v8, p1}, Lcom/google/android/gms/internal/zzcon;->zzb(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/android/gms/common/api/internal/zzcq;Lcom/google/android/gms/common/api/internal/zzdo;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final startDiscovery(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/EndpointDiscoveryCallback;Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)Lcom/google/android/gms/tasks/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/nearby/connection/EndpointDiscoveryCallback;",
            "Lcom/google/android/gms/nearby/connection/DiscoveryOptions;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpz;->zzjye:Lcom/google/android/gms/internal/zzcon;

    const-string v1, "discovery"

    invoke-virtual {v0, p0, p2, v1}, Lcom/google/android/gms/internal/zzcon;->zza(Lcom/google/android/gms/common/api/GoogleApi;Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/zzci;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpz;->zzjye:Lcom/google/android/gms/internal/zzcon;

    new-instance v1, Lcom/google/android/gms/internal/zzcqm;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzcqm;-><init>(Lcom/google/android/gms/internal/zzcpz;Lcom/google/android/gms/common/api/internal/zzci;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)V

    new-instance p1, Lcom/google/android/gms/internal/zzcqn;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/zzci;->zzakx()Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/zzcqn;-><init>(Lcom/google/android/gms/internal/zzcpz;Lcom/google/android/gms/common/api/internal/zzck;)V

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/android/gms/internal/zzcon;->zzb(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/android/gms/common/api/internal/zzcq;Lcom/google/android/gms/common/api/internal/zzdo;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final stopAdvertising()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpz;->zzjye:Lcom/google/android/gms/internal/zzcon;

    const-string v1, "advertising"

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/zzcon;->zza(Lcom/google/android/gms/common/api/GoogleApi;Ljava/lang/String;)V

    return-void
.end method

.method public final stopAllEndpoints()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/ConnectionsClient;->stopAdvertising()V

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/connection/ConnectionsClient;->stopDiscovery()V

    sget-object v0, Lcom/google/android/gms/internal/zzcqh;->zzjyk:Lcom/google/android/gms/internal/zzcqv;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcpz;->zza(Lcom/google/android/gms/internal/zzcqv;)Lcom/google/android/gms/tasks/Task;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpz;->zzjye:Lcom/google/android/gms/internal/zzcon;

    const-string v1, "connection"

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/zzcon;->zza(Lcom/google/android/gms/common/api/GoogleApi;Ljava/lang/String;)V

    return-void
.end method

.method public final stopDiscovery()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpz;->zzjye:Lcom/google/android/gms/internal/zzcon;

    const-string v1, "discovery"

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/zzcon;->zza(Lcom/google/android/gms/common/api/GoogleApi;Ljava/lang/String;)V

    return-void
.end method
