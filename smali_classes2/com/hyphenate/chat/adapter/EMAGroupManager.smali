.class public Lcom/hyphenate/chat/adapter/EMAGroupManager;
.super Lcom/hyphenate/chat/adapter/EMABase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMAGroupManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeInit(Lcom/hyphenate/chat/adapter/EMAGroupManager;)V

    return-void
.end method


# virtual methods
.method public acceptInvitationFromGroup(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeacceptInvitationFromGroup(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    return-object p1
.end method

.method public acceptJoinGroupApplication(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeAcceptJoinGroupApplication(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public addGroupAdmin(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeAddGroupAdmin(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    return-object p1
.end method

.method public addGroupMembers(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAGroup;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeAddGroupMembers(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lcom/hyphenate/chat/adapter/EMAGroupManagerListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeAddListener(Lcom/hyphenate/chat/adapter/EMAGroupManagerListener;)V

    return-void
.end method

.method public addToWhiteList(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAGroup;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeAddToWhiteList(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    return-object p1
.end method

.method public allMyGroups(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAGroup;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeAllMyGroups(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public applyJoinPublicGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeApplyJoinPublicGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    return-object p1
.end method

.method public blockGroupMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAGroup;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeBlockGroupMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    return-object p1
.end method

.method public blockGroupMessage(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeBlockGroupMessage(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    return-object p1
.end method

.method public changeGroupDescription(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeChangeGroupDescription(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    return-object p1
.end method

.method public changeGroupSubject(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeChangeGroupSubject(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    return-object p1
.end method

.method public checkIfBeMuted(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeCheckIfBeMuted(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Z

    move-result p1

    return p1
.end method

.method public checkIfInWhiteList(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeCheckIfInWhiteList(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Z

    move-result p1

    return p1
.end method

.method public cleanAllGroupsFromLocal()V
    .locals 0

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeCleanAllGroupsFromLocal()V

    return-void
.end method

.method public clearListeners()V
    .locals 0

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeClearListeners()V

    return-void
.end method

.method public createGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAGroupSetting;Ljava/util/List;ZLcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAGroupSetting;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAGroup;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p7}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeCreateGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAGroupSetting;Ljava/util/List;ZLcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    return-object p1
.end method

.method public declineInvitationFromGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativedeclineInvitationFromGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public declineJoinGroupApplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeDeclineJoinGroupApplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public deleteGroupShareFile(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeDeleteGroupShareFile(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public destroyGroup(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeDestroyGroup(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public downloadGroupShareFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMACallback;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeDownloadGroupShareFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMACallback;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public fetchAllMyGroups(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAGroup;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeFetchAllMyGroups(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public fetchAllMyGroupsWithPage(IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAGroup;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeFetchAllMyGroupsWithPage(IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public fetchAllMyGroupsWithPage(IIZZLcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZ",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAGroup;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p5}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeFetchAllMyGroupsWithPage(IIZZLcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public fetchGroupAnnouncement(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeFetchGroupAnnouncement(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public fetchGroupBlackList(Ljava/lang/String;IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeFetchGroupBlackList(Ljava/lang/String;IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public fetchGroupMembers(Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeFetchGroupMembers(Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    return-object p1
.end method

.method public fetchGroupMutes(Ljava/lang/String;IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeFetchGroupMutes(Ljava/lang/String;IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public fetchGroupShareFiles(Ljava/lang/String;IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAMucShareFile;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeFetchGroupShareFiles(Ljava/lang/String;IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public fetchGroupSpecification(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;Z)Lcom/hyphenate/chat/adapter/EMAGroup;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeFetchGroupSpecification(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;Z)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    return-object p1
.end method

.method public fetchGroupWhiteList(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeFetchGroupWhiteList(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public fetchMemberAllAttributes(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeFetchMemberAllAttribute(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public fetchMembersAttributes(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeFetchMembersAttributes(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public fetchPublicGroupsWithCursor(Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/EMGroupInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeFetchPublicGroupsWithCursor(Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    return-object p1
.end method

.method public getJoinedGroupsCount(Lcom/hyphenate/chat/adapter/EMAError;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeGetJoinedGroupsCount(Lcom/hyphenate/chat/adapter/EMAError;)I

    move-result p1

    return p1
.end method

.method public joinPublicGroup(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeJoinPublicGroup(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    return-object p1
.end method

.method public leaveGroup(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeLeaveGroup(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public loadAllMyGroupsFromDB()V
    .locals 0

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeLoadAllMyGroupsFromDB()V

    return-void
.end method

.method public muteAllMembers(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeMuteAllMembers(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    return-object p1
.end method

.method public muteGroupMembers(Ljava/lang/String;Ljava/util/List;JLcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAGroup;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p5}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeMuteGroupMembers(Ljava/lang/String;Ljava/util/List;JLcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    return-object p1
.end method

.method native nativeAcceptJoinGroupApplication(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeAddGroupAdmin(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
.end method

.method native nativeAddGroupMembers(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAGroup;"
        }
    .end annotation
.end method

.method native nativeAddListener(Lcom/hyphenate/chat/adapter/EMAGroupManagerListener;)V
.end method

.method native nativeAddToWhiteList(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAGroup;"
        }
    .end annotation
.end method

.method native nativeAllMyGroups(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAGroup;",
            ">;"
        }
    .end annotation
.end method

.method native nativeApplyJoinPublicGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
.end method

.method native nativeBlockGroupMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAGroup;"
        }
    .end annotation
.end method

.method native nativeBlockGroupMessage(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
.end method

.method native nativeChangeGroupDescription(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
.end method

.method native nativeChangeGroupSubject(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
.end method

.method native nativeCheckIfBeMuted(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Z
.end method

.method native nativeCheckIfInWhiteList(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Z
.end method

.method native nativeCleanAllGroupsFromLocal()V
.end method

.method native nativeClearListeners()V
.end method

.method native nativeCreateGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAGroupSetting;Ljava/util/List;ZLcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAGroupSetting;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAGroup;"
        }
    .end annotation
.end method

.method native nativeDeclineJoinGroupApplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeDeleteGroupShareFile(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeDestroyGroup(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeDownloadGroupShareFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMACallback;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeFetchAllMyGroups(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAGroup;",
            ">;"
        }
    .end annotation
.end method

.method native nativeFetchAllMyGroupsWithPage(IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAGroup;",
            ">;"
        }
    .end annotation
.end method

.method native nativeFetchAllMyGroupsWithPage(IIZZLcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZ",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAGroup;",
            ">;"
        }
    .end annotation
.end method

.method native nativeFetchGroupAnnouncement(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;
.end method

.method native nativeFetchGroupBlackList(Ljava/lang/String;IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method native nativeFetchGroupMembers(Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method native nativeFetchGroupMutes(Ljava/lang/String;IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method native nativeFetchGroupShareFiles(Ljava/lang/String;IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAMucShareFile;",
            ">;"
        }
    .end annotation
.end method

.method native nativeFetchGroupSpecification(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;Z)Lcom/hyphenate/chat/adapter/EMAGroup;
.end method

.method native nativeFetchGroupWhiteList(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method native nativeFetchMemberAllAttribute(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method native nativeFetchMembersAttributes(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method native nativeFetchPublicGroupsWithCursor(Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/EMGroupInfo;",
            ">;"
        }
    .end annotation
.end method

.method native nativeGetJoinedGroupsCount(Lcom/hyphenate/chat/adapter/EMAError;)I
.end method

.method native nativeInit(Lcom/hyphenate/chat/adapter/EMAGroupManager;)V
.end method

.method native nativeJoinPublicGroup(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
.end method

.method native nativeLeaveGroup(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeLoadAllMyGroupsFromDB()V
.end method

.method native nativeMuteAllMembers(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
.end method

.method native nativeMuteGroupMembers(Ljava/lang/String;Ljava/util/List;JLcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAGroup;"
        }
    .end annotation
.end method

.method native nativeRemoveFromWhiteList(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAGroup;"
        }
    .end annotation
.end method

.method native nativeRemoveGroupAdmin(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
.end method

.method native nativeRemoveGroupMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAGroup;"
        }
    .end annotation
.end method

.method native nativeRemoveListener(Lcom/hyphenate/chat/adapter/EMAGroupManagerListener;)V
.end method

.method native nativeSearchPublicGroup(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
.end method

.method native nativeSetMemberAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/chat/adapter/EMAError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")V"
        }
    .end annotation
.end method

.method native nativeTransferGroupOwner(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
.end method

.method native nativeUnMuteGroupMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAGroup;"
        }
    .end annotation
.end method

.method native nativeUnblockGroupMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAGroup;"
        }
    .end annotation
.end method

.method native nativeUnblockGroupMessage(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
.end method

.method native nativeUnmuteAllMembers(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
.end method

.method native nativeUpdateGroupAnnouncement(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeUpdateGroupExtension(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
.end method

.method native nativeUploadGroupShareFile(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMACallback;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAMucShareFile;
.end method

.method native nativeacceptInvitationFromGroup(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
.end method

.method native nativedeclineInvitationFromGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method public removeFromWhiteList(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAGroup;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeRemoveFromWhiteList(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    return-object p1
.end method

.method public removeGroupAdmin(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeRemoveGroupAdmin(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    return-object p1
.end method

.method public removeGroupMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAGroup;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeRemoveGroupMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(Lcom/hyphenate/chat/adapter/EMAGroupManagerListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeRemoveListener(Lcom/hyphenate/chat/adapter/EMAGroupManagerListener;)V

    return-void
.end method

.method public searchPublicGroup(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeSearchPublicGroup(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    return-object p1
.end method

.method public setMemberAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeSetMemberAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public transferGroupOwner(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeTransferGroupOwner(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    return-object p1
.end method

.method public unMuteGroupMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAGroup;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeUnMuteGroupMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    return-object p1
.end method

.method public unblockGroupMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAGroup;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeUnblockGroupMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    return-object p1
.end method

.method public unblockGroupMessage(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeUnblockGroupMessage(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    return-object p1
.end method

.method public unmuteAllMembers(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeUnmuteAllMembers(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    return-object p1
.end method

.method public updateGroupAnnouncement(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeUpdateGroupAnnouncement(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public updateGroupExtension(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeUpdateGroupExtension(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAGroup;

    move-result-object p1

    return-object p1
.end method

.method public uploadGroupShareFile(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMACallback;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAMucShareFile;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAGroupManager;->nativeUploadGroupShareFile(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMACallback;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAMucShareFile;

    move-result-object p1

    return-object p1
.end method
