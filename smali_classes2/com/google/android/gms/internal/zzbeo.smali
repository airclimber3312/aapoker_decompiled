.class public final Lcom/google/android/gms/internal/zzbeo;
.super Ljava/lang/Object;


# static fields
.field public static final zzakj:Ljava/lang/Object;

.field private static final zzeus:Lcom/google/android/gms/internal/zzbei;


# instance fields
.field private final zzata:Lcom/google/android/gms/common/util/zze;

.field private zzfle:J

.field private zzfok:J

.field private zzfol:J

.field private zzfom:Lcom/google/android/gms/internal/zzben;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbei;

    const-string v1, "RequestTracker"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbei;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbeo;->zzeus:Lcom/google/android/gms/internal/zzbei;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbeo;->zzakj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/util/zze;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbeo;->zzata:Lcom/google/android/gms/common/util/zze;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzbeo;->zzfok:J

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzbeo;->zzfle:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzbeo;->zzfol:J

    return-void
.end method

.method private final zzagz()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbeo;->zzfle:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbeo;->zzfom:Lcom/google/android/gms/internal/zzben;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbeo;->zzfol:J

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/zzbeo;->zzakj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbeo;->zzfle:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbeo;->zzagz()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final test(J)Z
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/zzbeo;->zzakj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbeo;->zzfle:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza(JLcom/google/android/gms/internal/zzben;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zzbeo;->zzakj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbeo;->zzfom:Lcom/google/android/gms/internal/zzben;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbeo;->zzfle:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzbeo;->zzfle:J

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbeo;->zzfom:Lcom/google/android/gms/internal/zzben;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbeo;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzbeo;->zzfol:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/zzben;->zzx(J)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzaha()Z
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/zzbeo;->zzakj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbeo;->zzfle:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzc(JILjava/lang/Object;)Z
    .locals 8

    sget-object v0, Lcom/google/android/gms/internal/zzbeo;->zzakj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbeo;->zzfle:J

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-eqz v6, :cond_0

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    sget-object v3, Lcom/google/android/gms/internal/zzbeo;->zzeus:Lcom/google/android/gms/internal/zzbei;

    const-string v4, "request %d completed"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v5

    invoke-virtual {v3, v4, v7}, Lcom/google/android/gms/internal/zzbei;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbeo;->zzfom:Lcom/google/android/gms/internal/zzben;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbeo;->zzagz()V

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzben;->zza(JILjava/lang/Object;)V

    :cond_1
    return v5

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzd(JI)Z
    .locals 8

    sget-object v0, Lcom/google/android/gms/internal/zzbeo;->zzakj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbeo;->zzfle:J

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-eqz v7, :cond_0

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbeo;->zzfol:J

    sub-long/2addr p1, v3

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbeo;->zzfok:J

    cmp-long v7, p1, v3

    if-ltz v7, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/zzbeo;->zzeus:Lcom/google/android/gms/internal/zzbei;

    const-string p2, "request %d timed out"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {p1, p2, v4}, Lcom/google/android/gms/internal/zzbei;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide p1, p0, Lcom/google/android/gms/internal/zzbeo;->zzfle:J

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbeo;->zzfom:Lcom/google/android/gms/internal/zzben;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbeo;->zzagz()V

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    move-object v1, v6

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2, p3, v6}, Lcom/google/android/gms/internal/zzben;->zza(JILjava/lang/Object;)V

    :cond_1
    return v5

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
