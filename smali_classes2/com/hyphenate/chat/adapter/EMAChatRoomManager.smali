.class public Lcom/hyphenate/chat/adapter/EMAChatRoomManager;
.super Lcom/hyphenate/chat/adapter/EMABase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    return-void
.end method


# virtual methods
.method public addChatroomAdmin(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeAddChatroomAdmin(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lcom/hyphenate/chat/adapter/EMAChatRoomManagerListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeAddListener(Lcom/hyphenate/chat/adapter/EMAChatRoomManagerListener;)V

    return-void
.end method

.method public addToWhiteList(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeAddToWhiteList(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    return-object p1
.end method

.method public blockChatroomMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeBlockChatroomMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    return-object p1
.end method

.method public changeChatroomDescription(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeChangeChatroomDescription(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    return-object p1
.end method

.method public changeChatroomSubject(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeChangeChatroomSubject(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    return-object p1
.end method

.method public checkIfBeMuted(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeCheckIfBeMuted(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Z

    move-result p1

    return p1
.end method

.method public checkIfInWhiteList(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeCheckIfInWhiteList(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Z

    move-result p1

    return p1
.end method

.method public clearListeners()V
    .locals 0

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeClearListeners()V

    return-void
.end method

.method public createChatRoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p7}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeCreateChatRoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    return-object p1
.end method

.method public destroyChatroom(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeDestroyChatroom(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public fetchAllChatrooms(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeFetchAllChatrooms(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public fetchChatRoomAnnouncement(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeFetchChatroomAnnouncement(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public fetchChatRoomBlackList(Ljava/lang/String;IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeFetchChatRoomBlackList(Ljava/lang/String;IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public fetchChatRoomMuteList(Ljava/lang/String;IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeFetchChatroomMutes(Ljava/lang/String;IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public fetchChatRoomWhiteList(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeFetchChatRoomWhiteList(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public fetchChatroomAttributes(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeFetchChatroomAttributes(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public fetchChatroomMembers(Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeFetchChatroomMembers(Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    return-object p1
.end method

.method public fetchChatroomSpecification(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;Z)Lcom/hyphenate/chat/adapter/EMAChatRoom;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeFetchChatroomSpecification(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;Z)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    return-object p1
.end method

.method public fetchChatroomsWithCursor(Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeFetchChatroomsWithCursor(Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    return-object p1
.end method

.method public fetchChatroomsWithPage(IILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMPageResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMPageResult<",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativefetchChatroomsWithPage(IILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMPageResult;

    move-result-object p1

    return-object p1
.end method

.method public getChatroom(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeGetChatroom(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    return-object p1
.end method

.method public joinChatRoom(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeJoinChatRoom(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    return-object p1
.end method

.method public leaveChatRoom(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeLeaveChatRoom(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public muteAllMembers(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeMuteAllMembers(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    return-object p1
.end method

.method public muteChatroomMembers(Ljava/lang/String;Ljava/util/List;JLcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p5}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeMuteChatroomMembers(Ljava/lang/String;Ljava/util/List;JLcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    return-object p1
.end method

.method native nativeAddChatroomAdmin(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
.end method

.method native nativeAddListener(Lcom/hyphenate/chat/adapter/EMAChatRoomManagerListener;)V
.end method

.method native nativeAddToWhiteList(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;"
        }
    .end annotation
.end method

.method native nativeBlockChatroomMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;"
        }
    .end annotation
.end method

.method native nativeChangeChatroomDescription(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
.end method

.method native nativeChangeChatroomSubject(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
.end method

.method native nativeCheckIfBeMuted(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Z
.end method

.method native nativeCheckIfInWhiteList(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Z
.end method

.method native nativeClearListeners()V
.end method

.method native nativeCreateChatRoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;"
        }
    .end annotation
.end method

.method native nativeDestroyChatroom(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeFetchAllChatrooms(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;",
            ">;"
        }
    .end annotation
.end method

.method native nativeFetchChatRoomBlackList(Ljava/lang/String;IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method native nativeFetchChatRoomWhiteList(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method native nativeFetchChatroomAnnouncement(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;
.end method

.method native nativeFetchChatroomAttributes(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method native nativeFetchChatroomMembers(Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method native nativeFetchChatroomMutes(Ljava/lang/String;IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method native nativeFetchChatroomSpecification(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;Z)Lcom/hyphenate/chat/adapter/EMAChatRoom;
.end method

.method native nativeFetchChatroomsWithCursor(Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;",
            ">;"
        }
    .end annotation
.end method

.method native nativeGetChatroom(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
.end method

.method native nativeJoinChatRoom(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
.end method

.method native nativeLeaveChatRoom(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeMuteAllMembers(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
.end method

.method native nativeMuteChatroomMembers(Ljava/lang/String;Ljava/util/List;JLcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;"
        }
    .end annotation
.end method

.method native nativeRemoveChatRoomMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;"
        }
    .end annotation
.end method

.method native nativeRemoveChatroomAdmin(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
.end method

.method native nativeRemoveChatroomAttributes(Ljava/lang/String;Ljava/util/List;ZLcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method native nativeRemoveFromWhiteList(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;"
        }
    .end annotation
.end method

.method native nativeRemoveListener(Lcom/hyphenate/chat/adapter/EMAChatRoomManagerListener;)V
.end method

.method native nativeSetChatroomAttributes(Ljava/lang/String;Ljava/lang/String;ZLcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;
.end method

.method native nativeTransferChatroomOwner(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
.end method

.method native nativeUnblockChatroomMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;"
        }
    .end annotation
.end method

.method native nativeUnmuteAllMembers(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
.end method

.method native nativeUnmuteChatroomMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;"
        }
    .end annotation
.end method

.method native nativeUpdateChatroomAnnouncement(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativefetchChatroomsWithPage(IILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMPageResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMPageResult<",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;",
            ">;"
        }
    .end annotation
.end method

.method public removeChatRoomAdmin(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeRemoveChatroomAdmin(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    return-object p1
.end method

.method public removeChatRoomMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeRemoveChatRoomMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    return-object p1
.end method

.method public removeChatroomAttributes(Ljava/lang/String;Ljava/util/List;ZLcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeRemoveChatroomAttributes(Ljava/lang/String;Ljava/util/List;ZLcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public removeFromWhiteList(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeRemoveFromWhiteList(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(Lcom/hyphenate/chat/adapter/EMAChatRoomManagerListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeRemoveListener(Lcom/hyphenate/chat/adapter/EMAChatRoomManagerListener;)V

    return-void
.end method

.method public setChatroomAttributes(Ljava/lang/String;Ljava/lang/String;ZLcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeSetChatroomAttributes(Ljava/lang/String;Ljava/lang/String;ZLcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public transferChatroomOwner(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeTransferChatroomOwner(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    return-object p1
.end method

.method public unblockChatRoomMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeUnblockChatroomMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    return-object p1
.end method

.method public unmuteAllMembers(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeUnmuteAllMembers(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    return-object p1
.end method

.method public unmuteChatRoomMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/EMAChatRoom;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeUnmuteChatroomMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    return-object p1
.end method

.method public updateChatRoomAnnouncement(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->nativeUpdateChatroomAnnouncement(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method
