.class public Lcom/hyphenate/chat/adapter/EMAChatManager;
.super Lcom/hyphenate/chat/adapter/EMABase;


# instance fields
.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/hyphenate/chat/adapter/EMAChatManagerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatManager;->listeners:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Lcom/hyphenate/chat/adapter/EMAChatManager;)V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatManager;->listeners:Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeInit(Lcom/hyphenate/chat/adapter/EMAChatManager;)V

    return-void
.end method


# virtual methods
.method public addConversationMark(Ljava/util/List;ILcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeAddConversationMark(Ljava/util/List;ILcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public addListener(Lcom/hyphenate/chat/adapter/EMAChatManagerListener;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeAddListener(Lcom/hyphenate/chat/adapter/EMAChatManagerListener;)V

    return-void
.end method

.method public asyncDeleteAllMsgsAndConversations(ZLcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeAsyncDeleteAllMsgsAndConversations(ZLcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public cleanConversationsMemoryCache()V
    .locals 0

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeReleaseConversationsCache()V

    return-void
.end method

.method public clearListeners()V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatManager;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeClearListeners()V

    return-void
.end method

.method public conversationWithType(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;ZZ)Lcom/hyphenate/chat/adapter/EMAConversation;
    .locals 0

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->ordinal()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeConversationWithType(Ljava/lang/String;IZZ)Lcom/hyphenate/chat/adapter/EMAConversation;

    move-result-object p1

    return-object p1
.end method

.method public deleteConversationFromServer(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;Z)Lcom/hyphenate/chat/adapter/EMAError;
    .locals 0

    invoke-virtual {p2}, Lcom/hyphenate/chat/adapter/EMAConversation$EMAConversationType;->ordinal()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeDeleteConversationFromServer(Ljava/lang/String;IZ)Lcom/hyphenate/chat/adapter/EMAError;

    move-result-object p1

    return-object p1
.end method

.method public deleteRoamMsgFromServerById(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;Ljava/util/List;)Lcom/hyphenate/chat/adapter/EMAError;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMConversation$EMConversationType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hyphenate/chat/adapter/EMAError;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMConversation$EMConversationType;->ordinal()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeDeleteRoamMsgFromServerById(Ljava/lang/String;ILjava/util/List;)Lcom/hyphenate/chat/adapter/EMAError;

    move-result-object p1

    return-object p1
.end method

.method public deleteRoamMsgFromServerByTime(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;J)Lcom/hyphenate/chat/adapter/EMAError;
    .locals 0

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMConversation$EMConversationType;->ordinal()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeDeleteRoamMsgFromServerByTime(Ljava/lang/String;IJ)Lcom/hyphenate/chat/adapter/EMAError;

    move-result-object p1

    return-object p1
.end method

.method public downloadCombineMessages(Lcom/hyphenate/chat/adapter/message/EMAMessage;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeDownloadCombineMessages(Lcom/hyphenate/chat/adapter/message/EMAMessage;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public downloadMessageAttachments(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeDownloadMessageAttachments(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    return-void
.end method

.method public downloadMessageThumbnail(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeDownloadMessageThumbnail(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    return-void
.end method

.method public fetchConversationsFromServer(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAConversation;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeFetchConversationsFromServer(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public fetchConversationsFromServerWithCursor(ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/adapter/EMAConversation;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeFetchConversationsFromServerWithCursor(ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    return-object p1
.end method

.method public fetchConversationsFromServerWithPage(Lcom/hyphenate/chat/adapter/EMAError;II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            "II)",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAConversation;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeFetchConversationsFromServerWithPage(Lcom/hyphenate/chat/adapter/EMAError;II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public fetchGroupReadAcks(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;ILjava/lang/String;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/adapter/EMAGroupReadAck;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p5}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeFetchGroupReadAcks(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;ILjava/lang/String;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    return-object p1
.end method

.method public fetchHistoryMessages(Ljava/lang/String;IILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;"
        }
    .end annotation

    invoke-virtual {p5}, Lcom/hyphenate/chat/adapter/EMAConversation$EMASearchDirection;->ordinal()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeFetchHistoryMessages(Ljava/lang/String;IILjava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    return-object p1
.end method

.method public fetchHistoryMessages(Ljava/lang/String;IILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p6}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeFetchHistoryMessagesByOption(Ljava/lang/String;IILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    return-object p1
.end method

.method public fetchPinnedConversationsFromServer(ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/adapter/EMAConversation;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeFetchPinnedConversationsFromServer(ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    return-object p1
.end method

.method public fetchSupportLanguages(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeFetchSupportLanguages(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllConversationsBySort()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAConversation;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeGetAllConversationsBySort()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConversations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAConversation;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeGetConversations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConversationsFromServerWithCursor(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAConversationFilter;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAConversationFilter;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/adapter/EMAConversation;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeGetConversationsFromServerWithCursor(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAConversationFilter;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    return-object p1
.end method

.method public getEncryptProvider(Z)Lcom/hyphenate/chat/adapter/EMAEncryptProviderInterface;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeGetEncryptProvider(Z)Lcom/hyphenate/chat/adapter/EMAEncryptProviderInterface;

    move-result-object p1

    return-object p1
.end method

.method public getMessage(J)Lcom/hyphenate/chat/adapter/message/EMAMessage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeGetMessageByHandler(J)Lcom/hyphenate/chat/adapter/message/EMAMessage;

    move-result-object p1

    return-object p1
.end method

.method public getMessage(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/message/EMAMessage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeGetMessage(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/message/EMAMessage;

    move-result-object p1

    return-object p1
.end method

.method public getPinnedMessagesFromServer(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeGetPinnedMessagesFromServer(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public loadAllConversationsFromDB()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAConversation;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeLoadAllConversationsFromDB()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadConversationsWithFilter(Lcom/hyphenate/chat/adapter/EMACustomConversationFilter;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMACustomConversationFilter;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAConversation;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeLoadConversationsWithFilter(Lcom/hyphenate/chat/adapter/EMACustomConversationFilter;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public markAllConversationsAsRead(Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeMarkAllConversationsAsRead(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public modifyMessage(Ljava/lang/String;Lcom/hyphenate/chat/adapter/message/EMAMessageBody;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/message/EMAMessage;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeModifyMessage(Ljava/lang/String;Lcom/hyphenate/chat/adapter/message/EMAMessageBody;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/message/EMAMessage;

    move-result-object p1

    return-object p1
.end method

.method native nativeAddConversationMark(Ljava/util/List;ILcom/hyphenate/chat/adapter/EMAError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")V"
        }
    .end annotation
.end method

.method native nativeAddListener(Lcom/hyphenate/chat/adapter/EMAChatManagerListener;)V
.end method

.method native nativeAsyncDeleteAllMsgsAndConversations(ZLcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeClearListeners()V
.end method

.method native nativeConversationWithType(Ljava/lang/String;IZZ)Lcom/hyphenate/chat/adapter/EMAConversation;
.end method

.method native nativeDeleteConversationFromServer(Ljava/lang/String;IZ)Lcom/hyphenate/chat/adapter/EMAError;
.end method

.method native nativeDeleteRoamMsgFromServerById(Ljava/lang/String;ILjava/util/List;)Lcom/hyphenate/chat/adapter/EMAError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hyphenate/chat/adapter/EMAError;"
        }
    .end annotation
.end method

.method native nativeDeleteRoamMsgFromServerByTime(Ljava/lang/String;IJ)Lcom/hyphenate/chat/adapter/EMAError;
.end method

.method native nativeDownloadCombineMessages(Lcom/hyphenate/chat/adapter/message/EMAMessage;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;"
        }
    .end annotation
.end method

.method native nativeDownloadMessageAttachments(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V
.end method

.method native nativeDownloadMessageThumbnail(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V
.end method

.method native nativeFetchConversationsFromServer(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAConversation;",
            ">;"
        }
    .end annotation
.end method

.method native nativeFetchConversationsFromServerWithCursor(ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/adapter/EMAConversation;",
            ">;"
        }
    .end annotation
.end method

.method native nativeFetchConversationsFromServerWithPage(Lcom/hyphenate/chat/adapter/EMAError;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            "II)",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAConversation;",
            ">;"
        }
    .end annotation
.end method

.method native nativeFetchGroupReadAcks(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;ILjava/lang/String;)Lcom/hyphenate/chat/EMCursorResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/adapter/EMAGroupReadAck;",
            ">;"
        }
    .end annotation
.end method

.method native nativeFetchHistoryMessages(Ljava/lang/String;IILjava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;"
        }
    .end annotation
.end method

.method native nativeFetchHistoryMessagesByOption(Ljava/lang/String;IILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAFetchMessageOption;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;"
        }
    .end annotation
.end method

.method native nativeFetchPinnedConversationsFromServer(ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/adapter/EMAConversation;",
            ">;"
        }
    .end annotation
.end method

.method native nativeFetchSupportLanguages(Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method native nativeGetAllConversationsBySort()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAConversation;",
            ">;"
        }
    .end annotation
.end method

.method native nativeGetConversations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAConversation;",
            ">;"
        }
    .end annotation
.end method

.method native nativeGetConversationsFromServerWithCursor(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAConversationFilter;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAConversationFilter;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/adapter/EMAConversation;",
            ">;"
        }
    .end annotation
.end method

.method native nativeGetEncryptProvider(Z)Lcom/hyphenate/chat/adapter/EMAEncryptProviderInterface;
.end method

.method native nativeGetMessage(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/message/EMAMessage;
.end method

.method native nativeGetMessageByHandler(J)Lcom/hyphenate/chat/adapter/message/EMAMessage;
.end method

.method native nativeGetPinnedMessagesFromServer(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;"
        }
    .end annotation
.end method

.method native nativeInit(Lcom/hyphenate/chat/adapter/EMAChatManager;)V
.end method

.method native nativeLoadAllConversationsFromDB()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAConversation;",
            ">;"
        }
    .end annotation
.end method

.method native nativeLoadConversationsWithFilter(Lcom/hyphenate/chat/adapter/EMACustomConversationFilter;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/EMACustomConversationFilter;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/adapter/EMAConversation;",
            ">;"
        }
    .end annotation
.end method

.method native nativeMarkAllConversationsAsRead(Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeModifyMessage(Ljava/lang/String;Lcom/hyphenate/chat/adapter/message/EMAMessageBody;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/message/EMAMessage;
.end method

.method native nativePinConversation(Ljava/lang/String;ZLcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativePinMessage(Ljava/lang/String;ZLcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeRecallMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeReleaseConversationsCache()V
.end method

.method native nativeRemoveConversation(Ljava/lang/String;ZZ)V
.end method

.method native nativeRemoveConversationMark(Ljava/util/List;ILcom/hyphenate/chat/adapter/EMAError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")V"
        }
    .end annotation
.end method

.method native nativeRemoveListener(Lcom/hyphenate/chat/adapter/EMAChatManagerListener;)V
.end method

.method native nativeRemoveMessagesBeforeTimestamp(J)Z
.end method

.method native nativeReportMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeResendMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V
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

.method native nativeSendMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V
.end method

.method native nativeSendReadAckForConversation(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeSendReadAckForGroupMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;Ljava/lang/String;)V
.end method

.method native nativeSendReadAckForMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V
.end method

.method native nativeSetEncryptProvider(Lcom/hyphenate/chat/adapter/EMAEncryptProviderInterface;)V
.end method

.method native nativeTranslateMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/message/EMAMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;"
        }
    .end annotation
.end method

.method native nativeUpdateParticipant(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method native nativeUploadLog()V
.end method

.method public pinConversation(Ljava/lang/String;ZLcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativePinConversation(Ljava/lang/String;ZLcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public pinMessage(Ljava/lang/String;ZLcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativePinMessage(Ljava/lang/String;ZLcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public recallMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeRecallMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public removeConversation(Ljava/lang/String;ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeRemoveConversation(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public removeConversationMark(Ljava/util/List;ILcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeRemoveConversationMark(Ljava/util/List;ILcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public removeListener(Lcom/hyphenate/chat/adapter/EMAChatManagerListener;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/adapter/EMAChatManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeRemoveListener(Lcom/hyphenate/chat/adapter/EMAChatManagerListener;)V

    return-void
.end method

.method public removeMessagesBeforeTimestamp(J)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeRemoveMessagesBeforeTimestamp(J)Z

    move-result p1

    return p1
.end method

.method public reportMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeReportMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public resendMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeResendMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    return-void
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

    invoke-virtual/range {v0 .. v6}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeSearchMessages(IJILjava/lang/String;I)Ljava/util/List;

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

    invoke-virtual/range {p0 .. p7}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeSearchMessages(Ljava/lang/String;JILjava/lang/String;II)Ljava/util/List;

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

    invoke-virtual/range {v0 .. v6}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeSearchMessages(Ljava/lang/String;JILjava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public sendMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeSendMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    return-void
.end method

.method public sendReadAckForConversation(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeSendReadAckForConversation(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public sendReadAckForGroupMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeSendReadAckForGroupMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;Ljava/lang/String;)V

    return-void
.end method

.method public sendReadAckForMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeSendReadAckForMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;)V

    return-void
.end method

.method public setEncryptProvider(Lcom/hyphenate/chat/adapter/EMAEncryptProviderInterface;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeSetEncryptProvider(Lcom/hyphenate/chat/adapter/EMAEncryptProviderInterface;)V

    return-void
.end method

.method public translateMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/message/EMAMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeTranslateMessage(Lcom/hyphenate/chat/adapter/message/EMAMessage;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/message/EMAMessage;

    move-result-object p1

    return-object p1
.end method

.method public updateParticipant(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeUpdateParticipant(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public uploadLog()V
    .locals 0

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAChatManager;->nativeUploadLog()V

    return-void
.end method
