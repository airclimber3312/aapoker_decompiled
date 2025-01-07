.class public Lcom/hyphenate/wrapper/EMPresenceManagerWrapper;
.super Lcom/hyphenate/wrapper/EMBaseWrapper;
.source "EMPresenceManagerWrapper.java"


# instance fields
.field public emWrapperPresenceListener:Lcom/hyphenate/wrapper/listeners/EMWrapperPresenceListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMBaseWrapper;-><init>()V

    .line 26
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMPresenceManagerWrapper;->registerEaseListener()V

    return-void
.end method

.method private fetchPresenceStatus(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "userIds"

    .line 109
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->stringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    .line 112
    :goto_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->presenceManager()Lcom/hyphenate/chat/EMPresenceManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/EMPresenceManagerWrapper$3;

    invoke-direct {v1, p0, p2}, Lcom/hyphenate/wrapper/EMPresenceManagerWrapper$3;-><init>(Lcom/hyphenate/wrapper/EMPresenceManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMPresenceManager;->fetchPresenceStatus(Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V

    return-object v2
.end method

.method private fetchSubscribedMembersWithPageNum(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "pageSize"

    .line 96
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "pageNum"

    .line 97
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 98
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->presenceManager()Lcom/hyphenate/chat/EMPresenceManager;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/wrapper/EMPresenceManagerWrapper$2;

    invoke-direct {v2, p0, p2}, Lcom/hyphenate/wrapper/EMPresenceManagerWrapper$2;-><init>(Lcom/hyphenate/wrapper/EMPresenceManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/hyphenate/chat/EMPresenceManager;->fetchSubscribedMembers(IILcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private publishPresenceWithDescription(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "desc"

    .line 48
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->presenceManager()Lcom/hyphenate/chat/EMPresenceManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v1, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMPresenceManager;->publishPresence(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private registerEaseListener()V
    .locals 2

    .line 132
    new-instance v0, Lcom/hyphenate/wrapper/listeners/EMWrapperPresenceListener;

    invoke-direct {v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperPresenceListener;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/wrapper/EMPresenceManagerWrapper;->emWrapperPresenceListener:Lcom/hyphenate/wrapper/listeners/EMWrapperPresenceListener;

    .line 133
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->presenceManager()Lcom/hyphenate/chat/EMPresenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/wrapper/EMPresenceManagerWrapper;->emWrapperPresenceListener:Lcom/hyphenate/wrapper/listeners/EMWrapperPresenceListener;

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMPresenceManager;->addListener(Lcom/hyphenate/EMPresenceListener;)V

    return-void
.end method

.method private subscribe(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "userIds"

    .line 55
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 57
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 58
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "expiry"

    .line 62
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 66
    :cond_1
    new-instance p1, Lcom/hyphenate/wrapper/EMPresenceManagerWrapper$1;

    invoke-direct {p1, p0, p2}, Lcom/hyphenate/wrapper/EMPresenceManagerWrapper$1;-><init>(Lcom/hyphenate/wrapper/EMPresenceManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 82
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->presenceManager()Lcom/hyphenate/chat/EMPresenceManager;

    move-result-object p2

    int-to-long v1, v3

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/hyphenate/chat/EMPresenceManager;->subscribePresences(Ljava/util/List;JLcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private unsubscribe(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "userIds"

    .line 88
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->stringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    .line 91
    :goto_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->presenceManager()Lcom/hyphenate/chat/EMPresenceManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v1, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMPresenceManager;->unsubscribePresences(Ljava/util/List;Lcom/hyphenate/EMCallBack;)V

    return-object v2
.end method


# virtual methods
.method public onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "publishPresenceWithDescription"

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMPresenceManagerWrapper;->publishPresenceWithDescription(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "presenceSubscribe"

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMPresenceManagerWrapper;->subscribe(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v0, "presenceUnsubscribe"

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMPresenceManagerWrapper;->unsubscribe(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v0, "fetchPresenceStatus"

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 38
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMPresenceManagerWrapper;->fetchPresenceStatus(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string v0, "fetchSubscribedMembersWithPageNum"

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMPresenceManagerWrapper;->fetchSubscribedMembersWithPageNum(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 42
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/hyphenate/wrapper/EMBaseWrapper;->onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
