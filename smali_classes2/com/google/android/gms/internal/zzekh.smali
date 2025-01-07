.class public final Lcom/google/android/gms/internal/zzekh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzeki;


# instance fields
.field private zzmya:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzekh;->zzmya:Z

    return-void
.end method

.method private final zzbvo()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzekh;->zzmya:Z

    const-string v1, "Transaction expected to already be in progress."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzepd;->zzb(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegi;J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzekh;->zzbvo()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzekh;->zzbvo()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzelu;Lcom/google/android/gms/internal/zzenn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzekh;->zzbvo()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzelu;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzelu;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/zzemq;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzekh;->zzbvo()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzelu;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
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

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzekh;->zzbvo()V

    return-void
.end method

.method public final zzbm(J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzekh;->zzbvo()V

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

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzbvn()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzekh;->zzbvo()V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegi;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzekh;->zzbvo()V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegi;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzekh;->zzbvo()V

    return-void
.end method

.method public final zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzekh;->zzmya:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "runInTransaction called when an existing transaction is already in progress."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzepd;->zzb(ZLjava/lang/String;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzekh;->zzmya:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzekh;->zzmya:Z

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzekh;->zzmya:Z

    throw p1
.end method

.method public final zzf(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzelh;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzelh;

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelu;->zzcba()Lcom/google/android/gms/internal/zzenf;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzeng;->zza(Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenf;)Lcom/google/android/gms/internal/zzeng;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/google/android/gms/internal/zzelh;-><init>(Lcom/google/android/gms/internal/zzeng;ZZ)V

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/zzelu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzekh;->zzbvo()V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/zzelu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzekh;->zzbvo()V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/zzelu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzekh;->zzbvo()V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzekh;->zzbvo()V

    return-void
.end method
