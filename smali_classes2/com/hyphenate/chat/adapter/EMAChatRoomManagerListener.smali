.class public abstract Lcom/hyphenate/chat/adapter/EMAChatRoomManagerListener;
.super Lcom/hyphenate/chat/adapter/EMABase;

# interfaces
.implements Lcom/hyphenate/chat/adapter/EMAChatRoomManagerListenerInterface;


# static fields
.field public static final BE_KICKED:I = 0x0

.field public static final BE_KICKED_FOR_OFFLINE:I = 0x2

.field public static final DESTROYED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManagerListener;->nativeInit()V

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

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManagerListener;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method native nativeFinalize()V
.end method

.method native nativeInit()V
.end method

.method public onAddAdmin(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAddMuteList(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    return-void
.end method

.method public onAllMemberMuteStateChanged(Lcom/hyphenate/chat/adapter/EMAChatRoom;Z)V
    .locals 0

    return-void
.end method

.method public onAnnouncementChanged(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAttributesRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAttributesUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLeaveChatRoom(Lcom/hyphenate/chat/adapter/EMAChatRoom;I)V
    .locals 0

    return-void
.end method

.method public onMemberJoinedChatRoom(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMemberLeftChatRoom(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onOwnerChanged(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRemoveAdmin(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRemoveMutes(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUpdateSpecificationFromChatroom(Lcom/hyphenate/chat/adapter/EMAChatRoom;)V
    .locals 0

    return-void
.end method

.method public onWhiteListAdded(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onWhiteListRemoved(Lcom/hyphenate/chat/adapter/EMAChatRoom;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
