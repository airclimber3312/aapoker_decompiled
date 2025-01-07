.class final Lcom/google/android/gms/internal/zzeiz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "+",
        "Lcom/google/android/gms/internal/zzell;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zzngk:J

.field private synthetic zznia:Z

.field private synthetic zznie:Lcom/google/android/gms/internal/zzeir;

.field private synthetic zznio:Z

.field private synthetic zznip:Lcom/google/android/gms/internal/zzeos;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeir;ZJZLcom/google/android/gms/internal/zzeos;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeiz;->zznie:Lcom/google/android/gms/internal/zzeir;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzeiz;->zznia:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzeiz;->zzngk:J

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzeiz;->zznio:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/zzeiz;->zznip:Lcom/google/android/gms/internal/zzeos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzeiz;->zznia:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeiz;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeir;->zzb(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzeki;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzeiz;->zzngk:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzeki;->zzbm(J)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeiz;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeir;->zzc(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzejq;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzeiz;->zzngk:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzejq;->zzbw(J)Lcom/google/android/gms/internal/zzejn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeiz;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeir;->zzc(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzejq;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzeiz;->zzngk:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzejq;->zzbx(J)Z

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejn;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzeiz;->zznio:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeiz;->zznip:Lcom/google/android/gms/internal/zzeos;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzeih;->zza(Lcom/google/android/gms/internal/zzeos;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejn;->zzbzk()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejn;->zzbzi()Lcom/google/android/gms/internal/zzenn;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzeih;->zza(Lcom/google/android/gms/internal/zzenn;Ljava/util/Map;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeiz;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzeir;->zzb(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzeki;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejn;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/google/android/gms/internal/zzeki;->zzk(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejn;->zzbzj()Lcom/google/android/gms/internal/zzegi;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzeih;->zza(Lcom/google/android/gms/internal/zzegi;Ljava/util/Map;)Lcom/google/android/gms/internal/zzegi;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeiz;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzeir;->zzb(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzeki;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejn;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/google/android/gms/internal/zzeki;->zzc(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegi;)V

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/zzekw;->zzcaf()Lcom/google/android/gms/internal/zzekw;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejn;->zzbzk()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzekw;->zzb(Lcom/google/android/gms/internal/zzegu;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzekw;

    move-result-object v1

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejn;->zzbzj()Lcom/google/android/gms/internal/zzegi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzegi;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzegu;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/zzekw;->zzb(Lcom/google/android/gms/internal/zzegu;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzekw;

    move-result-object v1

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzeiz;->zznie:Lcom/google/android/gms/internal/zzeir;

    new-instance v3, Lcom/google/android/gms/internal/zzejv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejn;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzeiz;->zznio:Z

    invoke-direct {v3, v0, v1, v4}, Lcom/google/android/gms/internal/zzejv;-><init>(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzekw;Z)V

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzejy;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
