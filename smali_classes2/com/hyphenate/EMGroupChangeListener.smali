.class public interface abstract Lcom/hyphenate/EMGroupChangeListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onAdminAdded(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onAdminRemoved(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onAllMemberMuteStateChanged(Ljava/lang/String;Z)V
.end method

.method public abstract onAnnouncementChanged(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onAutoAcceptInvitationFromGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onGroupDestroyed(Ljava/lang/String;Ljava/lang/String;)V
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

.method public abstract onInvitationAccepted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onInvitationDeclined(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onInvitationReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onMemberExited(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onMemberJoined(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onMuteListAdded(Ljava/lang/String;Ljava/util/List;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation
.end method

.method public abstract onMuteListRemoved(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onOwnerChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRequestToJoinAccepted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRequestToJoinDeclined(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRequestToJoinDeclined(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRequestToJoinReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSharedFileAdded(Ljava/lang/String;Lcom/hyphenate/chat/EMMucSharedFile;)V
.end method

.method public abstract onSharedFileDeleted(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSpecificationChanged(Lcom/hyphenate/chat/EMGroup;)V
.end method

.method public abstract onStateChanged(Lcom/hyphenate/chat/EMGroup;Z)V
.end method

.method public abstract onUserRemoved(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onWhiteListAdded(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onWhiteListRemoved(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
