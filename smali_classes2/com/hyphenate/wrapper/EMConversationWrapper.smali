.class public Lcom/hyphenate/wrapper/EMConversationWrapper;
.super Lcom/hyphenate/wrapper/EMBaseWrapper;
.source "EMConversationWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMBaseWrapper;-><init>()V

    return-void
.end method

.method private appendMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 152
    invoke-direct {p0, p1}, Lcom/hyphenate/wrapper/EMConversationWrapper;->conversationWithParam(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMConversation;

    move-result-object p2

    const-string v0, "msg"

    .line 153
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 154
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->fromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMMessage;

    move-result-object p1

    .line 155
    invoke-virtual {p2, p1}, Lcom/hyphenate/chat/EMConversation;->appendMessage(Lcom/hyphenate/chat/EMMessage;)Z

    move-result p1

    .line 156
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private clearAllMessages(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1}, Lcom/hyphenate/wrapper/EMConversationWrapper;->conversationWithParam(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMConversation;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMConversation;->clearAllMessages()V

    const/4 p1, 0x1

    .line 140
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private conversationWithParam(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMConversation;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "convId"

    .line 309
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "convType"

    .line 310
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMConversationHelper;->typeFromInt(I)Lcom/hyphenate/chat/EMConversation$EMConversationType;

    move-result-object p1

    .line 311
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p1, v2}, Lcom/hyphenate/chat/EMChatManager;->getConversation(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;Z)Lcom/hyphenate/chat/EMConversation;

    move-result-object p1

    return-object p1
.end method

.method private getLatestMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1}, Lcom/hyphenate/wrapper/EMConversationWrapper;->conversationWithParam(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMConversation;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMConversation;->getLastMessage()Lcom/hyphenate/chat/EMMessage;

    move-result-object p1

    .line 128
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getLatestMessageFromOthers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1}, Lcom/hyphenate/wrapper/EMConversationWrapper;->conversationWithParam(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMConversation;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMConversation;->getLatestMessageFromOthers()Lcom/hyphenate/chat/EMMessage;

    move-result-object p1

    .line 134
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUnreadMsgCount(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1}, Lcom/hyphenate/wrapper/EMConversationWrapper;->conversationWithParam(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMConversation;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMConversation;->getUnreadMsgCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private insertMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 144
    invoke-direct {p0, p1}, Lcom/hyphenate/wrapper/EMConversationWrapper;->conversationWithParam(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMConversation;

    move-result-object p2

    const-string v0, "msg"

    .line 145
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 146
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->fromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMMessage;

    move-result-object p1

    .line 147
    invoke-virtual {p2, p1}, Lcom/hyphenate/chat/EMConversation;->insertMessage(Lcom/hyphenate/chat/EMMessage;)Z

    move-result p1

    .line 148
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadMsgWithId(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string p2, "msgId"

    .line 168
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/hyphenate/chat/EMChatManager;->getMessage(Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;

    move-result-object p1

    .line 171
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadMsgWithKeywords(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 190
    invoke-direct {p0, p1}, Lcom/hyphenate/wrapper/EMConversationWrapper;->conversationWithParam(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMConversation;

    move-result-object v0

    const-string v1, "keywords"

    .line 191
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sender"

    .line 193
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    .line 194
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, v7

    :goto_0
    const-string v2, "count"

    .line 197
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v2, "timestamp"

    .line 198
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v6, "direction"

    .line 199
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->UP:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->DOWN:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    :goto_1
    move-object v6, p1

    .line 200
    invoke-virtual/range {v0 .. v6}, Lcom/hyphenate/chat/EMConversation;->searchMsgFromDB(Ljava/lang/String;JILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMSearchDirection;)Ljava/util/List;

    move-result-object p1

    .line 201
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 202
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/EMMessage;

    .line 203
    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 206
    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/hyphenate/wrapper/EMConversationWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    return-object v7
.end method

.method private loadMsgWithMsgType(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 211
    invoke-direct {p0, p1}, Lcom/hyphenate/wrapper/EMConversationWrapper;->conversationWithParam(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMConversation;

    move-result-object v0

    const-string v1, "timestamp"

    .line 212
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v1, "sender"

    .line 214
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    .line 215
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v7

    :goto_0
    const-string v1, "count"

    .line 217
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v1, "direction"

    .line 218
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->UP:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->DOWN:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    :goto_1
    move-object v6, v1

    const-string v1, "bodyType"

    .line 219
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 220
    sget-object v1, Lcom/hyphenate/chat/EMMessage$Type;->TXT:Lcom/hyphenate/chat/EMMessage$Type;

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    .line 230
    :pswitch_0
    sget-object p1, Lcom/hyphenate/chat/EMMessage$Type;->COMBINE:Lcom/hyphenate/chat/EMMessage$Type;

    goto :goto_2

    .line 229
    :pswitch_1
    sget-object p1, Lcom/hyphenate/chat/EMMessage$Type;->CUSTOM:Lcom/hyphenate/chat/EMMessage$Type;

    goto :goto_2

    .line 228
    :pswitch_2
    sget-object p1, Lcom/hyphenate/chat/EMMessage$Type;->CMD:Lcom/hyphenate/chat/EMMessage$Type;

    goto :goto_2

    .line 227
    :pswitch_3
    sget-object p1, Lcom/hyphenate/chat/EMMessage$Type;->FILE:Lcom/hyphenate/chat/EMMessage$Type;

    goto :goto_2

    .line 226
    :pswitch_4
    sget-object p1, Lcom/hyphenate/chat/EMMessage$Type;->VOICE:Lcom/hyphenate/chat/EMMessage$Type;

    goto :goto_2

    .line 225
    :pswitch_5
    sget-object p1, Lcom/hyphenate/chat/EMMessage$Type;->LOCATION:Lcom/hyphenate/chat/EMMessage$Type;

    goto :goto_2

    .line 224
    :pswitch_6
    sget-object p1, Lcom/hyphenate/chat/EMMessage$Type;->VIDEO:Lcom/hyphenate/chat/EMMessage$Type;

    goto :goto_2

    .line 223
    :pswitch_7
    sget-object p1, Lcom/hyphenate/chat/EMMessage$Type;->IMAGE:Lcom/hyphenate/chat/EMMessage$Type;

    goto :goto_2

    .line 222
    :pswitch_8
    sget-object p1, Lcom/hyphenate/chat/EMMessage$Type;->TXT:Lcom/hyphenate/chat/EMMessage$Type;

    :goto_2
    move-object v1, p1

    .line 235
    :goto_3
    invoke-virtual/range {v0 .. v6}, Lcom/hyphenate/chat/EMConversation;->searchMsgFromDB(Lcom/hyphenate/chat/EMMessage$Type;JILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMSearchDirection;)Ljava/util/List;

    move-result-object p1

    .line 236
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 237
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/EMMessage;

    .line 238
    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .line 240
    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/hyphenate/wrapper/EMConversationWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    return-object v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private loadMsgWithScope(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 259
    invoke-direct {p0, p1}, Lcom/hyphenate/wrapper/EMConversationWrapper;->conversationWithParam(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMConversation;

    move-result-object v0

    const-string v1, "keywords"

    .line 260
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "from"

    .line 261
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "count"

    .line 262
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v2, "timestamp"

    .line 263
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v6, "direction"

    .line 264
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->UP:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    goto :goto_0

    :cond_0
    sget-object v6, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->DOWN:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    :goto_0
    const-string v7, "scope"

    .line 265
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/EMMode;->searchScopeFromInt(I)Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;

    move-result-object v7

    .line 267
    invoke-virtual/range {v0 .. v7}, Lcom/hyphenate/chat/EMConversation;->searchMsgFromDB(Ljava/lang/String;JILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMSearchDirection;Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;)Ljava/util/List;

    move-result-object p1

    .line 268
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 269
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/EMMessage;

    .line 270
    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 272
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/hyphenate/wrapper/EMConversationWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private loadMsgWithStartId(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 175
    invoke-direct {p0, p1}, Lcom/hyphenate/wrapper/EMConversationWrapper;->conversationWithParam(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMConversation;

    move-result-object v0

    const-string v1, "startMessageId"

    .line 176
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "count"

    .line 177
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "direction"

    .line 178
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->UP:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->DOWN:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    .line 179
    :goto_0
    invoke-virtual {v0, v1, v2, p1}, Lcom/hyphenate/chat/EMConversation;->loadMoreMsgFromDB(Ljava/lang/String;ILcom/hyphenate/chat/EMConversation$EMSearchDirection;)Ljava/util/List;

    move-result-object p1

    .line 180
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 181
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/EMMessage;

    .line 182
    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 185
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/hyphenate/wrapper/EMConversationWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private loadMsgWithTime(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 245
    invoke-direct {p0, p1}, Lcom/hyphenate/wrapper/EMConversationWrapper;->conversationWithParam(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMConversation;

    move-result-object v0

    const-string v1, "startTime"

    .line 246
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "endTime"

    .line 247
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "count"

    .line 248
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 249
    invoke-virtual/range {v0 .. v5}, Lcom/hyphenate/chat/EMConversation;->searchMsgFromDB(JJI)Ljava/util/List;

    move-result-object p1

    .line 250
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 251
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/EMMessage;

    .line 252
    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/hyphenate/wrapper/EMConversationWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private markAllMessagesAsRead(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1}, Lcom/hyphenate/wrapper/EMConversationWrapper;->conversationWithParam(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMConversation;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMConversation;->markAllMessagesAsRead()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private markMessageAsRead(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1}, Lcom/hyphenate/wrapper/EMConversationWrapper;->conversationWithParam(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMConversation;

    move-result-object p2

    const-string v0, "msgId"

    .line 102
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-virtual {p2, p1}, Lcom/hyphenate/chat/EMConversation;->markMessageAsRead(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private marks(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 299
    invoke-direct {p0, p1}, Lcom/hyphenate/wrapper/EMConversationWrapper;->conversationWithParam(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMConversation;

    move-result-object p1

    .line 300
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMConversation;->marks()Ljava/util/Set;

    move-result-object p1

    .line 301
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 302
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyphenate/chat/EMConversation$EMMarkType;

    .line 303
    invoke-static {v0}, Lcom/hyphenate/wrapper/EMMode;->intFromMarkType(Lcom/hyphenate/chat/EMConversation$EMMarkType;)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_0

    .line 305
    :cond_0
    invoke-static {p2}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private messageCount(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 277
    invoke-direct {p0, p1}, Lcom/hyphenate/wrapper/EMConversationWrapper;->conversationWithParam(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMConversation;

    move-result-object p1

    .line 278
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMConversation;->getAllMsgCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private pinnedMessages(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 289
    invoke-direct {p0, p1}, Lcom/hyphenate/wrapper/EMConversationWrapper;->conversationWithParam(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMConversation;

    move-result-object p1

    .line 290
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMConversation;->pinnedMessages()Ljava/util/List;

    move-result-object p1

    .line 291
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 292
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyphenate/chat/EMMessage;

    .line 293
    invoke-static {v0}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 295
    :cond_0
    invoke-static {p2}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private removeMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1}, Lcom/hyphenate/wrapper/EMConversationWrapper;->conversationWithParam(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMConversation;

    move-result-object p2

    const-string v0, "msgId"

    .line 120
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-virtual {p2, p1}, Lcom/hyphenate/chat/EMConversation;->removeMessage(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 122
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private removeMessages(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 282
    invoke-direct {p0, p1}, Lcom/hyphenate/wrapper/EMConversationWrapper;->conversationWithParam(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMConversation;

    move-result-object p2

    const-string v0, "startTime"

    .line 283
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "endTime"

    .line 284
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 285
    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/hyphenate/chat/EMConversation;->removeMessages(JJ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private syncConversationExt(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1}, Lcom/hyphenate/wrapper/EMConversationWrapper;->conversationWithParam(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMConversation;

    move-result-object p2

    const-string v0, "ext"

    .line 109
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 114
    :goto_0
    invoke-virtual {p2, p1}, Lcom/hyphenate/chat/EMConversation;->setExtField(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 115
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updateConversationMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 160
    invoke-direct {p0, p1}, Lcom/hyphenate/wrapper/EMConversationWrapper;->conversationWithParam(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMConversation;

    move-result-object p2

    const-string v0, "msg"

    .line 161
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 162
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->fromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMMessage;

    move-result-object p1

    .line 163
    invoke-virtual {p2, p1}, Lcom/hyphenate/chat/EMConversation;->updateMessage(Lcom/hyphenate/chat/EMMessage;)Z

    move-result p1

    .line 164
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

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

    const-string v0, "getConversationUnreadMsgCount"

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMConversationWrapper;->getUnreadMsgCount(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    const-string v0, "markAllMessagesAsRead"

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMConversationWrapper;->markAllMessagesAsRead(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1
    const-string v0, "markMessageAsRead"

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMConversationWrapper;->markMessageAsRead(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_2
    const-string v0, "syncConversationExt"

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMConversationWrapper;->syncConversationExt(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    const-string v0, "removeMessage"

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 36
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMConversationWrapper;->removeMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_4
    const-string v0, "getLatestMessage"

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 39
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMConversationWrapper;->getLatestMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_5
    const-string v0, "getLatestMessageFromOthers"

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 42
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMConversationWrapper;->getLatestMessageFromOthers(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_6
    const-string v0, "clearAllMessages"

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 45
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMConversationWrapper;->clearAllMessages(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_7
    const-string v0, "insertMessage"

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 48
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMConversationWrapper;->insertMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_8
    const-string v0, "appendMessage"

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 51
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMConversationWrapper;->appendMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_9
    const-string v0, "updateConversationMessage"

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 54
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMConversationWrapper;->updateConversationMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_a
    const-string v0, "loadMsgWithId"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 57
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMConversationWrapper;->loadMsgWithId(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_b
    const-string v0, "loadMsgWithStartId"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 60
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMConversationWrapper;->loadMsgWithStartId(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_c
    const-string v0, "loadMsgWithKeywords"

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 63
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMConversationWrapper;->loadMsgWithKeywords(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_d
    const-string v0, "loadMsgWithMsgType"

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 66
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMConversationWrapper;->loadMsgWithMsgType(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_e
    const-string v0, "loadMsgWithTime"

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 69
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMConversationWrapper;->loadMsgWithTime(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_f
    const-string v0, "loadMsgWithScope"

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 72
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMConversationWrapper;->loadMsgWithScope(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_10
    const-string v0, "messageCount"

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 75
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMConversationWrapper;->messageCount(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_11
    const-string v0, "removeMessages"

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 78
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMConversationWrapper;->removeMessages(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_12
    const-string v0, "pinnedMessages"

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 80
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMConversationWrapper;->pinnedMessages(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_13
    const-string v0, "marks"

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 82
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMConversationWrapper;->marks(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 84
    :cond_14
    invoke-super {p0, p1, p2, p3}, Lcom/hyphenate/wrapper/EMBaseWrapper;->onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
