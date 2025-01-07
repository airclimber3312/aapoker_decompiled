.class Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hyphenate/EMCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EMCallbackHolder"
.end annotation


# instance fields
.field innerCallback:Lcom/hyphenate/EMCallBack;

.field private strong:Lcom/hyphenate/EMCallBack;

.field private weak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hyphenate/EMCallBack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/hyphenate/EMCallBack;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->innerCallback:Lcom/hyphenate/EMCallBack;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->weak:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method declared-synchronized getRef()Lcom/hyphenate/EMCallBack;
    .locals 4

    const-string v0, "getRef weak:"

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->strong:Lcom/hyphenate/EMCallBack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->weak:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/EMCallBack;

    if-nez v1, :cond_1

    const-string v2, "msg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v1

    :cond_2
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized makeItStrong()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->strong:Lcom/hyphenate/EMCallBack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->weak:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->weak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyphenate/EMCallBack;

    iput-object v0, p0, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->strong:Lcom/hyphenate/EMCallBack;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->innerCallback:Lcom/hyphenate/EMCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->getRef()Lcom/hyphenate/EMCallBack;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->release()V

    goto :goto_0

    :cond_1
    const-string p1, "msg"

    const-string p2, "CallbackHolder getRef: null"

    invoke-static {p1, p2}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onProgress(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->innerCallback:Lcom/hyphenate/EMCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/hyphenate/EMCallBack;->onProgress(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->getRef()Lcom/hyphenate/EMCallBack;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/hyphenate/EMCallBack;->onProgress(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->innerCallback:Lcom/hyphenate/EMCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hyphenate/EMCallBack;->onSuccess()V

    :cond_0
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->getRef()Lcom/hyphenate/EMCallBack;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/hyphenate/EMCallBack;->onSuccess()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->release()V

    goto :goto_0

    :cond_1
    const-string v0, "msg"

    const-string v1, "CallbackHolder getRef: null"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->strong:Lcom/hyphenate/EMCallBack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->strong:Lcom/hyphenate/EMCallBack;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->weak:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->strong:Lcom/hyphenate/EMCallBack;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized update(Lcom/hyphenate/EMCallBack;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->strong:Lcom/hyphenate/EMCallBack;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->strong:Lcom/hyphenate/EMCallBack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMMessage$EMCallbackHolder;->weak:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
