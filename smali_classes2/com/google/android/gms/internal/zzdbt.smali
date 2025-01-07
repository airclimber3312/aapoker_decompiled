.class final Lcom/google/android/gms/internal/zzdbt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$name:Ljava/lang/String;

.field private synthetic zzjpm:Ljava/lang/String;

.field private zzkyw:Z

.field private synthetic zzkyx:Landroid/os/Bundle;

.field private synthetic zzkyy:Ljava/lang/String;

.field private synthetic zzkyz:J

.field private synthetic zzkzb:Lcom/google/android/gms/internal/zzdbs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdbs;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdbt;->zzkzb:Lcom/google/android/gms/internal/zzdbs;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdbt;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdbt;->zzkyx:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdbt;->zzkyy:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzdbt;->zzkyz:J

    iput-object p7, p0, Lcom/google/android/gms/internal/zzdbt;->zzjpm:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzdbt;->zzkyw:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbt;->zzkzb:Lcom/google/android/gms/internal/zzdbs;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdbs;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zza(Lcom/google/android/gms/internal/zzdbo;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbt;->zzkzb:Lcom/google/android/gms/internal/zzdbs;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdbs;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zzb(Lcom/google/android/gms/internal/zzdbo;)Lcom/google/android/gms/internal/zzdcj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdbt;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdbt;->zzkyx:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzdbt;->zzkyy:Ljava/lang/String;

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzdbt;->zzkyz:J

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/zzdcj;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbt;->zzkzb:Lcom/google/android/gms/internal/zzdbs;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdbs;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zza(Lcom/google/android/gms/internal/zzdbo;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbt;->zzkzb:Lcom/google/android/gms/internal/zzdbs;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdbs;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zza(Lcom/google/android/gms/internal/zzdbo;)I

    move-result v0

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbt;->zzkzb:Lcom/google/android/gms/internal/zzdbs;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdbs;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zza(Lcom/google/android/gms/internal/zzdbo;)I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdbt;->val$name:Ljava/lang/String;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdbt;->zzjpm:Ljava/lang/String;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdbt;->zzkyx:Landroid/os/Bundle;

    aput-object v1, v0, v3

    const-string v1, "Container failed to load: skipping event listener by ignoring the event: name = %s, origin = %s, params = %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbt;->zzkzb:Lcom/google/android/gms/internal/zzdbs;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdbs;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zza(Lcom/google/android/gms/internal/zzdbo;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdbt;->zzkzb:Lcom/google/android/gms/internal/zzdbs;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzdbs;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdbo;->zzd(Lcom/google/android/gms/internal/zzdbo;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzczq;->zzd(Ljava/lang/String;Landroid/content/Context;)V

    return-void

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdbt;->zzkyw:Z

    if-nez v0, :cond_4

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdbt;->val$name:Ljava/lang/String;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdbt;->zzjpm:Ljava/lang/String;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdbt;->zzkyx:Landroid/os/Bundle;

    aput-object v1, v0, v3

    const-string v1, "Container not loaded yet: deferring event listener by enqueuing the event: name = %s, origin = %s, params = %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/zzdbt;->zzkyw:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbt;->zzkzb:Lcom/google/android/gms/internal/zzdbs;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdbs;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zze(Lcom/google/android/gms/internal/zzdbo;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    const-string v0, "Invalid state - not expecting to see a deferred event during container loading."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->zzcz(Ljava/lang/String;)V

    return-void
.end method
