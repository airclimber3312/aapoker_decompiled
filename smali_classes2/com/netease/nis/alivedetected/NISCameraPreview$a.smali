.class public Lcom/netease/nis/alivedetected/NISCameraPreview$a;
.super Ljava/lang/Object;
.source "NISCameraPreview.java"

# interfaces
.implements Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/nis/alivedetected/NISCameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/netease/nis/alivedetected/NISCameraPreview;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/nis/alivedetected/NISCameraPreview;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview$a;->a:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p2, p0, Lcom/netease/nis/alivedetected/NISCameraPreview$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/netease/nis/alivedetected/e/d;->a()Lcom/netease/nis/alivedetected/e/d;

    move-result-object v1

    const-string v2, "5"

    sget-object v3, Lcom/netease/nis/alivedetected/AliveDetector;->mToken:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u4e0a\u4f20\u666e\u901a\u7167\u5931\u8d25"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/nis/alivedetected/NISCameraPreview;

    invoke-virtual {p1}, Lcom/netease/nis/alivedetected/NISCameraPreview;->getCurrentAction()Lcom/netease/nis/alivedetected/ActionType;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/nis/alivedetected/NISCameraPreview;

    invoke-virtual {p1}, Lcom/netease/nis/alivedetected/NISCameraPreview;->getCurrentAction()Lcom/netease/nis/alivedetected/ActionType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/alivedetected/ActionType;->getActionTip()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview$a;->b:Ljava/lang/String;

    :goto_0
    move-object v6, p1

    .line 4
    invoke-virtual/range {v1 .. v6}, Lcom/netease/nis/alivedetected/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u56fe\u7247\u4e0a\u4f20\u5931\u8d25:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NISCameraPreview"

    invoke-static {p2, p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/nis/alivedetected/NISCameraPreview;

    .line 8
    iget-object p1, p1, Lcom/netease/nis/alivedetected/NISCameraPreview;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    const-string p1, "2"

    .line 10
    sput-object p1, Lcom/netease/nis/alivedetected/e/b;->d:Ljava/lang/String;

    .line 11
    iget-object p1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/nis/alivedetected/NISCameraPreview;

    .line 12
    iget-object p1, p1, Lcom/netease/nis/alivedetected/NISCameraPreview;->k:Ljava/lang/Object;

    .line 13
    monitor-enter p1

    .line 14
    :try_start_0
    iget-object p2, p0, Lcom/netease/nis/alivedetected/NISCameraPreview$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/nis/alivedetected/NISCameraPreview;

    .line 15
    iget-object p2, p2, Lcom/netease/nis/alivedetected/NISCameraPreview;->k:Ljava/lang/Object;

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 17
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    :goto_1
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/nis/alivedetected/NISCameraPreview;

    iget-object v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nis/alivedetected/NISCameraPreview;

    .line 3
    iget-object v0, v0, Lcom/netease/nis/alivedetected/NISCameraPreview;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/netease/nis/alivedetected/NISCameraPreview;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/nis/alivedetected/NISCameraPreview;

    .line 9
    iget-object p1, p1, Lcom/netease/nis/alivedetected/NISCameraPreview;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/netease/nis/alivedetected/NISCameraPreview$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/nis/alivedetected/NISCameraPreview;

    .line 13
    iget-object p1, p1, Lcom/netease/nis/alivedetected/NISCameraPreview;->k:Ljava/lang/Object;

    .line 14
    monitor-enter p1

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nis/alivedetected/NISCameraPreview;

    .line 16
    iget-object v0, v0, Lcom/netease/nis/alivedetected/NISCameraPreview;->k:Ljava/lang/Object;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 18
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u56fe\u7247\u4e0a\u4f20\u6210\u529f"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nis/alivedetected/NISCameraPreview$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NISCameraPreview"

    invoke-static {v0, p1}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 20
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
