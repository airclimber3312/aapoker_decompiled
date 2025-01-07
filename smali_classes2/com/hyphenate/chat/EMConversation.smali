.class public Lcom/hyphenate/chat/EMConversation;
.super Lcom/hyphenate/chat/EMBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/EMConversation$EMMarkType;,
        Lcom/hyphenate/chat/EMConversation$EMConversationType;,
        Lcom/hyphenate/chat/EMConversation$EMSearchDirection;,
        Lcom/hyphenate/chat/EMConversation$MessageCache;,
        Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/chat/EMBase<",
        "Lcom/hyphenate/chat/adapter/EMAConversation;",
        ">;"
    }
.end annotation


# static fields
.field private static final LIST_SIZE:I = 0x200

.field private static final TAG:Ljava/lang/String; = "conversation"


# direct methods
.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMAConversation;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMBase;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    return-void
.end method

.method public static msgType2ConversationType(Ljava/lang/String;Lcom/hyphenate/chat/EMMessage$ChatType;)Lcom/hyphenate/chat/EMConversation$EMConversationType;
    .locals 0

    sget-object p0, Lcom/hyphenate/chat/EMConversation$1;->$SwitchMap$com$hyphenate$chat$EMMessage$ChatType:[I

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage$ChatType;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMConversationType;->Chat:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    return-object p0

    :cond_0
    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMConversationType;->ChatRoom:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/hyphenate/chat/EMConversation$EMConversationType;->GroupChat:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    return-object p0
.end method


# virtual methods
.method public appendMessage(Lcom/hyphenate/chat/EMMessage;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appendMessage msg: {msgId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " conversation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " unread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->isUnread()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "conversation"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    iget-object v1, p1, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAConversation;->appendMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->getCache()Lcom/hyphenate/chat/EMConversation$MessageCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/hyphenate/chat/EMConversation$MessageCache;->addMessage(Lcom/hyphenate/chat/EMMessage;)V

    :cond_0
    return v0
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->getCache()Lcom/hyphenate/chat/EMConversation$MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMConversation$MessageCache;->clear()V

    return-void
.end method

.method public clearAllMessages()V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAConversation;->clearAllMessages()Z

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->getCache()Lcom/hyphenate/chat/EMConversation$MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMConversation$MessageCache;->clear()V

    return-void
.end method

.method public conversationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAConversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/hyphenate/chat/EMBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAllMessages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->getCache()Lcom/hyphenate/chat/EMConversation$MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMConversation$MessageCache;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAConversation;->latestMessage()Lcom/hyphenate/chat/adapter/message/EMAMessage;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    new-instance v2, Lcom/hyphenate/chat/EMMessage;

    invoke-direct {v2, v0}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->getCache()Lcom/hyphenate/chat/EMConversation$MessageCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMConversation$MessageCache;->addMessages(Ljava/util/List;)V

    :cond_1
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->getCache()Lcom/hyphenate/chat/EMConversation$MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMConversation$MessageCache;->getAllMessages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllMsgCount()I
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAConversation;->messagesCount()I

    move-result v0

    return v0
.end method

.method getCache()Lcom/hyphenate/chat/EMConversation$MessageCache;
    .locals 4

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/chat/EMChatManager;->caches:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/chat/EMChatManager;->caches:Ljava/util/Map;

    iget-object v2, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v2, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {v2}, Lcom/hyphenate/chat/adapter/EMAConversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/EMConversation$MessageCache;

    if-nez v1, :cond_0

    new-instance v1, Lcom/hyphenate/chat/EMConversation$MessageCache;

    invoke-direct {v1}, Lcom/hyphenate/chat/EMConversation$MessageCache;-><init>()V

    :cond_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v2

    iget-object v2, v2, Lcom/hyphenate/chat/EMChatManager;->caches:Ljava/util/Map;

    iget-object v3, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v3, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {v3}, Lcom/hyphenate/chat/adapter/EMAConversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getExtField()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAConversation;->extField()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastMessage()Lcom/hyphenate/chat/EMMessage;
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->getCache()Lcom/hyphenate/chat/EMConversation$MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMConversation$MessageCache;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAConversation;->latestMessage()Lcom/hyphenate/chat/adapter/message/EMAMessage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/hyphenate/chat/EMMessage;

    invoke-direct {v1, v0}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->getCache()Lcom/hyphenate/chat/EMConversation$MessageCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hyphenate/chat/EMConversation$MessageCache;->addMessage(Lcom/hyphenate/chat/EMMessage;)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->getCache()Lcom/hyphenate/chat/EMConversation$MessageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMConversation$MessageCache;->getLastMessage()Lcom/hyphenate/chat/EMMessage;

    move-result-object v0

    return-object v0
.end method

.method public getLatestMessageFromOthers()Lcom/hyphenate/chat/EMMessage;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAConversation;->latestMessageFromOthers()Lcom/hyphenate/chat/adapter/message/EMAMessage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/hyphenate/chat/EMMessage;

    invoke-direct {v1, v0}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->getCache()Lcom/hyphenate/chat/EMConversation$MessageCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hyphenate/chat/EMConversation$MessageCache;->addMessage(Lcom/hyphenate/chat/EMMessage;)V

    return-object v0
.end method

.method public getMessage(Ljava/lang/String;Z)Lcom/hyphenate/chat/EMMessage;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getMessage messageId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " markAsRead: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "conversation"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->getCache()Lcom/hyphenate/chat/EMConversation$MessageCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMConversation$MessageCache;->getMessage(Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAConversation;->loadMessage(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/message/EMAMessage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v1, Lcom/hyphenate/chat/EMMessage;

    invoke-direct {v1, v0}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    move-object v0, v1

    :cond_1
    iget-object v1, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {v1, p1, p2}, Lcom/hyphenate/chat/adapter/EMAConversation;->markMessageAsRead(Ljava/lang/String;Z)Z

    return-object v0
.end method

.method public getMessageAttachmentPath()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->getChatConfigPrivate()Lcom/hyphenate/chat/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->E()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->getCurrentUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPinnedTime()J
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAConversation;->getPinnedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Lcom/hyphenate/chat/EMConversation$EMConversationType;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAConversation;->_getType()Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    move-result-object v0

    sget-object v1, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->CHAT:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/hyphenate/chat/EMConversation$EMConversationType;->Chat:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    return-object v0

    :cond_0
    sget-object v1, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->GROUPCHAT:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/hyphenate/chat/EMConversation$EMConversationType;->GroupChat:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    return-object v0

    :cond_1
    sget-object v1, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->CHATROOM:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/hyphenate/chat/EMConversation$EMConversationType;->ChatRoom:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    return-object v0

    :cond_2
    sget-object v1, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->DISCUSSIONGROUP:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/hyphenate/chat/EMConversation$EMConversationType;->DiscussionGroup:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    return-object v0

    :cond_3
    sget-object v1, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->HELPDESK:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/hyphenate/chat/EMConversation$EMConversationType;->HelpDesk:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    return-object v0

    :cond_4
    sget-object v0, Lcom/hyphenate/chat/EMConversation$EMConversationType;->Chat:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    return-object v0
.end method

.method public getUnreadMsgCount()I
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAConversation;->unreadMessagesCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/hyphenate/chat/EMBase;->hashCode()I

    move-result v0

    return v0
.end method

.method public insertMessage(Lcom/hyphenate/chat/EMMessage;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "insertMessage msg: {msgId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " conversation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " unread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->isUnread()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "conversation"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    iget-object v1, p1, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAConversation;->insertMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->getCache()Lcom/hyphenate/chat/EMConversation$MessageCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/hyphenate/chat/EMConversation$MessageCache;->addMessage(Lcom/hyphenate/chat/EMMessage;)V

    :cond_0
    return v0
.end method

.method public isChatThread()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAConversation;->isChatThread()Z

    move-result v0

    return v0
.end method

.method public isGroup()Z
    .locals 2

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->getType()Lcom/hyphenate/chat/EMConversation$EMConversationType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->isChatThread()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/hyphenate/chat/EMConversation$EMConversationType;->GroupChat:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/hyphenate/chat/EMConversation$EMConversationType;->ChatRoom:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPinned()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAConversation;->isPinned()Z

    move-result v0

    return v0
.end method

.method public loadMoreMsgFromDB(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->UP:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    invoke-virtual {p0, p1, p2, v0}, Lcom/hyphenate/chat/EMConversation;->loadMoreMsgFromDB(Ljava/lang/String;ILcom/hyphenate/chat/EMConversation$EMSearchDirection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public loadMoreMsgFromDB(Ljava/lang/String;ILcom/hyphenate/chat/EMConversation$EMSearchDirection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/hyphenate/chat/EMConversation$EMSearchDirection;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->UP:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    if-ne p3, v0, :cond_0

    sget-object p3, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->UP:Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->DOWN:Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    :goto_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAConversation;->loadMoreMessages(Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;)Ljava/util/List;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    if-eqz p3, :cond_1

    new-instance v0, Lcom/hyphenate/chat/EMMessage;

    invoke-direct {v0, p3}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->getCache()Lcom/hyphenate/chat/EMConversation$MessageCache;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hyphenate/chat/EMConversation$MessageCache;->addMessages(Ljava/util/List;)V

    return-object p2
.end method

.method public markAllMessagesAsRead()V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAConversation;->markAllMessagesAsRead(Z)Z

    return-void
.end method

.method public markMessageAsRead(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/adapter/EMAConversation;->markMessageAsRead(Ljava/lang/String;Z)Z

    return-void
.end method

.method public marks()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/hyphenate/chat/EMConversation$EMMarkType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAConversation;->marks()J

    move-result-wide v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    :cond_0
    const-wide/16 v4, 0x1

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    invoke-static {}, Lcom/hyphenate/chat/EMConversation$EMMarkType;->values()[Lcom/hyphenate/chat/EMConversation$EMMarkType;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    shr-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gtz v4, :cond_0

    return-object v2
.end method

.method public pinnedMessages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAConversation;->pinnedMessages()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    new-instance v4, Lcom/hyphenate/chat/EMMessage;

    invoke-direct {v4, v3}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public removeMessage(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remove msg from conversation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "conversation"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAConversation;->_removeMessage(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->getCache()Lcom/hyphenate/chat/EMConversation$MessageCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMConversation$MessageCache;->removeMessage(Ljava/lang/String;)V

    return-void
.end method

.method public removeMessages(JJ)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remove msgs from conversation by startTime: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ,endTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "conversation"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAConversation;->_removeMessage(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->getCache()Lcom/hyphenate/chat/EMConversation$MessageCache;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/hyphenate/chat/EMConversation$MessageCache;->removeMessages(JJ)V

    :cond_0
    return v0
.end method

.method public removeMessagesFromServer(JLcom/hyphenate/EMCallBack;)V
    .locals 7

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->getType()Lcom/hyphenate/chat/EMConversation$EMConversationType;

    move-result-object v3

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/hyphenate/chat/EMChatManager;->removeMessagesFromServer(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;JLcom/hyphenate/EMCallBack;)V

    return-void
.end method

.method public removeMessagesFromServer(Ljava/util/List;Lcom/hyphenate/EMCallBack;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/EMCallBack;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->getType()Lcom/hyphenate/chat/EMConversation$EMConversationType;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/hyphenate/chat/EMChatManager;->removeMessagesFromServer(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;Ljava/util/List;Lcom/hyphenate/EMCallBack;)V

    return-void
.end method

.method public searchCustomMsgFromDB(Ljava/lang/String;JILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMSearchDirection;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMConversation$EMSearchDirection;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->UP:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    if-ne p6, v0, :cond_0

    sget-object p6, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->UP:Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    goto :goto_0

    :cond_0
    sget-object p6, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->DOWN:Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    :goto_0
    move-object v6, p6

    iget-object p6, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    move-object v0, p6

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/hyphenate/chat/adapter/EMAConversation;->searchCustomMessages(Ljava/lang/String;JILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/16 p3, 0x200

    if-le p2, p3, :cond_1

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    if-eqz p3, :cond_2

    new-instance p4, Lcom/hyphenate/chat/EMMessage;

    invoke-direct {p4, p3}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object p2
.end method

.method public searchMsgFromDB(JILcom/hyphenate/chat/EMConversation$EMSearchDirection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/hyphenate/chat/EMConversation$EMSearchDirection;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->UP:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    if-ne p4, v0, :cond_0

    sget-object p4, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->UP:Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    goto :goto_0

    :cond_0
    sget-object p4, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->DOWN:Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    :goto_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAConversation;->searchMessages(JILcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/16 p3, 0x200

    if-le p2, p3, :cond_1

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    if-eqz p3, :cond_2

    new-instance p4, Lcom/hyphenate/chat/EMMessage;

    invoke-direct {p4, p3}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object p2
.end method

.method public searchMsgFromDB(JJI)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/hyphenate/chat/adapter/EMAConversation;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/hyphenate/chat/adapter/EMAConversation;->searchMessages(JJI)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/16 p3, 0x200

    if-le p2, p3, :cond_0

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    if-eqz p3, :cond_1

    new-instance p4, Lcom/hyphenate/chat/EMMessage;

    invoke-direct {p4, p3}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p2
.end method

.method public searchMsgFromDB(Lcom/hyphenate/chat/EMMessage$Type;JILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMSearchDirection;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/EMMessage$Type;",
            "JI",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMConversation$EMSearchDirection;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/hyphenate/chat/EMConversation;->searchMsgFromDB(Ljava/util/Set;JILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMSearchDirection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public searchMsgFromDB(Ljava/lang/String;JILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMSearchDirection;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMConversation$EMSearchDirection;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->UP:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    if-ne p6, v0, :cond_0

    sget-object p6, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->UP:Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    goto :goto_0

    :cond_0
    sget-object p6, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->DOWN:Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    :goto_0
    move-object v6, p6

    iget-object p6, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    move-object v0, p6

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/hyphenate/chat/adapter/EMAConversation;->searchMessages(Ljava/lang/String;JILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/16 p3, 0x200

    if-le p2, p3, :cond_1

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    if-eqz p3, :cond_2

    new-instance p4, Lcom/hyphenate/chat/EMMessage;

    invoke-direct {p4, p3}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object p2
.end method

.method public searchMsgFromDB(Ljava/lang/String;JILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMSearchDirection;Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMConversation$EMSearchDirection;",
            "Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->UP:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    move-object/from16 v1, p6

    if-ne v1, v0, :cond_0

    sget-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->UP:Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->DOWN:Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    :goto_0
    move-object v1, p0

    iget-object v2, v1, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->ordinal()I

    move-result v9

    invoke-virtual/range {p7 .. p7}, Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;->ordinal()I

    move-result v10

    move-object v4, p1

    move-wide v5, p2

    move v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v10}, Lcom/hyphenate/chat/adapter/EMAConversation;->searchMessages(Ljava/lang/String;JILjava/lang/String;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x200

    if-le v2, v3, :cond_1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    if-eqz v3, :cond_2

    new-instance v4, Lcom/hyphenate/chat/EMMessage;

    invoke-direct {v4, v3}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object v2
.end method

.method public searchMsgFromDB(Ljava/util/Set;JILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMSearchDirection;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/hyphenate/chat/EMMessage$Type;",
            ">;JI",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMConversation$EMSearchDirection;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/EMMessage$Type;

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage$Type;->ordinal()I

    move-result v1

    shl-int v1, v2, v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    sget-object p1, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->UP:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    if-ne p6, p1, :cond_2

    sget-object p1, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->UP:Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->DOWN:Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    :goto_2
    move-object v7, p1

    iget-object p1, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/hyphenate/chat/adapter/EMAConversation;

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/hyphenate/chat/adapter/EMAConversation;->searchMessages(IJILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/16 p3, 0x200

    if-le p2, p3, :cond_3

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    goto :goto_3

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    if-eqz p3, :cond_4

    new-instance p4, Lcom/hyphenate/chat/EMMessage;

    invoke-direct {p4, p3}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    return-object p2
.end method

.method public setExtField(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->isChatThread()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAConversation;->_setExtField(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public updateMessage(Lcom/hyphenate/chat/EMMessage;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateMessage msg{ msgId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " conversation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " unread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->isUnread()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "conversation"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    iget-object v1, p1, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/EMAConversation;->updateMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->getCache()Lcom/hyphenate/chat/EMConversation$MessageCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/hyphenate/chat/EMConversation$MessageCache;->addMessage(Lcom/hyphenate/chat/EMMessage;)V

    :cond_0
    return v0
.end method
