.class public Lcom/tencent/imsdk/group/TopicInfo;
.super Ljava/lang/Object;
.source "TopicInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private conversation:Lcom/tencent/imsdk/conversation/Conversation;

.field private draftText:Ljava/lang/String;

.field private errorCode:I

.field private errorMessage:Ljava/lang/String;

.field private groupInfo:Lcom/tencent/imsdk/group/GroupInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/tencent/imsdk/group/GroupInfo;

    invoke-direct {v0}, Lcom/tencent/imsdk/group/GroupInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/group/TopicInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    return-void
.end method


# virtual methods
.method public getConversation()Lcom/tencent/imsdk/conversation/Conversation;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/tencent/imsdk/group/TopicInfo;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    return-object v0
.end method

.method public getDraftText()Ljava/lang/String;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/tencent/imsdk/group/TopicInfo;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 58
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getDraftMessage()Lcom/tencent/imsdk/message/DraftMessage;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 62
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/DraftMessage;->getUserDefinedData()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 64
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    :cond_2
    return-object v1
.end method

.method public getErrorCode()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/tencent/imsdk/group/TopicInfo;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/tencent/imsdk/group/TopicInfo;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/tencent/imsdk/group/TopicInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    return-object v0
.end method

.method public getTempDraft()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/tencent/imsdk/group/TopicInfo;->draftText:Ljava/lang/String;

    return-object v0
.end method

.method public setConversation(Lcom/tencent/imsdk/conversation/Conversation;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/tencent/imsdk/group/TopicInfo;->conversation:Lcom/tencent/imsdk/conversation/Conversation;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/tencent/imsdk/group/TopicInfo;->errorCode:I

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/tencent/imsdk/group/TopicInfo;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setGroupInfo(Lcom/tencent/imsdk/group/GroupInfo;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/tencent/imsdk/group/TopicInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    return-void
.end method

.method public setTempDraft(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/tencent/imsdk/group/TopicInfo;->draftText:Ljava/lang/String;

    return-void
.end method
