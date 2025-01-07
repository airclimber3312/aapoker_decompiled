.class public interface abstract Lcom/hyphenate/chat/adapter/EMAChatRoomManagerListenerInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onAddAdmin(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/lang/String;)V
.end method

.method public abstract onAddMuteList(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/util/List;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation
.end method

.method public abstract onAllMemberMuteStateChanged(Lcom/hyphenate/chat/adapter/EMAChatRoom;Z)V
.end method

.method public abstract onAnnouncementChanged(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/lang/String;)V
.end method

.method public abstract onAttributesRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onAttributesUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onLeaveChatRoom(Lcom/hyphenate/chat/adapter/EMAChatRoom;I)V
.end method

.method public abstract onMemberJoinedChatRoom(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/lang/String;)V
.end method

.method public abstract onMemberLeftChatRoom(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/lang/String;)V
.end method

.method public abstract onOwnerChanged(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRemoveAdmin(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/lang/String;)V
.end method

.method public abstract onRemoveMutes(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUpdateSpecificationFromChatroom(Lcom/hyphenate/chat/adapter/EMAChatRoom;)V
.end method

.method public abstract onWhiteListAdded(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onWhiteListRemoved(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
