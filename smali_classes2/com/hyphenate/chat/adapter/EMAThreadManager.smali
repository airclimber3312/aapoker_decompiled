.class public Lcom/hyphenate/chat/adapter/EMAThreadManager;
.super Lcom/hyphenate/chat/adapter/EMABase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/hyphenate/chat/adapter/EMAThreadManagerListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->nativeAddListener(Lcom/hyphenate/chat/adapter/EMAThreadManagerListener;)V

    return-void
.end method

.method public createThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAThreadInfo;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->nativeCreateThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAThreadInfo;

    move-result-object p1

    return-object p1
.end method

.method public destroyThread(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->nativeDestroyThread(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public fetchThreadMembers(Ljava/lang/String;ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->nativeFetchThreadMembers(Ljava/lang/String;ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    return-object p1
.end method

.method public getJoinedThreadsFromServer(ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/adapter/EMAThreadInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->nativeGetJoinedThreadsFromServer(ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    return-object p1
.end method

.method public getJoinedThreadsFromServer(Ljava/lang/String;ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/adapter/EMAThreadInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->nativeGetJoinedThreadsFromServer(Ljava/lang/String;ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    return-object p1
.end method

.method public getThreadFromServer(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAThreadInfo;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->nativeGetThreadFromServer(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAThreadInfo;

    move-result-object p1

    return-object p1
.end method

.method public getThreadsFromServer(Ljava/lang/String;ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/adapter/EMAThreadInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->nativeGetThreadsFromServer(Ljava/lang/String;ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    return-object p1
.end method

.method public getThreadsLatestMessage(Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->nativeGetThreadsLatestMessage(Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public joinThread(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAThreadInfo;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->nativeJoinThread(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAThreadInfo;

    move-result-object p1

    return-object p1
.end method

.method public leaveThread(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->nativeLeaveThread(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method native nativeAddListener(Lcom/hyphenate/chat/adapter/EMAThreadManagerListener;)V
.end method

.method native nativeChangeThreadName(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeCreateThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAThreadInfo;
.end method

.method native nativeDestroyThread(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeFetchThreadMembers(Ljava/lang/String;ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method native nativeGetJoinedThreadsFromServer(ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/adapter/EMAThreadInfo;",
            ">;"
        }
    .end annotation
.end method

.method native nativeGetJoinedThreadsFromServer(Ljava/lang/String;ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/adapter/EMAThreadInfo;",
            ">;"
        }
    .end annotation
.end method

.method native nativeGetThreadFromServer(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAThreadInfo;
.end method

.method native nativeGetThreadsFromServer(Ljava/lang/String;ILjava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/adapter/EMAThreadInfo;",
            ">;"
        }
    .end annotation
.end method

.method native nativeGetThreadsLatestMessage(Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/adapter/message/EMAMessage;",
            ">;"
        }
    .end annotation
.end method

.method native nativeJoinThread(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAThreadInfo;
.end method

.method native nativeLeaveThread(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeRemoveListener(Lcom/hyphenate/chat/adapter/EMAThreadManagerListener;)V
.end method

.method native nativeRemoveMemberFromThread(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
.end method

.method native nativeRemoveMembersFromThread(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")V"
        }
    .end annotation
.end method

.method public removeListener(Lcom/hyphenate/chat/adapter/EMAThreadManagerListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->nativeRemoveListener(Lcom/hyphenate/chat/adapter/EMAThreadManagerListener;)V

    return-void
.end method

.method public removeMemberFromThread(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->nativeRemoveMemberFromThread(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public removeMembersFromThread(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->nativeRemoveMembersFromThread(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public updateChatThreadName(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMAThreadManager;->nativeChangeThreadName(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method
