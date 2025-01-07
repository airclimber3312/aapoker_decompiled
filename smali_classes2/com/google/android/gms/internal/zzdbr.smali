.class final Lcom/google/android/gms/internal/zzdbr;
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

.field private synthetic zzkza:Lcom/google/android/gms/internal/zzdbq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdbq;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdbr;->zzkza:Lcom/google/android/gms/internal/zzdbq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdbr;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdbr;->zzkyx:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdbr;->zzkyy:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzdbr;->zzkyz:J

    iput-object p7, p0, Lcom/google/android/gms/internal/zzdbr;->zzjpm:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzdbr;->zzkyw:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbr;->zzkza:Lcom/google/android/gms/internal/zzdbq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdbq;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zza(Lcom/google/android/gms/internal/zzdbo;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbr;->zzkza:Lcom/google/android/gms/internal/zzdbq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdbq;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zzb(Lcom/google/android/gms/internal/zzdbo;)Lcom/google/android/gms/internal/zzdcj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdbr;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdbr;->zzkyx:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzdbr;->zzkyy:Ljava/lang/String;

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzdbr;->zzkyz:J

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/zzdcj;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbr;->zzkza:Lcom/google/android/gms/internal/zzdbq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdbq;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zza(Lcom/google/android/gms/internal/zzdbo;)I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v0, v2, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdbr;->val$name:Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdbr;->zzkyy:Ljava/lang/String;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdbr;->zzkyx:Landroid/os/Bundle;

    aput-object v1, v0, v4

    const-string v1, "Container failed to load: skipping  event interceptor by logging event back to Firebase directly: name = %s, origin = %s, params = %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbr;->zzkza:Lcom/google/android/gms/internal/zzdbq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdbq;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zzc(Lcom/google/android/gms/internal/zzdbo;)Lcom/google/android/gms/tagmanager/zzcn;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdbr;->zzkyy:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdbr;->val$name:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzdbr;->zzkyx:Landroid/os/Bundle;

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzdbr;->zzkyz:J

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/tagmanager/zzcn;->logEventInternalNoInterceptor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdbr;->zzkza:Lcom/google/android/gms/internal/zzdbq;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzdbq;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdbo;->zzd(Lcom/google/android/gms/internal/zzdbo;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "Error logging event on measurement proxy: "

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/zzczq;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbr;->zzkza:Lcom/google/android/gms/internal/zzdbq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdbq;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zza(Lcom/google/android/gms/internal/zzdbo;)I

    move-result v0

    if-eq v0, v5, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbr;->zzkza:Lcom/google/android/gms/internal/zzdbq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdbq;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zza(Lcom/google/android/gms/internal/zzdbo;)I

    move-result v0

    if-ne v0, v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbr;->zzkza:Lcom/google/android/gms/internal/zzdbq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdbq;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

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

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdbr;->zzkza:Lcom/google/android/gms/internal/zzdbq;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzdbq;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdbo;->zzd(Lcom/google/android/gms/internal/zzdbo;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzczq;->zzd(Ljava/lang/String;Landroid/content/Context;)V

    return-void

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdbr;->zzkyw:Z

    if-nez v0, :cond_4

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdbr;->val$name:Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdbr;->zzjpm:Ljava/lang/String;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdbr;->zzkyx:Landroid/os/Bundle;

    aput-object v1, v0, v4

    const-string v1, "Container not loaded yet: deferring event interceptor by enqueuing the event: name = %s, origin = %s, params = %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/google/android/gms/internal/zzdbr;->zzkyw:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbr;->zzkza:Lcom/google/android/gms/internal/zzdbq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdbq;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zze(Lcom/google/android/gms/internal/zzdbo;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbr;->zzkza:Lcom/google/android/gms/internal/zzdbq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdbq;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdbo;->zzd(Lcom/google/android/gms/internal/zzdbo;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Invalid state - not expecting to see a deferredevent during container loading."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzczq;->zzd(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
