.class final Lcom/google/android/gms/internal/zzdbx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field final synthetic zzkyv:Lcom/google/android/gms/internal/zzdbo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdbo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdbx;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdbx;->zzkyv:Lcom/google/android/gms/internal/zzdbo;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdbo;->zzf(Lcom/google/android/gms/internal/zzdbo;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzdby;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzdby;-><init>(Lcom/google/android/gms/internal/zzdbx;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
