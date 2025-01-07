.class Lcom/hyphenate/chat/EMClient$ClientLogListener;
.super Lcom/hyphenate/chat/adapter/EMALogCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientLogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMClient;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMClient;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient$ClientLogListener;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMALogCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onLogCallback$0$com-hyphenate-chat-EMClient$ClientLogListener(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$ClientLogListener;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v0}, Lcom/hyphenate/chat/EMClient;->access$900(Lcom/hyphenate/chat/EMClient;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMClient$ClientLogListener;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v1}, Lcom/hyphenate/chat/EMClient;->access$900(Lcom/hyphenate/chat/EMClient;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMLogListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2, p1}, Lcom/hyphenate/EMLogListener;->onLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onLogCallback(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$ClientLogListener;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v0}, Lcom/hyphenate/chat/EMClient;->access$800(Lcom/hyphenate/chat/EMClient;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMClient$ClientLogListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/hyphenate/chat/EMClient$ClientLogListener$$ExternalSyntheticLambda0;-><init>(Lcom/hyphenate/chat/EMClient$ClientLogListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
