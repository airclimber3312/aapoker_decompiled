.class public Lcom/hyphenate/chat/adapter/EMAMessageStatistics;
.super Lcom/hyphenate/chat/adapter/EMABase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;->nativeInit()V

    return-void
.end method


# virtual methods
.method public direct()Lcom/hyphenate/chat/EMMessage$Direct;
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;->nativeDirect()I

    move-result v0

    sget-object v1, Lcom/hyphenate/chat/EMMessage$Direct;->SEND:Lcom/hyphenate/chat/EMMessage$Direct;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage$Direct;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/hyphenate/chat/EMMessage$Direct;->SEND:Lcom/hyphenate/chat/EMMessage$Direct;

    return-object v0

    :cond_0
    sget-object v0, Lcom/hyphenate/chat/EMMessage$Direct;->RECEIVE:Lcom/hyphenate/chat/EMMessage$Direct;

    return-object v0
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAttachmentSize()J
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;->nativeGetAttachmentSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getChatType()Lcom/hyphenate/chat/EMMessage$ChatType;
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;->nativeGetChatType()I

    move-result v0

    sget-object v1, Lcom/hyphenate/chat/EMMessage$ChatType;->Chat:Lcom/hyphenate/chat/EMMessage$ChatType;

    sget-object v1, Lcom/hyphenate/chat/EMMessage$ChatType;->Chat:Lcom/hyphenate/chat/EMMessage$ChatType;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage$ChatType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/hyphenate/chat/EMMessage$ChatType;->Chat:Lcom/hyphenate/chat/EMMessage$ChatType;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/hyphenate/chat/EMMessage$ChatType;->GroupChat:Lcom/hyphenate/chat/EMMessage$ChatType;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage$ChatType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/hyphenate/chat/EMMessage$ChatType;->GroupChat:Lcom/hyphenate/chat/EMMessage$ChatType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/hyphenate/chat/EMMessage$ChatType;->ChatRoom:Lcom/hyphenate/chat/EMMessage$ChatType;

    :goto_0
    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;->nativeGetFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalTime()J
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;->nativeLocalTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;->nativeGetMsgId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsgSize()J
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;->nativeGetMsgSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMsgTime()J
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;->nativeGetMsgTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getThumbnailSize()J
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;->nativeGetThumbnailSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;->nativeGetTo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/hyphenate/chat/EMMessage$Type;
    .locals 3

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAMessageStatistics;->nativeGetType()I

    move-result v0

    sget-object v1, Lcom/hyphenate/chat/EMMessage$Type;->TXT:Lcom/hyphenate/chat/EMMessage$Type;

    sget-object v2, Lcom/hyphenate/chat/EMMessage$Type;->IMAGE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMMessage$Type;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_0

    sget-object v1, Lcom/hyphenate/chat/EMMessage$Type;->IMAGE:Lcom/hyphenate/chat/EMMessage$Type;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/hyphenate/chat/EMMessage$Type;->VIDEO:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMMessage$Type;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_1

    sget-object v1, Lcom/hyphenate/chat/EMMessage$Type;->VIDEO:Lcom/hyphenate/chat/EMMessage$Type;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/hyphenate/chat/EMMessage$Type;->LOCATION:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMMessage$Type;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_2

    sget-object v1, Lcom/hyphenate/chat/EMMessage$Type;->LOCATION:Lcom/hyphenate/chat/EMMessage$Type;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/hyphenate/chat/EMMessage$Type;->VOICE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMMessage$Type;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_3

    sget-object v1, Lcom/hyphenate/chat/EMMessage$Type;->VOICE:Lcom/hyphenate/chat/EMMessage$Type;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/hyphenate/chat/EMMessage$Type;->FILE:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMMessage$Type;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_4

    sget-object v1, Lcom/hyphenate/chat/EMMessage$Type;->FILE:Lcom/hyphenate/chat/EMMessage$Type;

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/hyphenate/chat/EMMessage$Type;->CMD:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMMessage$Type;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_5

    sget-object v1, Lcom/hyphenate/chat/EMMessage$Type;->CMD:Lcom/hyphenate/chat/EMMessage$Type;

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/hyphenate/chat/EMMessage$Type;->CUSTOM:Lcom/hyphenate/chat/EMMessage$Type;

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMMessage$Type;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_6

    sget-object v1, Lcom/hyphenate/chat/EMMessage$Type;->CUSTOM:Lcom/hyphenate/chat/EMMessage$Type;

    :cond_6
    :goto_0
    return-object v1
.end method

.method native nativeDirect()I
.end method

.method native nativeFinalize()V
.end method

.method native nativeGetAttachmentSize()J
.end method

.method native nativeGetChatType()I
.end method

.method native nativeGetFrom()Ljava/lang/String;
.end method

.method native nativeGetMsgId()Ljava/lang/String;
.end method

.method native nativeGetMsgSize()J
.end method

.method native nativeGetMsgTime()J
.end method

.method native nativeGetThumbnailSize()J
.end method

.method native nativeGetTo()Ljava/lang/String;
.end method

.method native nativeGetType()I
.end method

.method native nativeInit()V
.end method

.method native nativeLocalTime()J
.end method
