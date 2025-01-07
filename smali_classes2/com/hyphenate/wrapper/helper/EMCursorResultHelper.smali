.class public Lcom/hyphenate/wrapper/helper/EMCursorResultHelper;
.super Ljava/lang/Object;
.source "EMCursorResultHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toJson(Lcom/hyphenate/chat/EMCursorResult;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 23
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "cursor"

    .line 24
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMCursorResult;->getCursor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 26
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMCursorResult;->getData()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 27
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMCursorResult;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 28
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 29
    instance-of v3, v2, Lcom/hyphenate/chat/EMMessage;

    if-eqz v3, :cond_2

    .line 30
    move-object v3, v2

    check-cast v3, Lcom/hyphenate/chat/EMMessage;

    invoke-static {v3}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 33
    :cond_2
    instance-of v3, v2, Lcom/hyphenate/chat/EMGroup;

    if-eqz v3, :cond_3

    .line 34
    move-object v3, v2

    check-cast v3, Lcom/hyphenate/chat/EMGroup;

    invoke-static {v3}, Lcom/hyphenate/wrapper/helper/EMGroupHelper;->toJson(Lcom/hyphenate/chat/EMGroup;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 37
    :cond_3
    instance-of v3, v2, Lcom/hyphenate/chat/EMChatRoom;

    if-eqz v3, :cond_4

    .line 38
    move-object v3, v2

    check-cast v3, Lcom/hyphenate/chat/EMChatRoom;

    invoke-static {v3}, Lcom/hyphenate/wrapper/helper/EMChatRoomHelper;->toJson(Lcom/hyphenate/chat/EMChatRoom;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 41
    :cond_4
    instance-of v3, v2, Lcom/hyphenate/chat/EMGroupReadAck;

    if-eqz v3, :cond_5

    .line 42
    move-object v3, v2

    check-cast v3, Lcom/hyphenate/chat/EMGroupReadAck;

    invoke-static {v3}, Lcom/hyphenate/wrapper/helper/EMGroupAckHelper;->toJson(Lcom/hyphenate/chat/EMGroupReadAck;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 45
    :cond_5
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 46
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 49
    :cond_6
    instance-of v3, v2, Lcom/hyphenate/chat/EMGroupInfo;

    if-eqz v3, :cond_7

    .line 50
    move-object v3, v2

    check-cast v3, Lcom/hyphenate/chat/EMGroupInfo;

    invoke-static {v3}, Lcom/hyphenate/wrapper/helper/EMGroupInfoHelper;->toJson(Lcom/hyphenate/chat/EMGroupInfo;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 53
    :cond_7
    instance-of v3, v2, Lcom/hyphenate/chat/EMMessageReaction;

    if-eqz v3, :cond_8

    .line 54
    move-object v3, v2

    check-cast v3, Lcom/hyphenate/chat/EMMessageReaction;

    invoke-static {v3}, Lcom/hyphenate/wrapper/helper/EMMessageReactionHelper;->toJson(Lcom/hyphenate/chat/EMMessageReaction;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 57
    :cond_8
    instance-of v3, v2, Lcom/hyphenate/chat/EMChatThread;

    if-eqz v3, :cond_9

    .line 58
    move-object v3, v2

    check-cast v3, Lcom/hyphenate/chat/EMChatThread;

    invoke-static {v3}, Lcom/hyphenate/wrapper/helper/EMChatThreadHelper;->toJson(Lcom/hyphenate/chat/EMChatThread;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 61
    :cond_9
    instance-of v3, v2, Lcom/hyphenate/chat/EMConversation;

    if-eqz v3, :cond_a

    .line 62
    move-object v3, v2

    check-cast v3, Lcom/hyphenate/chat/EMConversation;

    invoke-static {v3}, Lcom/hyphenate/wrapper/helper/EMConversationHelper;->toJson(Lcom/hyphenate/chat/EMConversation;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 65
    :cond_a
    instance-of v3, v2, Lcom/hyphenate/chat/EMContact;

    if-eqz v3, :cond_1

    .line 66
    check-cast v2, Lcom/hyphenate/chat/EMContact;

    invoke-static {v2}, Lcom/hyphenate/wrapper/helper/EMContactHelper;->toJson(Lcom/hyphenate/chat/EMContact;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    :cond_b
    const-string p0, "list"

    .line 70
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
