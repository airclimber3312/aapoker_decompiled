.class public final Lcom/google/android/gms/internal/zzedf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzegt;


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzedf;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final restart()V
    .locals 0

    return-void
.end method

.method public final shutdown()V
    .locals 0

    return-void
.end method

.method public final zzn(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedf;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
