.class final Lcom/google/android/gms/internal/zzejc;
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
.field private synthetic zzneb:Lcom/google/android/gms/internal/zzegu;

.field private synthetic zznie:Lcom/google/android/gms/internal/zzeir;

.field private synthetic zznig:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeir;Ljava/util/Map;Lcom/google/android/gms/internal/zzegu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzejc;->zznie:Lcom/google/android/gms/internal/zzeir;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzejc;->zznig:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzejc;->zzneb:Lcom/google/android/gms/internal/zzegu;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejc;->zznig:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzegi;->zzan(Ljava/util/Map;)Lcom/google/android/gms/internal/zzegi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejc;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeir;->zzb(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzeki;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzejc;->zzneb:Lcom/google/android/gms/internal/zzegu;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzeki;->zzd(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegi;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejc;->zznie:Lcom/google/android/gms/internal/zzeir;

    new-instance v2, Lcom/google/android/gms/internal/zzejx;

    sget-object v3, Lcom/google/android/gms/internal/zzeka;->zznjx:Lcom/google/android/gms/internal/zzeka;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzejc;->zzneb:Lcom/google/android/gms/internal/zzegu;

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzejx;-><init>(Lcom/google/android/gms/internal/zzeka;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegi;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzejy;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
