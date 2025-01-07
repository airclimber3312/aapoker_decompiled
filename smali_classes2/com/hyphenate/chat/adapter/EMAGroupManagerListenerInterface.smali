.class public interface abstract Lcom/hyphenate/chat/adapter/EMAGroupManagerListenerInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onAddAdminFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;)V
.end method

.method public abstract onAddMutesFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/util/List;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAGroup;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation
.end method

.method public abstract onAllMemberMuteStateChanged(Lcom/hyphenate/chat/adapter/EMAGroup;Z)V
.end method

.method public abstract onAnnouncementChanged(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;)V
.end method

.method public abstract onAssignOwnerFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onAutoAcceptInvitationFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDeleteShareFileFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;)V
.end method

.method public abstract onGroupMemberAttributeChanged(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
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
.end method

.method public abstract onLeaveGroup(Lcom/hyphenate/chat/adapter/EMAGroup;I)V
.end method

.method public abstract onMemberExited(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;)V
.end method

.method public abstract onMemberJoined(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;)V
.end method

.method public abstract onReceiveAcceptionFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;)V
.end method

.method public abstract onReceiveInviteAcceptionFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;)V
.end method

.method public abstract onReceiveInviteDeclineFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReceiveInviteFromGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReceiveJoinGroupApplication(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onReceiveRejectionFromGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRemoveAdminFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/lang/String;)V
.end method

.method public abstract onRemoveMutesFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAGroup;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStateChangedFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Z)V
.end method

.method public abstract onUpdateMyGroupList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAGroup;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUpdateSpecificationFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;)V
.end method

.method public abstract onUploadShareFileFromGroup(Lcom/hyphenate/chat/adapter/EMAGroup;Lcom/hyphenate/chat/adapter/EMAMucShareFile;)V
.end method

.method public abstract onWhiteListAdded(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAGroup;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onWhiteListRemoved(Lcom/hyphenate/chat/adapter/EMAGroup;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAGroup;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
