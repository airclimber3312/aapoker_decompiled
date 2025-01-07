.class final Lcom/google/firebase/storage/zzx;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "ListenerType:Ljava/lang/Object;",
        "TResult::",
        "Lcom/google/firebase/storage/StorageTask$ProvideError;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzowl:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TT",
            "ListenerType;",
            ">;"
        }
    .end annotation
.end field

.field private final zzowm:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT",
            "ListenerType;",
            "Lcom/google/android/gms/internal/zzfbg;",
            ">;"
        }
    .end annotation
.end field

.field private zzown:Lcom/google/firebase/storage/StorageTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/StorageTask<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field private zzowo:I

.field private zzowp:Lcom/google/firebase/storage/zzab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/zzab<",
            "TT",
            "ListenerType;",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/zzab;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageTask<",
            "TTResult;>;I",
            "Lcom/google/firebase/storage/zzab<",
            "TT",
            "ListenerType;",
            "TTResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/zzx;->zzowl:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/zzx;->zzowm:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/google/firebase/storage/zzx;->zzown:Lcom/google/firebase/storage/StorageTask;

    iput p2, p0, Lcom/google/firebase/storage/zzx;->zzowo:I

    iput-object p3, p0, Lcom/google/firebase/storage/zzx;->zzowp:Lcom/google/firebase/storage/zzab;

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/storage/zzx;)Lcom/google/firebase/storage/zzab;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/storage/zzx;->zzowp:Lcom/google/firebase/storage/zzab;

    return-object p0
.end method


# virtual methods
.method public final zza(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            "TT",
            "ListenerType;",
            ")V"
        }
    .end annotation

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/zzx;->zzown:Lcom/google/firebase/storage/StorageTask;

    iget-object v0, v0, Lcom/google/firebase/storage/StorageTask;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/storage/zzx;->zzown:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageTask;->zzcnz()I

    move-result v1

    iget v2, p0, Lcom/google/firebase/storage/zzx;->zzowo:I

    and-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/firebase/storage/zzx;->zzowl:Ljava/util/Queue;

    invoke-interface {v4, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/google/android/gms/internal/zzfbg;

    invoke-direct {v4, p2}, Lcom/google/android/gms/internal/zzfbg;-><init>(Ljava/util/concurrent/Executor;)V

    iget-object p2, p0, Lcom/google/firebase/storage/zzx;->zzowm:Ljava/util/HashMap;

    invoke-virtual {p2, p3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string p2, "Activity is already destroyed!"

    invoke-static {v2, p2}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzfaz;->zzcok()Lcom/google/android/gms/internal/zzfaz;

    move-result-object p2

    new-instance v2, Lcom/google/firebase/storage/zzy;

    invoke-direct {v2, p0, p3}, Lcom/google/firebase/storage/zzy;-><init>(Lcom/google/firebase/storage/zzx;Ljava/lang/Object;)V

    invoke-virtual {p2, p1, p3, v2}, Lcom/google/android/gms/internal/zzfaz;->zza(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/Runnable;)V

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/google/firebase/storage/zzx;->zzown:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageTask;->zzcoa()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object p1

    new-instance p2, Lcom/google/firebase/storage/zzz;

    invoke-direct {p2, p0, p3, p1}, Lcom/google/firebase/storage/zzz;-><init>(Lcom/google/firebase/storage/zzx;Ljava/lang/Object;Lcom/google/firebase/storage/StorageTask$ProvideError;)V

    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/zzfbg;->zzx(Ljava/lang/Runnable;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzcoh()V
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/storage/zzx;->zzown:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageTask;->zzcnz()I

    move-result v0

    iget v1, p0, Lcom/google/firebase/storage/zzx;->zzowo:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/storage/zzx;->zzown:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageTask;->zzcoa()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/storage/zzx;->zzowl:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/storage/zzx;->zzowm:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzfbg;

    if-eqz v3, :cond_0

    new-instance v4, Lcom/google/firebase/storage/zzaa;

    invoke-direct {v4, p0, v2, v0}, Lcom/google/firebase/storage/zzaa;-><init>(Lcom/google/firebase/storage/zzx;Ljava/lang/Object;Lcom/google/firebase/storage/StorageTask$ProvideError;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzfbg;->zzx(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zzcp(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "ListenerType;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/zzx;->zzown:Lcom/google/firebase/storage/StorageTask;

    iget-object v0, v0, Lcom/google/firebase/storage/StorageTask;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/storage/zzx;->zzowm:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/firebase/storage/zzx;->zzowl:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/android/gms/internal/zzfaz;->zzcok()Lcom/google/android/gms/internal/zzfaz;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzfaz;->zzcq(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
