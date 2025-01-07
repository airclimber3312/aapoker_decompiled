.class final Lcom/google/android/gms/internal/zzefu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzeft;
.implements Lcom/google/android/gms/internal/zzeoj;


# instance fields
.field final synthetic zznck:Lcom/google/android/gms/internal/zzefp;

.field private zzncl:Lcom/google/android/gms/internal/zzeoe;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzefp;Lcom/google/android/gms/internal/zzeoe;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefu;->zznck:Lcom/google/android/gms/internal/zzefp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzefu;->zzncl:Lcom/google/android/gms/internal/zzeoe;

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/zzeoe;->zza(Lcom/google/android/gms/internal/zzeoj;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzefp;Lcom/google/android/gms/internal/zzeoe;Lcom/google/android/gms/internal/zzefq;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzefu;-><init>(Lcom/google/android/gms/internal/zzefp;Lcom/google/android/gms/internal/zzeoe;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefu;->zzncl:Lcom/google/android/gms/internal/zzeoe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeoe;->close()V

    return-void
.end method

.method public final connect()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefu;->zzncl:Lcom/google/android/gms/internal/zzeoe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeoe;->connect()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzeok; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefu;->zznck:Lcom/google/android/gms/internal/zzefp;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzefp;->zzb(Lcom/google/android/gms/internal/zzefp;)Lcom/google/android/gms/internal/zzemm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefu;->zznck:Lcom/google/android/gms/internal/zzefp;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzefp;->zzb(Lcom/google/android/gms/internal/zzefp;)Lcom/google/android/gms/internal/zzemm;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Error connecting"

    invoke-virtual {v1, v3, v0, v2}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefu;->zzncl:Lcom/google/android/gms/internal/zzeoe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeoe;->close()V

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefu;->zzncl:Lcom/google/android/gms/internal/zzeoe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeoe;->zzcdf()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefu;->zznck:Lcom/google/android/gms/internal/zzefp;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzefp;->zzb(Lcom/google/android/gms/internal/zzefp;)Lcom/google/android/gms/internal/zzemm;

    move-result-object v1

    const-string v2, "Interrupted while shutting down websocket threads"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzemm;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onClose()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefu;->zznck:Lcom/google/android/gms/internal/zzefp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzefp;->zzd(Lcom/google/android/gms/internal/zzefp;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzefx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzefx;-><init>(Lcom/google/android/gms/internal/zzefu;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeok;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefu;->zznck:Lcom/google/android/gms/internal/zzefp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzefp;->zzd(Lcom/google/android/gms/internal/zzefp;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzefy;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzefy;-><init>(Lcom/google/android/gms/internal/zzefu;Lcom/google/android/gms/internal/zzeok;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeom;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeom;->getText()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefu;->zznck:Lcom/google/android/gms/internal/zzefp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzefp;->zzb(Lcom/google/android/gms/internal/zzefp;)Lcom/google/android/gms/internal/zzemm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefu;->zznck:Lcom/google/android/gms/internal/zzefp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzefp;->zzb(Lcom/google/android/gms/internal/zzefp;)Lcom/google/android/gms/internal/zzemm;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "ws message: "

    if-eqz v2, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefu;->zznck:Lcom/google/android/gms/internal/zzefp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzefp;->zzd(Lcom/google/android/gms/internal/zzefp;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzefw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzefw;-><init>(Lcom/google/android/gms/internal/zzefu;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzbxp()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefu;->zznck:Lcom/google/android/gms/internal/zzefp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzefp;->zzd(Lcom/google/android/gms/internal/zzefp;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzefv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzefv;-><init>(Lcom/google/android/gms/internal/zzefu;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzpy(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefu;->zzncl:Lcom/google/android/gms/internal/zzeoe;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzeoe;->zzpy(Ljava/lang/String;)V

    return-void
.end method
