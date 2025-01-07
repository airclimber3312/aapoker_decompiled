.class final Lcom/google/android/gms/internal/zzeif;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zznhg:Lcom/google/android/gms/internal/zzegm;

.field private synthetic zznhh:Lcom/google/android/gms/internal/zzeib;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeib;Lcom/google/android/gms/internal/zzegm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeif;->zznhh:Lcom/google/android/gms/internal/zzeib;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeif;->zznhg:Lcom/google/android/gms/internal/zzegm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeif;->zznhh:Lcom/google/android/gms/internal/zzeib;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeib;->zza(Lcom/google/android/gms/internal/zzeib;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeif;->zznhh:Lcom/google/android/gms/internal/zzeib;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeib;->zza(Lcom/google/android/gms/internal/zzeib;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeif;->zznhg:Lcom/google/android/gms/internal/zzegm;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeif;->zznhh:Lcom/google/android/gms/internal/zzeib;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeib;->zza(Lcom/google/android/gms/internal/zzeib;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeif;->zznhg:Lcom/google/android/gms/internal/zzegm;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzegx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzegx;->resume()V

    goto :goto_0

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
