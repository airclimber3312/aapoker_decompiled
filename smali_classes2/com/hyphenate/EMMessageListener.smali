.class public interface abstract Lcom/hyphenate/EMMessageListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onCmdMessageReceived(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onGroupMessageRead(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMGroupReadAck;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMessageChanged(Lcom/hyphenate/chat/EMMessage;Ljava/lang/Object;)V
.end method

.method public abstract onMessageContentChanged(Lcom/hyphenate/chat/EMMessage;Ljava/lang/String;J)V
.end method

.method public abstract onMessageDelivered(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMessagePinChanged(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;Lcom/hyphenate/chat/EMMessagePinInfo;)V
.end method

.method public abstract onMessageRead(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMessageRecalled(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onMessageRecalledWithExt(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMRecallMessageInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMessageReceived(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReactionChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessageReactionChange;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReadAckForGroupMessageUpdated()V
.end method
