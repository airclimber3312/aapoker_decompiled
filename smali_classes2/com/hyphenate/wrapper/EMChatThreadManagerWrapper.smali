.class public Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;
.super Lcom/hyphenate/wrapper/EMBaseWrapper;
.source "EMChatThreadManagerWrapper.java"


# instance fields
.field public emWrapperThreadListener:Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMBaseWrapper;-><init>()V

    .line 33
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;->registerEaseListener()V

    return-void
.end method

.method private createChatThread(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "msgId"

    .line 227
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "threadName"

    .line 228
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "groupId"

    .line 229
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->chatThreadManager()Lcom/hyphenate/chat/EMChatThreadManager;

    move-result-object v2

    new-instance v3, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper$7;

    invoke-direct {v3, p0, p2}, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper$7;-><init>(Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/hyphenate/chat/EMChatThreadManager;->createChatThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private destroyChatThread(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "threadId"

    .line 271
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatThreadManager()Lcom/hyphenate/chat/EMChatThreadManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v1, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMChatThreadManager;->destroyChatThread(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private fetchChatThreadDetail(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "threadId"

    .line 67
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatThreadManager()Lcom/hyphenate/chat/EMChatThreadManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper$1;

    invoke-direct {v1, p0, p2}, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper$1;-><init>(Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMChatThreadManager;->getChatThreadFromServer(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private fetchChatThreadMember(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "pageSize"

    .line 165
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "cursor"

    .line 167
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 168
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v2, "threadId"

    .line 170
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->chatThreadManager()Lcom/hyphenate/chat/EMChatThreadManager;

    move-result-object v2

    new-instance v4, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper$5;

    invoke-direct {v4, p0, p2}, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper$5;-><init>(Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v2, p1, v0, v1, v4}, Lcom/hyphenate/chat/EMChatThreadManager;->getChatThreadMembers(Ljava/lang/String;ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    return-object v3
.end method

.method private fetchChatThreadsWithParentId(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "joined"

    .line 110
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;->fetchJoinedChatThreadsWithParentId(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "pageSize"

    .line 118
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "cursor"

    .line 120
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 121
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    const-string v2, "groupId"

    .line 123
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->chatThreadManager()Lcom/hyphenate/chat/EMChatThreadManager;

    move-result-object v2

    new-instance v4, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper$3;

    invoke-direct {v4, p0, p2}, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper$3;-><init>(Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v2, p1, v0, v1, v4}, Lcom/hyphenate/chat/EMChatThreadManager;->getChatThreadsFromServer(Ljava/lang/String;ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    return-object v3
.end method

.method private fetchJoinedChatThreads(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "pageSize"

    .line 85
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "cursor"

    .line 87
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v3

    .line 91
    :goto_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->chatThreadManager()Lcom/hyphenate/chat/EMChatThreadManager;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper$2;

    invoke-direct {v2, p0, p2}, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper$2;-><init>(Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/hyphenate/chat/EMChatThreadManager;->getJoinedChatThreadsFromServer(ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    return-object v3
.end method

.method private fetchJoinedChatThreadsWithParentId(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "pageSize"

    .line 141
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "cursor"

    .line 143
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 144
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v2, "groupId"

    .line 146
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->chatThreadManager()Lcom/hyphenate/chat/EMChatThreadManager;

    move-result-object v2

    new-instance v4, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper$4;

    invoke-direct {v4, p0, p2}, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper$4;-><init>(Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v2, p1, v0, v1, v4}, Lcom/hyphenate/chat/EMChatThreadManager;->getJoinedChatThreadsFromServer(Ljava/lang/String;ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    return-object v3
.end method

.method private fetchLastMessageWithChatThreads(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "threadIds"

    .line 189
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 190
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 191
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :cond_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->chatThreadManager()Lcom/hyphenate/chat/EMChatThreadManager;

    move-result-object p1

    new-instance v1, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper$6;

    invoke-direct {v1, p0, p2}, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper$6;-><init>(Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p1, v0, v1}, Lcom/hyphenate/chat/EMChatThreadManager;->getChatThreadLatestMessage(Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private joinChatThread(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "threadId"

    .line 247
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 248
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatThreadManager()Lcom/hyphenate/chat/EMChatThreadManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper$8;

    invoke-direct {v1, p0, p2}, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper$8;-><init>(Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMChatThreadManager;->joinChatThread(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private leaveChatThread(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "threadId"

    .line 265
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 266
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatThreadManager()Lcom/hyphenate/chat/EMChatThreadManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v1, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMChatThreadManager;->leaveChatThread(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private registerEaseListener()V
    .locals 2

    .line 277
    new-instance v0, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener;

    invoke-direct {v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;->emWrapperThreadListener:Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener;

    .line 278
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatThreadManager()Lcom/hyphenate/chat/EMChatThreadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;->emWrapperThreadListener:Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener;

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMChatThreadManager;->addChatThreadChangeListener(Lcom/hyphenate/EMChatThreadChangeListener;)V

    return-void
.end method

.method private removeMemberFromChatThread(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "threadId"

    .line 213
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userId"

    .line 214
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 215
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->chatThreadManager()Lcom/hyphenate/chat/EMChatThreadManager;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v2, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/hyphenate/chat/EMChatThreadManager;->removeMemberFromChatThread(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private updateChatThreadSubject(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "threadId"

    .line 220
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    .line 221
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 222
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->chatThreadManager()Lcom/hyphenate/chat/EMChatThreadManager;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v2, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/hyphenate/chat/EMChatThreadManager;->updateChatThreadName(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "fetchChatThreadDetail"

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;->fetchChatThreadDetail(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    const-string v0, "fetchJoinedChatThreads"

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;->fetchJoinedChatThreads(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1
    const-string v0, "fetchChatThreadsWithParentId"

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;->fetchChatThreadsWithParentId(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_2
    const-string v0, "fetchChatThreadMember"

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;->fetchChatThreadMember(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string v0, "fetchLastMessageWithChatThreads"

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;->fetchLastMessageWithChatThreads(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string v0, "removeMemberFromChatThread"

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 49
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;->removeMemberFromChatThread(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    const-string v0, "updateChatThreadSubject"

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 51
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;->updateChatThreadSubject(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    const-string v0, "createChatThread"

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 53
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;->createChatThread(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_7
    const-string v0, "joinChatThread"

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 55
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;->joinChatThread(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_8
    const-string v0, "leaveChatThread"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 57
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;->leaveChatThread(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_9
    const-string v0, "destroyChatThread"

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 59
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;->destroyChatThread(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 61
    :cond_a
    invoke-super {p0, p1, p2, p3}, Lcom/hyphenate/wrapper/EMBaseWrapper;->onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
