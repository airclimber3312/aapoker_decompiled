.class public Lcom/tencent/imsdk/v2/V2TIMTopicInfo;
.super Ljava/lang/Object;
.source "V2TIMTopicInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private modifyFlag:I

.field private needModifyDraft:Z

.field private topicInfo:Lcom/tencent/imsdk/group/TopicInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->needModifyDraft:Z

    .line 20
    new-instance v1, Lcom/tencent/imsdk/group/TopicInfo;

    invoke-direct {v1}, Lcom/tencent/imsdk/group/TopicInfo;-><init>()V

    iput-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    .line 21
    iput v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->modifyFlag:I

    return-void
.end method


# virtual methods
.method public getCustomString()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/TopicInfo;->getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->getCustomString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDraftText()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/TopicInfo;->getDraftText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupAtInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupAtInfo;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/TopicInfo;->getConversation()Lcom/tencent/imsdk/conversation/Conversation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 230
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    invoke-virtual {v1}, Lcom/tencent/imsdk/group/TopicInfo;->getConversation()Lcom/tencent/imsdk/conversation/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/imsdk/conversation/Conversation;->getConversationAtInfoList()Ljava/util/List;

    move-result-object v1

    .line 233
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/conversation/ConversationAtInfo;

    .line 234
    new-instance v3, Lcom/tencent/imsdk/v2/V2TIMGroupAtInfo;

    invoke-direct {v3}, Lcom/tencent/imsdk/v2/V2TIMGroupAtInfo;-><init>()V

    .line 235
    invoke-virtual {v3, v2}, Lcom/tencent/imsdk/v2/V2TIMGroupAtInfo;->setConversationGroupAtInfo(Lcom/tencent/imsdk/conversation/ConversationAtInfo;)V

    .line 236
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/TopicInfo;->getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public getIntroduction()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/TopicInfo;->getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->getIntroduction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/TopicInfo;->getConversation()Lcom/tencent/imsdk/conversation/Conversation;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 211
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getLastMessage()Lcom/tencent/imsdk/message/Message;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 215
    :cond_1
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-direct {v1}, Lcom/tencent/imsdk/v2/V2TIMMessage;-><init>()V

    .line 216
    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->setMessage(Lcom/tencent/imsdk/message/Message;)V

    return-object v1
.end method

.method getModifyFlag()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->modifyFlag:I

    return v0
.end method

.method public getNotification()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/TopicInfo;->getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->getNotification()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecvOpt()I
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/TopicInfo;->getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->getGroupSelfInfo()Lcom/tencent/imsdk/group/GroupMemberInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupMemberInfo;->getMessageReceiveOption()I

    move-result v0

    .line 165
    sget v1, Lcom/tencent/imsdk/group/GroupMemberInfo;->MESSAGE_RECEIVE_OPTION_AUTO_RECEIVE:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 167
    :cond_0
    sget v1, Lcom/tencent/imsdk/group/GroupMemberInfo;->MESSAGE_RECEIVE_OPTION_NOT_RECEIVE:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    .line 169
    :cond_1
    sget v1, Lcom/tencent/imsdk/group/GroupMemberInfo;->MESSAGE_RECEIVE_OPTION_RECEIVE_WITH_NO_OFFLINE_PUSH:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    return v2
.end method

.method public getSelfMuteTime()J
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/TopicInfo;->getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->getGroupSelfInfo()Lcom/tencent/imsdk/group/GroupMemberInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupMemberInfo;->getShutUpTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTopicFaceUrl()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/TopicInfo;->getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->getFaceUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopicID()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/TopicInfo;->getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->getGroupID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTopicInfo()Lcom/tencent/imsdk/group/TopicInfo;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    return-object v0
.end method

.method public getTopicName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/TopicInfo;->getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->getGroupName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnreadCount()J
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/TopicInfo;->getConversation()Lcom/tencent/imsdk/conversation/Conversation;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 199
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/Conversation;->getUnreadMessageCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public isAllMute()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/TopicInfo;->getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->isAllShutUp()Z

    move-result v0

    return v0
.end method

.method isNeedModifyDraft()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->needModifyDraft:Z

    return v0
.end method

.method public setAllMute(Z)V
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/TopicInfo;->getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/group/GroupInfo;->setAllShutUp(Z)V

    .line 135
    iget p1, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->modifyFlag:I

    int-to-long v0, p1

    sget-wide v2, Lcom/tencent/imsdk/group/GroupInfo;->GROUP_INFO_MODIFY_FLAG_SHUTUP_ALL:J

    or-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->modifyFlag:I

    return-void
.end method

.method public setCustomString(Ljava/lang/String;)V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/TopicInfo;->getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/group/GroupInfo;->setCustomString(Ljava/lang/String;)V

    .line 157
    iget p1, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->modifyFlag:I

    int-to-long v0, p1

    sget-wide v2, Lcom/tencent/imsdk/group/GroupInfo;->TOPIC_INFO_MODIFY_FLAG_CUSTOM_STRING:J

    or-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->modifyFlag:I

    return-void
.end method

.method public setDraft(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->needModifyDraft:Z

    .line 188
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/group/TopicInfo;->setTempDraft(Ljava/lang/String;)V

    return-void
.end method

.method public setIntroduction(Ljava/lang/String;)V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/TopicInfo;->getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/group/GroupInfo;->setIntroduction(Ljava/lang/String;)V

    .line 105
    iget p1, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->modifyFlag:I

    int-to-long v0, p1

    sget-wide v2, Lcom/tencent/imsdk/group/GroupInfo;->GROUP_INFO_MODIFY_FLAG_INTRODUCTION:J

    or-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->modifyFlag:I

    return-void
.end method

.method public setNotification(Ljava/lang/String;)V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/TopicInfo;->getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/group/GroupInfo;->setNotification(Ljava/lang/String;)V

    .line 120
    iget p1, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->modifyFlag:I

    int-to-long v0, p1

    sget-wide v2, Lcom/tencent/imsdk/group/GroupInfo;->GROUP_INFO_MODIFY_FLAG_NOTIFICATION:J

    or-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->modifyFlag:I

    return-void
.end method

.method public setTopicFaceUrl(Ljava/lang/String;)V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/TopicInfo;->getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/group/GroupInfo;->setFaceUrl(Ljava/lang/String;)V

    .line 90
    iget p1, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->modifyFlag:I

    int-to-long v0, p1

    sget-wide v2, Lcom/tencent/imsdk/group/GroupInfo;->GROUP_INFO_MODIFY_FLAG_FACE_URL:J

    or-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->modifyFlag:I

    return-void
.end method

.method public setTopicID(Ljava/lang/String;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/TopicInfo;->getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/group/GroupInfo;->setGroupID(Ljava/lang/String;)V

    return-void
.end method

.method protected setTopicInfo(Lcom/tencent/imsdk/group/TopicInfo;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 29
    :cond_0
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    return-void
.end method

.method public setTopicName(Ljava/lang/String;)V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->topicInfo:Lcom/tencent/imsdk/group/TopicInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/TopicInfo;->getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/group/GroupInfo;->setGroupName(Ljava/lang/String;)V

    .line 75
    iget p1, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->modifyFlag:I

    int-to-long v0, p1

    sget-wide v2, Lcom/tencent/imsdk/group/GroupInfo;->GROUP_INFO_MODIFY_FLAG_NAME:J

    or-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->modifyFlag:I

    return-void
.end method
