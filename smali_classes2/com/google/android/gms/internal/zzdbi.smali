.class final Lcom/google/android/gms/internal/zzdbi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdbh;


# instance fields
.field private handler:Landroid/os/Handler;

.field final synthetic zzkyg:Lcom/google/android/gms/internal/zzdbe;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzdbe;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdbi;->zzkyg:Lcom/google/android/gms/internal/zzdbe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdbe;->zza(Lcom/google/android/gms/internal/zzdbe;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/zzdbj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdbj;-><init>(Lcom/google/android/gms/internal/zzdbi;)V

    invoke-direct {v0, p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdbi;->handler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzdbe;Lcom/google/android/gms/internal/zzdbf;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdbi;-><init>(Lcom/google/android/gms/internal/zzdbe;)V

    return-void
.end method

.method private final obtainMessage()Landroid/os/Message;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbi;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/android/gms/internal/zzdbe;->zzbib()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbi;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/android/gms/internal/zzdbe;->zzbib()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public final zzbic()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbi;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/android/gms/internal/zzdbe;->zzbib()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbi;->handler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdbi;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final zzs(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbi;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/android/gms/internal/zzdbe;->zzbib()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbi;->handler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdbi;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
