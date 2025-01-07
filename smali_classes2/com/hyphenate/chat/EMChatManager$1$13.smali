.class Lcom/hyphenate/chat/EMChatManager$1$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMChatManager$1;->onMessageContentChanged(Lcom/hyphenate/chat/adapter/message/EMAMessage;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hyphenate/chat/EMChatManager$1;

.field final synthetic val$message:Lcom/hyphenate/chat/adapter/message/EMAMessage;

.field final synthetic val$operationTime:J

.field final synthetic val$operatorId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatManager$1;Lcom/hyphenate/chat/adapter/message/EMAMessage;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatManager$1$13;->this$1:Lcom/hyphenate/chat/EMChatManager$1;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatManager$1$13;->val$message:Lcom/hyphenate/chat/adapter/message/EMAMessage;

    iput-object p3, p0, Lcom/hyphenate/chat/EMChatManager$1$13;->val$operatorId:Ljava/lang/String;

    iput-wide p4, p0, Lcom/hyphenate/chat/EMChatManager$1$13;->val$operationTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    new-instance v0, Lcom/hyphenate/chat/EMMessage;

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$1$13;->val$message:Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-direct {v0, v1}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$1$13;->this$1:Lcom/hyphenate/chat/EMChatManager$1;

    iget-object v1, v1, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMMessage;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMMessage;->getChatType()Lcom/hyphenate/chat/EMMessage$ChatType;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hyphenate/chat/EMConversation;->msgType2ConversationType(Ljava/lang/String;Lcom/hyphenate/chat/EMMessage$ChatType;)Lcom/hyphenate/chat/EMConversation$EMConversationType;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/hyphenate/chat/EMChatManager;->getConversation(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;Z)Lcom/hyphenate/chat/EMConversation;

    move-result-object v1

    const-string v2, "EMChatManager"

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMMessage;->getType()Lcom/hyphenate/chat/EMMessage$Type;

    move-result-object v3

    sget-object v4, Lcom/hyphenate/chat/EMMessage$Type;->CMD:Lcom/hyphenate/chat/EMMessage$Type;

    if-eq v3, v4, :cond_1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMConversation;->getCache()Lcom/hyphenate/chat/EMConversation$MessageCache;

    move-result-object v3

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/hyphenate/chat/EMConversation$MessageCache;->removeMessage(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMConversation;->getCache()Lcom/hyphenate/chat/EMConversation$MessageCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hyphenate/chat/EMConversation$MessageCache;->addMessage(Lcom/hyphenate/chat/EMMessage;)V

    goto :goto_0

    :cond_0
    const-string v1, "onMessageContentChanged:no conversation"

    invoke-static {v2, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$1$13;->this$1:Lcom/hyphenate/chat/EMChatManager$1;

    iget-object v1, v1, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    invoke-static {v1}, Lcom/hyphenate/chat/EMChatManager;->access$000(Lcom/hyphenate/chat/EMChatManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hyphenate/EMMessageListener;

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMessageContentChanged\uff1a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/hyphenate/chat/EMChatManager$1$13;->val$operatorId:Ljava/lang/String;

    iget-wide v5, p0, Lcom/hyphenate/chat/EMChatManager$1$13;->val$operationTime:J

    invoke-interface {v3, v0, v4, v5, v6}, Lcom/hyphenate/EMMessageListener;->onMessageContentChanged(Lcom/hyphenate/chat/EMMessage;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onMessageContentChanged has problem: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    return-void
.end method
