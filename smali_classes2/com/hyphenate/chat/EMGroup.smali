.class public Lcom/hyphenate/chat/EMGroup;
.super Lcom/hyphenate/chat/EMBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/chat/EMBase<",
        "Lcom/hyphenate/chat/adapter/EMAGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private shareFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMucSharedFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMAGroup;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMGroup;->emaObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/hyphenate/chat/EMBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
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

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroup;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroup;->getAdminList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAnnouncement()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroup;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroup;->getAnnouncement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroup;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroup;->getGroupBans()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroup;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroup;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroup;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupSetting()Lcom/hyphenate/chat/adapter/EMAGroupSetting;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroupSetting;->extension()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroup;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroup;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupPermissionType()Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroup;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroup;->permissionType()I

    move-result v0

    sget-object v1, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;->member:Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

    invoke-static {v1}, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;->access$000(Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;)I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;->member:Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

    return-object v0

    :cond_0
    sget-object v1, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;->admin:Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

    invoke-static {v1}, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;->access$000(Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;)I

    move-result v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;->admin:Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

    return-object v0

    :cond_1
    sget-object v1, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;->owner:Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

    invoke-static {v1}, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;->access$000(Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;)I

    move-result v1

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;->owner:Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

    return-object v0

    :cond_2
    sget-object v0, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;->none:Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

    return-object v0
.end method

.method public getMaxUserCount()I
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroup;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupSetting()Lcom/hyphenate/chat/adapter/EMAGroupSetting;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroupSetting;->maxUserCount()I

    move-result v0

    return v0
.end method

.method public getMemberCount()I
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroup;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroup;->getMemberCount()I

    move-result v0

    return v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMGroup;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/EMAGroup;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getMuteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroup;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroup;->getGroupMuteList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroup;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroup;->getOwner()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShareFileList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMucSharedFile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroup;->shareFileList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/chat/EMGroup;->shareFileList:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMGroup;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroup;->getShareFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/adapter/EMAMucShareFile;

    iget-object v2, p0, Lcom/hyphenate/chat/EMGroup;->shareFileList:Ljava/util/List;

    new-instance v3, Lcom/hyphenate/chat/EMMucSharedFile;

    invoke-direct {v3, v1}, Lcom/hyphenate/chat/EMMucSharedFile;-><init>(Lcom/hyphenate/chat/adapter/EMAMucShareFile;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/hyphenate/chat/EMGroup;->shareFileList:Ljava/util/List;

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

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroup;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroup;->getWhiteList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public groupSubject()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroup;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/hyphenate/chat/EMBase;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAllMemberMuted()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroup;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroup;->isAllMemberMuted()Z

    move-result v0

    return v0
.end method

.method public isDisabled()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroup;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroup;->isDisabled()Z

    move-result v0

    return v0
.end method

.method public isMemberAllowToInvite()Z
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroup;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupSetting()Lcom/hyphenate/chat/adapter/EMAGroupSetting;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroupSetting;->style()I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isMemberOnly()Z
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroup;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupSetting()Lcom/hyphenate/chat/adapter/EMAGroupSetting;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroupSetting;->style()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroupSetting;->style()I

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroupSetting;->style()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public isMsgBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroup;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroup;->isMsgBlocked()Z

    move-result v0

    return v0
.end method

.method public isPublic()Z
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMGroup;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAGroup;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroup;->groupSetting()Lcom/hyphenate/chat/adapter/EMAGroupSetting;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAGroupSetting;->style()I

    move-result v0

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMGroup;->getGroupId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
