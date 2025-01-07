.class public abstract Lcom/hyphenate/chat/adapter/EMAChatManagerListener;
.super Lcom/hyphenate/chat/adapter/EMABase;

# interfaces
.implements Lcom/hyphenate/chat/adapter/EMAChatManagerListenerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatManagerListener;->nativeInit()V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatManagerListener;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method native nativeFinalize()V
.end method

.method native nativeInit()V
.end method

.method public onMessageAttachmentsStatusChanged(Lcom/hyphenate/chat/adapter/message/EMAMessage;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    return-void
.end method

.method public onMessageContentChanged(Lcom/hyphenate/chat/adapter/message/EMAMessage;Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public onMessageIdChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMessagePinChanged(Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;)V
    .locals 0

    return-void
.end method

.method public onMessageStatusChanged(Lcom/hyphenate/chat/adapter/message/EMAMessage;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    return-void
.end method

.method public onReceiveCmdMessages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReceiveHasDeliveredAcks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReceiveHasReadAcks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReceiveMessages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReceivePrivateMessages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReceiveReadAckForConversation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReceiveReadAcksForGroupMessage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAGroupReadAck;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReceiveRecallMessages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onReceiveRecallMessagesWithExt(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMARecallTuple;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUpdateConversationList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAConversation;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUpdateGroupAcks()V
    .locals 0

    return-void
.end method
