.class Lcom/hyphenate/chat/EMChatManager$1;
.super Lcom/hyphenate/chat/adapter/EMAChatManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMChatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMChatManager;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMChatManager;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMAChatManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageAttachmentsStatusChanged(Lcom/hyphenate/chat/adapter/message/EMAMessage;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 2

    :try_start_0
    new-instance p2, Lcom/hyphenate/chat/EMMessage;

    invoke-direct {p2, p1}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    invoke-static {p1}, Lcom/hyphenate/chat/EMChatManager;->access$000(Lcom/hyphenate/chat/EMChatManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyphenate/EMMessageListener;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/hyphenate/EMMessageListener;->onMessageChanged(Lcom/hyphenate/chat/EMMessage;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public onMessageContentChanged(Lcom/hyphenate/chat/adapter/message/EMAMessage;Ljava/lang/String;J)V
    .locals 8

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v7, Lcom/hyphenate/chat/EMChatManager$1$13;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMChatManager$1$13;-><init>(Lcom/hyphenate/chat/EMChatManager$1;Lcom/hyphenate/chat/adapter/message/EMAMessage;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->executeOnMainQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMessageIdChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {v0, p3}, Lcom/hyphenate/chat/adapter/EMAChatManager;->getMessage(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/message/EMAMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    invoke-static {v1, v0}, Lcom/hyphenate/chat/EMChatManager;->access$200(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMChatManager;->getConversation(Ljava/lang/String;)Lcom/hyphenate/chat/EMConversation;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMConversation;->getCache()Lcom/hyphenate/chat/EMConversation$MessageCache;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/hyphenate/chat/EMConversation$MessageCache;->replaceMsgId(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    invoke-virtual {p1, p3}, Lcom/hyphenate/chat/EMChatManager;->getMessage(Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->isContentReplaced()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/hyphenate/chat/EMMessage;->body:Lcom/hyphenate/chat/EMMessageBody;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getBody()Lcom/hyphenate/chat/EMMessageBody;

    :cond_2
    return-void
.end method

.method public onMessagePinChanged(Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;)V
    .locals 8

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v7, Lcom/hyphenate/chat/EMChatManager$1$14;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMChatManager$1$14;-><init>(Lcom/hyphenate/chat/EMChatManager$1;Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->executeOnMainQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMessageStatusChanged(Lcom/hyphenate/chat/adapter/message/EMAMessage;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 1

    iget-object p2, p0, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object p2, p2, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v0, Lcom/hyphenate/chat/EMChatManager$1$3;

    invoke-direct {v0, p0, p1}, Lcom/hyphenate/chat/EMChatManager$1$3;-><init>(Lcom/hyphenate/chat/EMChatManager$1;Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    invoke-virtual {p2, v0}, Lcom/hyphenate/chat/EMClient;->executeOnMainQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceiveCmdMessages(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$1$2;

    invoke-direct {v1, p0, p1}, Lcom/hyphenate/chat/EMChatManager$1$2;-><init>(Lcom/hyphenate/chat/EMChatManager$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->executeOnMainQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceiveHasDeliveredAcks(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$1$7;

    invoke-direct {v1, p0, p1}, Lcom/hyphenate/chat/EMChatManager$1$7;-><init>(Lcom/hyphenate/chat/EMChatManager$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->executeOnMainQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceiveHasReadAcks(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$1$6;

    invoke-direct {v1, p0, p1}, Lcom/hyphenate/chat/EMChatManager$1$6;-><init>(Lcom/hyphenate/chat/EMChatManager$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->executeOnMainQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceiveMessages(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$1$1;

    invoke-direct {v1, p0, p1}, Lcom/hyphenate/chat/EMChatManager$1$1;-><init>(Lcom/hyphenate/chat/EMChatManager$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->executeOnMainQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceivePrivateMessages(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$1$10;

    invoke-direct {v1, p0, p1}, Lcom/hyphenate/chat/EMChatManager$1$10;-><init>(Lcom/hyphenate/chat/EMChatManager$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->executeOnMainQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceiveReadAckForConversation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$1$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMChatManager$1$8;-><init>(Lcom/hyphenate/chat/EMChatManager$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->executeOnMainQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceiveReadAcksForGroupMessage(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAGroupReadAck;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$1$11;

    invoke-direct {v1, p0, p1}, Lcom/hyphenate/chat/EMChatManager$1$11;-><init>(Lcom/hyphenate/chat/EMChatManager$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->executeOnMainQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceiveRecallMessages(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$1$4;

    invoke-direct {v1, p0, p1}, Lcom/hyphenate/chat/EMChatManager$1$4;-><init>(Lcom/hyphenate/chat/EMChatManager$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->executeOnMainQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceiveRecallMessagesWithExt(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMARecallTuple;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$1$5;

    invoke-direct {v1, p0, p1}, Lcom/hyphenate/chat/EMChatManager$1$5;-><init>(Lcom/hyphenate/chat/EMChatManager$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->executeOnMainQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateConversationList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAConversation;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object p1, p1, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v0, Lcom/hyphenate/chat/EMChatManager$1$9;

    invoke-direct {v0, p0}, Lcom/hyphenate/chat/EMChatManager$1$9;-><init>(Lcom/hyphenate/chat/EMChatManager$1;)V

    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/EMClient;->executeOnMainQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateGroupAcks()V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager$1;->this$0:Lcom/hyphenate/chat/EMChatManager;

    iget-object v0, v0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$1$12;

    invoke-direct {v1, p0}, Lcom/hyphenate/chat/EMChatManager$1$12;-><init>(Lcom/hyphenate/chat/EMChatManager$1;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->executeOnMainQueue(Ljava/lang/Runnable;)V

    return-void
.end method
