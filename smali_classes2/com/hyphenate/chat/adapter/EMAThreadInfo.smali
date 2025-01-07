.class public Lcom/hyphenate/chat/adapter/EMAThreadInfo;
.super Lcom/hyphenate/chat/adapter/EMABase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/adapter/EMAThreadInfo$LeaveReason;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->nativeInit()V

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

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getCreateAt()J
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->nativeGetCreateAt()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->nativeGetFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastMessage()Lcom/hyphenate/chat/adapter/message/EMAMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->nativeGetLastMessage()Lcom/hyphenate/chat/adapter/message/EMAMessage;

    move-result-object v0

    return-object v0
.end method

.method public getMemberCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->nativeGetMemberCount()I

    move-result v0

    return v0
.end method

.method public getMessageCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->nativeGetMessageCount()I

    move-result v0

    return v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->nativeGetMessageId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->nativeGetOwner()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->nativeGetParentId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->nativeGetThreadId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->nativeGetThreadName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->nativeGetTo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->nativeGetThreadType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;->valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EMThreadEvent"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;->UNKNOWN:Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

    :goto_0
    return-object v0
.end method

.method public getUpdateAt()J
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAThreadInfo;->nativeGetUpdateAt()J

    move-result-wide v0

    return-wide v0
.end method

.method native nativeFinalize()V
.end method

.method native nativeGetCreateAt()J
.end method

.method native nativeGetFrom()Ljava/lang/String;
.end method

.method native nativeGetLastMessage()Lcom/hyphenate/chat/adapter/message/EMAMessage;
.end method

.method native nativeGetMemberCount()I
.end method

.method native nativeGetMessageCount()I
.end method

.method native nativeGetMessageId()Ljava/lang/String;
.end method

.method native nativeGetOwner()Ljava/lang/String;
.end method

.method native nativeGetParentId()Ljava/lang/String;
.end method

.method native nativeGetThreadId()Ljava/lang/String;
.end method

.method native nativeGetThreadName()Ljava/lang/String;
.end method

.method native nativeGetThreadType()Ljava/lang/String;
.end method

.method native nativeGetTo()Ljava/lang/String;
.end method

.method native nativeGetUpdateAt()J
.end method

.method native nativeInit()V
.end method
