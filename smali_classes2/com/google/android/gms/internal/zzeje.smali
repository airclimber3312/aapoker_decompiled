.class final Lcom/google/android/gms/internal/zzeje;
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

.field private synthetic zznif:Lcom/google/android/gms/internal/zzejk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzejk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeje;->zznie:Lcom/google/android/gms/internal/zzeir;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeje;->zznif:Lcom/google/android/gms/internal/zzejk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeje;->zznie:Lcom/google/android/gms/internal/zzeir;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeje;->zznif:Lcom/google/android/gms/internal/zzejk;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzejk;)Lcom/google/android/gms/internal/zzelu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeje;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeir;->zzb(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzeki;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzeki;->zzi(Lcom/google/android/gms/internal/zzelu;)V

    new-instance v1, Lcom/google/android/gms/internal/zzejw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelu;->zzcbh()Lcom/google/android/gms/internal/zzelr;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzeka;->zzc(Lcom/google/android/gms/internal/zzelr;)Lcom/google/android/gms/internal/zzeka;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzejw;-><init>(Lcom/google/android/gms/internal/zzeka;Lcom/google/android/gms/internal/zzegu;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeje;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzelu;Lcom/google/android/gms/internal/zzejy;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
