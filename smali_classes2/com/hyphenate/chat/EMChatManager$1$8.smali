.class Lcom/hyphenate/chat/EMChatManager$1$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatManager$1;->onReceiveReadAckForConversation(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hyphenate/chat/EMChatManager$1;

.field final synthetic val$fromUsername:Ljava/lang/String;

.field final synthetic val$toUsername:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatManager$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatManager$1$8;->this$1:Lcom/hyphenate/chat/EMChatManager$1;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatManager$1$8;->val$fromUsername:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/chat/EMChatManager$1$8;->val$toUsername:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "EMChatManager"

    const-string v1, "onReceiveConversationHasReadAcks"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$1$8;->this$1:Lcom/hyphenate/chat/EMChatManager$1;

    iget-object v0, v0, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    invoke-static {v0}, Lcom/hyphenate/chat/EMChatManager;->access$100(Lcom/hyphenate/chat/EMChatManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$1$8;->val$fromUsername:Ljava/lang/String;

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->getCurrentUser()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v1

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager$1$8;->val$fromUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hyphenate/chat/EMChatManager;->getConversation(Ljava/lang/String;)Lcom/hyphenate/chat/EMConversation;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMConversation;->getAllMessages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/hyphenate/chat/EMConversation;->loadMoreMsgFromDB(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$1$8;->this$1:Lcom/hyphenate/chat/EMChatManager$1;

    iget-object v1, v1, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    invoke-static {v1}, Lcom/hyphenate/chat/EMChatManager;->access$100(Lcom/hyphenate/chat/EMChatManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMConversationListener;

    iget-object v3, p0, Lcom/hyphenate/chat/EMChatManager$1$8;->val$fromUsername:Ljava/lang/String;

    iget-object v4, p0, Lcom/hyphenate/chat/EMChatManager$1$8;->val$toUsername:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/hyphenate/EMConversationListener;->onConversationRead(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
