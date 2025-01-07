.class final Lcom/tencent/bugly/proguard/fd$b$2;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/fd$b;->a(Landroid/content/Context;Landroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pF:Lcom/tencent/bugly/proguard/fd$b;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/fd$b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/fd$b$2;->pF:Lcom/tencent/bugly/proguard/fd$b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/fd$b$2;->pF:Lcom/tencent/bugly/proguard/fd$b;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/fd$b;->pB:[Landroid/os/Bundle;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/fd$b$2;->pF:Lcom/tencent/bugly/proguard/fd$b;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/fd$b;->pB:[Landroid/os/Bundle;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/tencent/bugly/proguard/fd$b$2;->pF:Lcom/tencent/bugly/proguard/fd$b;

    iget-object p1, p1, Lcom/tencent/bugly/proguard/fd$b;->pB:[Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    return-void
.end method
