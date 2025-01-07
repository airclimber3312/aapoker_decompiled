.class public interface abstract Lcom/hyphenate/EMChatRoomChangeListener;
.super Ljava/lang/Object;


# static fields
.field public static final BE_KICKED:I = 0x0

.field public static final BE_KICKED_FOR_OFFLINE:I = 0x2


# virtual methods
.method public abstract onAdminAdded(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onAdminRemoved(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onAllMemberMuteStateChanged(Ljava/lang/String;Z)V
.end method

.method public abstract onAnnouncementChanged(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onAttributesRemoved(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onAttributesUpdate(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

.method public abstract onChatRoomDestroyed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onMemberExited(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.method public abstract onRemovedFromChatRoom(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSpecificationChanged(Lcom/hyphenate/chat/EMChatRoom;)V
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
