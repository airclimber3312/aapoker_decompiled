.class Lcom/hyphenate/chat/EMPresenceManager$1;
.super Lcom/hyphenate/chat/adapter/EMAPresenceManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMPresenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMPresenceManager;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMPresenceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMPresenceManager$1;->this$0:Lcom/hyphenate/chat/EMPresenceManager;

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMAPresenceManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPresenceUpdated(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAPresence;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMPresenceManager$1;->this$0:Lcom/hyphenate/chat/EMPresenceManager;

    invoke-static {v0}, Lcom/hyphenate/chat/EMPresenceManager;->access$000(Lcom/hyphenate/chat/EMPresenceManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMPresenceManager$1;->this$0:Lcom/hyphenate/chat/EMPresenceManager;

    invoke-static {v1}, Lcom/hyphenate/chat/EMPresenceManager;->access$000(Lcom/hyphenate/chat/EMPresenceManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMPresenceListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/hyphenate/chat/EMPresenceManager$1;->this$0:Lcom/hyphenate/chat/EMPresenceManager;

    invoke-static {v3, p1}, Lcom/hyphenate/chat/EMPresenceManager;->access$100(Lcom/hyphenate/chat/EMPresenceManager;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/hyphenate/EMPresenceListener;->onPresenceUpdated(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v3, p0, Lcom/hyphenate/chat/EMPresenceManager$1;->this$0:Lcom/hyphenate/chat/EMPresenceManager;

    invoke-static {v3}, Lcom/hyphenate/chat/EMPresenceManager;->access$200(Lcom/hyphenate/chat/EMPresenceManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EMPresenceManager->listenerImpl:onPresenceUpdated() Error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

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
