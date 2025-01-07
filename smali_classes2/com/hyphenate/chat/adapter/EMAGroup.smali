.class public Lcom/hyphenate/chat/adapter/EMAGroup;
.super Lcom/hyphenate/chat/adapter/EMABase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/adapter/EMAGroup$EMGroupLeaveReason;
    }
.end annotation


# static fields
.field public static final EMGroupLeaveReason_BE_KICKED:I = 0x0

.field public static final EMGroupLeaveReason_DESTROYED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativeInit()V

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMAGroup;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativeInit(Lcom/hyphenate/chat/adapter/EMAGroup;)V

    return-void
.end method


# virtual methods
.method public addMember(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativeaddMember(Ljava/lang/String;)V

    return-void
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAdminList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativeGetAdminList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAnnouncement()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativeGetAnnouncement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativeGroupDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupBans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativeGetGroupBans()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGroupMuteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativeGetGroupMuteList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMemberCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativeGroupMembersCount()I

    move-result v0

    return v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativeGroupMembers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativeGroupOwner()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShareFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAMucShareFile;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativeGetShareFiles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativeGetWhiteList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public groupBlockList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativeGroupBlockList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public groupId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativeGroupId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public groupSetting()Lcom/hyphenate/chat/adapter/EMAGroupSetting;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativeGroupSetting()Lcom/hyphenate/chat/adapter/EMAGroupSetting;

    move-result-object v0

    return-object v0
.end method

.method public groupSubject()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativegroupSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAllMemberMuted()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativeIsAllMemberMuted()Z

    move-result v0

    return v0
.end method

.method public isDisabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativeIsDisabled()Z

    move-result v0

    return v0
.end method

.method public isMsgBlocked()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativeIsMessageBlocked()Z

    move-result v0

    return v0
.end method

.method public isPushEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativeIsPushEnabled()Z

    move-result v0

    return v0
.end method

.method native nativeFinalize()V
.end method

.method native nativeGetAdminList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method native nativeGetAnnouncement()Ljava/lang/String;
.end method

.method native nativeGetGroupBans()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method native nativeGetGroupMuteList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method native nativeGetShareFiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAMucShareFile;",
            ">;"
        }
    .end annotation
.end method

.method native nativeGetWhiteList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method native nativeGroupBlockList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method native nativeGroupDescription()Ljava/lang/String;
.end method

.method native nativeGroupId()Ljava/lang/String;
.end method

.method native nativeGroupMembers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method native nativeGroupMembersCount()I
.end method

.method native nativeGroupOwner()Ljava/lang/String;
.end method

.method native nativeGroupSetting()Lcom/hyphenate/chat/adapter/EMAGroupSetting;
.end method

.method native nativeInit()V
.end method

.method native nativeInit(Lcom/hyphenate/chat/adapter/EMAGroup;)V
.end method

.method native nativeIsAllMemberMuted()Z
.end method

.method native nativeIsDisabled()Z
.end method

.method native nativeIsMessageBlocked()Z
.end method

.method native nativeIsPushEnabled()Z
.end method

.method native nativePermissionType()I
.end method

.method native nativeaddMember(Ljava/lang/String;)V
.end method

.method native nativegroupSubject()Ljava/lang/String;
.end method

.method native nativesetAffiliationsCount(I)V
.end method

.method native nativesetDescription(Ljava/lang/String;)V
.end method

.method native nativesetGroupName(Ljava/lang/String;)V
.end method

.method native nativesetMsgBlocked(Z)V
.end method

.method native nativesetOwner(Ljava/lang/String;)V
.end method

.method public permissionType()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativePermissionType()I

    move-result v0

    return v0
.end method

.method public setAffiliationsCount(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativesetAffiliationsCount(I)V

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativesetDescription(Ljava/lang/String;)V

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativesetGroupName(Ljava/lang/String;)V

    return-void
.end method

.method public setMsgBlocked(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativesetMsgBlocked(Z)V

    return-void
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAGroup;->nativesetOwner(Ljava/lang/String;)V

    return-void
.end method
