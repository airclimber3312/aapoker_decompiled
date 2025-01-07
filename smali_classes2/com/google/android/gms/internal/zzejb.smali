.class final Lcom/google/android/gms/internal/zzejb;
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

.field private synthetic zznic:Lcom/google/android/gms/internal/zzenn;

.field private synthetic zznie:Lcom/google/android/gms/internal/zzeir;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzejb;->zznie:Lcom/google/android/gms/internal/zzeir;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzejb;->zzneb:Lcom/google/android/gms/internal/zzegu;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzejb;->zznic:Lcom/google/android/gms/internal/zzenn;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejb;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeir;->zzb(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzeki;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejb;->zzneb:Lcom/google/android/gms/internal/zzegu;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzelu;->zzam(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzelu;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzejb;->zznic:Lcom/google/android/gms/internal/zzenn;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzeki;->zza(Lcom/google/android/gms/internal/zzelu;Lcom/google/android/gms/internal/zzenn;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejb;->zznie:Lcom/google/android/gms/internal/zzeir;

    new-instance v1, Lcom/google/android/gms/internal/zzekc;

    sget-object v2, Lcom/google/android/gms/internal/zzeka;->zznjx:Lcom/google/android/gms/internal/zzeka;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzejb;->zzneb:Lcom/google/android/gms/internal/zzegu;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzejb;->zznic:Lcom/google/android/gms/internal/zzenn;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzeka;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzejy;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
