.class public Lcom/tencent/imsdk/v2/V2TIMGroupInfo;
.super Ljava/lang/Object;
.source "V2TIMGroupInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final GROUP_TYPE_INTERNAL_CHATROOM:Ljava/lang/String; = "ChatRoom"

.field static final GROUP_TYPE_INTERNAL_PRIVATE:Ljava/lang/String; = "Private"

.field public static final V2TIM_GROUP_ADD_ANY:I = 0x2

.field public static final V2TIM_GROUP_ADD_AUTH:I = 0x1

.field public static final V2TIM_GROUP_ADD_FORBID:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

.field private modifyFlag:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "V2TIMGroupInfo"

    .line 13
    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/tencent/imsdk/group/GroupInfo;

    invoke-direct {v0}, Lcom/tencent/imsdk/group/GroupInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->modifyFlag:I

    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->getCreateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCustomInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->getCustomInfo()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFaceUrl()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->getFaceUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupAddOpt()I
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->getAddOption()I

    move-result v0

    .line 239
    sget v1, Lcom/tencent/imsdk/group/GroupInfo;->GROUP_ADD_OPTION_ALLOW_ANY:I

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    return v2

    .line 241
    :cond_0
    sget v1, Lcom/tencent/imsdk/group/GroupInfo;->GROUP_ADD_OPTION_FORBID_ANY:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 243
    :cond_1
    sget v1, Lcom/tencent/imsdk/group/GroupInfo;->GROUP_ADD_OPTION_NEED_AUTHENTICATION:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method public getGroupID()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->getGroupID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->getGroupName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupType()Ljava/lang/String;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->getGroupType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Private"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Work"

    return-object v0

    :cond_0
    const-string v1, "ChatRoom"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Meeting"

    :cond_1
    return-object v0
.end method

.method public getIntroduction()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->getIntroduction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJoinTime()J
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->getGroupSelfInfo()Lcom/tencent/imsdk/group/GroupMemberInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupMemberInfo;->getJoinTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastInfoTime()J
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->getGroupInfoTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastMessageTime()J
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->getLastMessageTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMemberCount()I
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->getMemberCount()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getMemberMaxCount()J
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->getMemberMaxCount()J

    move-result-wide v0

    return-wide v0
.end method

.method getModifyFlag()I
    .locals 1

    .line 399
    iget v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->modifyFlag:I

    return v0
.end method

.method public getNotification()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->getNotification()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnlineCount()I
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->getMemberOnlineCount()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->getOwnerUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecvOpt()I
    .locals 3

    .line 365
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->getGroupSelfInfo()Lcom/tencent/imsdk/group/GroupMemberInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupMemberInfo;->getMessageReceiveOption()I

    move-result v0

    .line 366
    sget v1, Lcom/tencent/imsdk/group/GroupMemberInfo;->MESSAGE_RECEIVE_OPTION_AUTO_RECEIVE:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 368
    :cond_0
    sget v1, Lcom/tencent/imsdk/group/GroupMemberInfo;->MESSAGE_RECEIVE_OPTION_NOT_RECEIVE:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    .line 370
    :cond_1
    sget v1, Lcom/tencent/imsdk/group/GroupMemberInfo;->MESSAGE_RECEIVE_OPTION_RECEIVE_WITH_NO_OFFLINE_PUSH:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    return v2
.end method

.method public getRole()I
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->getGroupSelfInfo()Lcom/tencent/imsdk/group/GroupMemberInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupMemberInfo;->getRole()I

    move-result v0

    .line 345
    sget v1, Lcom/tencent/imsdk/group/GroupMemberInfo;->MEMBER_ROLE_MEMBER:I

    if-ne v0, v1, :cond_0

    const/16 v0, 0xc8

    return v0

    .line 347
    :cond_0
    sget v1, Lcom/tencent/imsdk/group/GroupMemberInfo;->MEMBER_ROLE_ADMINISTRATOR:I

    if-ne v0, v1, :cond_1

    const/16 v0, 0x12c

    return v0

    .line 349
    :cond_1
    sget v1, Lcom/tencent/imsdk/group/GroupMemberInfo;->MEMBER_ROLE_OWNER:I

    if-ne v0, v1, :cond_2

    const/16 v0, 0x190

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isAllMuted()Z
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->isAllShutUp()Z

    move-result v0

    return v0
.end method

.method public isSupportTopic()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfo;->isSupportTopic()Z

    move-result v0

    return v0
.end method

