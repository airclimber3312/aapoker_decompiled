.class public abstract Lcom/google/android/gms/internal/zzeou;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzeig;


# instance fields
.field private zznrc:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzeow;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzeow;-><init>(Lcom/google/android/gms/internal/zzeou;Lcom/google/android/gms/internal/zzeov;)V

    new-instance v1, Lcom/google/android/gms/internal/zzeov;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/zzeov;-><init>(Lcom/google/android/gms/internal/zzeou;ILjava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzeou;->zznrc:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v2, 0x3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method


# virtual methods
.method public final restart()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeou;->zznrc:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setCorePoolSize(I)V

    return-void
.end method

.method public final shutdown()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeou;->zznrc:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setCorePoolSize(I)V

    return-void
.end method

.method public final zzbwm()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeou;->zznrc:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public abstract zzj(Ljava/lang/Throwable;)V
.end method

.method public final zzp(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeou;->zznrc:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
