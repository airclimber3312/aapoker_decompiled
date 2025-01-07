.class public Lcom/hyphenate/chat/EMChatManager;
.super Ljava/lang/Object;


# static fields
.field private static final INTERNAL_ACTION_PREFIX:Ljava/lang/String; = "em_"

.field private static final LIST_SIZE:I = 0x200

.field private static final TAG:Ljava/lang/String; = "EMChatManager"


# instance fields
.field caches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMConversation$MessageCache;",
            ">;"
        }
    .end annotation
.end field

.field chatManagerListenerImpl:Lcom/hyphenate/chat/adapter/EMAChatManagerListener;

.field private conversationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hyphenate/EMConversationListener;",
            ">;"
        }
    .end annotation
.end field

.field emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

.field emaReactionObject:Lcom/hyphenate/chat/adapter/EMAReactionManager;

.field mClient:Lcom/hyphenate/chat/EMClient;

.field mReactionManagerListenerImpl:Lcom/hyphenate/chat/adapter/EMAReactionManagerListener;

.field private messageListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hyphenate/EMMessageListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->caches:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->messageListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->conversationListeners:Ljava/util/List;

    new-instance v0, Lcom/hyphenate/chat/EMChatManager$1;

    invoke-direct {v0, p0}, Lcom/hyphenate/chat/EMChatManager$1;-><init>(Lcom/hyphenate/chat/EMChatManager;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->chatManagerListenerImpl:Lcom/hyphenate/chat/adapter/EMAChatManagerListener;

    new-instance v0, Lcom/hyphenate/chat/EMChatManager$2;

    invoke-direct {v0, p0}, Lcom/hyphenate/chat/EMChatManager$2;-><init>(Lcom/hyphenate/chat/EMChatManager;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->mReactionManagerListenerImpl:Lcom/hyphenate/chat/adapter/EMAReactionManagerListener;

    return-void
.end method

.method protected constructor <init>(Lcom/hyphenate/chat/EMClient;Lcom/hyphenate/chat/adapter/EMAChatManager;Lcom/hyphenate/chat/adapter/EMAReactionManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->caches:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->messageListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->conversationListeners:Ljava/util/List;

    new-instance v0, Lcom/hyphenate/chat/EMChatManager$1;

    invoke-direct {v0, p0}, Lcom/hyphenate/chat/EMChatManager$1;-><init>(Lcom/hyphenate/chat/EMChatManager;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->chatManagerListenerImpl:Lcom/hyphenate/chat/adapter/EMAChatManagerListener;

    new-instance v0, Lcom/hyphenate/chat/EMChatManager$2;

    invoke-direct {v0, p0}, Lcom/hyphenate/chat/EMChatManager$2;-><init>(Lcom/hyphenate/chat/EMChatManager;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->mReactionManagerListenerImpl:Lcom/hyphenate/chat/adapter/EMAReactionManagerListener;

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    iget-object p1, p0, Lcom/hyphenate/chat/EMChatManager;->chatManagerListenerImpl:Lcom/hyphenate/chat/adapter/EMAChatManagerListener;

    invoke-virtual {p2, p1}, Lcom/hyphenate/chat/adapter/EMAChatManager;->addListener(Lcom/hyphenate/chat/adapter/EMAChatManagerListener;)V

    iput-object p3, p0, Lcom/hyphenate/chat/EMChatManager;->emaReactionObject:Lcom/hyphenate/chat/adapter/EMAReactionManager;

    iget-object p1, p0, Lcom/hyphenate/chat/EMChatManager;->mReactionManagerListenerImpl:Lcom/hyphenate/chat/adapter/EMAReactionManagerListener;

    invoke-virtual {p3, p1}, Lcom/hyphenate/chat/adapter/EMAReactionManager;->addListener(Lcom/hyphenate/chat/adapter/EMAReactionManagerListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/hyphenate/chat/EMChatManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/chat/EMChatManager;->messageListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hyphenate/chat/EMChatManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/chat/EMChatManager;->conversationListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/chat/adapter/message/EMAMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMChatManager;->deleteImageScaledPath(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    return-void
.end method

.method static synthetic access$300(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/chat/EMMessage;Lcom/hyphenate/chat/EMConversation;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatManager;->setMessageSendCallback(Lcom/hyphenate/chat/EMMessage;Lcom/hyphenate/chat/EMConversation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMChatManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method static synthetic access$500(Lcom/hyphenate/chat/EMChatManager;Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ILjava/lang/String;Lcom/hyphenate/chat/EMFetchMessageOption;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/hyphenate/chat/EMChatManager;->fetchHistoryMessages(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ILjava/lang/String;Lcom/hyphenate/chat/EMFetchMessageOption;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p0

    return-object p0
.end method

.method private checkContentAttachmentExist(Lcom/hyphenate/chat/EMMessage;)V
    .locals 11

    iget-object v0, p1, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->bodies()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAMessageBody;

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMAMessageBody;->type()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_1

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;

    invoke-virtual {v2}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->getLocalUrl()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "download before check path = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "EMChatManager"

    invoke-static {v9, v8}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "/Android/data/"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    invoke-virtual {v10}, Lcom/hyphenate/chat/EMClient;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_2
    invoke-virtual {v2}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->displayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/hyphenate/chat/adapter/message/EMAMessageBody;->type()I

    move-result v1

    if-eq v1, v6, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hyphenate/util/PathUtil;->getInstance()Lcom/hyphenate/util/PathUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hyphenate/util/PathUtil;->getFilePath()Ljava/io/File;

    move-result-object v3

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hyphenate/util/PathUtil;->getInstance()Lcom/hyphenate/util/PathUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hyphenate/util/PathUtil;->getVoicePath()Ljava/io/File;

    move-result-object v3

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hyphenate/util/PathUtil;->getInstance()Lcom/hyphenate/util/PathUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hyphenate/util/PathUtil;->getVideoPath()Ljava/io/File;

    move-result-object v3

    goto :goto_1

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hyphenate/util/PathUtil;->getInstance()Lcom/hyphenate/util/PathUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hyphenate/util/PathUtil;->getImagePath()Ljava/io/File;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/hyphenate/chat/adapter/message/EMAFileMessageBody;->setLocalPath(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/EMChatManager;->updateMessage(Lcom/hyphenate/chat/EMMessage;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download:create new path , path is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private deleteImageScaledPath(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->bodies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->bodies()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAMessageBody;

    instance-of v1, v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->getOriginalLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/hyphenate/util/EMFileHelper;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->getLocalUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "origin: + "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", scale:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EMChatManager"

    invoke-static {v4, v3}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/hyphenate/util/EMFileHelper;->deletePrivateFile(Ljava/lang/String;)Z

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Deleted the scale image file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " the scale image file path: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/adapter/message/EMAImageMessageBody;->setLocalPath(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hyphenate/chat/EMChatManager;->getConversation(Ljava/lang/String;)Lcom/hyphenate/chat/EMConversation;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/hyphenate/chat/EMConversation;->emaObject:Ljava/lang/Object;

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAConversation;->updateMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)Z

    :cond_4
    return-void
.end method

.method private fetchHistoryMessages(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ILjava/lang/String;Lcom/hyphenate/chat/EMFetchMessageOption;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMConversation$EMConversationType;",
            "I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMFetchMessageOption;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v7, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v7}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMConversation$EMConversationType;->ordinal()I

    move-result v2

    if-nez p5, :cond_0

    new-instance p2, Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;

    invoke-direct {p2}, Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;-><init>()V

    goto :goto_0

    :cond_0
    iget-object p2, p5, Lcom/hyphenate/chat/EMFetchMessageOption;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;

    :goto_0
    move-object v5, p2

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/hyphenate/chat/adapter/EMAChatManager;->fetchHistoryMessages(Ljava/lang/String;IILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    invoke-direct {p0, v7}, Lcom/hyphenate/chat/EMChatManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMCursorResult;

    invoke-direct {p2}, Lcom/hyphenate/chat/EMCursorResult;-><init>()V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMCursorResult;->getCursor()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/hyphenate/chat/EMCursorResult;->setCursor(Ljava/lang/String;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMCursorResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    new-instance p5, Lcom/hyphenate/chat/EMMessage;

    invoke-direct {p5, p4}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p2, p3}, Lcom/hyphenate/chat/EMCursorResult;->setData(Ljava/lang/Object;)V

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

.method private setMessageSendCallback(Lcom/hyphenate/chat/EMMessage;Lcom/hyphenate/chat/EMConversation;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/hyphenate/chat/EMChatManager$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatManager$4;-><init>(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/chat/EMMessage;Lcom/hyphenate/chat/EMConversation;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/EMMessage;->setInnerCallback(Lcom/hyphenate/EMCallBack;)V

    return-void
.end method


# virtual methods
.method public ackConversationRead(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {v1, p1, v0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->sendReadAckForConversation(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public ackGroupMessageRead(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->getChatConfigPrivate()Lcom/hyphenate/chat/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/a/a;->b()Lcom/hyphenate/chat/EMOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->getRequireAck()Z

    move-result p1

    const-string v0, "EMChatManager"

    if-nez p1, :cond_0

    const-string p1, "chat option reqire ack set to false. skip send out ask msg read"

    invoke-static {v0, p1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatManager;->getMessage(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/message/EMAMessage;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->isNeedGroupAck()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {p2, p1, p3}, Lcom/hyphenate/chat/adapter/EMAChatManager;->sendReadAckForGroupMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "normal group message, do not ack it"

    invoke-static {v0, p1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public ackMessageRead(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->getChatConfigPrivate()Lcom/hyphenate/chat/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->b()Lcom/hyphenate/chat/EMOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMOptions;->getRequireAck()Z

    move-result v0

    const-string v1, "EMChatManager"

    if-nez v0, :cond_0

    const-string p1, "As the chat option SetRequireAck is set to false, the read receipt is not sent."

    invoke-static {v1, p1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "The to parameter cannot be null."

    invoke-static {v1, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {v0, p2}, Lcom/hyphenate/chat/adapter/EMAChatManager;->getMessage(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/message/EMAMessage;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/hyphenate/chat/EMMessage;->self()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/hyphenate/chat/EMMessage$ChatType;->Chat:Lcom/hyphenate/chat/EMMessage$ChatType;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage$ChatType;->ordinal()I

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->createReceiveMessage(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/message/EMAMessageBody;I)Lcom/hyphenate/chat/adapter/message/EMAMessage;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setMsgId(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setFrom(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/message/EMAMessage;->setConversationId(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->sendReadAckForMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    return-void
.end method

.method public addConversationListener(Lcom/hyphenate/EMConversationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->conversationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->conversationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addMessageListener(Lcom/hyphenate/EMMessageListener;)V
    .locals 3

    const-string v0, "EMChatManager"

    if-nez p1, :cond_0

    const-string p1, "addMessageListener: listener is null"

    invoke-static {v0, p1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager;->messageListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add message listener: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->messageListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public addReaction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager;->emaReactionObject:Lcom/hyphenate/chat/adapter/EMAReactionManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAReactionManager;->addReaction(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public asyncAddConversationMark(Ljava/util/List;Lcom/hyphenate/chat/EMConversation$EMMarkType;Lcom/hyphenate/EMCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/EMConversation$EMMarkType;",
            "Lcom/hyphenate/EMCallBack;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda2;-><init>(Lcom/hyphenate/chat/EMChatManager;Ljava/util/List;Lcom/hyphenate/chat/EMConversation$EMMarkType;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncAddReaction(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda14;-><init>(Lcom/hyphenate/chat/EMChatManager;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncDeleteAllMsgsAndConversations(ZLcom/hyphenate/EMCallBack;)V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda1;-><init>(Lcom/hyphenate/chat/EMChatManager;ZLcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFetchConversationsFromServer(IILcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMConversation;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatManager$9;-><init>(Lcom/hyphenate/chat/EMChatManager;IILcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFetchConversationsFromServer(ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/EMConversation;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda10;-><init>(Lcom/hyphenate/chat/EMChatManager;ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFetchConversationsFromServer(Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMConversation;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$8;

    invoke-direct {v1, p0, p1}, Lcom/hyphenate/chat/EMChatManager$8;-><init>(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFetchGroupReadAcks(Ljava/lang/String;ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/EMGroupReadAck;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v7, Lcom/hyphenate/chat/EMChatManager$11;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMChatManager$11;-><init>(Lcom/hyphenate/chat/EMChatManager;Ljava/lang/String;ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFetchHistoryMessage(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMConversation$EMConversationType;",
            "I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v8, Lcom/hyphenate/chat/EMChatManager$12;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/hyphenate/chat/EMChatManager$12;-><init>(Lcom/hyphenate/chat/EMChatManager;Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v8}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFetchHistoryMessage(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMSearchDirection;Lcom/hyphenate/EMValueCallBack;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMConversation$EMConversationType;",
            "I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMConversation$EMSearchDirection;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v9, Lcom/hyphenate/chat/EMChatManager$13;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/hyphenate/chat/EMChatManager$13;-><init>(Lcom/hyphenate/chat/EMChatManager;Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMSearchDirection;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v9}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFetchHistoryMessages(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ILjava/lang/String;Lcom/hyphenate/chat/EMFetchMessageOption;Lcom/hyphenate/EMValueCallBack;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMConversation$EMConversationType;",
            "I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMFetchMessageOption;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v9, Lcom/hyphenate/chat/EMChatManager$14;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/hyphenate/chat/EMChatManager$14;-><init>(Lcom/hyphenate/chat/EMChatManager;Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ILjava/lang/String;Lcom/hyphenate/chat/EMFetchMessageOption;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v9}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFetchPinnedConversationsFromServer(ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/EMConversation;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda5;-><init>(Lcom/hyphenate/chat/EMChatManager;ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFilterConversationsFromDB(Lcom/hyphenate/chat/EMCustomConversationFilter;ZLcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/EMCustomConversationFilter;",
            "Z",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMConversation;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda9;-><init>(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/chat/EMCustomConversationFilter;ZLcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncGetConversationsFromServerWithCursor(Ljava/lang/String;Lcom/hyphenate/chat/EMConversationFilter;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMConversationFilter;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/EMConversation;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda15;-><init>(Lcom/hyphenate/chat/EMChatManager;Ljava/lang/String;Lcom/hyphenate/chat/EMConversationFilter;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncGetPinnedMessagesFromServer(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda7;-><init>(Lcom/hyphenate/chat/EMChatManager;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncGetReactionDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/EMValueCallBack;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/EMMessageReaction;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v8, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda6;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda6;-><init>(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v8}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncGetReactionList(Ljava/util/List;Lcom/hyphenate/chat/EMMessage$ChatType;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/EMMessage$ChatType;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessageReaction;",
            ">;>;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v7, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda4;-><init>(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/EMValueCallBack;Ljava/util/List;Lcom/hyphenate/chat/EMMessage$ChatType;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncModifyMessage(Ljava/lang/String;Lcom/hyphenate/chat/EMMessageBody;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMMessageBody;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatManager$7;-><init>(Lcom/hyphenate/chat/EMChatManager;Ljava/lang/String;Lcom/hyphenate/chat/EMMessageBody;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->executeOnSendQueue(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    const/4 p1, 0x1

    const-string p2, "messageId or messageBody is empty"

    invoke-interface {p3, p1, p2}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public asyncPinConversation(Ljava/lang/String;ZLcom/hyphenate/EMCallBack;)V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda3;-><init>(Lcom/hyphenate/chat/EMChatManager;Ljava/lang/String;ZLcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncPinMessage(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda0;-><init>(Lcom/hyphenate/chat/EMChatManager;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncRecallMessage(Lcom/hyphenate/chat/EMMessage;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMChatManager$5;-><init>(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/chat/EMMessage;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncRecallMessage(Lcom/hyphenate/chat/EMMessage;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatManager$6;-><init>(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/chat/EMMessage;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncRemoveConversationMark(Ljava/util/List;Lcom/hyphenate/chat/EMConversation$EMMarkType;Lcom/hyphenate/EMCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/EMConversation$EMMarkType;",
            "Lcom/hyphenate/EMCallBack;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda11;-><init>(Lcom/hyphenate/chat/EMChatManager;Ljava/util/List;Lcom/hyphenate/chat/EMConversation$EMMarkType;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncRemoveReaction(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda8;-><init>(Lcom/hyphenate/chat/EMChatManager;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncReportMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 8

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v7, Lcom/hyphenate/chat/EMChatManager$16;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMChatManager$16;-><init>(Lcom/hyphenate/chat/EMChatManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncUnPinMessage(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda12;-><init>(Lcom/hyphenate/chat/EMChatManager;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public cleanConversationsMemoryCache()V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->cleanConversationsMemoryCache()V

    return-void
.end method

.method clearCaches(Ljava/lang/String;J)V
    .locals 5

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->caches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->caches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->caches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyphenate/chat/EMConversation$MessageCache;

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMConversation$MessageCache;->getAllMessages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->caches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyphenate/chat/EMConversation$MessageCache;

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMConversation$MessageCache;->getAllMessages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/EMMessage;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage;->getMsgTime()J

    move-result-wide v2

    cmp-long v4, v2, p2

    if-gtz v4, :cond_0

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager;->caches:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/EMConversation$MessageCache;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/hyphenate/chat/EMConversation$MessageCache;->removeMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method clearCaches(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager;->caches:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager;->caches:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager;->caches:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/EMConversation$MessageCache;

    invoke-virtual {v1, v0}, Lcom/hyphenate/chat/EMConversation$MessageCache;->removeMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public deleteConversation(Ljava/lang/String;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/EMChatManager;->getConversation(Ljava/lang/String;)Lcom/hyphenate/chat/EMConversation;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMConversation;->clear()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/hyphenate/chat/EMConversation;->clearAllMessages()V

    :goto_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMConversation;->isChatThread()Z

    move-result v0

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->removeConversation(Ljava/lang/String;ZZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public deleteConversationFromServer(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ZLcom/hyphenate/EMCallBack;)V
    .locals 8

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v7, Lcom/hyphenate/chat/EMChatManager$10;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMChatManager$10;-><init>(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/chat/EMConversation$EMConversationType;Ljava/lang/String;ZLcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteMessagesBeforeTimestamp(JLcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$15;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatManager$15;-><init>(Lcom/hyphenate/chat/EMChatManager;JLcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public downloadAndParseCombineMessage(Lcom/hyphenate/chat/EMMessage;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/EMMessage;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMChatManager$$ExternalSyntheticLambda13;-><init>(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/chat/EMMessage;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public downloadAttachment(Lcom/hyphenate/chat/EMMessage;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->makeCallbackStrong()V

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMChatManager;->checkContentAttachmentExist(Lcom/hyphenate/chat/EMMessage;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    iget-object p1, p1, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast p1, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatManager;->downloadMessageAttachments(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    return-void
.end method

.method public downloadThumbnail(Lcom/hyphenate/chat/EMMessage;)V
    .locals 1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->makeCallbackStrong()V

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    iget-object p1, p1, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast p1, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatManager;->downloadMessageThumbnail(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    return-void
.end method

.method public fetchConversationsFromServer()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMConversation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {v1, v0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->fetchConversationsFromServer(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/adapter/EMAConversation;

    new-instance v3, Lcom/hyphenate/chat/EMConversation;

    invoke-direct {v3, v2}, Lcom/hyphenate/chat/EMConversation;-><init>(Lcom/hyphenate/chat/adapter/EMAConversation;)V

    invoke-virtual {v2}, Lcom/hyphenate/chat/adapter/EMAConversation;->latestMessage()Lcom/hyphenate/chat/adapter/message/EMAMessage;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Lcom/hyphenate/chat/EMMessage;

    invoke-direct {v5, v4}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    invoke-virtual {v3, v5}, Lcom/hyphenate/chat/EMConversation;->insertMessage(Lcom/hyphenate/chat/EMMessage;)Z

    :cond_0
    invoke-virtual {v2}, Lcom/hyphenate/chat/adapter/EMAConversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method fetchConversationsFromServer(II)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMConversation;",
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

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {v1, v0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatManager;->fetchConversationsFromServerWithPage(Lcom/hyphenate/chat/adapter/EMAError;II)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    new-instance v1, Lcom/hyphenate/chat/EMConversation;

    invoke-direct {v1, v0}, Lcom/hyphenate/chat/EMConversation;-><init>(Lcom/hyphenate/chat/adapter/EMAConversation;)V

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAConversation;->latestMessage()Lcom/hyphenate/chat/adapter/message/EMAMessage;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/hyphenate/chat/EMMessage;

    invoke-direct {v3, v2}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    invoke-virtual {v1, v3}, Lcom/hyphenate/chat/EMConversation;->insertMessage(Lcom/hyphenate/chat/EMMessage;)Z

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAConversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public fetchGroupReadAcks(Ljava/lang/String;ILjava/lang/String;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/EMGroupReadAck;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v6, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v6}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    new-instance v7, Lcom/hyphenate/chat/EMCursorResult;

    invoke-direct {v7}, Lcom/hyphenate/chat/EMCursorResult;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/EMChatManager;->getMessage(Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMMessage;->getChatType()Lcom/hyphenate/chat/EMMessage$ChatType;

    move-result-object v1

    sget-object v2, Lcom/hyphenate/chat/EMMessage$ChatType;->GroupChat:Lcom/hyphenate/chat/EMMessage$ChatType;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMMessage;->isNeedGroupAck()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMMessage;->conversationId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    move-object v1, p1

    move-object v3, v6

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/hyphenate/chat/adapter/EMAChatManager;->fetchGroupReadAcks(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;ILjava/lang/String;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    invoke-direct {p0, v6}, Lcom/hyphenate/chat/EMChatManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMCursorResult;->getCursor()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Lcom/hyphenate/chat/EMCursorResult;->setCursor(Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMCursorResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/hyphenate/chat/adapter/EMAGroupReadAck;

    new-instance v0, Lcom/hyphenate/chat/EMGroupReadAck;

    invoke-direct {v0, p3}, Lcom/hyphenate/chat/EMGroupReadAck;-><init>(Lcom/hyphenate/chat/adapter/EMAGroupReadAck;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v7, p2}, Lcom/hyphenate/chat/EMCursorResult;->setData(Ljava/lang/Object;)V

    return-object v7

    :cond_1
    const-string p1, "EMChatManager"

    const-string p2, "not group msg or don\'t need ack"

    invoke-static {p1, p2}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public fetchHistoryMessages(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ILjava/lang/String;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMConversation$EMConversationType;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v5, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->UP:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/hyphenate/chat/EMChatManager;->fetchHistoryMessages(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMSearchDirection;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    return-object p1
.end method

.method public fetchHistoryMessages(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMSearchDirection;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMConversation$EMConversationType;",
            "I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMConversation$EMSearchDirection;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v7, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v7}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    sget-object v0, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->UP:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    if-ne p5, v0, :cond_0

    sget-object p5, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->UP:Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    goto :goto_0

    :cond_0
    sget-object p5, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->DOWN:Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    :goto_0
    move-object v5, p5

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMConversation$EMConversationType;->ordinal()I

    move-result v2

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/hyphenate/chat/adapter/EMAChatManager;->fetchHistoryMessages(Ljava/lang/String;IILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    invoke-direct {p0, v7}, Lcom/hyphenate/chat/EMChatManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMCursorResult;

    invoke-direct {p2}, Lcom/hyphenate/chat/EMCursorResult;-><init>()V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMCursorResult;->getCursor()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/hyphenate/chat/EMCursorResult;->setCursor(Ljava/lang/String;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMCursorResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    new-instance p5, Lcom/hyphenate/chat/EMMessage;

    invoke-direct {p5, p4}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p2, p3}, Lcom/hyphenate/chat/EMCursorResult;->setData(Ljava/lang/Object;)V

    return-object p2
.end method

.method public fetchSupportLanguages(Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMLanguage;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$17;

    invoke-direct {v1, p0, p1}, Lcom/hyphenate/chat/EMChatManager$17;-><init>(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAllConversations()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMConversation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->getConversations()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {v2}, Lcom/hyphenate/chat/adapter/EMAConversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/hyphenate/chat/EMConversation;

    invoke-direct {v4, v2}, Lcom/hyphenate/chat/EMConversation;-><init>(Lcom/hyphenate/chat/adapter/EMAConversation;)V

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getAllConversationsBySort()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMConversation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->getAllConversationsBySort()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/adapter/EMAConversation;

    new-instance v3, Lcom/hyphenate/chat/EMConversation;

    invoke-direct {v3, v2}, Lcom/hyphenate/chat/EMConversation;-><init>(Lcom/hyphenate/chat/adapter/EMAConversation;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getConversation(Ljava/lang/String;)Lcom/hyphenate/chat/EMConversation;
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    sget-object v1, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->CHAT:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/hyphenate/chat/adapter/EMAChatManager;->conversationWithType(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;ZZ)Lcom/hyphenate/chat/adapter/EMAConversation;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    sget-object v1, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->GROUPCHAT:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/hyphenate/chat/adapter/EMAChatManager;->conversationWithType(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;ZZ)Lcom/hyphenate/chat/adapter/EMAConversation;

    move-result-object v0

    :cond_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    sget-object v3, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->GROUPCHAT:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/hyphenate/chat/adapter/EMAChatManager;->conversationWithType(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;ZZ)Lcom/hyphenate/chat/adapter/EMAConversation;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    sget-object v3, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->CHATROOM:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    invoke-virtual {v0, p1, v3, v2, v2}, Lcom/hyphenate/chat/adapter/EMAChatManager;->conversationWithType(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;ZZ)Lcom/hyphenate/chat/adapter/EMAConversation;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    sget-object v3, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->CHATROOM:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/hyphenate/chat/adapter/EMAChatManager;->conversationWithType(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;ZZ)Lcom/hyphenate/chat/adapter/EMAConversation;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    sget-object v1, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->DISCUSSIONGROUP:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/hyphenate/chat/adapter/EMAChatManager;->conversationWithType(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;ZZ)Lcom/hyphenate/chat/adapter/EMAConversation;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    sget-object v1, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->HELPDESK:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/hyphenate/chat/adapter/EMAChatManager;->conversationWithType(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;ZZ)Lcom/hyphenate/chat/adapter/EMAConversation;

    move-result-object v0

    :cond_5
    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_0

    :cond_6
    new-instance p1, Lcom/hyphenate/chat/EMConversation;

    invoke-direct {p1, v0}, Lcom/hyphenate/chat/EMConversation;-><init>(Lcom/hyphenate/chat/adapter/EMAConversation;)V

    :goto_0
    return-object p1
.end method

.method public getConversation(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;)Lcom/hyphenate/chat/EMConversation;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/hyphenate/chat/EMChatManager;->getConversation(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;Z)Lcom/hyphenate/chat/EMConversation;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/hyphenate/chat/EMChatManager;->getConversation(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ZZ)Lcom/hyphenate/chat/EMConversation;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method public getConversation(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;Z)Lcom/hyphenate/chat/EMConversation;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/hyphenate/chat/EMChatManager;->getConversation(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ZZ)Lcom/hyphenate/chat/EMConversation;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/hyphenate/chat/EMChatManager;->getConversation(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ZZ)Lcom/hyphenate/chat/EMConversation;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public getConversation(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ZZ)Lcom/hyphenate/chat/EMConversation;
    .locals 2

    sget-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->CHAT:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    sget-object v1, Lcom/hyphenate/chat/EMChatManager$21;->$SwitchMap$com$hyphenate$chat$EMConversation$EMConversationType:[I

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMConversation$EMConversationType;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->HELPDESK:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->DISCUSSIONGROUP:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->CHATROOM:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->GROUPCHAT:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->CHAT:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    :goto_0
    iget-object p2, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {p2, p1, v0, p3, p4}, Lcom/hyphenate/chat/adapter/EMAChatManager;->conversationWithType(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;ZZ)Lcom/hyphenate/chat/adapter/EMAConversation;

    move-result-object p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    return-object p1

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "convID:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAConversation;->conversationId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "EMChatManager"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/hyphenate/chat/EMConversation;

    invoke-direct {p2, p1}, Lcom/hyphenate/chat/EMConversation;-><init>(Lcom/hyphenate/chat/adapter/EMAConversation;)V

    return-object p2
.end method

.method public getConversationsByType(Lcom/hyphenate/chat/EMConversation$EMConversationType;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/EMConversation$EMConversationType;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMConversation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->getConversations()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMConversation$EMConversationType;->ordinal()I

    move-result v3

    invoke-virtual {v2}, Lcom/hyphenate/chat/adapter/EMAConversation;->_getType()Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_0

    new-instance v3, Lcom/hyphenate/chat/EMConversation;

    invoke-direct {v3, v2}, Lcom/hyphenate/chat/EMConversation;-><init>(Lcom/hyphenate/chat/adapter/EMAConversation;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method getMessage(J)Lcom/hyphenate/chat/EMMessage;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatManager;->getMessage(J)Lcom/hyphenate/chat/adapter/message/EMAMessage;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p2, Lcom/hyphenate/chat/EMMessage;

    invoke-direct {p2, p1}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    return-object p2
.end method

.method public getMessage(Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->caches:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager;->caches:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/EMConversation$MessageCache;

    invoke-virtual {v2, p1}, Lcom/hyphenate/chat/EMConversation$MessageCache;->getMessage(Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v2

    if-eqz v2, :cond_0

    monitor-exit v0

    return-object v2

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatManager;->getMessage(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/message/EMAMessage;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    new-instance v0, Lcom/hyphenate/chat/EMMessage;

    invoke-direct {v0, p1}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getReactionDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/hyphenate/chat/EMCursorResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/EMMessageReaction;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v6, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v6}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->emaReactionObject:Lcom/hyphenate/chat/adapter/EMAReactionManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/hyphenate/chat/adapter/EMAReactionManager;->getReactionDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    invoke-direct {p0, v6}, Lcom/hyphenate/chat/EMChatManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMCursorResult;

    invoke-direct {p2}, Lcom/hyphenate/chat/EMCursorResult;-><init>()V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMCursorResult;->getCursor()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/hyphenate/chat/EMCursorResult;->setCursor(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMCursorResult;->getData()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    new-instance p3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMCursorResult;->getData()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMCursorResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/hyphenate/chat/adapter/EMAMessageReaction;

    if-eqz p4, :cond_0

    new-instance v0, Lcom/hyphenate/chat/EMMessageReaction;

    invoke-direct {v0, p4}, Lcom/hyphenate/chat/EMMessageReaction;-><init>(Lcom/hyphenate/chat/adapter/EMAMessageReaction;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p3}, Lcom/hyphenate/chat/EMCursorResult;->setData(Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method public getReactionList(Ljava/util/List;Lcom/hyphenate/chat/EMMessage$ChatType;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/EMMessage$ChatType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessageReaction;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    sget-object v1, Lcom/hyphenate/chat/EMMessage$ChatType;->Chat:Lcom/hyphenate/chat/EMMessage$ChatType;

    const-string v2, "chat"

    if-ne v1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/hyphenate/chat/EMMessage$ChatType;->GroupChat:Lcom/hyphenate/chat/EMMessage$ChatType;

    if-ne v1, p2, :cond_1

    const-string v2, "groupchat"

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/hyphenate/chat/EMChatManager;->emaReactionObject:Lcom/hyphenate/chat/adapter/EMAReactionManager;

    invoke-virtual {p2, p1, v2, p3, v0}, Lcom/hyphenate/chat/adapter/EMAReactionManager;->getReactionList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p3

    if-lez p3, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/adapter/EMAMessageReaction;

    if-eqz v2, :cond_2

    new-instance v3, Lcom/hyphenate/chat/EMMessageReaction;

    invoke-direct {v3, v2}, Lcom/hyphenate/chat/EMMessageReaction;-><init>(Lcom/hyphenate/chat/adapter/EMAMessageReaction;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-object p2
.end method

.method public getUnreadMessageCount()I
    .locals 5

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->getConversations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-virtual {v2}, Lcom/hyphenate/chat/adapter/EMAConversation;->_getType()Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    move-result-object v3

    sget-object v4, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->CHATROOM:Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/hyphenate/chat/adapter/EMAConversation;->unreadMessagesCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public declared-synchronized importMessages(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/EMMessage;

    iget-object v1, v1, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->getChatConfigPrivate()Lcom/hyphenate/chat/a/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/a/a;->c(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method synthetic lambda$asyncAddConversationMark$9$com-hyphenate-chat-EMChatManager(Ljava/util/List;Lcom/hyphenate/chat/EMConversation$EMMarkType;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMConversation$EMMarkType;->ordinal()I

    move-result p2

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->addConversationMark(Ljava/util/List;ILcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/hyphenate/EMCallBack;->onSuccess()V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "asyncAddConversationMark error code:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",error message:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EMChatManager"

    invoke-static {p2, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$asyncAddReaction$5$com-hyphenate-chat-EMChatManager(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/EMChatManager;->addReaction(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/hyphenate/EMCallBack;->onSuccess()V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "asyncAddReaction error code:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",error message:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "EMChatManager"

    invoke-static {v0, p2}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$asyncDeleteAllMsgsAndConversations$12$com-hyphenate-chat-EMChatManager(ZLcom/hyphenate/EMCallBack;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {v1, p1, v0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->asyncDeleteAllMsgsAndConversations(ZLcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMChatManager;->caches:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/hyphenate/EMCallBack;->onSuccess()V
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

    invoke-interface {p2, v0, p1}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "asyncDeleteAllMsgsAndConversations error code:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",error message:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EMChatManager"

    invoke-static {p2, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$asyncFetchConversationsFromServer$3$com-hyphenate-chat-EMChatManager(ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->fetchConversationsFromServerWithCursor(ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p2, Lcom/hyphenate/chat/EMCursorResult;

    invoke-direct {p2}, Lcom/hyphenate/chat/EMCursorResult;-><init>()V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMCursorResult;->getCursor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/hyphenate/chat/EMCursorResult;->setCursor(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMCursorResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/adapter/EMAConversation;

    new-instance v2, Lcom/hyphenate/chat/EMConversation;

    invoke-direct {v2, v1}, Lcom/hyphenate/chat/EMConversation;-><init>(Lcom/hyphenate/chat/adapter/EMAConversation;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Lcom/hyphenate/chat/EMCursorResult;->setData(Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    invoke-interface {p3, p2}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    return-void

    :catch_0
    move-exception p1

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method synthetic lambda$asyncFetchPinnedConversationsFromServer$2$com-hyphenate-chat-EMChatManager(ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->fetchPinnedConversationsFromServer(ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p2, Lcom/hyphenate/chat/EMCursorResult;

    invoke-direct {p2}, Lcom/hyphenate/chat/EMCursorResult;-><init>()V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMCursorResult;->getCursor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/hyphenate/chat/EMCursorResult;->setCursor(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMCursorResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/adapter/EMAConversation;

    new-instance v2, Lcom/hyphenate/chat/EMConversation;

    invoke-direct {v2, v1}, Lcom/hyphenate/chat/EMConversation;-><init>(Lcom/hyphenate/chat/adapter/EMAConversation;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Lcom/hyphenate/chat/EMCursorResult;->setData(Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    invoke-interface {p3, p2}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    return-void

    :catch_0
    move-exception p1

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method synthetic lambda$asyncFilterConversationsFromDB$1$com-hyphenate-chat-EMChatManager(Lcom/hyphenate/chat/EMCustomConversationFilter;ZLcom/hyphenate/EMValueCallBack;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/hyphenate/chat/adapter/EMACustomConversationFilter;

    invoke-direct {v0, p1}, Lcom/hyphenate/chat/adapter/EMACustomConversationFilter;-><init>(Lcom/hyphenate/chat/EMCustomConversationFilter;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {p1, v0, p2}, Lcom/hyphenate/chat/adapter/EMAChatManager;->loadConversationsWithFilter(Lcom/hyphenate/chat/adapter/EMACustomConversationFilter;Z)Ljava/util/List;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyphenate/chat/adapter/EMAConversation;

    new-instance v1, Lcom/hyphenate/chat/EMConversation;

    invoke-direct {v1, v0}, Lcom/hyphenate/chat/EMConversation;-><init>(Lcom/hyphenate/chat/adapter/EMAConversation;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3, p2}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method synthetic lambda$asyncGetConversationsFromServerWithCursor$11$com-hyphenate-chat-EMChatManager(Ljava/lang/String;Lcom/hyphenate/chat/EMConversationFilter;Lcom/hyphenate/EMValueCallBack;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    iget-object p2, p2, Lcom/hyphenate/chat/EMConversationFilter;->emaObject:Ljava/lang/Object;

    check-cast p2, Lcom/hyphenate/chat/adapter/EMAConversationFilter;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->getConversationsFromServerWithCursor(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAConversationFilter;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMCursorResult;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/hyphenate/chat/EMConversation;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hyphenate/chat/adapter/EMAConversation;

    invoke-direct {v2, v3}, Lcom/hyphenate/chat/EMConversation;-><init>(Lcom/hyphenate/chat/adapter/EMAConversation;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/hyphenate/chat/EMCursorResult;

    invoke-direct {p2}, Lcom/hyphenate/chat/EMCursorResult;-><init>()V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMCursorResult;->getCursor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/hyphenate/chat/EMCursorResult;->setCursor(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/hyphenate/chat/EMCursorResult;->setData(Ljava/lang/Object;)V

    if-eqz p3, :cond_3

    invoke-interface {p3, p2}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "asyncGetConversationsFromServerWithCursor error code:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",error message:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EMChatManager"

    invoke-static {p2, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method synthetic lambda$asyncGetPinnedMessagesFromServer$15$com-hyphenate-chat-EMChatManager(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "EMChatManager"

    if-eqz v0, :cond_0

    const-string p1, "asyncGetPinnedMessagesFromServer error code:110,error message:conversationId is empty"

    invoke-static {v1, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x6e

    const-string v0, "conversationId is empty"

    invoke-interface {p2, p1, v0}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {v2, p1, v0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->getPinnedMessagesFromServer(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    if-eqz p2, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    if-eqz v2, :cond_1

    new-instance v3, Lcom/hyphenate/chat/EMMessage;

    invoke-direct {v3, v2}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p2, v0}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "asyncGetPinnedMessagesFromServer error code:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",error message:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method synthetic lambda$asyncGetReactionDetail$8$com-hyphenate-chat-EMChatManager(Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/hyphenate/chat/EMChatManager;->getReactionDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "asyncGetReactionDetail error code:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ",error message:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "EMChatManager"

    invoke-static {p4, p3}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result p3

    invoke-virtual {p2}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$asyncGetReactionList$7$com-hyphenate-chat-EMChatManager(Lcom/hyphenate/EMValueCallBack;Ljava/util/List;Lcom/hyphenate/chat/EMMessage$ChatType;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/hyphenate/chat/EMChatManager;->getReactionList(Ljava/util/List;Lcom/hyphenate/chat/EMMessage$ChatType;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "asyncGetReactionList error code:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ",error message:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "EMChatManager"

    invoke-static {p4, p3}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result p3

    invoke-virtual {p2}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$asyncPinConversation$4$com-hyphenate-chat-EMChatManager(Ljava/lang/String;ZLcom/hyphenate/EMCallBack;)V
    .locals 2

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->pinConversation(Ljava/lang/String;ZLcom/hyphenate/chat/adapter/EMAError;)V

    :try_start_0
    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/hyphenate/EMCallBack;->onSuccess()V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$asyncPinMessage$13$com-hyphenate-chat-EMChatManager(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "EMChatManager"

    if-eqz v0, :cond_0

    const-string p1, "asyncPinMessage error code:110,error message:messageId is empty"

    invoke-static {v1, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x6e

    const-string v0, "messageId is empty"

    invoke-interface {p2, p1, v0}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, v0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->pinMessage(Ljava/lang/String;ZLcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/hyphenate/EMCallBack;->onSuccess()V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "asyncPinMessage error code:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",error msg:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$asyncRemoveConversationMark$10$com-hyphenate-chat-EMChatManager(Ljava/util/List;Lcom/hyphenate/chat/EMConversation$EMMarkType;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMConversation$EMMarkType;->ordinal()I

    move-result p2

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->removeConversationMark(Ljava/util/List;ILcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/hyphenate/EMCallBack;->onSuccess()V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "asyncRemoveConversationMark error code:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",error message:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EMChatManager"

    invoke-static {p2, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$asyncRemoveReaction$6$com-hyphenate-chat-EMChatManager(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/EMChatManager;->removeReaction(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/hyphenate/EMCallBack;->onSuccess()V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "asyncRemoveReaction error code:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",error message:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "EMChatManager"

    invoke-static {v0, p2}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$asyncUnPinMessage$14$com-hyphenate-chat-EMChatManager(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "EMChatManager"

    if-eqz v0, :cond_0

    const-string p1, "asyncPinMessage error code:110,error message:messageId is empty"

    invoke-static {v1, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x6e

    const-string v0, "messageId is empty"

    invoke-interface {p2, p1, v0}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v2, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->pinMessage(Ljava/lang/String;ZLcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/hyphenate/EMCallBack;->onSuccess()V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "asyncPinMessage error code:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",error msg:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$downloadAndParseCombineMessage$0$com-hyphenate-chat-EMChatManager(Lcom/hyphenate/chat/EMMessage;Lcom/hyphenate/EMValueCallBack;)V
    .locals 3

    const/16 v0, 0x6e

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "Message cannot be null."

    invoke-interface {p2, v0, p1}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getType()Lcom/hyphenate/chat/EMMessage$Type;

    move-result-object v1

    sget-object v2, Lcom/hyphenate/chat/EMMessage$Type;->COMBINE:Lcom/hyphenate/chat/EMMessage$Type;

    if-eq v1, v2, :cond_3

    if-eqz p2, :cond_2

    const-string p1, "Only combine message are supported."

    invoke-interface {p2, v0, p1}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    iget-object p1, p1, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast p1, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v1, p1, v0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->downloadCombineMessages(Lcom/hyphenate/chat/adapter/message/EMAMessage;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    new-instance v2, Lcom/hyphenate/chat/EMMessage;

    invoke-direct {v2, v1}, Lcom/hyphenate/chat/EMMessage;-><init>(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    invoke-interface {p2, v0}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V

    :cond_5
    return-void

    :catch_0
    move-exception p1

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    :cond_6
    return-void
.end method

.method public loadAllConversations()V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->loadAllConversationsFromDB()Ljava/util/List;

    return-void
.end method

.method declared-synchronized loadAllConversationsFromDB()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->loadAllConversationsFromDB()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markAllConversationsAsRead()Z
    .locals 3

    :try_start_0
    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {v1, v0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->markAllConversationsAsRead(Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "markAllConversationsAsRead failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMChatManager"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method onLogout()V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->caches:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public recallMessage(Lcom/hyphenate/chat/EMMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    iget-object v2, p1, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v2, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->recallMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getChatType()Lcom/hyphenate/chat/EMMessage$ChatType;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hyphenate/chat/EMConversation;->msgType2ConversationType(Ljava/lang/String;Lcom/hyphenate/chat/EMMessage$ChatType;)Lcom/hyphenate/chat/EMConversation$EMConversationType;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->isChatThreadMessage()Z

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/hyphenate/chat/EMChatManager;->getConversation(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ZZ)Lcom/hyphenate/chat/EMConversation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMConversation;->getCache()Lcom/hyphenate/chat/EMConversation$MessageCache;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMConversation$MessageCache;->removeMessage(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lcom/hyphenate/exceptions/HyphenateException;

    const/16 v0, 0x1f4

    const-string v1, "The message was not found"

    invoke-direct {p1, v0, v1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public recallMessage(Lcom/hyphenate/chat/EMMessage;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    iget-object v2, p1, Lcom/hyphenate/chat/EMMessage;->emaObject:Ljava/lang/Object;

    check-cast v2, Lcom/hyphenate/chat/adapter/message/EMAMessage;

    invoke-virtual {v1, v2, p2, v0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->recallMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getChatType()Lcom/hyphenate/chat/EMMessage$ChatType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hyphenate/chat/EMConversation;->msgType2ConversationType(Ljava/lang/String;Lcom/hyphenate/chat/EMMessage$ChatType;)Lcom/hyphenate/chat/EMConversation$EMConversationType;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->isChatThreadMessage()Z

    move-result v2

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/hyphenate/chat/EMChatManager;->getConversation(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ZZ)Lcom/hyphenate/chat/EMConversation;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMConversation;->getCache()Lcom/hyphenate/chat/EMConversation$MessageCache;

    move-result-object p2

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/hyphenate/chat/EMConversation$MessageCache;->removeMessage(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lcom/hyphenate/exceptions/HyphenateException;

    const/16 p2, 0x1f4

    const-string v0, "The message was not found"

    invoke-direct {p1, p2, v0}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public removeConversationListener(Lcom/hyphenate/EMConversationListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->conversationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeMessageListener(Lcom/hyphenate/EMMessageListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->messageListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected removeMessagesFromServer(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;JLcom/hyphenate/EMCallBack;)V
    .locals 9

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v8, Lcom/hyphenate/chat/EMChatManager$20;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/hyphenate/chat/EMChatManager$20;-><init>(Lcom/hyphenate/chat/EMChatManager;Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;JLcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v8}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected removeMessagesFromServer(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;Ljava/util/List;Lcom/hyphenate/EMCallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMConversation$EMConversationType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/EMCallBack;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v7, Lcom/hyphenate/chat/EMChatManager$19;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMChatManager$19;-><init>(Lcom/hyphenate/chat/EMChatManager;Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;Ljava/util/List;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeReaction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager;->emaReactionObject:Lcom/hyphenate/chat/adapter/EMAReactionManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAReactionManager;->removeReaction(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public reportMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->reportMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public saveMessage(Lcom/hyphenate/chat/EMMessage;)V
    .locals 5

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getChatType()Lcom/hyphenate/chat/EMMessage$ChatType;

    move-result-object v0

    sget-object v1, Lcom/hyphenate/chat/EMConversation$EMConversationType;->Chat:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    sget-object v2, Lcom/hyphenate/chat/EMChatManager$21;->$SwitchMap$com$hyphenate$chat$EMMessage$ChatType:[I

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMMessage$ChatType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/hyphenate/chat/EMConversation$EMConversationType;->ChatRoom:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/hyphenate/chat/EMConversation$EMConversationType;->GroupChat:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/hyphenate/chat/EMConversation$EMConversationType;->Chat:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    :goto_0
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/hyphenate/chat/EMConversation$EMConversationType;->Chat:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    if-ne v1, v3, :cond_3

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->direct()Lcom/hyphenate/chat/EMMessage$Direct;

    move-result-object v3

    sget-object v4, Lcom/hyphenate/chat/EMMessage$Direct;->RECEIVE:Lcom/hyphenate/chat/EMMessage$Direct;

    if-ne v3, v4, :cond_3

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getType()Lcom/hyphenate/chat/EMMessage$Type;

    move-result-object v3

    sget-object v4, Lcom/hyphenate/chat/EMMessage$Type;->CMD:Lcom/hyphenate/chat/EMMessage$Type;

    if-ne v3, v4, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->isChatThreadMessage()Z

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/hyphenate/chat/EMChatManager;->getConversation(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ZZ)Lcom/hyphenate/chat/EMConversation;

    move-result-object v1

    if-nez v1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Failed to save message because conversation is null, convId: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EMChatManager"

    invoke-static {v0, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {v1, p1}, Lcom/hyphenate/chat/EMConversation;->insertMessage(Lcom/hyphenate/chat/EMMessage;)Z

    return-void
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

    invoke-virtual/range {v0 .. v6}, Lcom/hyphenate/chat/EMChatManager;->searchMsgFromDB(Ljava/util/Set;JILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMSearchDirection;)Ljava/util/List;

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

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/hyphenate/chat/adapter/EMAChatManager;->searchMessages(Ljava/lang/String;JILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;)Ljava/util/List;

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
    .locals 8
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

    if-ne p6, v0, :cond_0

    sget-object p6, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->UP:Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    goto :goto_0

    :cond_0
    sget-object p6, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->DOWN:Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;

    :goto_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {p6}, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->ordinal()I

    move-result v6

    invoke-virtual {p7}, Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;->ordinal()I

    move-result v7

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/hyphenate/chat/adapter/EMAChatManager;->searchMessages(Ljava/lang/String;JILjava/lang/String;II)Ljava/util/List;

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

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/hyphenate/chat/adapter/EMAChatManager;->searchMessages(IJILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;)Ljava/util/List;

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

.method public sendMessage(Lcom/hyphenate/chat/EMMessage;)V
    .locals 7

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->makeCallbackStrong()V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getType()Lcom/hyphenate/chat/EMMessage$Type;

    move-result-object v0

    sget-object v1, Lcom/hyphenate/chat/EMMessage$Type;->CMD:Lcom/hyphenate/chat/EMMessage$Type;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getChatType()Lcom/hyphenate/chat/EMMessage$ChatType;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hyphenate/chat/EMConversation;->msgType2ConversationType(Ljava/lang/String;Lcom/hyphenate/chat/EMMessage$ChatType;)Lcom/hyphenate/chat/EMConversation$EMConversationType;

    move-result-object v4

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->isChatThreadMessage()Z

    move-result v5

    invoke-virtual {p0, v1, v4, v0, v5}, Lcom/hyphenate/chat/EMChatManager;->getConversation(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ZZ)Lcom/hyphenate/chat/EMConversation;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMConversation;->getCache()Lcom/hyphenate/chat/EMConversation$MessageCache;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/hyphenate/chat/EMConversation$MessageCache;->getMessage(Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMConversation;->getLastMessage()Lcom/hyphenate/chat/EMMessage;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/hyphenate/chat/EMMessage;->getMsgTime()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-gez v6, :cond_2

    invoke-virtual {v3}, Lcom/hyphenate/chat/EMMessage;->getMsgTime()J

    move-result-wide v1

    :cond_2
    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lcom/hyphenate/chat/EMMessage;->setMsgTime(J)V

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMConversation;->getCache()Lcom/hyphenate/chat/EMConversation$MessageCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/hyphenate/chat/EMConversation$MessageCache;->addMessage(Lcom/hyphenate/chat/EMMessage;)V

    :cond_3
    iget-object v1, p0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v2, Lcom/hyphenate/chat/EMChatManager$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/hyphenate/chat/EMChatManager$3;-><init>(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/chat/EMMessage;Lcom/hyphenate/chat/EMConversation;)V

    invoke-virtual {v1, v2}, Lcom/hyphenate/chat/EMClient;->executeOnSendQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setVoiceMessageListened(Lcom/hyphenate/chat/EMMessage;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/EMMessage;->setListened(Z)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/EMChatManager;->updateMessage(Lcom/hyphenate/chat/EMMessage;)Z

    return-void
.end method

.method public translateMessage(Lcom/hyphenate/chat/EMMessage;Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/EMMessage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->mClient:Lcom/hyphenate/chat/EMClient;

    new-instance v1, Lcom/hyphenate/chat/EMChatManager$18;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatManager$18;-><init>(Lcom/hyphenate/chat/EMChatManager;Lcom/hyphenate/chat/EMMessage;Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateMessage(Lcom/hyphenate/chat/EMMessage;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->direct()Lcom/hyphenate/chat/EMMessage$Direct;

    move-result-object v0

    sget-object v1, Lcom/hyphenate/chat/EMMessage$Direct;->RECEIVE:Lcom/hyphenate/chat/EMMessage$Direct;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getType()Lcom/hyphenate/chat/EMMessage$Type;

    move-result-object v1

    sget-object v2, Lcom/hyphenate/chat/EMMessage$Type;->CMD:Lcom/hyphenate/chat/EMMessage$Type;

    if-ne v1, v2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getChatType()Lcom/hyphenate/chat/EMMessage$ChatType;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hyphenate/chat/EMConversation;->msgType2ConversationType(Ljava/lang/String;Lcom/hyphenate/chat/EMMessage$ChatType;)Lcom/hyphenate/chat/EMConversation$EMConversationType;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->isChatThreadMessage()Z

    move-result v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/hyphenate/chat/EMChatManager;->getConversation(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ZZ)Lcom/hyphenate/chat/EMConversation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMConversation;->updateMessage(Lcom/hyphenate/chat/EMMessage;)Z

    move-result p1

    return p1
.end method

.method public updateParticipant(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatManager;

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatManager;->updateParticipant(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
