.class final Lcom/google/android/gms/internal/zzdbw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzkzf:Lcom/google/android/gms/internal/zzdbv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdbv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdbw;->zzkzf:Lcom/google/android/gms/internal/zzdbv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbw;->zzkzf:Lcom/google/android/gms/internal/zzdbv;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdbv;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zza(Lcom/google/android/gms/internal/zzdbo;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbw;->zzkzf:Lcom/google/android/gms/internal/zzdbv;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdbv;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zza(Lcom/google/android/gms/internal/zzdbo;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbw;->zzkzf:Lcom/google/android/gms/internal/zzdbv;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdbv;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdbo;->zza(Lcom/google/android/gms/internal/zzdbo;I)I

    const-string v0, "Container load timed out after 5000ms."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->e(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbw;->zzkzf:Lcom/google/android/gms/internal/zzdbv;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdbv;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zze(Lcom/google/android/gms/internal/zzdbo;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbw;->zzkzf:Lcom/google/android/gms/internal/zzdbv;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdbv;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zzf(Lcom/google/android/gms/internal/zzdbo;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdbw;->zzkzf:Lcom/google/android/gms/internal/zzdbv;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzdbv;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdbo;->zze(Lcom/google/android/gms/internal/zzdbo;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
