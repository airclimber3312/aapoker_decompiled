.class public Lcom/hyphenate/chat/EMChatThreadManager;
.super Ljava/lang/Object;


# static fields
.field private static TAG:Ljava/lang/String; = "EMChatThreadManager"


# instance fields
.field emaObject:Lcom/hyphenate/chat/adapter/EMAThreadManager;

.field private listenerImpl:Lcom/hyphenate/chat/adapter/EMAThreadManagerListener;

.field mClient:Lcom/hyphenate/chat/EMClient;

.field threadChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hyphenate/EMChatThreadChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/hyphenate/chat/EMClient;Lcom/hyphenate/chat/adapter/EMAThreadManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/hyphenate/chat/EMChatThreadManager$12;

    invoke-direct {v0, p0}, Lcom/hyphenate/chat/EMChatThreadManager$12;-><init>(Lcom/hyphenate/chat/EMChatThreadManager;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMChatThreadManager;->listenerImpl:Lcom/hyphenate/chat/adapter/EMAThreadManagerListener;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatThreadManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAThreadManager;

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatThreadManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatThreadManager;->threadChangeListeners:Ljava/util/List;

    iget-object p1, p0, Lcom/hyphenate/chat/EMChatThreadManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAThreadManager;

    iget-object p2, p0, Lcom/hyphenate/chat/EMChatThreadManager;->listenerImpl:Lcom/hyphenate/chat/adapter/EMAThreadManagerListener;

    invoke-virtual {p1, p2}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->addListener(Lcom/hyphenate/chat/adapter/EMAThreadManagerListener;)V

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    return-void
.end method

.method static synthetic access$000(Lcom/hyphenate/chat/EMChatThreadManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/EMChatThread;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatThreadManager;->createChatThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/EMChatThread;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/EMChatThreadManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/hyphenate/chat/EMChatThreadManager;Ljava/lang/String;ILjava/lang/String;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatThreadManager;->getJoinedChatThreadsFromServer(Ljava/lang/String;ILjava/lang/String;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/hyphenate/chat/EMChatThreadManager;Ljava/lang/String;ILjava/lang/String;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatThreadManager;->getChatThreadsFromServer(Ljava/lang/String;ILjava/lang/String;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/hyphenate/chat/EMChatThreadManager;Ljava/lang/String;)Lcom/hyphenate/chat/EMChatThread;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMChatThreadManager;->getChatThreadFromServer(Ljava/lang/String;)Lcom/hyphenate/chat/EMChatThread;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/hyphenate/chat/EMChatThreadManager;Ljava/lang/String;)Lcom/hyphenate/chat/EMChatThread;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMChatThreadManager;->joinChatThread(Ljava/lang/String;)Lcom/hyphenate/chat/EMChatThread;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/hyphenate/chat/EMChatThreadManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMChatThreadManager;->destroyChatThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/hyphenate/chat/EMChatThreadManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMChatThreadManager;->leaveChatThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/hyphenate/chat/EMChatThreadManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/hyphenate/chat/EMChatThreadManager;->updateChatThreadName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/hyphenate/chat/EMChatThreadManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/hyphenate/chat/EMChatThreadManager;->removeMemberFromChatThread(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/hyphenate/chat/EMChatThreadManager;Ljava/lang/String;ILjava/lang/String;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatThreadManager;->getChatThreadMembers(Ljava/lang/String;ILjava/lang/String;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/hyphenate/chat/EMChatThreadManager;ILjava/lang/String;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/hyphenate/chat/EMChatThreadManager;->getJoinedChatThreadsFromServer(ILjava/lang/String;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p0

    return-object p0
.end method

.method private createChatThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/EMChatThread;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatThreadManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAThreadManager;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->createThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAThreadInfo;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatThreadManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMChatThread;

    invoke-direct {p2, p1}, Lcom/hyphenate/chat/EMChatThread;-><init>(Lcom/hyphenate/chat/adapter/EMAThreadInfo;)V

    return-object p2
.end method

.method private destroyChatThread(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatThreadManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAThreadManager;

    invoke-virtual {v1, p1, v0}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->destroyThread(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatThreadManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method private getChatThreadFromServer(Ljava/lang/String;)Lcom/hyphenate/chat/EMChatThread;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatThreadManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAThreadManager;

    invoke-virtual {v1, p1, v0}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->getThreadFromServer(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAThreadInfo;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatThreadManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance v0, Lcom/hyphenate/chat/EMChatThread;

    invoke-direct {v0, p1}, Lcom/hyphenate/chat/EMChatThread;-><init>(Lcom/hyphenate/chat/adapter/EMAThreadInfo;)V

    return-object v0
.end method

.method private getChatThreadLatestMessage(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatThreadManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAThreadManager;

    invoke-virtual {v1, p1, v0}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->getThreadsLatestMessage(Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatThreadManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/hyphenate/chat/EMMessage;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-direct {v3, v1}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getChatThreadMembers(Ljava/lang/String;ILjava/lang/String;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatThreadManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAThreadManager;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->fetchThreadMembers(Ljava/lang/String;ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatThreadManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-object p1
.end method

.method private getChatThreadsFromServer(Ljava/lang/String;ILjava/lang/String;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/EMChatThread;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatThreadManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAThreadManager;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->getThreadsFromServer(Ljava/lang/String;ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatThreadManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMCursorResult;

    invoke-direct {p2}, Lcom/hyphenate/chat/EMCursorResult;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMCursorResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/hyphenate/chat/EMChatThread;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hyphenate/chat/adapter/EMAThreadInfo;

    invoke-direct {v2, v3}, Lcom/hyphenate/chat/EMChatThread;-><init>(Lcom/hyphenate/chat/adapter/EMAThreadInfo;)V

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/hyphenate/chat/EMCursorResult;->setData(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMCursorResult;->getCursor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/hyphenate/chat/EMCursorResult;->setCursor(Ljava/lang/String;)V

    return-object p2
.end method

.method private getJoinedChatThreadsFromServer(ILjava/lang/String;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/EMChatThread;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatThreadManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAThreadManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->getJoinedThreadsFromServer(ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatThreadManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMCursorResult;

    invoke-direct {p2}, Lcom/hyphenate/chat/EMCursorResult;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMCursorResult;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    new-instance v3, Lcom/hyphenate/chat/EMChatThread;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hyphenate/chat/adapter/EMAThreadInfo;

    invoke-direct {v3, v4}, Lcom/hyphenate/chat/EMChatThread;-><init>(Lcom/hyphenate/chat/adapter/EMAThreadInfo;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Lcom/hyphenate/chat/EMCursorResult;->setData(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMCursorResult;->getCursor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/hyphenate/chat/EMCursorResult;->setCursor(Ljava/lang/String;)V

    return-object p2
.end method

.method private getJoinedChatThreadsFromServer(Ljava/lang/String;ILjava/lang/String;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/EMChatThread;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatThreadManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAThreadManager;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->getJoinedThreadsFromServer(Ljava/lang/String;ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatThreadManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMCursorResult;

    invoke-direct {p2}, Lcom/hyphenate/chat/EMCursorResult;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMCursorResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/hyphenate/chat/EMChatThread;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hyphenate/chat/adapter/EMAThreadInfo;

    invoke-direct {v2, v3}, Lcom/hyphenate/chat/EMChatThread;-><init>(Lcom/hyphenate/chat/adapter/EMAThreadInfo;)V

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/hyphenate/chat/EMCursorResult;->setData(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMCursorResult;->getCursor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/hyphenate/chat/EMCursorResult;->setCursor(Ljava/lang/String;)V

    return-object p2
.end method

.method private handleError(Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/hyphenate/exceptions/HyphenateException;

    invoke-direct {v0, p1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(Lcom/hyphenate/chat/adapter/EMAError;)V

    throw v0
.end method

.method private joinChatThread(Ljava/lang/String;)Lcom/hyphenate/chat/EMChatThread;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatThreadManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAThreadManager;

    invoke-virtual {v1, p1, v0}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->joinThread(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAThreadInfo;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatThreadManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance v0, Lcom/hyphenate/chat/EMChatThread;

    invoke-direct {v0, p1}, Lcom/hyphenate/chat/EMChatThread;-><init>(Lcom/hyphenate/chat/adapter/EMAThreadInfo;)V

    return-object v0
.end method

.method private leaveChatThread(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatThreadManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAThreadManager;

    invoke-virtual {v1, p1, v0}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->leaveThread(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatThreadManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method private removeMemberFromChatThread(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatThreadManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAThreadManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->removeMemberFromThread(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatThreadManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method private updateChatThreadName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatThreadManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAThreadManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->updateChatThreadName(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatThreadManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method


# virtual methods
.method public addChatThreadChangeListener(Lcom/hyphenate/EMChatThreadChangeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThreadManager;->threadChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThreadManager;->threadChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public createChatThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMChatThread;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThreadManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v7, Lcom/hyphenate/chat/EMChatThreadManager$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMChatThreadManager$1;-><init>(Lcom/hyphenate/chat/EMChatThreadManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroyChatThread(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThreadManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatThreadManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMChatThreadManager$4;-><init>(Lcom/hyphenate/chat/EMChatThreadManager;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getChatThreadFromServer(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMChatThread;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThreadManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatThreadManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMChatThreadManager$2;-><init>(Lcom/hyphenate/chat/EMChatThreadManager;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getChatThreadLatestMessage(Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThreadManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatThreadManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMChatThreadManager$$ExternalSyntheticLambda0;-><init>(Lcom/hyphenate/chat/EMChatThreadManager;Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getChatThreadMembers(Ljava/lang/String;ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThreadManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v7, Lcom/hyphenate/chat/EMChatThreadManager$8;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMChatThreadManager$8;-><init>(Lcom/hyphenate/chat/EMChatThreadManager;Ljava/lang/String;ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getChatThreadsFromServer(Ljava/lang/String;ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/EMChatThread;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThreadManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v7, Lcom/hyphenate/chat/EMChatThreadManager$11;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMChatThreadManager$11;-><init>(Lcom/hyphenate/chat/EMChatThreadManager;Ljava/lang/String;ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getJoinedChatThreadsFromServer(ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/EMChatThread;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThreadManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatThreadManager$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatThreadManager$9;-><init>(Lcom/hyphenate/chat/EMChatThreadManager;ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getJoinedChatThreadsFromServer(Ljava/lang/String;ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/EMChatThread;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThreadManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v7, Lcom/hyphenate/chat/EMChatThreadManager$10;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMChatThreadManager$10;-><init>(Lcom/hyphenate/chat/EMChatThreadManager;Ljava/lang/String;ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public joinChatThread(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMChatThread;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThreadManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatThreadManager$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMChatThreadManager$3;-><init>(Lcom/hyphenate/chat/EMChatThreadManager;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$getChatThreadLatestMessage$0$com-hyphenate-chat-EMChatThreadManager(Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMChatThreadManager;->getChatThreadLatestMessage(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public leaveChatThread(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThreadManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatThreadManager$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMChatThreadManager$5;-><init>(Lcom/hyphenate/chat/EMChatThreadManager;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeChatThreadChangeListener(Lcom/hyphenate/EMChatThreadChangeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThreadManager;->threadChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThreadManager;->threadChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeMemberFromChatThread(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThreadManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatThreadManager$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatThreadManager$7;-><init>(Lcom/hyphenate/chat/EMChatThreadManager;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateChatThreadName(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatThreadManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatThreadManager$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatThreadManager$6;-><init>(Lcom/hyphenate/chat/EMChatThreadManager;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
