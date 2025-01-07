.class public final Lcom/google/android/gms/internal/zzekf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzeki;


# instance fields
.field private final zzmxz:Lcom/google/android/gms/internal/zzemm;

.field private final zznkg:Lcom/google/android/gms/internal/zzekj;

.field private final zznkh:Lcom/google/android/gms/internal/zzekp;

.field private final zznki:Lcom/google/android/gms/internal/zzekd;

.field private zznkj:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzegm;Lcom/google/android/gms/internal/zzekj;Lcom/google/android/gms/internal/zzekd;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzeot;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeot;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzekf;-><init>(Lcom/google/android/gms/internal/zzegm;Lcom/google/android/gms/internal/zzekj;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzeos;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzegm;Lcom/google/android/gms/internal/zzekj;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzeos;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkj:J

    iput-object p2, p0, Lcom/google/android/gms/internal/zzekf;->zznkg:Lcom/google/android/gms/internal/zzekj;

    const-string v0, "Persistence"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzegm;->zzqb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzemm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzekf;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    new-instance v0, Lcom/google/android/gms/internal/zzekp;

    invoke-direct {v0, p2, p1, p4}, Lcom/google/android/gms/internal/zzekp;-><init>(Lcom/google/android/gms/internal/zzekj;Lcom/google/android/gms/internal/zzemm;Lcom/google/android/gms/internal/zzeos;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkh:Lcom/google/android/gms/internal/zzekp;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzekf;->zznki:Lcom/google/android/gms/internal/zzekd;

    return-void
.end method

.method private final zzcaa()V
    .locals 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkj:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkj:J

    iget-object v2, p0, Lcom/google/android/gms/internal/zzekf;->zznki:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/zzekd;->zzby(J)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    const-string v3, "Reached prune check threshold."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v4}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/android/gms/internal/zzekf;->zznkj:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkg:Lcom/google/android/gms/internal/zzekj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekj;->zzbvl()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Cache size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v1, v6}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzekf;->zznki:Lcom/google/android/gms/internal/zzekd;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzekf;->zznkh:Lcom/google/android/gms/internal/zzekp;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzekp;->zzcad()J

    move-result-wide v6

    invoke-interface {v5, v3, v4, v6, v7}, Lcom/google/android/gms/internal/zzekd;->zzj(JJ)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzekf;->zznkh:Lcom/google/android/gms/internal/zzekp;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzekf;->zznki:Lcom/google/android/gms/internal/zzekd;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzekp;->zza(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzekk;->zzcab()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzekf;->zznkg:Lcom/google/android/gms/internal/zzekj;

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lcom/google/android/gms/internal/zzekj;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzekk;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzekf;->zznkg:Lcom/google/android/gms/internal/zzekj;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzekj;->zzbvl()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/gms/internal/zzekf;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/gms/internal/zzekf;->zzmxz:Lcom/google/android/gms/internal/zzemm;

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x2c

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Cache size after prune: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v1, v7}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegi;J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkg:Lcom/google/android/gms/internal/zzekj;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzekj;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegi;J)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkg:Lcom/google/android/gms/internal/zzekj;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzekj;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;J)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzelu;Lcom/google/android/gms/internal/zzenn;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelu;->zzcbe()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkg:Lcom/google/android/gms/internal/zzekj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/zzekj;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkg:Lcom/google/android/gms/internal/zzekj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/zzekj;->zzb(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzekf;->zzi(Lcom/google/android/gms/internal/zzelu;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzekf;->zzcaa()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzelu;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzelu;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/zzemq;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkh:Lcom/google/android/gms/internal/zzekp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzekp;->zzk(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzeko;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkg:Lcom/google/android/gms/internal/zzekj;

    iget-wide v1, p1, Lcom/google/android/gms/internal/zzeko;->id:J

    invoke-interface {v0, v1, v2, p2}, Lcom/google/android/gms/internal/zzekj;->zza(JLjava/util/Set;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzelu;Ljava/util/Set;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzelu;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/zzemq;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/zzemq;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkh:Lcom/google/android/gms/internal/zzekp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzekp;->zzk(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzeko;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkg:Lcom/google/android/gms/internal/zzekj;

    iget-wide v1, p1, Lcom/google/android/gms/internal/zzeko;->id:J

    invoke-interface {v0, v1, v2, p2, p3}, Lcom/google/android/gms/internal/zzekj;->zza(JLjava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public final zzbm(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkg:Lcom/google/android/gms/internal/zzekj;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzekj;->zzbm(J)V

    return-void
.end method

.method public final zzbvk()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzejn;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkg:Lcom/google/android/gms/internal/zzekj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekj;->zzbvk()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzbvn()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkg:Lcom/google/android/gms/internal/zzekj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekj;->zzbvn()V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegi;)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzegi;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzegu;->zzh(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzenn;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzekf;->zzk(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegi;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkg:Lcom/google/android/gms/internal/zzekj;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzekj;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegi;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzekf;->zzcaa()V

    return-void
.end method

.method public final zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkg:Lcom/google/android/gms/internal/zzekj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekj;->beginTransaction()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkg:Lcom/google/android/gms/internal/zzekj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekj;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkg:Lcom/google/android/gms/internal/zzekj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekj;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkg:Lcom/google/android/gms/internal/zzekj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekj;->endTransaction()V

    throw p1
.end method

.method public final zzf(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzelh;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkh:Lcom/google/android/gms/internal/zzekp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzekp;->zzm(Lcom/google/android/gms/internal/zzelu;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkh:Lcom/google/android/gms/internal/zzekp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzekp;->zzk(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzeko;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelu;->zzcbe()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lcom/google/android/gms/internal/zzeko;->complete:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzekf;->zznkg:Lcom/google/android/gms/internal/zzekj;

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzeko;->id:J

    invoke-interface {v3, v4, v5}, Lcom/google/android/gms/internal/zzekj;->zzbp(J)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkh:Lcom/google/android/gms/internal/zzekp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzekp;->zzaa(Lcom/google/android/gms/internal/zzegu;)Ljava/util/Set;

    move-result-object v0

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzekf;->zznkg:Lcom/google/android/gms/internal/zzekj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/zzekj;->zza(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v4

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzemq;

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/zzenn;->zzm(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lcom/google/android/gms/internal/zzenn;->zze(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v1

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzelh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelu;->zzcba()Lcom/google/android/gms/internal/zzenf;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzeng;->zza(Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenf;)Lcom/google/android/gms/internal/zzeng;

    move-result-object p1

    invoke-direct {v0, p1, v3, v2}, Lcom/google/android/gms/internal/zzelh;-><init>(Lcom/google/android/gms/internal/zzeng;ZZ)V

    return-object v0

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzelh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelu;->zzcba()Lcom/google/android/gms/internal/zzenf;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/google/android/gms/internal/zzeng;->zza(Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenf;)Lcom/google/android/gms/internal/zzeng;

    move-result-object p1

    invoke-direct {v0, p1, v2, v1}, Lcom/google/android/gms/internal/zzelh;-><init>(Lcom/google/android/gms/internal/zzeng;ZZ)V

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/zzelu;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkh:Lcom/google/android/gms/internal/zzekp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzekp;->zzg(Lcom/google/android/gms/internal/zzelu;)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/zzelu;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkh:Lcom/google/android/gms/internal/zzekp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzekp;->zzh(Lcom/google/android/gms/internal/zzelu;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/zzelu;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelu;->zzcbe()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkh:Lcom/google/android/gms/internal/zzekp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzekp;->zzz(Lcom/google/android/gms/internal/zzegu;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkh:Lcom/google/android/gms/internal/zzekp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzekp;->zzl(Lcom/google/android/gms/internal/zzelu;)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkh:Lcom/google/android/gms/internal/zzekp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzekp;->zzac(Lcom/google/android/gms/internal/zzegu;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekf;->zznkg:Lcom/google/android/gms/internal/zzekj;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzekj;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzekf;->zznkh:Lcom/google/android/gms/internal/zzekp;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzekp;->zzab(Lcom/google/android/gms/internal/zzegu;)V

    :cond_0
    return-void
.end method
