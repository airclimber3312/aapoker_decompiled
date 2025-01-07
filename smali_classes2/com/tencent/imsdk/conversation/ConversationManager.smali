.class public Lcom/tencent/imsdk/conversation/ConversationManager;
.super Ljava/lang/Object;
.source "ConversationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/imsdk/conversation/ConversationManager$ConversationManagerHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConversationManager"


# instance fields
.field private mConversationListener:Lcom/tencent/imsdk/conversation/ConversationListener;

.field private mInternalConversationListener:Lcom/tencent/imsdk/conversation/ConversationListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/imsdk/conversation/ConversationManager;)Lcom/tencent/imsdk/conversation/ConversationListener;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/tencent/imsdk/conversation/ConversationManager;->mConversationListener:Lcom/tencent/imsdk/conversation/ConversationListener;

    return-object p0
.end method

.method public static getInstance()Lcom/tencent/imsdk/conversation/ConversationManager;
    .locals 1

    .line 19
    invoke-static {}, Lcom/tencent/imsdk/conversation/ConversationManager$ConversationManagerHolder;->access$000()Lcom/tencent/imsdk/conversation/ConversationManager;

    move-result-object v0

    return-object v0
.end method

.method private initInternalConversationListener()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/ConversationManager;->mInternalConversationListener:Lcom/tencent/imsdk/conversation/ConversationListener;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/tencent/imsdk/conversation/ConversationManager$1;

    invoke-direct {v0, p0}, Lcom/tencent/imsdk/conversation/ConversationManager$1;-><init>(Lcom/tencent/imsdk/conversation/ConversationManager;)V

    iput-object v0, p0, Lcom/tencent/imsdk/conversation/ConversationManager;->mInternalConversationListener:Lcom/tencent/imsdk/conversation/ConversationListener;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/conversation/ConversationManager;->mInternalConversationListener:Lcom/tencent/imsdk/conversation/ConversationListener;

    invoke-virtual {p0, v0}, Lcom/tencent/imsdk/conversation/ConversationManager;->nativeSetConversationListener(Lcom/tencent/imsdk/conversation/ConversationListener;)V

    return-void
.end method


