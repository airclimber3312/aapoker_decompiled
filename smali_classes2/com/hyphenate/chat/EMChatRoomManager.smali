.class public Lcom/hyphenate/chat/EMChatRoomManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "EMChatRoomManager"


# instance fields
.field chatRoomListenerImpl:Lcom/hyphenate/chat/adapter/EMAChatRoomManagerListener;

.field private chatRoomListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hyphenate/EMChatRoomChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private chatRooms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMChatRoom;",
            ">;"
        }
    .end annotation
.end field

.field emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

.field mClient:Lcom/hyphenate/chat/EMClient;

.field private threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/EMClient;Lcom/hyphenate/chat/adapter/EMAChatRoomManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager;->chatRoomListeners:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager;->chatRooms:Ljava/util/List;

    new-instance v0, Lcom/hyphenate/chat/EMChatRoomManager$7;

    invoke-direct {v0, p0}, Lcom/hyphenate/chat/EMChatRoomManager$7;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager;->chatRoomListenerImpl:Lcom/hyphenate/chat/adapter/EMAChatRoomManagerListener;

    iput-object p2, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    invoke-virtual {p2, v0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->addListener(Lcom/hyphenate/chat/adapter/EMAChatRoomManagerListener;)V

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->mClient:Lcom/hyphenate/chat/EMClient;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/EMChatRoomManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hyphenate/chat/EMChatRoomManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/chat/EMChatRoomManager;->chatRoomListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatRoomManager;->removeChatroomAttributes(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager;->removeChatroomAttribute(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatRoomManager;->removeChatroomAttributesForced(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager;->removeChatroomAttributeForced(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMChatRoomManager;->parseJsonUpdate(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMChatRoomManager;->parseJsonRemove(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/hyphenate/chat/EMChatRoomManager;Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMChatRoomManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method static synthetic access$500(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Ljava/util/Map;ZLcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/EMChatRoomManager;->setChatroomAttributes(Ljava/lang/String;Ljava/util/Map;ZLcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Ljava/util/Map;Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatRoomManager;->setChatroomAttribute(Ljava/lang/String;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Ljava/util/Map;ZLcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/EMChatRoomManager;->setChatroomAttributesForced(Ljava/lang/String;Ljava/util/Map;ZLcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Ljava/util/Map;Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatRoomManager;->setChatroomAttributeForced(Ljava/lang/String;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager;->fetchChatroomAttributes(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private fetchChatroomAttributes(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
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

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->fetchChatroomAttributes(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMChatRoomManager;->parseJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
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

.method private handlePartialError(Lcom/hyphenate/chat/adapter/EMAError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hyphenate/exceptions/HyphenateException;

    invoke-direct {v0, p1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(Lcom/hyphenate/chat/adapter/EMAError;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private parseCodeJson(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "parseCodeJson"

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private parseJson(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    new-instance p1, Lcom/hyphenate/exceptions/HyphenateException;

    const/16 v0, 0x12f

    const-string v1, "Unknown server error"

    invoke-direct {p1, v0, v1}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private parseJsonRemove(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "result"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "successKeys"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method private parseJsonUpdate(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "result"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v4, "successKeys"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "properties"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method private removeChatroomAttribute(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
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

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->removeChatroomAttributes(Ljava/lang/String;Ljava/util/List;ZLcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->handlePartialError(Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMChatRoomManager;->parseCodeJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private removeChatroomAttributeForced(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
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

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2, v0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->removeChatroomAttributes(Ljava/lang/String;Ljava/util/List;ZLcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->handlePartialError(Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMChatRoomManager;->parseCodeJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private removeChatroomAttributes(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->removeChatroomAttributes(Ljava/lang/String;Ljava/util/List;ZLcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMChatRoomManager;->parseCodeJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private removeChatroomAttributesForced(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->removeChatroomAttributes(Ljava/lang/String;Ljava/util/List;ZLcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMChatRoomManager;->parseCodeJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private setChatroomAttribute(Ljava/lang/String;Ljava/util/Map;Z)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
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

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    invoke-direct {p0, p2, p3}, Lcom/hyphenate/chat/EMChatRoomManager;->toJsonString(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->setChatroomAttributes(Ljava/lang/String;Ljava/lang/String;ZLcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->handlePartialError(Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMChatRoomManager;->parseCodeJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private setChatroomAttributeForced(Ljava/lang/String;Ljava/util/Map;Z)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
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

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    invoke-direct {p0, p2, p3}, Lcom/hyphenate/chat/EMChatRoomManager;->toJsonString(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->setChatroomAttributes(Ljava/lang/String;Ljava/lang/String;ZLcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->handlePartialError(Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMChatRoomManager;->parseCodeJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private setChatroomAttributes(Ljava/lang/String;Ljava/util/Map;ZLcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    invoke-direct {p0, p2, p3}, Lcom/hyphenate/chat/EMChatRoomManager;->toJsonString(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->setChatroomAttributes(Ljava/lang/String;Ljava/lang/String;ZLcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMChatRoomManager;->parseCodeJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private setChatroomAttributesForced(Ljava/lang/String;Ljava/util/Map;ZLcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/hyphenate/chat/adapter/EMAError;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    invoke-direct {p0, p2, p3}, Lcom/hyphenate/chat/EMChatRoomManager;->toJsonString(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->setChatroomAttributes(Ljava/lang/String;Ljava/lang/String;ZLcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hyphenate/chat/EMChatRoomManager;->parseCodeJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private toJsonString(Ljava/util/Map;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "metaData"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "autoDelete"

    if-eqz p2, :cond_0

    :try_start_1
    const-string p2, "DELETE"

    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_0
    const-string p2, "NO_DELETE"

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public addChatRoomAdmin(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/EMChatRoom;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->addChatroomAdmin(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMChatRoom;

    invoke-direct {p2, p1}, Lcom/hyphenate/chat/EMChatRoom;-><init>(Lcom/hyphenate/chat/adapter/EMAChatRoom;)V

    return-object p2
.end method

.method public addChatRoomChangeListener(Lcom/hyphenate/EMChatRoomChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager;->chatRoomListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addToChatRoomWhiteList(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMChatRoom;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$23;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatRoomManager$23;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncAddChatRoomAdmin(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMChatRoom;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$16;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager$16;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncBlockChatroomMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMChatRoom;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$20;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager$20;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncChangeChatRoomSubject(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMChatRoom;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$10;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager$10;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncChangeChatroomDescription(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMChatRoom;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$11;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager$11;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncChangeOwner(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMChatRoom;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$15;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager$15;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncCheckIfInMuteList(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$26;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager$26;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncCreateChatRoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/hyphenate/EMValueCallBack;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMChatRoom;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v9, Lcom/hyphenate/chat/EMChatRoomManager$8;

    move-object v1, v9

    move-object v2, p0

    move-object/from16 v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/hyphenate/chat/EMChatRoomManager$8;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v0, v9}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncDestroyChatRoom(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager$9;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFetchChatRoomAllAttributesFromServer(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$37;

    invoke-direct {v1, p0, p2, p1}, Lcom/hyphenate/chat/EMChatRoomManager$37;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFetchChatRoomAnnouncement(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$31;

    invoke-direct {v1, p0, p2, p1}, Lcom/hyphenate/chat/EMChatRoomManager$31;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFetchChatRoomBlackList(Ljava/lang/String;IILcom/hyphenate/EMValueCallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v7, Lcom/hyphenate/chat/EMChatRoomManager$22;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMChatRoomManager$22;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;II)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFetchChatRoomFromServer(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMChatRoom;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager$6;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFetchChatRoomMembers(Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/EMValueCallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v7, Lcom/hyphenate/chat/EMChatRoomManager$12;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMChatRoomManager$12;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFetchChatRoomMuteList(Ljava/lang/String;IILcom/hyphenate/EMValueCallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v7, Lcom/hyphenate/chat/EMChatRoomManager$18;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMChatRoomManager$18;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;II)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFetchChatroomAttributesFromServer(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$36;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager$36;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFetchPublicChatRoomsFromServer(IILcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMPageResult<",
            "Lcom/hyphenate/chat/EMChatRoom;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatRoomManager$5;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;IILcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncFetchPublicChatRoomsFromServer(ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/EMChatRoom;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatRoomManager$4;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncMuteChatRoomMembers(Ljava/lang/String;Ljava/util/List;JLcom/hyphenate/EMValueCallBack;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMChatRoom;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v8, Lcom/hyphenate/chat/EMChatRoomManager$13;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/hyphenate/chat/EMChatRoomManager$13;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/util/List;J)V

    invoke-virtual {v0, v8}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncRemoveChatRoomAdmin(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMChatRoom;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$17;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager$17;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncRemoveChatRoomAttributeFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$39;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/hyphenate/chat/EMChatRoomManager$39;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Lcom/hyphenate/EMCallBack;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncRemoveChatRoomAttributeFromServerForced(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$41;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/hyphenate/chat/EMChatRoomManager$41;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Lcom/hyphenate/EMCallBack;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncRemoveChatRoomAttributesFromServer(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMResultCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/EMResultCallBack<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$38;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/hyphenate/chat/EMChatRoomManager$38;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/util/List;Lcom/hyphenate/EMResultCallBack;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncRemoveChatRoomAttributesFromServerForced(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMResultCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/EMResultCallBack<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$40;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/hyphenate/chat/EMChatRoomManager$40;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/util/List;Lcom/hyphenate/EMResultCallBack;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncRemoveChatRoomMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMChatRoom;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$19;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager$19;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncSetChatroomAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/hyphenate/EMCallBack;)V
    .locals 9

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v8, Lcom/hyphenate/chat/EMChatRoomManager$33;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p1

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/hyphenate/chat/EMChatRoomManager$33;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Lcom/hyphenate/EMCallBack;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v8}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncSetChatroomAttributeForced(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/hyphenate/EMCallBack;)V
    .locals 9

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v8, Lcom/hyphenate/chat/EMChatRoomManager$35;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p1

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/hyphenate/chat/EMChatRoomManager$35;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Lcom/hyphenate/EMCallBack;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v8}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncSetChatroomAttributes(Ljava/lang/String;Ljava/util/Map;ZLcom/hyphenate/EMResultCallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/hyphenate/EMResultCallBack<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v7, Lcom/hyphenate/chat/EMChatRoomManager$32;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMChatRoomManager$32;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/util/Map;Lcom/hyphenate/EMResultCallBack;Ljava/lang/String;Z)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncSetChatroomAttributesForced(Ljava/lang/String;Ljava/util/Map;ZLcom/hyphenate/EMResultCallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/hyphenate/EMResultCallBack<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v7, Lcom/hyphenate/chat/EMChatRoomManager$34;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/chat/EMChatRoomManager$34;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/util/Map;Lcom/hyphenate/EMResultCallBack;Ljava/lang/String;Z)V

    invoke-virtual {v0, v7}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncUnBlockChatRoomMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMChatRoom;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$21;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager$21;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncUnMuteChatRoomMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMChatRoom;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$14;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager$14;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Lcom/hyphenate/EMValueCallBack;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncUpdateChatRoomAnnouncement(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$30;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatRoomManager$30;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blockChatroomMembers(Ljava/lang/String;Ljava/util/List;)Lcom/hyphenate/chat/EMChatRoom;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hyphenate/chat/EMChatRoom;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->blockChatroomMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMChatRoom;

    invoke-direct {p2, p1}, Lcom/hyphenate/chat/EMChatRoom;-><init>(Lcom/hyphenate/chat/adapter/EMAChatRoom;)V

    return-object p2
.end method

.method public changeChatRoomSubject(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/EMChatRoom;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->changeChatroomSubject(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMChatRoom;

    invoke-direct {p2, p1}, Lcom/hyphenate/chat/EMChatRoom;-><init>(Lcom/hyphenate/chat/adapter/EMAChatRoom;)V

    return-object p2
.end method

.method public changeChatroomDescription(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/EMChatRoom;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->changeChatroomDescription(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMChatRoom;

    invoke-direct {p2, p1}, Lcom/hyphenate/chat/EMChatRoom;-><init>(Lcom/hyphenate/chat/adapter/EMAChatRoom;)V

    return-object p2
.end method

.method public changeOwner(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/EMChatRoom;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->transferChatroomOwner(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMChatRoom;

    invoke-direct {p2, p1}, Lcom/hyphenate/chat/EMChatRoom;-><init>(Lcom/hyphenate/chat/adapter/EMAChatRoom;)V

    return-object p2
.end method

.method public checkIfInChatRoomWhiteList(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$25;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager$25;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createChatRoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Lcom/hyphenate/chat/EMChatRoom;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hyphenate/chat/EMChatRoom;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v8, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v8}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    sget-object v1, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomStyle;->EMChatRoomStylePublicOpenJoin:Lcom/hyphenate/chat/EMChatRoom$EMChatRoomStyle;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomStyle;->ordinal()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->createChatRoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    invoke-direct {p0, v8}, Lcom/hyphenate/chat/EMChatRoomManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMChatRoom;

    invoke-direct {p2, p1}, Lcom/hyphenate/chat/EMChatRoom;-><init>(Lcom/hyphenate/chat/adapter/EMAChatRoom;)V

    return-object p2
.end method

.method public destroyChatRoom(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    invoke-virtual {v1, p1, v0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->destroyChatroom(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method

.method public fetchChatRoomAnnouncement(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    invoke-virtual {v1, p1, v0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->fetchChatRoomAnnouncement(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-object p1
.end method

.method public fetchChatRoomBlackList(Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
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

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->fetchChatRoomBlackList(Ljava/lang/String;IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-object p1
.end method

.method public fetchChatRoomFromServer(Ljava/lang/String;)Lcom/hyphenate/chat/EMChatRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->fetchChatRoomFromServer(Ljava/lang/String;Z)Lcom/hyphenate/chat/EMChatRoom;

    move-result-object p1

    return-object p1
.end method

.method public fetchChatRoomFromServer(Ljava/lang/String;Z)Lcom/hyphenate/chat/EMChatRoom;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    invoke-virtual {v1, p1, v0, p2}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->fetchChatroomSpecification(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;Z)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMChatRoom;

    invoke-direct {p2, p1}, Lcom/hyphenate/chat/EMChatRoom;-><init>(Lcom/hyphenate/chat/adapter/EMAChatRoom;)V

    return-object p2
.end method

.method public fetchChatRoomMembers(Ljava/lang/String;Ljava/lang/String;I)Lcom/hyphenate/chat/EMCursorResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
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

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->fetchChatroomMembers(Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-object p1
.end method

.method public fetchChatRoomMuteList(Ljava/lang/String;II)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
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

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->fetchChatRoomMuteList(Ljava/lang/String;IILcom/hyphenate/chat/adapter/EMAError;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-object p1
.end method

.method public fetchChatRoomWhiteList(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$27;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager$27;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fetchPublicChatRoomsFromServer(ILjava/lang/String;)Lcom/hyphenate/chat/EMCursorResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/hyphenate/chat/EMCursorResult<",
            "Lcom/hyphenate/chat/EMChatRoom;",
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

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    invoke-virtual {v1, p2, p1, v0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->fetchChatroomsWithCursor(Ljava/lang/String;ILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMCursorResult;

    invoke-direct {p2}, Lcom/hyphenate/chat/EMCursorResult;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMCursorResult;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/adapter/EMAChatRoom;

    new-instance v3, Lcom/hyphenate/chat/EMChatRoom;

    invoke-direct {v3, v2}, Lcom/hyphenate/chat/EMChatRoom;-><init>(Lcom/hyphenate/chat/adapter/EMAChatRoom;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMCursorResult;->getCursor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/hyphenate/chat/EMCursorResult;->setCursor(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/hyphenate/chat/EMCursorResult;->setData(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->chatRooms:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->chatRooms:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p2
.end method

.method public fetchPublicChatRoomsFromServer(II)Lcom/hyphenate/chat/EMPageResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/hyphenate/chat/EMPageResult<",
            "Lcom/hyphenate/chat/EMChatRoom;",
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

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->fetchChatroomsWithPage(IILcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/EMPageResult;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMPageResult;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMPageResult;->getPageCount()I

    move-result p1

    new-instance v0, Lcom/hyphenate/chat/EMPageResult;

    invoke-direct {v0}, Lcom/hyphenate/chat/EMPageResult;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/adapter/EMAChatRoom;

    new-instance v3, Lcom/hyphenate/chat/EMChatRoom;

    invoke-direct {v3, v2}, Lcom/hyphenate/chat/EMChatRoom;-><init>(Lcom/hyphenate/chat/adapter/EMAChatRoom;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMPageResult;->setPageCount(I)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMPageResult;->setData(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->chatRooms:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->chatRooms:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getAllChatRooms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMChatRoom;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager;->chatRooms:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChatRoom(Ljava/lang/String;)Lcom/hyphenate/chat/EMChatRoom;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->getChatroom(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/hyphenate/chat/EMChatRoom;

    invoke-direct {v0, p1}, Lcom/hyphenate/chat/EMChatRoom;-><init>(Lcom/hyphenate/chat/adapter/EMAChatRoom;)V

    return-object v0
.end method

.method public joinChatRoom(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMChatRoom;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager$1;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public leaveChatRoom(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$2;

    invoke-direct {v1, p0, p1}, Lcom/hyphenate/chat/EMChatRoomManager$2;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public leaveChatRoom(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V
    .locals 3

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->getOptions()Lcom/hyphenate/chat/EMOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/hyphenate/chat/EMChatRoomManager$3;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/hyphenate/chat/EMChatRoomManager$3;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Lcom/hyphenate/EMCallBack;Lcom/hyphenate/chat/EMOptions;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public muteAllMembers(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMChatRoom;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$28;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager$28;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public muteChatRoomMembers(Ljava/lang/String;Ljava/util/List;J)Lcom/hyphenate/chat/EMChatRoom;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)",
            "Lcom/hyphenate/chat/EMChatRoom;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v6, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v6}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->muteChatroomMembers(Ljava/lang/String;Ljava/util/List;JLcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    invoke-direct {p0, v6}, Lcom/hyphenate/chat/EMChatRoomManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMChatRoom;

    invoke-direct {p2, p1}, Lcom/hyphenate/chat/EMChatRoom;-><init>(Lcom/hyphenate/chat/adapter/EMAChatRoom;)V

    return-object p2
.end method

.method onLogout()V
    .locals 0

    return-void
.end method

.method public removeChatRoomAdmin(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/EMChatRoom;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->removeChatRoomAdmin(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMChatRoom;

    invoke-direct {p2, p1}, Lcom/hyphenate/chat/EMChatRoom;-><init>(Lcom/hyphenate/chat/adapter/EMAChatRoom;)V

    return-object p2
.end method

.method public removeChatRoomChangeListener(Lcom/hyphenate/EMChatRoomChangeListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/EMChatRoomManager;->removeChatRoomListener(Lcom/hyphenate/EMChatRoomChangeListener;)V

    return-void
.end method

.method public removeChatRoomListener(Lcom/hyphenate/EMChatRoomChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMChatRoomManager;->chatRoomListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeChatRoomMembers(Ljava/lang/String;Ljava/util/List;)Lcom/hyphenate/chat/EMChatRoom;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hyphenate/chat/EMChatRoom;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->removeChatRoomMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMChatRoom;

    invoke-direct {p2, p1}, Lcom/hyphenate/chat/EMChatRoom;-><init>(Lcom/hyphenate/chat/adapter/EMAChatRoom;)V

    return-object p2
.end method

.method public removeFromChatRoomWhiteList(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMChatRoom;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$24;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatRoomManager$24;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unMuteChatRoomMembers(Ljava/lang/String;Ljava/util/List;)Lcom/hyphenate/chat/EMChatRoom;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hyphenate/chat/EMChatRoom;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->unmuteChatRoomMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMChatRoom;

    invoke-direct {p2, p1}, Lcom/hyphenate/chat/EMChatRoom;-><init>(Lcom/hyphenate/chat/adapter/EMAChatRoom;)V

    return-object p2
.end method

.method public unblockChatRoomMembers(Ljava/lang/String;Ljava/util/List;)Lcom/hyphenate/chat/EMChatRoom;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hyphenate/chat/EMChatRoom;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->unblockChatRoomMembers(Ljava/lang/String;Ljava/util/List;Lcom/hyphenate/chat/adapter/EMAError;)Lcom/hyphenate/chat/adapter/EMAChatRoom;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    new-instance p2, Lcom/hyphenate/chat/EMChatRoom;

    invoke-direct {p2, p1}, Lcom/hyphenate/chat/EMChatRoom;-><init>(Lcom/hyphenate/chat/adapter/EMAChatRoom;)V

    return-object p2
.end method

.method public unmuteAllMembers(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyphenate/EMValueCallBack<",
            "Lcom/hyphenate/chat/EMChatRoom;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMChatRoomManager$29;

    invoke-direct {v1, p0, p1, p2}, Lcom/hyphenate/chat/EMChatRoomManager$29;-><init>(Lcom/hyphenate/chat/EMChatRoomManager;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateChatRoomAnnouncement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMChatRoomManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAChatRoomManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/hyphenate/chat/adapter/EMAChatRoomManager;->updateChatRoomAnnouncement(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)V

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMChatRoomManager;->handleError(Lcom/hyphenate/chat/adapter/EMAError;)V

    return-void
.end method
