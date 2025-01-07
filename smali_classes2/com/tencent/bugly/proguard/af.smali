.class public final Lcom/tencent/bugly/proguard/af;
.super Ljava/lang/Object;


# instance fields
.field private aF:I

.field private aG:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/af;->aF:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/af;->aG:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/af;->F()Landroid/view/Choreographer;

    return-void
.end method

.method private F()Landroid/view/Choreographer;
    .locals 5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/af;->aG:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/tencent/bugly/proguard/af;->aF:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/bugly/proguard/af;->aF:I

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "init choreographer error (fail count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/tencent/bugly/proguard/af;->aF:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RMonitor_looper"

    invoke-virtual {v1, v4, v3, v0}, Lcom/tencent/bugly/proguard/km;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v2
.end method

.method private G()Landroid/view/Choreographer;
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/af;->aG:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    :goto_0
    if-nez v0, :cond_1

    iget v1, p0, Lcom/tencent/bugly/proguard/af;->aF:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/af;->F()Landroid/view/Choreographer;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/af;->G()Landroid/view/Choreographer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_looper"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/af;->G()Landroid/view/Choreographer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_looper"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
