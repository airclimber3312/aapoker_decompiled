.class public final Lcom/google/android/gms/internal/zzefz;
.super Ljava/lang/Object;


# instance fields
.field private final random:Ljava/util/Random;

.field private final zzmxn:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzmxz:Lcom/google/android/gms/internal/zzemm;

.field private final zzndg:J

.field private final zzndh:J

.field private final zzndi:D

.field private final zzndj:D

.field private zzndk:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private zzndl:J

.field private zzndm:Z


# direct methods
.method private constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzemm;JJDD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzefz;->random:Ljava/util/Random;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzefz;->zzndm:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefz;->zzmxn:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzefz;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzefz;->zzndg:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzefz;->zzndh:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/zzefz;->zzndj:D

    iput-wide p9, p0, Lcom/google/android/gms/internal/zzefz;->zzndi:D

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzemm;JJDDLcom/google/android/gms/internal/zzega;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/google/android/gms/internal/zzefz;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzemm;JJDD)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzefz;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefz;->zzndk:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method


# virtual methods
.method public final cancel()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefz;->zzndk:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefz;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    const-string v3, "Cancelling existing retry attempt"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v4}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefz;->zzndk:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzefz;->zzndk:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefz;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    const-string v3, "No existing retry attempt to cancel"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzefz;->zzndl:J

    return-void
.end method

.method public final zzbxr()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzefz;->zzndm:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzefz;->zzndl:J

    return-void
.end method

.method public final zzbxs()V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzefz;->zzndh:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzefz;->zzndl:J

    return-void
.end method

.method public final zzo(Ljava/lang/Runnable;)V
    .locals 11

    new-instance v0, Lcom/google/android/gms/internal/zzega;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzega;-><init>(Lcom/google/android/gms/internal/zzefz;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzefz;->zzndk:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzefz;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    const-string v3, "Cancelling previous scheduled retry"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v1, v4}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzefz;->zzndk:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {p1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzefz;->zzndk:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzefz;->zzndm:Z

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v5, p0, Lcom/google/android/gms/internal/zzefz;->zzndl:J

    cmp-long p1, v5, v3

    if-nez p1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzefz;->zzndg:J

    goto :goto_0

    :cond_2
    long-to-double v3, v5

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzefz;->zzndj:D

    mul-double v3, v3, v5

    double-to-long v3, v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzefz;->zzndh:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :goto_0
    iput-wide v3, p0, Lcom/google/android/gms/internal/zzefz;->zzndl:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzefz;->zzndi:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v3

    iget-wide v7, p0, Lcom/google/android/gms/internal/zzefz;->zzndl:J

    long-to-double v9, v7

    mul-double v5, v5, v9

    long-to-double v7, v7

    mul-double v3, v3, v7

    iget-object p1, p0, Lcom/google/android/gms/internal/zzefz;->random:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    mul-double v3, v3, v7

    add-double/2addr v5, v3

    double-to-long v3, v5

    :goto_1
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzefz;->zzndm:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzefz;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v2, "Scheduling retry in %dms"

    invoke-virtual {p1, v2, v1, v5}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzefz;->zzmxn:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v3, v4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefz;->zzndk:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
