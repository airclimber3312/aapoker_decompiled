.class public Lcom/hyphenate/wrapper/util/DelegateTester;
.super Ljava/lang/Object;
.source "DelegateTester.java"


# static fields
.field static tester:Lcom/hyphenate/wrapper/util/DelegateTester;


# instance fields
.field private _group:Lcom/hyphenate/chat/EMGroup;

.field private _room:Lcom/hyphenate/chat/EMChatRoom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shared()Lcom/hyphenate/wrapper/util/DelegateTester;
    .locals 1

    .line 43
    sget-object v0, Lcom/hyphenate/wrapper/util/DelegateTester;->tester:Lcom/hyphenate/wrapper/util/DelegateTester;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/hyphenate/wrapper/util/DelegateTester;

    invoke-direct {v0}, Lcom/hyphenate/wrapper/util/DelegateTester;-><init>()V

    sput-object v0, Lcom/hyphenate/wrapper/util/DelegateTester;->tester:Lcom/hyphenate/wrapper/util/DelegateTester;

    .line 46
    :cond_0
    sget-object v0, Lcom/hyphenate/wrapper/util/DelegateTester;->tester:Lcom/hyphenate/wrapper/util/DelegateTester;

    return-object v0
.end method


# virtual methods
.method public chatManagerListenerTest()V
    .locals 13

    const-string v0, "content"

    const-string v1, "ackId"

    const-string v2, "count"

    const-string v3, "reaction"

    const-string v4, "convId"

    const-string v5, "msgId"

    .line 210
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "hello"

    const-string v8, "from"

    .line 211
    invoke-static {v7, v8}, Lcom/hyphenate/chat/EMMessage;->createTextSendMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v7

    .line 212
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v9

    iget-object v9, v9, Lcom/hyphenate/wrapper/EMClientWrapper;->chatManagerWrapper:Lcom/hyphenate/wrapper/EMChatManagerWrapper;

    iget-object v9, v9, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->emWrapperMessageListener:Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;

    invoke-virtual {v9, v6}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;->onMessageReceived(Ljava/util/List;)V

    .line 217
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v9

    iget-object v9, v9, Lcom/hyphenate/wrapper/EMClientWrapper;->chatManagerWrapper:Lcom/hyphenate/wrapper/EMChatManagerWrapper;

    iget-object v9, v9, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->emWrapperMessageListener:Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;

    invoke-virtual {v9, v6}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;->onCmdMessageReceived(Ljava/util/List;)V

    .line 218
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v9

    iget-object v9, v9, Lcom/hyphenate/wrapper/EMClientWrapper;->chatManagerWrapper:Lcom/hyphenate/wrapper/EMChatManagerWrapper;

    iget-object v9, v9, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->emWrapperMessageListener:Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;

    invoke-virtual {v9, v6}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;->onMessageRead(Ljava/util/List;)V

    .line 219
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v9

    iget-object v9, v9, Lcom/hyphenate/wrapper/EMClientWrapper;->chatManagerWrapper:Lcom/hyphenate/wrapper/EMChatManagerWrapper;

    iget-object v9, v9, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->emWrapperMessageListener:Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;

    invoke-virtual {v9, v6}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;->onMessageDelivered(Ljava/util/List;)V

    .line 220
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v9

    iget-object v9, v9, Lcom/hyphenate/wrapper/EMClientWrapper;->chatManagerWrapper:Lcom/hyphenate/wrapper/EMChatManagerWrapper;

    iget-object v9, v9, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->emWrapperMessageListener:Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;

    invoke-virtual {v9, v6}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;->onMessageRecalled(Ljava/util/List;)V

    .line 221
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v6

    iget-object v6, v6, Lcom/hyphenate/wrapper/EMClientWrapper;->chatManagerWrapper:Lcom/hyphenate/wrapper/EMChatManagerWrapper;

    iget-object v6, v6, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->emWrapperMessageListener:Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;

    invoke-virtual {v6}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;->onReadAckForGroupMessageUpdated()V

    .line 222
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v6

    iget-object v6, v6, Lcom/hyphenate/wrapper/EMClientWrapper;->chatManagerWrapper:Lcom/hyphenate/wrapper/EMChatManagerWrapper;

    iget-object v6, v6, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->emWrapperMessageListener:Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;

    invoke-virtual {v6}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;->onConversationUpdate()V

    .line 223
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v6

    iget-object v6, v6, Lcom/hyphenate/wrapper/EMClientWrapper;->chatManagerWrapper:Lcom/hyphenate/wrapper/EMChatManagerWrapper;

    iget-object v6, v6, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->emWrapperMessageListener:Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;

    const-string v9, "to"

    invoke-virtual {v6, v8, v9}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;->onConversationRead(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 226
    new-instance v9, Lcom/hyphenate/chat/EMRecallMessageInfo;

    const-string v10, "messageId"

    const-string v11, "ext"

    const-string v12, "recallBy"

    invoke-direct {v9, v12, v10, v7, v11}, Lcom/hyphenate/chat/EMRecallMessageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/EMMessage;Ljava/lang/String;)V

    .line 227
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v7

    iget-object v7, v7, Lcom/hyphenate/wrapper/EMClientWrapper;->chatManagerWrapper:Lcom/hyphenate/wrapper/EMChatManagerWrapper;

    iget-object v7, v7, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->emWrapperMessageListener:Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;

    invoke-virtual {v7, v6}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;->onMessageRecalledWithExt(Ljava/util/List;)V

    .line 232
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 233
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 234
    invoke-virtual {v7, v4, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    invoke-virtual {v7, v5, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 237
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 238
    invoke-virtual {v9, v3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v3, 0xa

    .line 239
    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v10, "isAddedBySelf"

    const/4 v11, 0x1

    .line 240
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 241
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    const-string v11, "userId1"

    .line 242
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v11, "userId2"

    .line 243
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v11, "userList"

    .line 244
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v9, "reactions"

    .line 246
    invoke-virtual {v7, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 248
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v4

    iget-object v4, v4, Lcom/hyphenate/wrapper/EMClientWrapper;->chatManagerWrapper:Lcom/hyphenate/wrapper/EMChatManagerWrapper;

    iget-object v4, v4, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->emWrapperMessageListener:Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;

    invoke-virtual {v4, v6}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;->onTestReactionChanged(Lorg/json/JSONArray;)V

    .line 251
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 252
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 253
    invoke-virtual {v6, v5, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    invoke-virtual {v6, v1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    invoke-virtual {v6, v8, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    const v2, 0x989680

    .line 257
    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 258
    invoke-virtual {v6, v0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 260
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->chatManagerWrapper:Lcom/hyphenate/wrapper/EMChatManagerWrapper;

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->emWrapperMessageListener:Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;

    invoke-virtual {v0, v4}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;->onTestGroupMessageRead(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public connectionDelegateTest()V
    .locals 2

    .line 70
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->wrapperConnectionListener:Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;

    invoke-virtual {v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;->onConnected()V

    .line 71
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->wrapperConnectionListener:Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;

    const/16 v1, 0xd8

    invoke-virtual {v0, v1}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;->onDisconnected(I)V

    .line 72
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->wrapperConnectionListener:Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;

    const/16 v1, 0xd6

    invoke-virtual {v0, v1}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;->onDisconnected(I)V

    .line 73
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->wrapperConnectionListener:Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;

    const/16 v1, 0xd9

    invoke-virtual {v0, v1}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;->onDisconnected(I)V

    .line 74
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->wrapperConnectionListener:Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;->onDisconnected(I)V

    .line 75
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->wrapperConnectionListener:Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;

    const/16 v1, 0xce

    invoke-virtual {v0, v1}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;->onDisconnected(I)V

    .line 76
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->wrapperConnectionListener:Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;

    const/16 v1, 0xcf

    invoke-virtual {v0, v1}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;->onDisconnected(I)V

    .line 77
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->wrapperConnectionListener:Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;

    const/16 v1, 0x131

    invoke-virtual {v0, v1}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;->onDisconnected(I)V

    .line 78
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->wrapperConnectionListener:Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;->onDisconnected(I)V

    .line 79
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->wrapperConnectionListener:Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;

    invoke-virtual {v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;->onTokenWillExpire()V

    .line 80
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->wrapperConnectionListener:Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;

    invoke-virtual {v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;->onTokenExpired()V

    return-void
.end method

.method public contactDelegateTest()V
    .locals 3

    .line 93
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->contactManagerWrapper:Lcom/hyphenate/wrapper/EMContactManagerWrapper;

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->wrapperContactListener:Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener;

    const-string v1, "test"

    invoke-virtual {v0, v1}, Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener;->onContactAdded(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->contactManagerWrapper:Lcom/hyphenate/wrapper/EMContactManagerWrapper;

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->wrapperContactListener:Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener;

    invoke-virtual {v0, v1}, Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener;->onContactDeleted(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->contactManagerWrapper:Lcom/hyphenate/wrapper/EMContactManagerWrapper;

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->wrapperContactListener:Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener;

    const-string v2, "message"

    invoke-virtual {v0, v1, v2}, Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener;->onContactInvited(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->contactManagerWrapper:Lcom/hyphenate/wrapper/EMContactManagerWrapper;

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->wrapperContactListener:Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener;

    invoke-virtual {v0, v1}, Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener;->onFriendRequestAccepted(Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->contactManagerWrapper:Lcom/hyphenate/wrapper/EMContactManagerWrapper;

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->wrapperContactListener:Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener;

    invoke-virtual {v0, v1}, Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener;->onFriendRequestDeclined(Ljava/lang/String;)V

    return-void
.end method

.method public groupManagerListenerTest()V
    .locals 12

    const-string v0, "file"

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "userId1"

    .line 102
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "userId2"

    .line 103
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v2

    iget-object v2, v2, Lcom/hyphenate/wrapper/EMClientWrapper;->groupManagerWrapper:Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

    iget-object v2, v2, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->wrapperGroupListener:Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;

    const-string v3, "groupId"

    const-string v4, "name"

    const-string v5, "inviter"

    const-string v6, "reason"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;->onInvitationReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v2

    iget-object v2, v2, Lcom/hyphenate/wrapper/EMClientWrapper;->groupManagerWrapper:Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

    iget-object v2, v2, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->wrapperGroupListener:Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;

    const-string v7, "invitee"

    invoke-virtual {v2, v3, v7, v6}, Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;->onInvitationAccepted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v2

    iget-object v2, v2, Lcom/hyphenate/wrapper/EMClientWrapper;->groupManagerWrapper:Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

    iget-object v2, v2, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->wrapperGroupListener:Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;

    invoke-virtual {v2, v3, v7, v6}, Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;->onInvitationDeclined(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v2

    iget-object v2, v2, Lcom/hyphenate/wrapper/EMClientWrapper;->groupManagerWrapper:Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

    iget-object v2, v2, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->wrapperGroupListener:Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;

    invoke-virtual {v2, v3, v5, v6}, Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;->onAutoAcceptInvitationFromGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v2

    iget-object v2, v2, Lcom/hyphenate/wrapper/EMClientWrapper;->groupManagerWrapper:Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

    iget-object v2, v2, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->wrapperGroupListener:Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;

    invoke-virtual {v2, v3, v4}, Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;->onGroupDestroyed(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v2

    iget-object v2, v2, Lcom/hyphenate/wrapper/EMClientWrapper;->groupManagerWrapper:Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

    iget-object v2, v2, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->wrapperGroupListener:Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;

    invoke-virtual {v2, v3, v4}, Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;->onUserRemoved(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v2

    iget-object v2, v2, Lcom/hyphenate/wrapper/EMClientWrapper;->groupManagerWrapper:Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

    iget-object v2, v2, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->wrapperGroupListener:Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;

    const-string v5, "user"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;->onRequestToJoinReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v2

    iget-object v2, v2, Lcom/hyphenate/wrapper/EMClientWrapper;->groupManagerWrapper:Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

    iget-object v6, v2, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->wrapperGroupListener:Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;

    const-string v7, "groupId"

    const-string v8, "name"

    const-string v9, "user"

    const-string v10, "reason"

    const-string v11, "applicant"

    invoke-virtual/range {v6 .. v11}, Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;->onRequestToJoinDeclined(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v2

    iget-object v2, v2, Lcom/hyphenate/wrapper/EMClientWrapper;->groupManagerWrapper:Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

    iget-object v2, v2, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->wrapperGroupListener:Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;

    invoke-virtual {v2, v3, v4, v5}, Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;->onRequestToJoinAccepted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v2

    iget-object v2, v2, Lcom/hyphenate/wrapper/EMClientWrapper;->groupManagerWrapper:Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

    iget-object v2, v2, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->wrapperGroupListener:Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;

    const-wide/32 v6, 0x989680

    invoke-virtual {v2, v3, v1, v6, v7}, Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;->onMuteListAdded(Ljava/lang/String;Ljava/util/List;J)V

    .line 115
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v2

    iget-object v2, v2, Lcom/hyphenate/wrapper/EMClientWrapper;->groupManagerWrapper:Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

    iget-object v2, v2, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->wrapperGroupListener:Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;

    invoke-virtual {v2, v3, v1}, Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;->onMuteListRemoved(Ljava/lang/String;Ljava/util/List;)V

    .line 116
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v2

    iget-object v2, v2, Lcom/hyphenate/wrapper/EMClientWrapper;->groupManagerWrapper:Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

    iget-object v2, v2, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->wrapperGroupListener:Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;

    invoke-virtual {v2, v3, v1}, Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;->onWhiteListAdded(Ljava/lang/String;Ljava/util/List;)V

    .line 117
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v2

    iget-object v2, v2, Lcom/hyphenate/wrapper/EMClientWrapper;->groupManagerWrapper:Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

    iget-object v2, v2, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->wrapperGroupListener:Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;

    invoke-virtual {v2, v3, v1}, Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;->onWhiteListRemoved(Ljava/lang/String;Ljava/util/List;)V

    .line 118
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMClientWrapper;->groupManagerWrapper:Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->wrapperGroupListener:Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;->onAllMemberMuteStateChanged(Ljava/lang/String;Z)V

    .line 119
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMClientWrapper;->groupManagerWrapper:Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->wrapperGroupListener:Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;

    invoke-virtual {v1, v3, v5}, Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;->onAdminAdded(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMClientWrapper;->groupManagerWrapper:Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->wrapperGroupListener:Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;

    invoke-virtual {v1, v3, v5}, Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;->onAdminRemoved(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMClientWrapper;->groupManagerWrapper:Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->wrapperGroupListener:Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;

    const-string v6, "newOwner"

    const-string v7, "oldOwner"

    invoke-virtual {v1, v3, v6, v7}, Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;->onOwnerChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMClientWrapper;->groupManagerWrapper:Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->wrapperGroupListener:Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;

    invoke-virtual {v1, v3, v5}, Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;->onMemberJoined(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMClientWrapper;->groupManagerWrapper:Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->wrapperGroupListener:Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;

    invoke-virtual {v1, v3, v5}, Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;->onMemberExited(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMClientWrapper;->groupManagerWrapper:Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->wrapperGroupListener:Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;

    const-string v5, "announcement"

    invoke-virtual {v1, v3, v5}, Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;->onAnnouncementChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMClientWrapper;->groupManagerWrapper:Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->wrapperGroupListener:Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;

    const-string v5, "fileId"

    invoke-virtual {v1, v3, v5}, Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;->onSharedFileDeleted(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMClientWrapper;->groupManagerWrapper:Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->wrapperGroupListener:Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;

    iget-object v6, p0, Lcom/hyphenate/wrapper/util/DelegateTester;->_group:Lcom/hyphenate/chat/EMGroup;

    invoke-virtual {v1, v6, v2}, Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;->onStateChanged(Lcom/hyphenate/chat/EMGroup;Z)V

    .line 128
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMClientWrapper;->groupManagerWrapper:Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->wrapperGroupListener:Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;

    iget-object v2, p0, Lcom/hyphenate/wrapper/util/DelegateTester;->_group:Lcom/hyphenate/chat/EMGroup;

    invoke-virtual {v1, v2}, Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;->onSpecificationChanged(Lcom/hyphenate/chat/EMGroup;)V

    .line 132
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 133
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "file.getFileId()"

    .line 134
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "file.getFileName()"

    .line 135
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "owner"

    const-string v5, "file.getFileOwner()"

    .line 136
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "createTime"

    const v5, 0xbebc200

    .line 137
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "fileSize"

    const v5, 0x5f5e100

    .line 138
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->groupManagerWrapper:Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;->wrapperGroupListener:Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;

    invoke-virtual {v0, v3, v1}, Lcom/hyphenate/wrapper/listeners/EMWrapperGroupListener;->onTestSharedFileAdded(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public multiDeviceDelegateTest()V
    .locals 4

    .line 84
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->wrapperMultiDeviceListener:Lcom/hyphenate/wrapper/listeners/EMWrapperMultiDeviceListener;

    const-string v1, "username"

    const-string v2, "ext"

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Lcom/hyphenate/wrapper/listeners/EMWrapperMultiDeviceListener;->onContactEvent(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "userId1"

    .line 86
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "userId2"

    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMClientWrapper;->wrapperMultiDeviceListener:Lcom/hyphenate/wrapper/listeners/EMWrapperMultiDeviceListener;

    const/16 v2, 0x12

    const-string v3, "groupId"

    invoke-virtual {v1, v2, v3, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperMultiDeviceListener;->onGroupEvent(ILjava/lang/String;Ljava/util/List;)V

    .line 89
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMClientWrapper;->wrapperMultiDeviceListener:Lcom/hyphenate/wrapper/listeners/EMWrapperMultiDeviceListener;

    const/16 v2, 0x2a

    const-string v3, "threadId"

    invoke-virtual {v1, v2, v3, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperMultiDeviceListener;->onChatThreadEvent(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public presenceManagerListenerTest()V
    .locals 1

    .line 177
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->presenceManagerWrapper:Lcom/hyphenate/wrapper/EMPresenceManagerWrapper;

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMPresenceManagerWrapper;->emWrapperPresenceListener:Lcom/hyphenate/wrapper/listeners/EMWrapperPresenceListener;

    invoke-virtual {v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperPresenceListener;->onTestPresenceUpdated()V

    return-void
.end method

.method public roomManagerListenerTest()V
    .locals 7

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "userId1"

    .line 148
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMClientWrapper;->roomManagerWrapper:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->emWrapperRoomListener:Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;

    const-string v2, "roomId"

    invoke-virtual {v1, v2, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->onWhiteListAdded(Ljava/lang/String;Ljava/util/List;)V

    .line 151
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMClientWrapper;->roomManagerWrapper:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->emWrapperRoomListener:Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;

    invoke-virtual {v1, v2, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->onWhiteListRemoved(Ljava/lang/String;Ljava/util/List;)V

    .line 152
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMClientWrapper;->roomManagerWrapper:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->emWrapperRoomListener:Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->onAllMemberMuteStateChanged(Ljava/lang/String;Z)V

    .line 153
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMClientWrapper;->roomManagerWrapper:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->emWrapperRoomListener:Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;

    const-string v3, "name"

    invoke-virtual {v1, v2, v3}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->onChatRoomDestroyed(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMClientWrapper;->roomManagerWrapper:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->emWrapperRoomListener:Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;

    const-string v4, "userId"

    invoke-virtual {v1, v2, v4}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->onMemberJoined(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMClientWrapper;->roomManagerWrapper:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->emWrapperRoomListener:Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;

    invoke-virtual {v1, v2, v3, v4}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->onMemberExited(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMClientWrapper;->roomManagerWrapper:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->emWrapperRoomListener:Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->onRemovedFromChatRoom(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMClientWrapper;->roomManagerWrapper:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->emWrapperRoomListener:Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->onRemovedFromChatRoom(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMClientWrapper;->roomManagerWrapper:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->emWrapperRoomListener:Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;

    const-wide/32 v5, 0xf4240

    invoke-virtual {v1, v2, v0, v5, v6}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->onMuteListAdded(Ljava/lang/String;Ljava/util/List;J)V

    .line 159
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMClientWrapper;->roomManagerWrapper:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->emWrapperRoomListener:Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;

    invoke-virtual {v1, v2, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->onMuteListRemoved(Ljava/lang/String;Ljava/util/List;)V

    .line 160
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->roomManagerWrapper:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->emWrapperRoomListener:Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;

    invoke-virtual {v0, v2, v4}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->onAdminAdded(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->roomManagerWrapper:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->emWrapperRoomListener:Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;

    invoke-virtual {v0, v2, v4}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->onAdminRemoved(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->roomManagerWrapper:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->emWrapperRoomListener:Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;

    const-string v1, "newOwner"

    const-string v3, "oldOwner"

    invoke-virtual {v0, v2, v1, v3}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->onOwnerChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->roomManagerWrapper:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->emWrapperRoomListener:Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;

    const-string v1, "announcement"

    invoke-virtual {v0, v2, v1}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->onAnnouncementChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->roomManagerWrapper:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->emWrapperRoomListener:Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;

    iget-object v1, p0, Lcom/hyphenate/wrapper/util/DelegateTester;->_room:Lcom/hyphenate/chat/EMChatRoom;

    invoke-virtual {v0, v1}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->onSpecificationChanged(Lcom/hyphenate/chat/EMChatRoom;)V

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "key"

    const-string v3, "value"

    .line 166
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMClientWrapper;->roomManagerWrapper:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->emWrapperRoomListener:Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;

    const-string v3, "from"

    invoke-virtual {v1, v2, v0, v3}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->onAttributesUpdate(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "key1"

    .line 169
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "key2"

    .line 170
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMClientWrapper;->roomManagerWrapper:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    iget-object v1, v1, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;->emWrapperRoomListener:Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;

    invoke-virtual {v1, v2, v0, v3}, Lcom/hyphenate/wrapper/listeners/EMWrapperRoomListener;->onAttributesRemoved(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public startTest()V
    .locals 3

    .line 50
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->groupManager()Lcom/hyphenate/chat/EMGroupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMGroupManager;->getJoinedGroupsFromServer()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyphenate/chat/EMGroup;

    iput-object v0, p0, Lcom/hyphenate/wrapper/util/DelegateTester;->_group:Lcom/hyphenate/chat/EMGroup;

    .line 52
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatroomManager()Lcom/hyphenate/chat/EMChatRoomManager;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/hyphenate/chat/EMChatRoomManager;->fetchPublicChatRoomsFromServer(II)Lcom/hyphenate/chat/EMPageResult;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/hyphenate/chat/EMPageResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyphenate/chat/EMChatRoom;

    iput-object v0, p0, Lcom/hyphenate/wrapper/util/DelegateTester;->_room:Lcom/hyphenate/chat/EMChatRoom;
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :catch_0
    invoke-virtual {p0}, Lcom/hyphenate/wrapper/util/DelegateTester;->connectionDelegateTest()V

    .line 60
    invoke-virtual {p0}, Lcom/hyphenate/wrapper/util/DelegateTester;->multiDeviceDelegateTest()V

    .line 61
    invoke-virtual {p0}, Lcom/hyphenate/wrapper/util/DelegateTester;->contactDelegateTest()V

    .line 62
    invoke-virtual {p0}, Lcom/hyphenate/wrapper/util/DelegateTester;->groupManagerListenerTest()V

    .line 63
    invoke-virtual {p0}, Lcom/hyphenate/wrapper/util/DelegateTester;->roomManagerListenerTest()V

    .line 64
    invoke-virtual {p0}, Lcom/hyphenate/wrapper/util/DelegateTester;->presenceManagerListenerTest()V

    .line 65
    invoke-virtual {p0}, Lcom/hyphenate/wrapper/util/DelegateTester;->threadManagerListenerTest()V

    .line 66
    invoke-virtual {p0}, Lcom/hyphenate/wrapper/util/DelegateTester;->chatManagerListenerTest()V

    return-void
.end method

.method public threadManagerListenerTest()V
    .locals 11

    const-string v0, "msgCount"

    const-string v1, "memberCount"

    const-string v2, "parentId"

    const-string v3, "msgId"

    const-string v4, "owner"

    const-string v5, "name"

    const-string v6, "threadId"

    const-string v7, "from"

    .line 183
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "type"

    const/4 v10, 0x0

    .line 184
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 185
    invoke-virtual {v8, v7, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 188
    invoke-virtual {v7, v6, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    invoke-virtual {v7, v5, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    invoke-virtual {v7, v4, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    invoke-virtual {v7, v3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    invoke-virtual {v7, v2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    invoke-virtual {v7, v1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    invoke-virtual {v7, v0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "createAt"

    const v1, 0x186a0

    .line 195
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "hello"

    const-string v1, "username"

    .line 196
    invoke-static {v0, v1}, Lcom/hyphenate/chat/EMMessage;->createTextSendMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v0

    const-string v1, "lastMsg"

    .line 197
    invoke-static {v0}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "thread"

    .line 199
    invoke-virtual {v8, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->chatThreadManagerWrapper:Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;->emWrapperThreadListener:Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener;

    invoke-virtual {v0, v8}, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener;->onTestChatThreadCreated(Lorg/json/JSONObject;)V

    .line 201
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->chatThreadManagerWrapper:Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;->emWrapperThreadListener:Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener;

    invoke-virtual {v0, v8}, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener;->onTestChatThreadUpdated(Lorg/json/JSONObject;)V

    .line 202
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->chatThreadManagerWrapper:Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;->emWrapperThreadListener:Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener;

    invoke-virtual {v0, v8}, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener;->onTestChatThreadUserRemoved(Lorg/json/JSONObject;)V

    .line 203
    invoke-static {}, Lcom/hyphenate/wrapper/EMClientWrapper;->shared()Lcom/hyphenate/wrapper/EMClientWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMClientWrapper;->chatThreadManagerWrapper:Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;

    iget-object v0, v0, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;->emWrapperThreadListener:Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener;

    invoke-virtual {v0, v8}, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener;->onTestChatThreadDestroyed(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
