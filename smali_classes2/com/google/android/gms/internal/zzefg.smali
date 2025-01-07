.class final Lcom/google/android/gms/internal/zzefg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zznaz:Lcom/google/android/gms/internal/zzeey;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeey;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefg;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefg;->zznaz:Lcom/google/android/gms/internal/zzeey;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzeey;->zza(Lcom/google/android/gms/internal/zzeey;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefg;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeey;->zzp(Lcom/google/android/gms/internal/zzeey;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefg;->zznaz:Lcom/google/android/gms/internal/zzeey;

    const-string v1, "connection_idle"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzeey;->interrupt(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefg;->zznaz:Lcom/google/android/gms/internal/zzeey;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeey;->zzn(Lcom/google/android/gms/internal/zzeey;)V

    return-void
.end method
