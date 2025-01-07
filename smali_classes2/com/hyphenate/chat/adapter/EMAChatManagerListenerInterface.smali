.class public interface abstract Lcom/hyphenate/chat/adapter/EMAChatManagerListenerInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onMessageAttachmentsStatusChanged(Lcom/hyphenate/chat/adapter/message/EMAMessage;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method public abstract onMessageContentChanged(Lcom/hyphenate/chat/adapter/message/EMAMessage;Ljava/lang/String;J)V
.end method

.method public abstract onMessageIdChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onMessagePinChanged(Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;)V
.end method

.method public abstract onMessageStatusChanged(Lcom/hyphenate/chat/adapter/message/EMAMessage;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method public abstract onReceiveCmdMessages(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReceiveHasDeliveredAcks(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReceiveHasReadAcks(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReceiveMessages(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReceivePrivateMessages(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReceiveReadAckForConversation(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReceiveReadAcksForGroupMessage(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAGroupReadAck;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReceiveRecallMessages(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReceiveRecallMessagesWithExt(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMARecallTuple;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUpdateConversationList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAConversation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUpdateGroupAcks()V
.end method
