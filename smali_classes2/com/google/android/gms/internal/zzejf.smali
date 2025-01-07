.class final Lcom/google/android/gms/internal/zzejf;
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

.field private synthetic zznif:Lcom/google/android/gms/internal/zzejk;

.field private synthetic zzniq:Lcom/google/android/gms/internal/zzenn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzejk;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzejf;->zznie:Lcom/google/android/gms/internal/zzeir;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzejf;->zznif:Lcom/google/android/gms/internal/zzejk;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzejf;->zzneb:Lcom/google/android/gms/internal/zzegu;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzejf;->zzniq:Lcom/google/android/gms/internal/zzenn;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejf;->zznie:Lcom/google/android/gms/internal/zzeir;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejf;->zznif:Lcom/google/android/gms/internal/zzejk;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzejk;)Lcom/google/android/gms/internal/zzelu;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzejf;->zzneb:Lcom/google/android/gms/internal/zzegu;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzegu;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzegu;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzejf;->zzneb:Lcom/google/android/gms/internal/zzegu;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzelu;->zzam(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzelu;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzejf;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzeir;->zzb(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzeki;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzejf;->zzniq:Lcom/google/android/gms/internal/zzenn;

    invoke-interface {v3, v2, v4}, Lcom/google/android/gms/internal/zzeki;->zza(Lcom/google/android/gms/internal/zzelu;Lcom/google/android/gms/internal/zzenn;)V

    new-instance v2, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelu;->zzcbh()Lcom/google/android/gms/internal/zzelr;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzeka;->zzc(Lcom/google/android/gms/internal/zzelr;)Lcom/google/android/gms/internal/zzeka;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzejf;->zzniq:Lcom/google/android/gms/internal/zzenn;

    invoke-direct {v2, v3, v1, v4}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzeka;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejf;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzelu;Lcom/google/android/gms/internal/zzejy;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
