.class final Lcom/tencent/bugly/proguard/jt$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/jt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xx:Lcom/tencent/bugly/proguard/jt;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/jt;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/jt$1;->xx:Lcom/tencent/bugly/proguard/jt;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    :try_start_0
    iget-object p1, p0, Lcom/tencent/bugly/proguard/jt$1;->xx:Lcom/tencent/bugly/proguard/jt;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/jt;->a(Lcom/tencent/bugly/proguard/jt;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/bugly/proguard/jt$1;->xx:Lcom/tencent/bugly/proguard/jt;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/jt;->a(Lcom/tencent/bugly/proguard/jt;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/bugly/proguard/jt$1;->xx:Lcom/tencent/bugly/proguard/jt;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/jt;->a(Lcom/tencent/bugly/proguard/jt;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/jt$1;->xx:Lcom/tencent/bugly/proguard/jt;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/jt;->b(Lcom/tencent/bugly/proguard/jt;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/bugly/proguard/jt$1;->xx:Lcom/tencent/bugly/proguard/jt;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/jt;->a(Lcom/tencent/bugly/proguard/jt;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/ks;->a(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/bugly/proguard/jt$1;->xx:Lcom/tencent/bugly/proguard/jt;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/jt;->a(Lcom/tencent/bugly/proguard/jt;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/tencent/bugly/proguard/jt;->a(Lcom/tencent/bugly/proguard/jt;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/jt$1;->xx:Lcom/tencent/bugly/proguard/jt;

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/jt;->a(Lcom/tencent/bugly/proguard/jt;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_BigBitmap_RootViewDetectListener"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
