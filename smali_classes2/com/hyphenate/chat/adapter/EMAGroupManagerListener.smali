.class public abstract Lcom/hyphenate/chat/adapter/EMAGroupManagerListener;
.super Lcom/hyphenate/chat/adapter/EMABase;

# interfaces
.implements Lcom/hyphenate/chat/adapter/EMAGroupManagerListenerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroupManagerListener;->nativeInit()V

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

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroupManagerListener;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method native nativeFinalize()V
.end method

.method native nativeInit()V
.end method

.method public onAddAdminFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAddMutesFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAGroup;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    return-void
.end method

.method public onAllMemberMuteStateChanged(Lcom/hyphenate/chat/adapter/EMAGroup;Z)V
    .locals 0

    return-void
.end method

.method public onAnnouncementChanged(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAssignOwnerFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAutoAcceptInvitationFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDeleteShareFileFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onGroupMemberAttributeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
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
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onLeaveGroup(Lcom/hyphenate/chat/adapter/EMAGroup;I)V
    .locals 0

    return-void
.end method

.method public onMemberExited(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMemberJoined(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReceiveAcceptionFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;)V
    .locals 0

    return-void
.end method

.method public onReceiveInviteAcceptionFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReceiveInviteDeclineFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReceiveInviteFromGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReceiveJoinGroupApplication(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReceiveRejectionFromGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRemoveAdminFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRemoveMutesFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAGroup;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onStateChangedFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Z)V
    .locals 0

    return-void
.end method

.method public onUpdateMyGroupList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAGroup;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUpdateSpecificationFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;)V
    .locals 0

    return-void
.end method

.method public onUploadShareFileFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Lcom/hyphenate/chat/adapter/EMAMucShareFile;)V
    .locals 0

    return-void
.end method

.method public onWhiteListAdded(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAGroup;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onWhiteListRemoved(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAGroup;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
