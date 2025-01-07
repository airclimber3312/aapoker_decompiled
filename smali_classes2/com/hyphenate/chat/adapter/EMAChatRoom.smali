.class public Lcom/hyphenate/chat/adapter/EMAChatRoom;
.super Lcom/hyphenate/chat/adapter/EMABase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/adapter/EMAChatRoom$EMLeaveReason;,
        Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;
    }
.end annotation


# static fields
.field public static final EMChatroomLeaveReason_BE_KICKED:I = 0x0

.field public static final EMChatroomLeaveReason_DESTROYED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->nativeInit()V

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMAChatRoom;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->nativeInit(Lcom/hyphenate/chat/adapter/EMAChatRoom;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->nativeInit(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAdministratorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->nativeGetAdministratorList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAffiliationsCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->nativegetAffiliationsCount()I

    move-result v0

    return v0
.end method

.method public getAnnouncement()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->nativeGetAnnouncement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->nativeGetBlockList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->nativeChatroomDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->nativeChatroomId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxUserCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->nativegetMaxUserCount()I

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

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->nativegetMemberList()Ljava/util/List;

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

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->nativeGetMuteList()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->nativeChatroomSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->nativegetOwner()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->nativeGetWhiteList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isAllMemberMuted()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->nativeIsAllMemberMuted()Z

    move-result v0

    return v0
.end method

.method native nativeChatroomDescription()Ljava/lang/String;
.end method

.method native nativeChatroomId()Ljava/lang/String;
.end method

.method native nativeChatroomSubject()Ljava/lang/String;
.end method

.method native nativeFinalize()V
.end method

.method native nativeGetAdministratorList()Ljava/util/List;
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

.method native nativeGetBlockList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method native nativeGetMuteList()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
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

.method native nativeInit()V
.end method

.method native nativeInit(Lcom/hyphenate/chat/adapter/EMAChatRoom;)V
.end method

.method native nativeInit(Ljava/lang/String;)V
.end method

.method native nativeIsAllMemberMuted()Z
.end method

.method native nativePermissionType()I
.end method

.method native nativegetAffiliationsCount()I
.end method

.method native nativegetMaxUserCount()I
.end method

.method native nativegetMemberList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method native nativegetOwner()Ljava/lang/String;
.end method

.method public permissionType()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatRoom;->nativePermissionType()I

    move-result v0

    return v0
.end method
