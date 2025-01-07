.class final Lcom/google/android/gms/internal/zzdca;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzkzc:Ljava/lang/String;

.field private synthetic zzkzi:Z

.field private synthetic zzkzj:Lcom/google/android/gms/internal/zzdbo$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdbo$zzb;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdca;->zzkzj:Lcom/google/android/gms/internal/zzdbo$zzb;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzdca;->zzkzi:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdca;->zzkzc:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdca;->zzkzj:Lcom/google/android/gms/internal/zzdbo$zzb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdbo$zzb;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zza(Lcom/google/android/gms/internal/zzdbo;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdca;->zzkzi:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdca;->zzkzj:Lcom/google/android/gms/internal/zzdbo$zzb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdbo$zzb;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdbo;->zza(Lcom/google/android/gms/internal/zzdbo;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdca;->zzkzc:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Container "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " loaded."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdca;->zzkzj:Lcom/google/android/gms/internal/zzdbo$zzb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdbo$zzb;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdbo;->zza(Lcom/google/android/gms/internal/zzdbo;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdca;->zzkzc:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Error loading container:"

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->e(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdca;->zzkzj:Lcom/google/android/gms/internal/zzdbo$zzb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdbo$zzb;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zze(Lcom/google/android/gms/internal/zzdbo;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdca;->zzkzj:Lcom/google/android/gms/internal/zzdbo$zzb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdbo$zzb;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zzf(Lcom/google/android/gms/internal/zzdbo;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdca;->zzkzj:Lcom/google/android/gms/internal/zzdbo$zzb;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzdbo$zzb;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdbo;->zze(Lcom/google/android/gms/internal/zzdbo;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    const-string v0, "Container load callback completed after timeout"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->zzcz(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
