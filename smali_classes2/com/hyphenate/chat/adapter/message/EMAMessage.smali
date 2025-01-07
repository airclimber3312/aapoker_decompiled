.class public Lcom/hyphenate/chat/adapter/message/EMAMessage;
.super Lcom/hyphenate/chat/adapter/EMABase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;,
        Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;,
        Lcom/hyphenate/chat/adapter/message/EMAMessage$EMADirection;
    }
.end annotation


# static fields
.field public static final EMAChatType_CHATROOM:I = 0x2

.field public static final EMAChatType_GROUP:I = 0x1

.field public static final EMAChatType_SINGLE:I = 0x0

.field public static final EMAMessageStatus_DELIVERING:I = 0x1

.field public static final EMAMessageStatus_FAIL:I = 0x3

.field public static final EMAMessageStatus_NEW:I = 0x0

.field public static final EMAMessageStatus_SUCCESS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeInit()V

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeInit(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    return-void
.end method

.method public static createReceiveMessage(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/message/EMAMessageBody;I)Lcom/hyphenate/chat/adapter/message/EMAMessage;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeCreateReceiveMessage(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/message/EMAMessageBody;I)Lcom/hyphenate/chat/adapter/message/EMAMessage;

    move-result-object p0

    return-object p0
.end method

.method public static createSendMessage(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/message/EMAMessageBody;I)Lcom/hyphenate/chat/adapter/message/EMAMessage;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeCreateSendMessage(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/message/EMAMessageBody;I)Lcom/hyphenate/chat/adapter/message/EMAMessage;

    move-result-object p0

    return-object p0
.end method

.method public static native nativeCreateReceiveMessage(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/message/EMAMessageBody;I)Lcom/hyphenate/chat/adapter/message/EMAMessage;
.end method

.method public static native nativeCreateSendMessage(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/message/EMAMessageBody;I)Lcom/hyphenate/chat/adapter/message/EMAMessage;
.end method


# virtual methods
.method public _status()Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeStatus()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;->FAIL:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    return-object v0

    :cond_0
    sget-object v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;->FAIL:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    return-object v0

    :cond_1
    sget-object v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;->SUCCESS:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    return-object v0

    :cond_2
    sget-object v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;->DELIVERING:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    return-object v0

    :cond_3
    sget-object v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;->NEW:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAMessageStatus;

    return-object v0
.end method

.method public addBody(Lcom/hyphenate/chat/adapter/message/EMAMessageBody;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeAddBody(Lcom/hyphenate/chat/adapter/message/EMAMessageBody;)V

    return-void
.end method

.method public bodies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessageBody;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeBodies()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public chatType()Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeChatType()I

    move-result v0

    sget-object v1, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;->SINGLE:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    sget-object v1, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;->SINGLE:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;->SINGLE:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;->GROUP:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;->GROUP:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;->CHATROOM:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;

    :goto_0
    return-object v0
.end method

.method public clearBodies()V
    .locals 0

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeClearBodies()V

    return-void
.end method

.method public conversationId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeConversationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deliverOnlineOnly(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeDeliverOnlineOnly(Z)V

    return-void
.end method

.method public direction()Lcom/hyphenate/chat/adapter/message/EMAMessage$EMADirection;
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeDirection()I

    move-result v0

    sget-object v1, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMADirection;->SEND:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMADirection;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMADirection;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMADirection;->SEND:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMADirection;

    return-object v0

    :cond_0
    sget-object v0, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMADirection;->RECEIVE:Lcom/hyphenate/chat/adapter/message/EMAMessage$EMADirection;

    return-object v0
.end method

.method public ext()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeExt()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public from()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeGetAttributes()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBooleanAttribute(Ljava/lang/String;ZLjava/util/concurrent/atomic/AtomicBoolean;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeGetBooleanAttribute(Ljava/lang/String;ZLjava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result p1

    return p1
.end method

.method public getChatThread()Lcom/hyphenate/chat/adapter/EMAThreadInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeGetChatThread()Lcom/hyphenate/chat/adapter/EMAThreadInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleAttribute(Ljava/lang/String;DLjava/util/concurrent/atomic/AtomicReference;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeGetDoubleAttribute(Ljava/lang/String;DLjava/util/concurrent/atomic/AtomicReference;)Z

    move-result p1

    return p1
.end method

.method public getFloatAttribute(Ljava/lang/String;FLjava/util/concurrent/atomic/AtomicReference;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeGetFloatAttribute(Ljava/lang/String;FLjava/util/concurrent/atomic/AtomicReference;)Z

    move-result p1

    return p1
.end method

.method public getIntAttribute(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeGetIntAttribute(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;)Z

    move-result p1

    return p1
.end method

.method public getJsonAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeGetJsonAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result p1

    return p1
.end method

.method public getLocalTime()J
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeGetLocalTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongAttribute(Ljava/lang/String;JLjava/util/concurrent/atomic/AtomicLong;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeGetLongAttribute(Ljava/lang/String;JLjava/util/concurrent/atomic/AtomicLong;)Z

    move-result p1

    return p1
.end method

.method public getRecaller()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeGetRecaller()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeGetStringAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result p1

    return p1
.end method

.method public groupAckCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeGroupAckCount()I

    move-result v0

    return v0
.end method

.method public isAcked()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeIsAcked()Z

    move-result v0

    return v0
.end method

.method public isBroadcast()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeIsBroadcast()Z

    move-result v0

    return v0
.end method

.method public isChatThreadMessage()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeIsThread()Z

    move-result v0

    return v0
.end method

.method public isContentReplaced()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeIsContentReplaced()Z

    move-result v0

    return v0
.end method

.method public isDeliverAcked()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeIsDeliverAcked()Z

    move-result v0

    return v0
.end method

.method public isDeliverOnlineOnly()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeIsDeliverOnlineOnly()Z

    move-result v0

    return v0
.end method

.method public isListened()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeIsListened()Z

    move-result v0

    return v0
.end method

.method public isNeedGroupAck()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeIsNeedGroupAck()Z

    move-result v0

    return v0
.end method

.method public isOnlineState()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeIsOnlineState()Z

    move-result v0

    return v0
.end method

.method public isRead()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeIsRead()Z

    move-result v0

    return v0
.end method

.method public msgId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeMsgId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native nativeAddBody(Lcom/hyphenate/chat/adapter/message/EMAMessageBody;)V
.end method

.method public native nativeBodies()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessageBody;",
            ">;"
        }
    .end annotation
.end method

.method native nativeChatType()I
.end method

.method public native nativeClearBodies()V
.end method

.method public native nativeConversationId()Ljava/lang/String;
.end method

.method native nativeDeliverOnlineOnly(Z)V
.end method

.method native nativeDirection()I
.end method

.method native nativeExt()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method native nativeFinalize()V
.end method

.method public native nativeFrom()Ljava/lang/String;
.end method

.method native nativeGetAttributes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public native nativeGetBooleanAttribute(Ljava/lang/String;ZLjava/util/concurrent/atomic/AtomicBoolean;)Z
.end method

.method native nativeGetChatThread()Lcom/hyphenate/chat/adapter/EMAThreadInfo;
.end method

.method public native nativeGetDoubleAttribute(Ljava/lang/String;DLjava/util/concurrent/atomic/AtomicReference;)Z
.end method

.method public native nativeGetFloatAttribute(Ljava/lang/String;FLjava/util/concurrent/atomic/AtomicReference;)Z
.end method

.method public native nativeGetIntAttribute(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;)Z
.end method

.method native nativeGetJsonAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Z
.end method

.method native nativeGetLocalTime()J
.end method

.method public native nativeGetLongAttribute(Ljava/lang/String;JLjava/util/concurrent/atomic/AtomicLong;)Z
.end method

.method public native nativeGetRecaller()Ljava/lang/String;
.end method

.method public native nativeGetStringAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Z
.end method

.method public native nativeGroupAckCount()I
.end method

.method native nativeInit()V
.end method

.method native nativeInit(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V
.end method

.method public native nativeIsAcked()Z
.end method

.method native nativeIsBroadcast()Z
.end method

.method native nativeIsContentReplaced()Z
.end method

.method public native nativeIsDeliverAcked()Z
.end method

.method native nativeIsDeliverOnlineOnly()Z
.end method

.method native nativeIsListened()Z
.end method

.method public native nativeIsNeedGroupAck()Z
.end method

.method native nativeIsOnlineState()Z
.end method

.method public native nativeIsRead()Z
.end method

.method native nativeIsThread()Z
.end method

.method public native nativeMsgId()Ljava/lang/String;
.end method

.method native nativePinedInfo()Lcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;
.end method

.method native nativeProgress()I
.end method

.method native nativeReactionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAMessageReaction;",
            ">;"
        }
    .end annotation
.end method

.method native nativeReceiverList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public native nativeSetAttribute(Ljava/lang/String;D)V
.end method

.method public native nativeSetAttribute(Ljava/lang/String;F)V
.end method

.method public native nativeSetAttribute(Ljava/lang/String;I)V
.end method

.method public native nativeSetAttribute(Ljava/lang/String;J)V
.end method

.method public native nativeSetAttribute(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native nativeSetAttribute(Ljava/lang/String;Z)V
.end method

.method native nativeSetCallback(Lcom/hyphenate/chat/adapter/EMACallback;)V
.end method

.method native nativeSetChatType(I)V
.end method

.method public native nativeSetConversationId(Ljava/lang/String;)V
.end method

.method native nativeSetDirection(I)V
.end method

.method public native nativeSetFrom(Ljava/lang/String;)V
.end method

.method public native nativeSetGroupAckCount(I)V
.end method

.method public native nativeSetIsAcked(Z)V
.end method

.method public native nativeSetIsDeliverAcked(Z)V
.end method

.method public native nativeSetIsNeedGroupAck(Z)V
.end method

.method public native nativeSetIsRead(Z)V
.end method

.method native nativeSetIsThread(Z)V
.end method

.method native nativeSetJsonAttribute(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method native nativeSetListened(Z)V
.end method

.method native nativeSetLocalTime(J)V
.end method

.method public native nativeSetMsgId(Ljava/lang/String;)V
.end method

.method native nativeSetPriority(I)V
.end method

.method native nativeSetProgress(I)V
.end method

.method native nativeSetReceiverList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public native nativeSetStatus(I)V
.end method

.method native nativeSetTimeStamp(J)V
.end method

.method public native nativeSetTo(Ljava/lang/String;)V
.end method

.method public native nativeStatus()I
.end method

.method public native nativeTimeStamp()J
.end method

.method public native nativeTo()Ljava/lang/String;
.end method

.method public pinedInfo()Lcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativePinedInfo()Lcom/hyphenate/chat/adapter/message/EMAMessagePinInfo;

    move-result-object v0

    return-object v0
.end method

.method public progress()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeProgress()I

    move-result v0

    return v0
.end method

.method public reactionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAMessageReaction;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeReactionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public receiverList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeReceiverList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;D)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeSetAttribute(Ljava/lang/String;D)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;F)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeSetAttribute(Ljava/lang/String;F)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeSetAttribute(Ljava/lang/String;I)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;J)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeSetAttribute(Ljava/lang/String;J)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeSetAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeSetAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setCallback(Lcom/hyphenate/chat/adapter/EMACallback;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeSetCallback(Lcom/hyphenate/chat/adapter/EMACallback;)V

    return-void
.end method

.method public setChatType(Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;)V
    .locals 0

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage$EMAChatType;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeSetChatType(I)V

    return-void
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeSetConversationId(Ljava/lang/String;)V

    return-void
.end method

.method public setDirection(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeSetDirection(I)V

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeSetFrom(Ljava/lang/String;)V

    return-void
.end method

.method public setGroupAckCount(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeSetGroupAckCount(I)V

    return-void
.end method

.method public setIsAcked(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeSetIsAcked(Z)V

    return-void
.end method

.method public setIsChatThreadMessage(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeSetIsThread(Z)V

    return-void
.end method

.method public setIsDeliverAcked(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeSetIsDeliverAcked(Z)V

    return-void
.end method

.method public setIsNeedGroupAck(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeSetIsNeedGroupAck(Z)V

    return-void
.end method

.method public setIsRead(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeSetIsRead(Z)V

    return-void
.end method

.method public setJsonAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeSetJsonAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setListened(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeSetListened(Z)V

    return-void
.end method

.method public setLocalTime(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeSetLocalTime(J)V

    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeSetMsgId(Ljava/lang/String;)V

    return-void
.end method

.method public setPriority(Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;)V
    .locals 0

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage$EMChatRoomMessagePriority;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeSetPriority(I)V

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeSetProgress(I)V

    return-void
.end method

.method public setReceiverList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeSetReceiverList(Ljava/util/List;)V

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeSetStatus(I)V

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeSetTimeStamp(J)V

    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeSetTo(Ljava/lang/String;)V

    return-void
.end method

.method public timeStamp()J
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public to()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->nativeTo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
