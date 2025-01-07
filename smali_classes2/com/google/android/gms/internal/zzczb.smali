.class public final Lcom/google/android/gms/internal/zzczb;
.super Ljava/lang/Object;


# static fields
.field private static zzkmq:Ljava/lang/Object;

.field private static zzkvl:Lcom/google/android/gms/internal/zzczb;


# instance fields
.field private volatile mClosed:Z

.field private final mContext:Landroid/content/Context;

.field private final zzata:Lcom/google/android/gms/common/util/zze;

.field private final zzdeq:Ljava/lang/Thread;

.field private volatile zzdyc:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

.field private volatile zzkmk:J

.field private volatile zzkml:J

.field private volatile zzkmm:J

.field private volatile zzkmn:J

.field private final zzkmo:Ljava/lang/Object;

.field private volatile zzkvj:Z

.field private zzkvk:Lcom/google/android/gms/internal/zzcze;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzczb;->zzkmq:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzanq()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzczb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzcze;Lcom/google/android/gms/common/util/zze;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzcze;Lcom/google/android/gms/common/util/zze;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzczb;->zzkmk:J

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzczb;->zzkml:J

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzczb;->zzkvj:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzczb;->mClosed:Z

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzczb;->zzkmo:Ljava/lang/Object;

    new-instance p2, Lcom/google/android/gms/internal/zzczc;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/zzczc;-><init>(Lcom/google/android/gms/internal/zzczb;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzczb;->zzkvk:Lcom/google/android/gms/internal/zzcze;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzczb;->zzata:Lcom/google/android/gms/common/util/zze;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzczb;->mContext:Landroid/content/Context;

    invoke-interface {p3}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzczb;->zzkmm:J

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/google/android/gms/internal/zzczd;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/zzczd;-><init>(Lcom/google/android/gms/internal/zzczb;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzczb;->zzdeq:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzczb;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzczb;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzczb;Z)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzczb;->zzkvj:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzczb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzczb;->zzbff()V

    return-void
.end method

.method private final zzbfc()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzczb;->zzbfd()V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final zzbfd()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczb;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzczb;->zzkmm:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzczb;->zzkml:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczb;->zzkmo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzczb;->zzkmo:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczb;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzczb;->zzkmm:J

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private final zzbfe()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczb;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzczb;->zzkmn:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzczb;->zzdyc:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    :cond_0
    return-void
.end method

.method private final zzbff()V
    .locals 4

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzczb;->zzkvj:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczb;->zzkvk:Lcom/google/android/gms/internal/zzcze;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcze;->zzbfg()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/google/android/gms/internal/zzczb;->zzdyc:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczb;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzczb;->zzkmn:J

    const-string v0, "Obtained fresh AdvertisingId info from GmsCore."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->zzcy(Ljava/lang/String;)V

    :cond_1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzczb;->zzkmo:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzczb;->zzkmo:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzczb;->zzkmk:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    const-string v0, "sleep interrupted in AdvertiserDataPoller thread; continuing"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->zzcy(Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public static zzep(Landroid/content/Context;)Lcom/google/android/gms/internal/zzczb;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzczb;->zzkvl:Lcom/google/android/gms/internal/zzczb;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzczb;->zzkmq:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzczb;->zzkvl:Lcom/google/android/gms/internal/zzczb;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzczb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzczb;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/internal/zzczb;->zzkvl:Lcom/google/android/gms/internal/zzczb;

    iget-object p0, v1, Lcom/google/android/gms/internal/zzczb;->zzdeq:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/zzczb;->zzkvl:Lcom/google/android/gms/internal/zzczb;

    return-object p0
.end method


# virtual methods
.method public final isLimitAdTrackingEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczb;->zzdyc:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzczb;->zzbfc()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzczb;->zzbfd()V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzczb;->zzbfe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczb;->zzdyc:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzczb;->zzdyc:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    return v0
.end method

.method public final zzbfb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczb;->zzdyc:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzczb;->zzbfc()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzczb;->zzbfd()V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzczb;->zzbfe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczb;->zzdyc:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzczb;->zzdyc:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
