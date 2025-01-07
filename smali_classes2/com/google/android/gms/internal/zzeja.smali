.class final Lcom/google/android/gms/internal/zzeja;
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
.field private synthetic zznie:Lcom/google/android/gms/internal/zzeir;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeir;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeja;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeja;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeir;->zzb(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzeki;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeki;->zzbvn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeja;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeir;->zzc(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzejq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejq;->zzbzn()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzekw;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzekw;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeja;->zznie:Lcom/google/android/gms/internal/zzeir;

    new-instance v3, Lcom/google/android/gms/internal/zzejv;

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Lcom/google/android/gms/internal/zzejv;-><init>(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzekw;Z)V

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzejy;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
