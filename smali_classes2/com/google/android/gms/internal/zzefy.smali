.class final Lcom/google/android/gms/internal/zzefy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzncm:Lcom/google/android/gms/internal/zzefu;

.field private synthetic zznco:Lcom/google/android/gms/internal/zzeok;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzefu;Lcom/google/android/gms/internal/zzeok;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefy;->zzncm:Lcom/google/android/gms/internal/zzefu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzefy;->zznco:Lcom/google/android/gms/internal/zzeok;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefy;->zznco:Lcom/google/android/gms/internal/zzeok;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeok;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefy;->zznco:Lcom/google/android/gms/internal/zzeok;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeok;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/EOFException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefy;->zzncm:Lcom/google/android/gms/internal/zzefu;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzefu;->zznck:Lcom/google/android/gms/internal/zzefp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzefp;->zzb(Lcom/google/android/gms/internal/zzefp;)Lcom/google/android/gms/internal/zzemm;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "WebSocket reached EOF."

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefy;->zzncm:Lcom/google/android/gms/internal/zzefu;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzefu;->zznck:Lcom/google/android/gms/internal/zzefp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzefp;->zzb(Lcom/google/android/gms/internal/zzefp;)Lcom/google/android/gms/internal/zzemm;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzefy;->zznco:Lcom/google/android/gms/internal/zzeok;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "WebSocket error."

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefy;->zzncm:Lcom/google/android/gms/internal/zzefu;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzefu;->zznck:Lcom/google/android/gms/internal/zzefp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzefp;->zze(Lcom/google/android/gms/internal/zzefp;)V

    return-void
.end method
