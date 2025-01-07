.class public abstract Lcom/tencent/imsdk/v2/V2TIMGroupManager;
.super Ljava/lang/Object;
.source "V2TIMGroupManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/tencent/imsdk/v2/V2TIMGroupManager;
    .locals 1

    .line 12
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;->getInstance()Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract acceptGroupApplication(Lcom/tencent/imsdk/v2/V2TIMGroupApplication;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method

.method public abstract createGroup(Lcom/tencent/imsdk/v2/V2TIMGroupInfo;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMGroupInfo;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMCreateGroupMemberInfo;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createTopicInCommunity(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMTopicInfo;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/v2/V2TIMTopicInfo;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteGroupAttributes(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract deleteTopicFromCommunity(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMTopicOperationResult;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getGroupApplicationList(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupApplicationResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getGroupAttributes(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getGroupMemberList(Ljava/lang/String;IJLcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfoResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getGroupMembersInfo(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getGroupOnlineMemberCount(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getGroupsInfo(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupInfoResult;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getJoinedCommunityList(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupInfo;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getJoinedGroupList(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupInfo;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getTopicInfoList(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMTopicInfoResult;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract initGroupAttributes(Ljava/lang/String;Ljava/util/HashMap;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract inviteUserToGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupMemberOperationResult;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract kickGroupMember(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupMemberOperationResult;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract markGroupMemberList(Ljava/lang/String;Ljava/util/List;IZLcom/tencent/imsdk/v2/V2TIMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZ",
            "Lcom/tencent/imsdk/v2/V2TIMCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract muteGroupMember(Ljava/lang/String;Ljava/lang/String;ILcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method

.method public abstract refuseGroupApplication(Lcom/tencent/imsdk/v2/V2TIMGroupApplication;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method

.method public abstract searchGroupMembers(Lcom/tencent/imsdk/v2/V2TIMGroupMemberSearchParam;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMGroupMemberSearchParam;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;",
            ">;>;>;)V"
        }
    .end annotation
.end method

.method public abstract searchGroups(Lcom/tencent/imsdk/v2/V2TIMGroupSearchParam;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMGroupSearchParam;",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupInfo;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract setGroupApplicationRead(Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method

.method public abstract setGroupAttributes(Ljava/lang/String;Ljava/util/HashMap;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/imsdk/v2/V2TIMCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setGroupInfo(Lcom/tencent/imsdk/v2/V2TIMGroupInfo;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method

.method public abstract setGroupMemberInfo(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMGroupMemberFullInfo;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method

.method public abstract setGroupMemberRole(Ljava/lang/String;Ljava/lang/String;ILcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method

.method public abstract setTopicInfo(Lcom/tencent/imsdk/v2/V2TIMTopicInfo;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method

.method public abstract transferGroupOwner(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method