# virtual methods
.method public addConversationsToGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/conversation/ConversationKey;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation

    .line 333
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 335
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 339
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/conversation/ConversationManager;->nativeAddConversationsToGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public clearUnreadMessage(ZZLcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 263
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 265
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 269
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/conversation/ConversationManager;->nativeClearUnreadMessage(ZZLcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public createConversationGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/conversation/ConversationKey;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation

    .line 293
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 295
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 299
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/conversation/ConversationManager;->nativeCreateConversationGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public deleteConversation(Lcom/tencent/imsdk/conversation/ConversationKey;ZLcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 213
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 215
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 219
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/conversation/ConversationManager;->nativeDeleteConversation(Lcom/tencent/imsdk/conversation/ConversationKey;ZLcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public deleteConversationGroup(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 313
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 315
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 319
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/conversation/ConversationManager;->nativeDeleteConversationGroup(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public deleteConversationsFromGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/conversation/ConversationKey;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation

    .line 343
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 345
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 349
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/conversation/ConversationManager;->nativeDeleteConversationsFromGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getConversationGroupList(Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 2

    .line 303
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0x177d

    const-string v1, "sdk not init"

    .line 305
    invoke-virtual {p1, v0, v1}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 309
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/conversation/ConversationManager;->nativeGetConversationGroupList(Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getConversationInfo(Lcom/tencent/imsdk/conversation/ConversationKey;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/conversation/ConversationKey;",
            "Lcom/tencent/imsdk/common/IMCallback<",
            "Lcom/tencent/imsdk/conversation/Conversation;",
            ">;)V"
        }
    .end annotation

    .line 203
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 205
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 209
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/conversation/ConversationManager;->nativeGetConversationInfo(Lcom/tencent/imsdk/conversation/ConversationKey;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getConversationList(JILcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/tencent/imsdk/common/IMCallback<",
            "Lcom/tencent/imsdk/conversation/ConversationResult;",
            ">;)V"
        }
    .end annotation

    .line 173
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 175
    invoke-virtual {p4, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 179
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/imsdk/conversation/ConversationManager;->nativeGetConversationList(JILcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getConversationList(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/conversation/ConversationKey;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/conversation/Conversation;",
            ">;>;)V"
        }
    .end annotation

    .line 193
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 195
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 199
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/conversation/ConversationManager;->nativeGetConversations(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getConversationListByFilter(Lcom/tencent/imsdk/conversation/ConversationListFilter;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/conversation/ConversationListFilter;",
            "Lcom/tencent/imsdk/common/IMCallback<",
            "Lcom/tencent/imsdk/conversation/ConversationResult;",
            ">;)V"
        }
    .end annotation

    .line 183
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 185
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/conversation/ConversationManager;->nativeGetConversationListByFilter(Lcom/tencent/imsdk/conversation/ConversationListFilter;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public getTotalUnreadMessageCount(Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/common/IMCallback<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 243
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0x177d

    const-string v1, "sdk not init"

    .line 245
    invoke-virtual {p1, v0, v1}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 249
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/conversation/ConversationManager;->nativeGetTotalUnreadMessageCount(Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public init()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/tencent/imsdk/conversation/ConversationManager;->initInternalConversationListener()V

    return-void
.end method

.method public markConversation(Ljava/util/List;JZLcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/conversation/ConversationKey;",
            ">;JZ",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation

    .line 273
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p5, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 275
    invoke-virtual {p5, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 279
    :cond_1
    invoke-virtual/range {p0 .. p5}, Lcom/tencent/imsdk/conversation/ConversationManager;->nativeMarkConversation(Ljava/util/List;JZLcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method protected native nativeAddConversationsToGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/conversation/ConversationKey;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation
.end method

.method protected native nativeClearUnreadMessage(ZZLcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeCreateConversationGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/conversation/ConversationKey;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation
.end method

.method protected native nativeDeleteConversation(Lcom/tencent/imsdk/conversation/ConversationKey;ZLcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeDeleteConversationGroup(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeDeleteConversationsFromGroup(Ljava/lang/String;Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/conversation/ConversationKey;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation
.end method

.method protected native nativeGetConversationGroupList(Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeGetConversationInfo(Lcom/tencent/imsdk/conversation/ConversationKey;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeGetConversationList(JILcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeGetConversationListByFilter(Lcom/tencent/imsdk/conversation/ConversationListFilter;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeGetConversations(Ljava/util/List;Lcom/tencent/imsdk/common/IMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/conversation/ConversationKey;",
            ">;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation
.end method

.method protected native nativeGetTotalUnreadMessageCount(Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeMarkConversation(Ljava/util/List;JZLcom/tencent/imsdk/common/IMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/conversation/ConversationKey;",
            ">;JZ",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation
.end method

.method protected native nativePinConversation(Lcom/tencent/imsdk/conversation/ConversationKey;ZLcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeRenameConversationGroup(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeSetConversationCustomData(Ljava/util/List;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/conversation/ConversationKey;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation
.end method

.method protected native nativeSetConversationDraft(Lcom/tencent/imsdk/conversation/ConversationKey;Lcom/tencent/imsdk/message/DraftMessage;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeSetConversationListener(Lcom/tencent/imsdk/conversation/ConversationListener;)V
.end method

.method protected native nativeSetCosSaveRegionForConversation(Lcom/tencent/imsdk/conversation/ConversationKey;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method public pinConversation(Lcom/tencent/imsdk/conversation/ConversationKey;ZLcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 233
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 235
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 239
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/conversation/ConversationManager;->nativePinConversation(Lcom/tencent/imsdk/conversation/ConversationKey;ZLcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public renameConversationGroup(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 323
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 325
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 329
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/conversation/ConversationManager;->nativeRenameConversationGroup(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public setConversationCustomData(Ljava/util/List;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/conversation/ConversationKey;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/common/IMCallback;",
            ")V"
        }
    .end annotation

    .line 283
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 285
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 289
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/conversation/ConversationManager;->nativeSetConversationCustomData(Ljava/util/List;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public setConversationDraft(Lcom/tencent/imsdk/conversation/ConversationKey;Lcom/tencent/imsdk/message/DraftMessage;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 223
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 225
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 229
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/conversation/ConversationManager;->nativeSetConversationDraft(Lcom/tencent/imsdk/conversation/ConversationKey;Lcom/tencent/imsdk/message/DraftMessage;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public setConversationListener(Lcom/tencent/imsdk/conversation/ConversationListener;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/tencent/imsdk/conversation/ConversationManager;->mConversationListener:Lcom/tencent/imsdk/conversation/ConversationListener;

    return-void
.end method

.method public setCosSaveRegionForConversation(Lcom/tencent/imsdk/conversation/ConversationKey;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 253
    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager;->getInstance()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/manager/BaseManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 255
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 259
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/conversation/ConversationManager;->nativeSetCosSaveRegionForConversation(Lcom/tencent/imsdk/conversation/ConversationKey;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method
