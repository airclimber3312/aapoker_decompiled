.class Lcom/google/android/gms/internal/zzfaz$zza;
.super Lcom/google/android/gms/common/api/internal/LifecycleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfaz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final zzffp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzfba;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/zzcf;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;-><init>(Lcom/google/android/gms/common/api/internal/zzcf;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfaz$zza;->zzffp:Ljava/util/List;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzfaz$zza;->zzgam:Lcom/google/android/gms/common/api/internal/zzcf;

    const-string v0, "StorageOnStopCallback"

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/common/api/internal/zzcf;->zza(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method public static zzu(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzfaz$zza;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/internal/zzce;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zzce;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfaz$zza;->zzb(Lcom/google/android/gms/common/api/internal/zzce;)Lcom/google/android/gms/common/api/internal/zzcf;

    move-result-object p0

    const-string v0, "StorageOnStopCallback"

    const-class v1, Lcom/google/android/gms/internal/zzfaz$zza;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/common/api/internal/zzcf;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfaz$zza;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzfaz$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzfaz$zza;-><init>(Lcom/google/android/gms/common/api/internal/zzcf;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final onStop()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfaz$zza;->zzffp:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfaz$zza;->zzffp:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfaz$zza;->zzffp:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/internal/zzfba;

    if-eqz v3, :cond_0

    const-string v4, "StorageOnStopCallback"

    const-string v5, "removing subscription from activity."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzfba;->zzbmh()Ljava/lang/Runnable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    invoke-static {}, Lcom/google/android/gms/internal/zzfaz;->zzcok()Lcom/google/android/gms/internal/zzfaz;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzfba;->zzcol()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zzfaz;->zzcq(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfba;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfaz$zza;->zzffp:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfaz$zza;->zzffp:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzfba;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfaz$zza;->zzffp:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfaz$zza;->zzffp:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
