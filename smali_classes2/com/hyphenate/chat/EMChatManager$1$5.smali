.class Lcom/hyphenate/chat/EMChatManager$1$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatManager$1;->onReceiveRecallMessagesWithExt(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hyphenate/chat/EMChatManager$1;

.field final synthetic val$recallList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatManager$1;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatManager$1$5;->this$1:Lcom/hyphenate/chat/EMChatManager$1;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatManager$1$5;->val$recallList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$1$5;->val$recallList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager$1$5;->val$recallList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hyphenate/chat/adapter/EMARecallTuple;

    invoke-virtual {v3}, Lcom/hyphenate/chat/adapter/EMARecallTuple;->getRecallBy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/hyphenate/chat/adapter/EMARecallTuple;->getRecallMessageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/hyphenate/chat/adapter/EMARecallTuple;->getRecallExt()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/hyphenate/chat/adapter/EMARecallTuple;->getRecallMessage()Lcom/hyphenate/chat/EMMessage;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/hyphenate/chat/EMChatManager$1$5;->this$1:Lcom/hyphenate/chat/EMChatManager$1;

    iget-object v7, v7, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    invoke-virtual {v3}, Lcom/hyphenate/chat/EMMessage;->conversationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/hyphenate/chat/EMChatManager;->getConversation(Ljava/lang/String;)Lcom/hyphenate/chat/EMConversation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hyphenate/chat/EMConversation;->getCache()Lcom/hyphenate/chat/EMConversation$MessageCache;

    move-result-object v7

    invoke-virtual {v3}, Lcom/hyphenate/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/hyphenate/chat/EMConversation$MessageCache;->removeMessage(Ljava/lang/String;)V

    :cond_0
    new-instance v7, Lcom/hyphenate/chat/EMRecallMessageInfo;

    invoke-direct {v7, v4, v5, v3, v6}, Lcom/hyphenate/chat/EMRecallMessageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/EMMessage;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager$1$5;->this$1:Lcom/hyphenate/chat/EMChatManager$1;

    iget-object v2, v2, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    invoke-static {v2}, Lcom/hyphenate/chat/EMChatManager;->access$000(Lcom/hyphenate/chat/EMChatManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hyphenate/EMMessageListener;

    invoke-interface {v3, v0}, Lcom/hyphenate/EMMessageListener;->onMessageRecalledWithExt(Ljava/util/List;)V

    invoke-interface {v3, v1}, Lcom/hyphenate/EMMessageListener;->onMessageRecalled(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method
