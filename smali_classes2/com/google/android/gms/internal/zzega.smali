.class final Lcom/google/android/gms/internal/zzega;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzfct:Ljava/lang/Runnable;

.field private synthetic zzndn:Lcom/google/android/gms/internal/zzefz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzefz;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzega;->zzndn:Lcom/google/android/gms/internal/zzefz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzega;->zzfct:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzega;->zzndn:Lcom/google/android/gms/internal/zzefz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzefz;->zza(Lcom/google/android/gms/internal/zzefz;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzega;->zzfct:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
