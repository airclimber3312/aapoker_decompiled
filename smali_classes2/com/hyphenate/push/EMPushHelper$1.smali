.class Lcom/hyphenate/push/EMPushHelper$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/push/EMPushHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hyphenate/push/EMPushHelper;


# direct methods
.method constructor <init>(Lcom/hyphenate/push/EMPushHelper;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/push/EMPushHelper$1;->a:Lcom/hyphenate/push/EMPushHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "type"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-static {v0}, Lcom/hyphenate/push/EMPushType;->getType(Ljava/lang/String;)Lcom/hyphenate/push/EMPushType;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/push/EMPushHelper$1;->a:Lcom/hyphenate/push/EMPushHelper;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/hyphenate/push/EMPushHelper;->a(Lcom/hyphenate/push/EMPushHelper;Lcom/hyphenate/push/EMPushType;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Lcom/hyphenate/push/EMPushHelper$1;->a:Lcom/hyphenate/push/EMPushHelper;

    invoke-static {p1}, Lcom/hyphenate/push/EMPushHelper;->b(Lcom/hyphenate/push/EMPushHelper;)Lcom/hyphenate/push/platform/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/push/platform/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/hyphenate/push/EMPushHelper;->a(Lcom/hyphenate/push/EMPushHelper;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/hyphenate/push/EMPushHelper;->a(Lcom/hyphenate/push/EMPushHelper;Z)Z

    iget-object p1, p0, Lcom/hyphenate/push/EMPushHelper$1;->a:Lcom/hyphenate/push/EMPushHelper;

    invoke-static {p1}, Lcom/hyphenate/push/EMPushHelper;->d(Lcom/hyphenate/push/EMPushHelper;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/hyphenate/push/EMPushHelper$1;->a:Lcom/hyphenate/push/EMPushHelper;

    invoke-static {p1}, Lcom/hyphenate/push/EMPushHelper;->c(Lcom/hyphenate/push/EMPushHelper;)Lcom/hyphenate/push/EMPushType;

    move-result-object v0

    const-wide/16 v1, 0x5de

    invoke-virtual {p1, v0, v1, v2}, Lcom/hyphenate/push/EMPushHelper;->onErrorResponse(Lcom/hyphenate/push/EMPushType;J)V

    :cond_4
    iget-object p1, p0, Lcom/hyphenate/push/EMPushHelper$1;->a:Lcom/hyphenate/push/EMPushHelper;

    invoke-static {p1}, Lcom/hyphenate/push/EMPushHelper;->e(Lcom/hyphenate/push/EMPushHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lcom/hyphenate/push/EMPushHelper$1;->a:Lcom/hyphenate/push/EMPushHelper;

    invoke-static {p1}, Lcom/hyphenate/push/EMPushHelper;->e(Lcom/hyphenate/push/EMPushHelper;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    iget-object v0, p0, Lcom/hyphenate/push/EMPushHelper$1;->a:Lcom/hyphenate/push/EMPushHelper;

    invoke-static {v0}, Lcom/hyphenate/push/EMPushHelper;->a(Lcom/hyphenate/push/EMPushHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, p0, Lcom/hyphenate/push/EMPushHelper$1;->a:Lcom/hyphenate/push/EMPushHelper;

    invoke-static {v2}, Lcom/hyphenate/push/EMPushHelper;->b(Lcom/hyphenate/push/EMPushHelper;)Lcom/hyphenate/push/platform/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hyphenate/push/platform/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/hyphenate/push/EMPushHelper;->a(Lcom/hyphenate/push/EMPushHelper;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {p0, v3}, Lcom/hyphenate/push/EMPushHelper$1;->removeMessages(I)V

    iget-object v1, p0, Lcom/hyphenate/push/EMPushHelper$1;->a:Lcom/hyphenate/push/EMPushHelper;

    invoke-static {v1}, Lcom/hyphenate/push/EMPushHelper;->c(Lcom/hyphenate/push/EMPushHelper;)Lcom/hyphenate/push/EMPushType;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/hyphenate/push/EMPushHelper;->onBindTokenSuccess(Lcom/hyphenate/push/EMPushType;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_6
    invoke-virtual {p0, v3}, Lcom/hyphenate/push/EMPushHelper$1;->hasMessages(I)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/hyphenate/push/EMPushHelper$1;->a:Lcom/hyphenate/push/EMPushHelper;

    invoke-static {p1}, Lcom/hyphenate/push/EMPushHelper;->c(Lcom/hyphenate/push/EMPushHelper;)Lcom/hyphenate/push/EMPushType;

    move-result-object v1

    const-wide/16 v2, 0x5dd

    invoke-virtual {p1, v1, v2, v3}, Lcom/hyphenate/push/EMPushHelper;->onErrorResponse(Lcom/hyphenate/push/EMPushType;J)V

    iget-object p1, p0, Lcom/hyphenate/push/EMPushHelper$1;->a:Lcom/hyphenate/push/EMPushHelper;

    sget-object v1, Lcom/hyphenate/push/EMPushType;->NORMAL:Lcom/hyphenate/push/EMPushType;

    invoke-static {p1, v1}, Lcom/hyphenate/push/EMPushHelper;->a(Lcom/hyphenate/push/EMPushHelper;Lcom/hyphenate/push/EMPushType;)V

    :cond_7
    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method
