.class public Lcom/hyphenate/chat/adapter/EMAConversation;
.super Lcom/hyphenate/chat/adapter/EMABase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;,
        Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;
    }
.end annotation


# static fields
.field public static final EMAConversationType_CHAT:I = 0x0

.field public static final EMAConversationType_CHATROOM:I = 0x2

.field public static final EMAConversationType_DISCUSSIONGROUP:I = 0x3

.field public static final EMAConversationType_GROUPCHAT:I = 0x1

.field public static final EMAConversationType_HELPDESK:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeInit()V

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMAConversation;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeInit(Lcom/hyphenate/chat/adapter/EMAConversation;)V

    return-void
.end method


# virtual methods
.method public _getType()Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeConversationType()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->CHAT:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->GROUPCHAT:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    return-object v0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->CHATROOM:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    return-object v0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->DISCUSSIONGROUP:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    return-object v0

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->HELPDESK:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    return-object v0

    :cond_4
    sget-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->CHAT:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    return-object v0
.end method

.method public _removeMessage(JJ)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeRemoveMessage(JJ)Z

    move-result p1

    return p1
.end method

.method public _removeMessage(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeRemoveMessage(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public _setExtField(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeSetExtField(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public appendMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeInsertMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)Z

    move-result p1

    return p1
.end method

.method public clearAllMessages()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeClearAllMessages()Z

    move-result v0

    return v0
.end method

.method public conversationId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeConversationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public extField()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeExtField()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getPinnedTime()J
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeGetPinnedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public insertMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeInsertMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)Z

    move-result p1

    return p1
.end method

.method public isChatThread()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeIsThread()Z

    move-result v0

    return v0
.end method

.method public isPinned()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeIsPinned()Z

    move-result v0

    return v0
.end method

.method public latestMessage()Lcom/hyphenate/chat/adapter/message/EMAMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeLatestMessage()Lcom/hyphenate/chat/adapter/message/EMAMessage;

    move-result-object v0

    return-object v0
.end method

.method public latestMessageFromOthers()Lcom/hyphenate/chat/adapter/message/EMAMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeLatestMessageFromOthers()Lcom/hyphenate/chat/adapter/message/EMAMessage;

    move-result-object v0

    return-object v0
.end method

.method public loadMessage(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/message/EMAMessage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeLoadMessage(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/message/EMAMessage;

    move-result-object p1

    return-object p1
.end method

.method public loadMoreMessages(Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->ordinal()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeLoadMoreMessages(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public markAllMessagesAsRead(Z)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeMarkAllMessagesAsRead(Z)Z

    move-result p1

    return p1
.end method

.method public markMessageAsRead(Ljava/lang/String;Z)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeMarkMessageAsRead(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public marks()J
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeMarkTypes()J

    move-result-wide v0

    return-wide v0
.end method

.method public messagesCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeMessagesCount()I

    move-result v0

    return v0
.end method

.method native nativeAppendMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)Z
.end method

.method native nativeClearAllMessages()Z
.end method

.method native nativeClearCachedMessages()V
.end method

.method native nativeConversationId()Ljava/lang/String;
.end method

.method native nativeConversationType()I
.end method

.method native nativeExtField()Ljava/lang/String;
.end method

.method native nativeFinalize()V
.end method

.method native nativeGetPinnedTime()J
.end method

.method native nativeInit()V
.end method

.method native nativeInit(Lcom/hyphenate/chat/adapter/EMAConversation;)V
.end method

.method native nativeInsertMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)Z
.end method

.method native nativeIsPinned()Z
.end method

.method native nativeIsThread()Z
.end method

.method native nativeLatestMessage()Lcom/hyphenate/chat/adapter/message/EMAMessage;
.end method

.method native nativeLatestMessageFromOthers()Lcom/hyphenate/chat/adapter/message/EMAMessage;
.end method

.method native nativeLoadMessage(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/message/EMAMessage;
.end method

.method native nativeLoadMoreMessages(Ljava/lang/String;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;"
        }
    .end annotation
.end method

.method native nativeMarkAllMessagesAsRead(Z)Z
.end method

.method native nativeMarkMessageAsRead(Ljava/lang/String;Z)Z
.end method

.method native nativeMarkTypes()J
.end method

.method native nativeMessagesCount()I
.end method

.method native nativePinnedMessages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;"
        }
    .end annotation
.end method

.method native nativeRemoveMessage(JJ)Z
.end method

.method native nativeRemoveMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)Z
.end method

.method native nativeRemoveMessage(Ljava/lang/String;)Z
.end method

.method native nativeSearchCustomMessages(Ljava/lang/String;JILjava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;"
        }
    .end annotation
.end method

.method native nativeSearchMessages(IJILjava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;"
        }
    .end annotation
.end method

.method native nativeSearchMessages(JII)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;"
        }
    .end annotation
.end method

.method native nativeSearchMessages(JJI)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;"
        }
    .end annotation
.end method

.method native nativeSearchMessages(Ljava/lang/String;JILjava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;"
        }
    .end annotation
.end method

.method native nativeSearchMessages(Ljava/lang/String;JILjava/lang/String;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;"
        }
    .end annotation
.end method

.method native nativeSetExtField(Ljava/lang/String;)Z
.end method

.method native nativeSetIsThread(Z)V
.end method

.method native nativeSetPin(Z)V
.end method

.method native nativeUnreadMessagesCount()I
.end method

.method native nativeUpdateMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)Z
.end method

.method public pinnedMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativePinnedMessages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeRemoveMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)Z

    move-result p1

    return p1
.end method

.method public searchCustomMessages(Ljava/lang/String;JILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;"
        }
    .end annotation

    invoke-virtual {p6}, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->ordinal()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeSearchCustomMessages(Ljava/lang/String;JILjava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public searchMessages(IJILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;"
        }
    .end annotation

    invoke-virtual {p6}, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->ordinal()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeSearchMessages(IJILjava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public searchMessages(JILcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;"
        }
    .end annotation

    invoke-virtual {p4}, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->ordinal()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeSearchMessages(JII)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public searchMessages(JJI)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p5}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeSearchMessages(JJI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public searchMessages(Ljava/lang/String;JILjava/lang/String;II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p7}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeSearchMessages(Ljava/lang/String;JILjava/lang/String;II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public searchMessages(Ljava/lang/String;JILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;"
        }
    .end annotation

    invoke-virtual {p6}, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->ordinal()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeSearchMessages(Ljava/lang/String;JILjava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public setIsThread(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeSetIsThread(Z)V

    return-void
.end method

.method public setPin(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeSetPin(Z)V

    return-void
.end method

.method public unreadMessagesCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeUnreadMessagesCount()I

    move-result v0

    return v0
.end method

.method public updateMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAConversation;->nativeUpdateMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)Z

    move-result p1

    return p1
.end method
