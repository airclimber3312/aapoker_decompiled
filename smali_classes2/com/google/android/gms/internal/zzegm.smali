.class public Lcom/google/android/gms/internal/zzegm;
.super Ljava/lang/Object;


# instance fields
.field protected cacheSize:J

.field protected zzmxo:Lcom/google/firebase/FirebaseApp;

.field private zzmzw:Lcom/google/android/gms/internal/zzemn;

.field protected zzmzx:Z

.field private zzmzz:Ljava/lang/String;

.field private zzndv:Z

.field protected zznei:Lcom/google/android/gms/internal/zzegt;

.field protected zznej:Lcom/google/android/gms/internal/zzegd;

.field protected zznek:Lcom/google/android/gms/internal/zzeig;

.field protected zznel:Ljava/lang/String;

.field protected zznem:Lcom/google/android/gms/internal/zzemo;

.field private zznen:Z

.field private zzneo:Lcom/google/android/gms/internal/zzegw;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/zzemo;->zznnr:Lcom/google/android/gms/internal/zzemo;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzegm;->zznem:Lcom/google/android/gms/internal/zzemo;

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzegm;->cacheSize:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzegm;->zzndv:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzegm;->zznen:Z

    return-void
.end method

.method private final zzbwm()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegm;->zznek:Lcom/google/android/gms/internal/zzeig;

    instance-of v1, v0, Lcom/google/android/gms/internal/zzeou;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/zzeou;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeou;->zzbwm()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Custom run loops are not supported!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzbyd()Lcom/google/android/gms/internal/zzegw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegm;->zzneo:Lcom/google/android/gms/internal/zzegw;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegm;->zzbye()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegm;->zzneo:Lcom/google/android/gms/internal/zzegw;

    return-object v0
.end method

.method private final declared-synchronized zzbye()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzedg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegm;->zzmxo:Lcom/google/firebase/FirebaseApp;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzedg;-><init>(Lcom/google/firebase/FirebaseApp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzegm;->zzneo:Lcom/google/android/gms/internal/zzegw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final isPersistenceEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzegm;->zzmzx:Z

    return v0
.end method

.method final stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzegm;->zznen:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegm;->zznei:Lcom/google/android/gms/internal/zzegt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzegt;->shutdown()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegm;->zznek:Lcom/google/android/gms/internal/zzeig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeig;->shutdown()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeeu;Lcom/google/android/gms/internal/zzeex;)Lcom/google/android/gms/internal/zzeew;
    .locals 10

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegm;->zzbyd()Lcom/google/android/gms/internal/zzegw;

    move-result-object v0

    new-instance v9, Lcom/google/android/gms/internal/zzees;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegm;->zzmzw:Lcom/google/android/gms/internal/zzemn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegm;->zznej:Lcom/google/android/gms/internal/zzegd;

    new-instance v3, Lcom/google/android/gms/internal/zzegn;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/zzegn;-><init>(Lcom/google/android/gms/internal/zzegd;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegm;->zzbwm()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzegm;->zzmzx:Z

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getSdkVersion()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/zzegm;->zzmzz:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegm;->zzbyd()Lcom/google/android/gms/internal/zzegw;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzegw;->zzbvj()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/zzees;-><init>(Lcom/google/android/gms/internal/zzemn;Lcom/google/android/gms/internal/zzeeq;Ljava/util/concurrent/ScheduledExecutorService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0, v9, p1, p2}, Lcom/google/android/gms/internal/zzegw;->zza(Lcom/google/android/gms/internal/zzegm;Lcom/google/android/gms/internal/zzees;Lcom/google/android/gms/internal/zzeeu;Lcom/google/android/gms/internal/zzeex;)Lcom/google/android/gms/internal/zzeew;

    move-result-object p1

    return-object p1
.end method

.method public final zzbwo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegm;->zzmzz:Ljava/lang/String;

    return-object v0
.end method

.method final declared-synchronized zzbxu()V
    .locals 4

    const-string v0, "Firebase/5/"

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzegm;->zzndv:Z

    if-nez v1, :cond_5

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzegm;->zzndv:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegm;->zzmzw:Lcom/google/android/gms/internal/zzemn;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegm;->zzbyd()Lcom/google/android/gms/internal/zzegw;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegm;->zznem:Lcom/google/android/gms/internal/zzemo;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/google/android/gms/internal/zzegw;->zza(Lcom/google/android/gms/internal/zzegm;Lcom/google/android/gms/internal/zzemo;Ljava/util/List;)Lcom/google/android/gms/internal/zzemn;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzegm;->zzmzw:Lcom/google/android/gms/internal/zzemn;

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegm;->zzbyd()Lcom/google/android/gms/internal/zzegw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegm;->zzmzz:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegm;->zzbyd()Lcom/google/android/gms/internal/zzegw;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/zzegw;->zzc(Lcom/google/android/gms/internal/zzegm;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzegm;->zzmzz:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegm;->zznei:Lcom/google/android/gms/internal/zzegt;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegm;->zzbyd()Lcom/google/android/gms/internal/zzegw;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzegw;->zza(Lcom/google/android/gms/internal/zzegm;)Lcom/google/android/gms/internal/zzegt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzegm;->zznei:Lcom/google/android/gms/internal/zzegt;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegm;->zznek:Lcom/google/android/gms/internal/zzeig;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegm;->zzneo:Lcom/google/android/gms/internal/zzegw;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzegw;->zzb(Lcom/google/android/gms/internal/zzegm;)Lcom/google/android/gms/internal/zzeig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzegm;->zznek:Lcom/google/android/gms/internal/zzeig;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegm;->zznel:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "default"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzegm;->zznel:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegm;->zznej:Lcom/google/android/gms/internal/zzegd;

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegm;->zzbyd()Lcom/google/android/gms/internal/zzegw;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegm;->zzbwm()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzegw;->zza(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/zzegd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzegm;->zznej:Lcom/google/android/gms/internal/zzegd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzbyf()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzegm;->zznen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegm;->zznei:Lcom/google/android/gms/internal/zzegt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzegt;->restart()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegm;->zznek:Lcom/google/android/gms/internal/zzeig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeig;->restart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzegm;->zznen:Z

    :cond_0
    return-void
.end method

.method protected final zzbyg()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzegm;->zzndv:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const-string v1, "Modifications to DatabaseConfig objects must occur before they are in use"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzbyh()Lcom/google/android/gms/internal/zzemo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegm;->zznem:Lcom/google/android/gms/internal/zzemo;

    return-object v0
.end method

.method public final zzbyi()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzegm;->cacheSize:J

    return-wide v0
.end method

.method public final zzbyj()Lcom/google/android/gms/internal/zzegt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegm;->zznei:Lcom/google/android/gms/internal/zzegt;

    return-object v0
.end method

.method public final zzbyk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegm;->zznel:Ljava/lang/String;

    return-object v0
.end method

.method public final zzqb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzemm;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzemm;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegm;->zzmzw:Lcom/google/android/gms/internal/zzemn;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzemm;-><init>(Lcom/google/android/gms/internal/zzemn;Ljava/lang/String;)V

    return-object v0
.end method

.method final zzqc(Ljava/lang/String;)Lcom/google/android/gms/internal/zzeki;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzegm;->zzmzx:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegm;->zzneo:Lcom/google/android/gms/internal/zzegw;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/zzegw;->zza(Lcom/google/android/gms/internal/zzegm;Ljava/lang/String;)Lcom/google/android/gms/internal/zzeki;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/zzekh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzekh;-><init>()V

    return-object p1
.end method
