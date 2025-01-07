.class public Lcom/tencent/imsdk/group/GroupInfo;
.super Ljava/lang/Object;
.source "GroupInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static GROUP_ADD_OPTION_ALLOW_ANY:I = 0x3

.field public static GROUP_ADD_OPTION_FORBID_ANY:I = 0x1

.field public static GROUP_ADD_OPTION_NEED_AUTHENTICATION:I = 0x2

.field public static GROUP_INFO_MODIFY_FLAG_ADD_OPTION:J = 0x10L

.field public static GROUP_INFO_MODIFY_FLAG_CUSTOM_INFO:J = 0x200L

.field public static GROUP_INFO_MODIFY_FLAG_FACE_URL:J = 0x8L

.field public static GROUP_INFO_MODIFY_FLAG_GROUP_SEARCHABLE:J = 0x80L

.field public static GROUP_INFO_MODIFY_FLAG_INTRODUCTION:J = 0x4L

.field public static GROUP_INFO_MODIFY_FLAG_MAX_MEMBER_NUM:J = 0x20L

.field public static GROUP_INFO_MODIFY_FLAG_MEMBER_VISIBLE:J = 0x40L

.field public static GROUP_INFO_MODIFY_FLAG_NAME:J = 0x1L

.field public static GROUP_INFO_MODIFY_FLAG_NONE:J = 0x0L

.field public static GROUP_INFO_MODIFY_FLAG_NOTIFICATION:J = 0x2L

.field public static GROUP_INFO_MODIFY_FLAG_SHUTUP_ALL:J = 0x100L

.field public static TOPIC_INFO_MODIFY_FLAG_CUSTOM_STRING:J = 0x800L


# instance fields
.field private addOption:I

.field private communityID:Ljava/lang/String;

.field private createTime:J

.field private customInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private customString:Ljava/lang/String;

.field private faceUrl:Ljava/lang/String;

.field private groupID:Ljava/lang/String;

.field private groupInfoTimestamp:J

.field private groupName:Ljava/lang/String;

.field private groupSelfInfo:Lcom/tencent/imsdk/group/GroupMemberInfo;

.field private groupType:Ljava/lang/String;

.field private introduction:Ljava/lang/String;

.field private isAllShutUp:Z

.field private isGroupMemberVisible:Z

.field private isGroupSearchable:Z

.field private lastMessageTimestamp:J

.field private memberCount:J

.field private memberMaxCount:J

.field private memberOnlineCount:J

.field private notification:Ljava/lang/String;

.field private ownerUserID:Ljava/lang/String;

.field private supportTopic:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->customInfo:Ljava/util/Map;

    .line 56
    new-instance v0, Lcom/tencent/imsdk/group/GroupMemberInfo;

    invoke-direct {v0}, Lcom/tencent/imsdk/group/GroupMemberInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->groupSelfInfo:Lcom/tencent/imsdk/group/GroupMemberInfo;

    return-void
.end method


# virtual methods
.method public getAddOption()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->addOption:I

    return v0
.end method

.method public getCommunityID()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->communityID:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 115
    iget-wide v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->createTime:J

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

    .line 203
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->customInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getCustomString()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->customString:Ljava/lang/String;

    return-object v0
.end method

.method public getFaceUrl()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->faceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupID()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->groupID:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupInfoTimestamp()J
    .locals 2

    .line 187
    iget-wide v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->groupInfoTimestamp:J

    return-wide v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupSelfInfo()Lcom/tencent/imsdk/group/GroupMemberInfo;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->groupSelfInfo:Lcom/tencent/imsdk/group/GroupMemberInfo;

    return-object v0
.end method

.method public getGroupType()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->groupType:Ljava/lang/String;

    return-object v0
.end method

.method public getIntroduction()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->introduction:Ljava/lang/String;

    return-object v0
.end method

.method public getLastMessageTimestamp()J
    .locals 2

    .line 195
    iget-wide v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->lastMessageTimestamp:J

    return-wide v0
.end method

.method public getMemberCount()J
    .locals 2

    .line 131
    iget-wide v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->memberCount:J

    return-wide v0
.end method

.method public getMemberMaxCount()J
    .locals 2

    .line 147
    iget-wide v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->memberMaxCount:J

    return-wide v0
.end method

.method public getMemberOnlineCount()J
    .locals 2

    .line 139
    iget-wide v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->memberOnlineCount:J

    return-wide v0
.end method

.method public getNotification()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->notification:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerUserID()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->ownerUserID:Ljava/lang/String;

    return-object v0
.end method

.method public isAllShutUp()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->isAllShutUp:Z

    return v0
.end method

.method public isGroupMemberVisible()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->isGroupMemberVisible:Z

    return v0
.end method

.method public isGroupSearchable()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->isGroupSearchable:Z

    return v0
.end method

.method public isSupportTopic()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/tencent/imsdk/group/GroupInfo;->supportTopic:Z

    return v0
.end method

.method public setAddOption(I)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->addOption:I

    return-void
.end method

.method public setAllShutUp(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->isAllShutUp:Z

    return-void
.end method

.method public setCommunityID(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->communityID:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 119
    iput-wide p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->createTime:J

    return-void
.end method

.method public setCustomInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->customInfo:Ljava/util/Map;

    return-void
.end method

.method public setCustomString(Ljava/lang/String;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->customString:Ljava/lang/String;

    return-void
.end method

.method public setFaceUrl(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->faceUrl:Ljava/lang/String;

    return-void
.end method

.method public setGroupID(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->groupID:Ljava/lang/String;

    return-void
.end method

.method public setGroupInfoTimestamp(J)V
    .locals 0

    .line 191
    iput-wide p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->groupInfoTimestamp:J

    return-void
.end method

.method public setGroupMemberVisible(Z)V
    .locals 0

    .line 183
    iput-boolean p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->isGroupMemberVisible:Z

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->groupName:Ljava/lang/String;

    return-void
.end method

.method public setGroupSearchable(Z)V
    .locals 0

    .line 175
    iput-boolean p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->isGroupSearchable:Z

    return-void
.end method

.method public setGroupSelfInfo(Lcom/tencent/imsdk/group/GroupMemberInfo;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->groupSelfInfo:Lcom/tencent/imsdk/group/GroupMemberInfo;

    return-void
.end method

.method public setGroupType(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->groupType:Ljava/lang/String;

    return-void
.end method

.method public setIntroduction(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->introduction:Ljava/lang/String;

    return-void
.end method

.method public setLastMessageTimestamp(J)V
    .locals 0

    .line 199
    iput-wide p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->lastMessageTimestamp:J

    return-void
.end method

.method public setMemberCount(J)V
    .locals 0

    .line 135
    iput-wide p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->memberCount:J

    return-void
.end method

.method public setMemberMaxCount(J)V
    .locals 0

    .line 151
    iput-wide p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->memberMaxCount:J

    return-void
.end method

.method public setMemberOnlineCount(J)V
    .locals 0

    .line 143
    iput-wide p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->memberOnlineCount:J

    return-void
.end method

.method public setNotification(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->notification:Ljava/lang/String;

    return-void
.end method

.method public setOwnerUserID(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->ownerUserID:Ljava/lang/String;

    return-void
.end method

.method public setSupportTopic(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/tencent/imsdk/group/GroupInfo;->supportTopic:Z

    return-void
.end method
