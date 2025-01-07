.class final Lcom/google/android/gms/internal/zzefp;
.super Ljava/lang/Object;


# static fields
.field private static zznca:J


# instance fields
.field private final zzmxn:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzmxz:Lcom/google/android/gms/internal/zzemm;

.field private zzncb:Lcom/google/android/gms/internal/zzeft;

.field private zzncc:Z

.field private zzncd:Z

.field private zznce:J

.field private zzncf:Lcom/google/android/gms/internal/zzegc;

.field private zzncg:Lcom/google/android/gms/internal/zzefs;

.field private zznch:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private zznci:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzncj:Lcom/google/android/gms/internal/zzees;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzees;Lcom/google/android/gms/internal/zzeeu;Ljava/lang/String;Lcom/google/android/gms/internal/zzefs;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzefp;->zzncc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzefp;->zzncd:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzefp;->zznce:J

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefp;->zzncj:Lcom/google/android/gms/internal/zzees;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzees;->zzbwm()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzmxn:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzefp;->zzncg:Lcom/google/android/gms/internal/zzefs;

    sget-wide v0, Lcom/google/android/gms/internal/zzefp;->zznca:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/google/android/gms/internal/zzefp;->zznca:J

    new-instance p4, Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzees;->zzbwk()Lcom/google/android/gms/internal/zzemn;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x17

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "ws_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocket"

    invoke-direct {p4, v2, v1, v0}, Lcom/google/android/gms/internal/zzemm;-><init>(Lcom/google/android/gms/internal/zzemn;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzefp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeeu;->getHost()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeeu;->isSecure()Z

    move-result p4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeeu;->getNamespace()Ljava/lang/String;

    move-result-object p2

    if-eqz p4, :cond_1

    const-string p4, "wss"

    goto :goto_1

    :cond_1
    const-string p4, "ws"

    :goto_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xf

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "://"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/.ws?ns="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&v=5"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p5, :cond_2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x4

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/2addr p3, p4

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&ls="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string p4, "User-Agent"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzees;->zzbwo()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p3, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Lcom/google/android/gms/internal/zzeoe;

    const/4 p5, 0x0

    invoke-direct {p4, p1, p2, p5, p3}, Lcom/google/android/gms/internal/zzeoe;-><init>(Lcom/google/android/gms/internal/zzees;Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V

    new-instance p1, Lcom/google/android/gms/internal/zzefu;

    invoke-direct {p1, p0, p4, p5}, Lcom/google/android/gms/internal/zzefu;-><init>(Lcom/google/android/gms/internal/zzefp;Lcom/google/android/gms/internal/zzeoe;Lcom/google/android/gms/internal/zzefq;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefp;->zzncb:Lcom/google/android/gms/internal/zzeft;

    return-void
.end method

.method private final shutdown()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzefp;->zzncd:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzncg:Lcom/google/android/gms/internal/zzefs;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzefp;->zzncc:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzefs;->zzcr(Z)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzefp;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzefp;->zznci:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzefp;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzefp;->zzpx(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzefp;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzefp;->zzncc:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzefp;)Lcom/google/android/gms/internal/zzemm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzefp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    return-object p0
.end method

.method private final zzbxm()V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzefp;->zzncd:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zznch:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzefp;->zznch:Ljava/util/concurrent/ScheduledFuture;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x30

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Reset keepAlive. Remaining: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    const-string v3, "Reset keepAlive"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzmxn:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzefr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzefr;-><init>(Lcom/google/android/gms/internal/zzefp;)V

    const-wide/32 v2, 0xafc8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zznch:Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    return-void
.end method

.method private final zzbxn()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzefp;->zzncd:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    const-string v3, "closing itself"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzefp;->shutdown()V

    :cond_1
    iput-object v2, p0, Lcom/google/android/gms/internal/zzefp;->zzncb:Lcom/google/android/gms/internal/zzeft;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zznch:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_2
    return-void
.end method

.method private final zzbxo()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzefp;->zzncc:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzefp;->zzncd:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "timed out on connect"

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzncb:Lcom/google/android/gms/internal/zzeft;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeft;->close()V

    :cond_1
    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzefp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzefp;->zzbxm()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzefp;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzefp;->zzmxn:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzefp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzefp;->zzbxn()V

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzefp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzefp;->zzbxo()V

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzefp;)Lcom/google/android/gms/internal/zzeft;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzefp;->zzncb:Lcom/google/android/gms/internal/zzeft;

    return-object p0
.end method

.method private final zzhh(I)V
    .locals 4

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzefp;->zznce:J

    new-instance p1, Lcom/google/android/gms/internal/zzegc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzegc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefp;->zzncf:Lcom/google/android/gms/internal/zzegc;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzefp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzefp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzefp;->zznce:J

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "HandleNewFrameCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final zzpv(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzncf:Lcom/google/android/gms/internal/zzegc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzegc;->zzpz(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzefp;->zznce:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzefp;->zznce:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzefp;->zzncf:Lcom/google/android/gms/internal/zzegc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegc;->zzbxu()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzefp;->zzncf:Lcom/google/android/gms/internal/zzegc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegc;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeor;->zzqh(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzncf:Lcom/google/android/gms/internal/zzegc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "handleIncomingFrame complete frame: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzncg:Lcom/google/android/gms/internal/zzefs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzefs;->zzai(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefp;->zzncf:Lcom/google/android/gms/internal/zzegc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzegc;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Error parsing frame (cast error): "

    if-eqz v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzemm;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzefp;->close()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzefp;->shutdown()V

    goto :goto_2

    :catch_1
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefp;->zzncf:Lcom/google/android/gms/internal/zzegc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzegc;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Error parsing frame: "

    if-eqz v2, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzemm;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzefp;->close()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzefp;->shutdown()V

    :cond_3
    :goto_2
    return-void
.end method

.method private final zzpw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzefp;->zzhh(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzefp;->zzhh(I)V

    return-object p1
.end method

.method private final zzpx(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzefp;->zzncd:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzefp;->zzbxm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzncf:Lcom/google/android/gms/internal/zzegc;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzefp;->zzpv(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzefp;->zzpw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzefp;->zzpv(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "websocket is being closed"

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzefp;->zzncd:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefp;->zzncb:Lcom/google/android/gms/internal/zzeft;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzeft;->close()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefp;->zznci:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzefp;->zznch:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_2
    return-void
.end method

.method public final open()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzncb:Lcom/google/android/gms/internal/zzeft;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeft;->connect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzmxn:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzefq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzefq;-><init>(Lcom/google/android/gms/internal/zzefp;)V

    const-wide/16 v2, 0x7530

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zznci:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final send(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzefp;->zzbxm()V

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzeor;->zzbx(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x4000

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v1, v2, :cond_0

    new-array v1, v4, [Ljava/lang/String;

    aput-object v0, v1, v3

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    add-int/lit16 v5, v2, 0x4000

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    :goto_1
    array-length v0, v1

    if-le v0, v4, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzncb:Lcom/google/android/gms/internal/zzeft;

    array-length v2, v1

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzeft;->zzpy(Ljava/lang/String;)V

    :cond_2
    :goto_2
    array-length v0, v1

    if-ge v3, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefp;->zzncb:Lcom/google/android/gms/internal/zzeft;

    aget-object v2, v1, v3

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzeft;->zzpy(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefp;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Failed to serialize message: "

    if-eqz v2, :cond_4

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/zzemm;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzefp;->shutdown()V

    return-void
.end method
