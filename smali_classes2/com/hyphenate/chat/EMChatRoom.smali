.class public Lcom/hyphenate/chat/EMChatRoom;
.super Lcom/hyphenate/chat/EMBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;,
        Lcom/hyphenate/chat/EMChatRoom$EMChatRoomStyle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/chat/EMBase<",
        "Lcom/hyphenate/chat/adapter/EMAChatRoom;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAChatRoom;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/chat/EMChatRoom;->emaObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMAChatRoom;)V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAChatRoom;

    invoke-direct {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatRoom;-><init>(Lcom/hyphenate/chat/adapter/EMAChatRoom;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMChatRoom;->emaObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAChatRoom;

    invoke-direct {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatRoom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMChatRoom;->emaObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    new-instance p2, Lcom/hyphenate/chat/adapter/EMAChatRoom;

    invoke-direct {p2, p1}, Lcom/hyphenate/chat/adapter/EMAChatRoom;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatRoom;->emaObject:Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoom;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAChatRoom;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getAdministratorList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAnnouncement()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoom;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAChatRoom;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getAnnouncement()Ljava/lang/String;

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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatRoom;->getBlacklist()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBlacklist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoom;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAChatRoom;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getBlockList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChatRoomPermissionType()Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoom;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAChatRoom;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->permissionType()I

    move-result v0

    sget-object v1, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;->member:Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

    invoke-static {v1}, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;->access$000(Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;)I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;->member:Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

    return-object v0

    :cond_0
    sget-object v1, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;->admin:Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

    invoke-static {v1}, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;->access$000(Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;)I

    move-result v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;->admin:Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

    return-object v0

    :cond_1
    sget-object v1, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;->owner:Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

    invoke-static {v1}, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;->access$000(Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;)I

    move-result v1

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;->owner:Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

    return-object v0

    :cond_2
    sget-object v0, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;->none:Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoom;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAChatRoom;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoom;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAChatRoom;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxUsers()I
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoom;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAChatRoom;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getMaxUserCount()I

    move-result v0

    return v0
.end method

.method public getMemberCount()I
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoom;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAChatRoom;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getAffiliationsCount()I

    move-result v0

    return v0
.end method

.method public getMemberList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoom;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAChatRoom;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getMemberList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMuteList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoom;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAChatRoom;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getMuteList()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoom;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAChatRoom;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoom;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAChatRoom;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getOwner()Ljava/lang/String;

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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatRoom;->getWhitelist()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWhitelist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoom;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAChatRoom;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->getWhiteList()Ljava/util/List;

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

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoom;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAChatRoom;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->isAllMemberMuted()Z

    move-result v0

    return v0
.end method
