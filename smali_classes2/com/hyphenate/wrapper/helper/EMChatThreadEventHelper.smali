.class public Lcom/hyphenate/wrapper/helper/EMChatThreadEventHelper;
.super Ljava/lang/Object;
.source "EMChatThreadEventHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toJson(Lcom/hyphenate/chat/EMChatThreadEvent;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 12
    sget-object v1, Lcom/hyphenate/wrapper/helper/EMChatThreadEventHelper$1;->$SwitchMap$com$hyphenate$chat$EMChatThreadEvent$TYPE:[I

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatThreadEvent;->getType()Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMChatThreadEvent$TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const-string v3, "type"

    if-eq v1, v2, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_0
    const-string v1, "from"

    .line 29
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatThreadEvent;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatThreadEvent;->getChatThread()Lcom/hyphenate/chat/EMChatThread;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 31
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMChatThreadEvent;->getChatThread()Lcom/hyphenate/chat/EMChatThread;

    move-result-object p0

    invoke-static {p0}, Lcom/hyphenate/wrapper/helper/EMChatThreadHelper;->toJson(Lcom/hyphenate/chat/EMChatThread;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "thread"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    return-object v0
.end method