.method public setAllMuted(Z)V
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/group/GroupInfo;->setAllShutUp(Z)V

    .line 211
    iget p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->modifyFlag:I

    int-to-long v0, p1

    sget-wide v2, Lcom/tencent/imsdk/group/GroupInfo;->GROUP_INFO_MODIFY_FLAG_SHUTUP_ALL:J

    or-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->modifyFlag:I

    return-void
.end method

.method public setCustomInfo(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/group/GroupInfo;->setCustomInfo(Ljava/util/Map;)V

    .line 280
    iget p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->modifyFlag:I

    int-to-long v0, p1

    sget-wide v2, Lcom/tencent/imsdk/group/GroupInfo;->GROUP_INFO_MODIFY_FLAG_CUSTOM_INFO:J

    or-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->modifyFlag:I

    return-void
.end method

.method public setFaceUrl(Ljava/lang/String;)V
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/group/GroupInfo;->setFaceUrl(Ljava/lang/String;)V

    .line 192
    iget p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->modifyFlag:I

    int-to-long v0, p1

    sget-wide v2, Lcom/tencent/imsdk/group/GroupInfo;->GROUP_INFO_MODIFY_FLAG_FACE_URL:J

    or-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->modifyFlag:I

    return-void
.end method

.method public setGroupAddOpt(I)V
    .locals 4

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 259
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    sget v0, Lcom/tencent/imsdk/group/GroupInfo;->GROUP_ADD_OPTION_ALLOW_ANY:I

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/group/GroupInfo;->setAddOption(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 261
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    sget v0, Lcom/tencent/imsdk/group/GroupInfo;->GROUP_ADD_OPTION_FORBID_ANY:I

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/group/GroupInfo;->setAddOption(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne v0, p1, :cond_2

    .line 263
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    sget v0, Lcom/tencent/imsdk/group/GroupInfo;->GROUP_ADD_OPTION_NEED_AUTHENTICATION:I

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/group/GroupInfo;->setAddOption(I)V

    .line 265
    :cond_2
    :goto_0
    iget p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->modifyFlag:I

    int-to-long v0, p1

    sget-wide v2, Lcom/tencent/imsdk/group/GroupInfo;->GROUP_INFO_MODIFY_FLAG_ADD_OPTION:J

    or-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->modifyFlag:I

    return-void
.end method

.method public setGroupID(Ljava/lang/String;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/group/GroupInfo;->setGroupID(Ljava/lang/String;)V

    return-void
.end method

.method setGroupInfo(Lcom/tencent/imsdk/group/GroupInfo;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/group/GroupInfo;->setGroupName(Ljava/lang/String;)V

    .line 133
    iget p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->modifyFlag:I

    int-to-long v0, p1

    sget-wide v2, Lcom/tencent/imsdk/group/GroupInfo;->GROUP_INFO_MODIFY_FLAG_NAME:J

    or-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->modifyFlag:I

    return-void
.end method

.method public setGroupType(Ljava/lang/String;)V
    .locals 3

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "V2TIMGroupInfo"

    const-string v0, "setGroupType error type is null"

    .line 79
    invoke-static {p1, v0}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Work"

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Private"

    if-eqz v0, :cond_1

    :goto_0
    move-object p1, v1

    goto :goto_3

    :cond_1
    const-string v0, "Meeting"

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "ChatRoom"

    if-eqz v0, :cond_2

    :goto_1
    move-object p1, v2

    goto :goto_3

    .line 88
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "Public"

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    move-object p1, v0

    goto :goto_3

    :cond_5
    const-string v0, "AVChatRoom"

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    .line 98
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/group/GroupInfo;->setGroupType(Ljava/lang/String;)V

    return-void
.end method

.method public setIntroduction(Ljava/lang/String;)V
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/group/GroupInfo;->setIntroduction(Ljava/lang/String;)V

    .line 172
    iget p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->modifyFlag:I

    int-to-long v0, p1

    sget-wide v2, Lcom/tencent/imsdk/group/GroupInfo;->GROUP_INFO_MODIFY_FLAG_INTRODUCTION:J

    or-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->modifyFlag:I

    return-void
.end method

.method setModifyFlag(I)V
    .locals 0

    .line 403
    iput p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->modifyFlag:I

    return-void
.end method

.method public setNotification(Ljava/lang/String;)V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/group/GroupInfo;->setNotification(Ljava/lang/String;)V

    .line 153
    iget p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->modifyFlag:I

    int-to-long v0, p1

    sget-wide v2, Lcom/tencent/imsdk/group/GroupInfo;->GROUP_INFO_MODIFY_FLAG_NOTIFICATION:J

    or-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->modifyFlag:I

    return-void
.end method

.method public setSupportTopic(Z)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/group/GroupInfo;->setSupportTopic(Z)V

    return-void
.end method
