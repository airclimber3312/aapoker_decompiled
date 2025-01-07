.class public Lcom/hyphenate/wrapper/EMMessageManager;
.super Lcom/hyphenate/wrapper/EMBaseWrapper;
.source "EMMessageManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMBaseWrapper;-><init>()V

    return-void
.end method

.method private getAckCount(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string p2, "msgId"

    .line 53
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Lcom/hyphenate/wrapper/EMMessageManager;->getMessageWithId(Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->groupAckCount()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getChatThread(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string p2, "msgId"

    .line 59
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Lcom/hyphenate/wrapper/EMMessageManager;->getMessageWithId(Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getChatThread()Lcom/hyphenate/chat/EMChatThread;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMChatThreadHelper;->toJson(Lcom/hyphenate/chat/EMChatThread;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getMessageWithId(Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;
    .locals 1

    .line 65
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMChatManager;->getMessage(Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;

    move-result-object p1

    return-object p1
.end method

.method private getPinnedInfo(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string p2, "msgId"

    .line 69
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/hyphenate/chat/EMChatManager;->getMessage(Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->pinnedInfo()Lcom/hyphenate/chat/EMMessagePinInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMPinnedInfoHelper;->toJson(Lcom/hyphenate/chat/EMMessagePinInfo;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private reactionList(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string p2, "msgId"

    .line 39
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Lcom/hyphenate/wrapper/EMMessageManager;->getMessageWithId(Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;

    move-result-object p1

    .line 41
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getMessageReaction()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 44
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 45
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/EMMessageReaction;

    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageReactionHelper;->toJson(Lcom/hyphenate/chat/EMMessageReaction;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {p2}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

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

    const-string v0, "getReactionList"

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMMessageManager;->reactionList(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "groupAckCount"

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMMessageManager;->getAckCount(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v0, "chatThread"

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMMessageManager;->getChatThread(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v0, "pinnedInfo"

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMMessageManager;->getPinnedInfo(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 33
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/hyphenate/wrapper/EMBaseWrapper;->onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
