.class public Lcom/hyphenate/wrapper/EMChatManagerWrapper;
.super Lcom/hyphenate/wrapper/EMBaseWrapper;
.source "EMChatManagerWrapper.java"


# instance fields
.field public emWrapperMessageListener:Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMBaseWrapper;-><init>()V

    .line 55
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->registerEaseListener()V

    return-void
.end method

.method private ackConversationRead(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "convId"

    .line 250
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 251
    new-instance v0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda4;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private ackGroupMessageRead(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "msgId"

    .line 231
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "groupId"

    .line 232
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "content"

    .line 234
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    goto :goto_0

    :cond_0
    move-object v5, v7

    .line 238
    :goto_0
    new-instance p1, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda11;

    move-object v1, p1

    move-object v2, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda11;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    return-object v7
.end method

.method private ackMessageRead(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "msgId"

    .line 216
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "to"

    .line 217
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 219
    new-instance v1, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v1}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private addReaction(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "reaction"

    .line 756
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msgId"

    .line 757
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 758
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v2, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/hyphenate/chat/EMChatManager;->asyncAddReaction(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private asyncFetchGroupMessageAckFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "msgId"

    .line 671
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ackId"

    .line 673
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 674
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v2, "pageSize"

    .line 676
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 678
    new-instance v2, Lcom/hyphenate/wrapper/EMChatManagerWrapper$10;

    invoke-direct {v2, p0, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$10;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 692
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object p2

    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/hyphenate/chat/EMChatManager;->asyncFetchGroupReadAcks(Ljava/lang/String;ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    return-object v3
.end method

.method private deleteAllMessagesAndConversations(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "clearServerData"

    .line 947
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 948
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v1, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMChatManager;->asyncDeleteAllMsgsAndConversations(ZLcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private deleteConversation(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string p2, "convId"

    .line 573
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "deleteMessages"

    .line 574
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 575
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/hyphenate/chat/EMChatManager;->deleteConversation(Ljava/lang/String;Z)Z

    const/4 p1, 0x0

    return-object p1
.end method

.method private deleteMessagesBefore(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "timestamp"

    .line 706
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 707
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object p1

    new-instance v2, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v2, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/hyphenate/chat/EMChatManager;->deleteMessagesBeforeTimestamp(JLcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private deleteRemoteConversation(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "conversationId"

    .line 698
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "conversationType"

    .line 699
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->typeFromInt(I)Lcom/hyphenate/chat/EMConversation$EMConversationType;

    move-result-object v1

    const-string v2, "isDeleteRemoteMessage"

    .line 700
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 701
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v2

    new-instance v3, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v3, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v2, v0, v1, p1, v3}, Lcom/hyphenate/chat/EMChatManager;->deleteConversationFromServer(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ZLcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private downloadAttachment(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "msgId"

    .line 341
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 342
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMChatManager;->getMessage(Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;

    move-result-object p1

    .line 343
    new-instance v0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$3;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Lcom/hyphenate/chat/EMMessage;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/EMMessage;->setMessageStatusCallback(Lcom/hyphenate/EMCallBack;)V

    .line 366
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/hyphenate/chat/EMChatManager;->downloadAttachment(Lcom/hyphenate/chat/EMMessage;)V

    .line 367
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private downloadCombineMessages(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "msg"

    .line 916
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->fromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMMessage;

    move-result-object p1

    .line 917
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/EMChatManagerWrapper$17;

    invoke-direct {v1, p0, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$17;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMChatManager;->downloadAndParseCombineMessage(Lcom/hyphenate/chat/EMMessage;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private downloadThumbnail(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "msgId"

    .line 371
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 372
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMChatManager;->getMessage(Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;

    move-result-object p1

    .line 373
    new-instance v0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$4;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Lcom/hyphenate/chat/EMMessage;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/EMMessage;->setMessageStatusCallback(Lcom/hyphenate/EMCallBack;)V

    .line 396
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/hyphenate/chat/EMChatManager;->downloadThumbnail(Lcom/hyphenate/chat/EMMessage;)V

    .line 397
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private fetchHistoryMessages(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "convId"

    .line 580
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "convType"

    .line 581
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/hyphenate/wrapper/helper/EMConversationHelper;->typeFromInt(I)Lcom/hyphenate/chat/EMConversation$EMConversationType;

    move-result-object v4

    const-string v0, "count"

    .line 582
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "startMsgId"

    .line 583
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "direction"

    .line 584
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->UP:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->DOWN:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    :goto_0
    move-object v7, p1

    .line 585
    new-instance p1, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda0;

    move-object v1, p1

    move-object v2, p0

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMSearchDirection;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private fetchHistoryMessagesBy(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "convId"

    .line 872
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "convType"

    .line 873
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/hyphenate/wrapper/helper/EMConversationHelper;->typeFromInt(I)Lcom/hyphenate/chat/EMConversation$EMConversationType;

    move-result-object v3

    const-string v0, "cursor"

    .line 874
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "pageSize"

    .line 875
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "options"

    .line 877
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    .line 878
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMFetchMessageOptionHelper;->fromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMFetchMessageOption;

    move-result-object p1

    move-object v6, p1

    goto :goto_0

    :cond_0
    move-object v6, v8

    .line 881
    :goto_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v1

    new-instance v7, Lcom/hyphenate/wrapper/EMChatManagerWrapper$15;

    invoke-direct {v7, p0, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$15;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual/range {v1 .. v7}, Lcom/hyphenate/chat/EMChatManager;->asyncFetchHistoryMessages(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ILjava/lang/String;Lcom/hyphenate/chat/EMFetchMessageOption;Lcom/hyphenate/EMValueCallBack;)V

    return-object v8
.end method

.method private fetchReactionDetail(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "msgId"

    .line 812
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "reaction"

    .line 813
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "cursor"

    .line 815
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    .line 816
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v7

    :goto_0
    const-string v0, "pageSize"

    .line 818
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 819
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v1

    new-instance v6, Lcom/hyphenate/wrapper/EMChatManagerWrapper$14;

    invoke-direct {v6, p0, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$14;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual/range {v1 .. v6}, Lcom/hyphenate/chat/EMChatManager;->asyncGetReactionDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/hyphenate/EMValueCallBack;)V

    return-object v7
.end method

.method private fetchReactionList(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 770
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "msgIds"

    .line 771
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 772
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 773
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "groupId"

    .line 776
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 777
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    .line 779
    :goto_1
    sget-object v2, Lcom/hyphenate/chat/EMMessage$ChatType;->Chat:Lcom/hyphenate/chat/EMMessage$ChatType;

    const-string v2, "type"

    .line 780
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "chat"

    .line 781
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 782
    sget-object p1, Lcom/hyphenate/chat/EMMessage$ChatType;->Chat:Lcom/hyphenate/chat/EMMessage$ChatType;

    goto :goto_2

    .line 784
    :cond_2
    sget-object p1, Lcom/hyphenate/chat/EMMessage$ChatType;->GroupChat:Lcom/hyphenate/chat/EMMessage$ChatType;

    .line 786
    :goto_2
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v2

    new-instance v4, Lcom/hyphenate/wrapper/EMChatManagerWrapper$13;

    invoke-direct {v4, p0, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$13;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v2, v0, p1, v1, v4}, Lcom/hyphenate/chat/EMChatManager;->asyncGetReactionList(Ljava/util/List;Lcom/hyphenate/chat/EMMessage$ChatType;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    return-object v3
.end method

.method private fetchSupportedLanguages(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 737
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object p1

    new-instance v0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$12;

    invoke-direct {v0, p0, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$12;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/EMChatManager;->fetchSupportLanguages(Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getConversation(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string p2, "convId"

    .line 290
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "createIfNeed"

    .line 292
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "convType"

    .line 296
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMConversationHelper;->typeFromInt(I)Lcom/hyphenate/chat/EMConversation$EMConversationType;

    move-result-object p1

    .line 299
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1, p2, p1, v0}, Lcom/hyphenate/chat/EMChatManager;->getConversation(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;Z)Lcom/hyphenate/chat/EMConversation;

    move-result-object p1

    .line 300
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMConversationHelper;->toJson(Lcom/hyphenate/chat/EMConversation;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getConversationsFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 491
    new-instance p1, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getConversationsFromServerWithCursor(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "pinOnly"

    .line 412
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "cursor"

    .line 413
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "limit"

    .line 414
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_0

    .line 416
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    new-instance v2, Lcom/hyphenate/wrapper/EMChatManagerWrapper$5;

    invoke-direct {v2, p0, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$5;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/hyphenate/chat/EMChatManager;->asyncFetchPinnedConversationsFromServer(ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    goto :goto_0

    .line 430
    :cond_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    new-instance v2, Lcom/hyphenate/wrapper/EMChatManagerWrapper$6;

    invoke-direct {v2, p0, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$6;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/hyphenate/chat/EMChatManager;->asyncFetchConversationsFromServer(ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getConversationsFromServerWithCursorAndMark(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "needMark"

    .line 447
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "mark"

    .line 448
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "cursor"

    .line 449
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "limit"

    .line 450
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_0

    .line 452
    new-instance v0, Lcom/hyphenate/chat/EMConversationFilter;

    invoke-static {v1}, Lcom/hyphenate/wrapper/EMMode;->markTypeFromInt(I)Lcom/hyphenate/chat/EMConversation$EMMarkType;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/hyphenate/chat/EMConversationFilter;-><init>(Lcom/hyphenate/chat/EMConversation$EMMarkType;I)V

    .line 453
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object p1

    new-instance v1, Lcom/hyphenate/wrapper/EMChatManagerWrapper$7;

    invoke-direct {v1, p0, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$7;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p1, v2, v0, v1}, Lcom/hyphenate/chat/EMChatManager;->asyncGetConversationsFromServerWithCursor(Ljava/lang/String;Lcom/hyphenate/chat/EMConversationFilter;Lcom/hyphenate/EMValueCallBack;)V

    goto :goto_0

    .line 467
    :cond_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/EMChatManagerWrapper$8;

    invoke-direct {v1, p0, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$8;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v2, v1}, Lcom/hyphenate/chat/EMChatManager;->asyncFetchConversationsFromServer(ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getConversationsFromServerWithPage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "pageNum"

    .line 526
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "pageSize"

    .line 527
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 528
    new-instance v1, Lcom/hyphenate/wrapper/EMChatManagerWrapper$9;

    invoke-direct {v1, p0, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$9;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 568
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object p2

    invoke-virtual {p2, v0, p1, v1}, Lcom/hyphenate/chat/EMChatManager;->asyncFetchConversationsFromServer(IILcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string p2, "msgId"

    .line 284
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 285
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/hyphenate/chat/EMChatManager;->getMessage(Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;

    move-result-object p1

    .line 286
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPinnedMessagesFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "convId"

    .line 964
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 965
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/EMChatManagerWrapper$18;

    invoke-direct {v1, p0, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$18;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMChatManager;->asyncGetPinnedMessagesFromServer(Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getThreadConversation(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string p2, "convId"

    .line 304
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 305
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object p2

    sget-object v0, Lcom/hyphenate/chat/EMConversation$EMConversationType;->GroupChat:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1, v1}, Lcom/hyphenate/chat/EMChatManager;->getConversation(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ZZ)Lcom/hyphenate/chat/EMConversation;

    move-result-object p1

    .line 306
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMConversationHelper;->toJson(Lcom/hyphenate/chat/EMConversation;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUnreadMessageCount(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 315
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMChatManager;->getUnreadMessageCount()I

    move-result p1

    .line 316
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private importMessages(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "list"

    .line 326
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 328
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 329
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 330
    invoke-static {v2}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->fromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    :cond_0
    new-instance p1, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0, v0, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda9;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Ljava/util/List;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic lambda$getConversationsFromServer$7(Lcom/hyphenate/chat/EMConversation;Lcom/hyphenate/chat/EMConversation;)I
    .locals 7

    .line 496
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->getLastMessage()Lcom/hyphenate/chat/EMMessage;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 500
    :cond_0
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMConversation;->getLastMessage()Lcom/hyphenate/chat/EMMessage;

    move-result-object v0

    const/4 v2, -0x1

    if-nez v0, :cond_1

    return v2

    .line 504
    :cond_1
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->getLastMessage()Lcom/hyphenate/chat/EMMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMMessage;->getMsgTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMConversation;->getLastMessage()Lcom/hyphenate/chat/EMMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMMessage;->getMsgTime()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    .line 508
    :cond_2
    invoke-virtual {p1}, Lcom/hyphenate/chat/EMConversation;->getLastMessage()Lcom/hyphenate/chat/EMMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getMsgTime()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMConversation;->getLastMessage()Lcom/hyphenate/chat/EMMessage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMMessage;->getMsgTime()J

    move-result-wide p0

    sub-long/2addr v3, p0

    const-wide/16 p0, 0x0

    cmp-long v0, v3, p0

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method static synthetic lambda$resendMessage$1(Lcom/hyphenate/chat/EMMessage;)V
    .locals 1

    .line 211
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hyphenate/chat/EMChatManager;->sendMessage(Lcom/hyphenate/chat/EMMessage;)V

    return-void
.end method

.method static synthetic lambda$sendMessage$0(Lcom/hyphenate/chat/EMMessage;)V
    .locals 1

    .line 181
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hyphenate/chat/EMChatManager;->sendMessage(Lcom/hyphenate/chat/EMMessage;)V

    return-void
.end method

.method private loadAllConversations(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 401
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMChatManager;->getAllConversationsBySort()Ljava/util/List;

    move-result-object p1

    .line 402
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 403
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyphenate/chat/EMConversation;

    .line 404
    invoke-static {v0}, Lcom/hyphenate/wrapper/helper/EMConversationHelper;->toJson(Lcom/hyphenate/chat/EMConversation;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 406
    :cond_0
    invoke-static {p2}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private markAllChatMsgAsRead(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 310
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMChatManager;->markAllConversationsAsRead()Z

    const/4 p1, 0x1

    .line 311
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private markConversations(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "convIds"

    .line 935
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/hyphenate/wrapper/util/EMHelper;->stringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    const-string v1, "isMarked"

    .line 936
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "mark"

    .line 937
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/EMMode;->markTypeFromInt(I)Lcom/hyphenate/chat/EMConversation$EMMarkType;

    move-result-object p1

    if-eqz v1, :cond_0

    .line 939
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v2, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/hyphenate/chat/EMChatManager;->asyncAddConversationMark(Ljava/util/List;Lcom/hyphenate/chat/EMConversation$EMMarkType;Lcom/hyphenate/EMCallBack;)V

    goto :goto_0

    .line 941
    :cond_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v2, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/hyphenate/chat/EMChatManager;->asyncRemoveConversationMark(Ljava/util/List;Lcom/hyphenate/chat/EMConversation$EMMarkType;Lcom/hyphenate/EMCallBack;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private modifyMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "msgId"

    .line 897
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "body"

    .line 898
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 899
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMMessageBodyHelper;->textBodyFromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMTextMessageBody;

    move-result-object p1

    .line 900
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/wrapper/EMChatManagerWrapper$16;

    invoke-direct {v2, p0, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$16;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/hyphenate/chat/EMChatManager;->asyncModifyMessage(Ljava/lang/String;Lcom/hyphenate/chat/EMMessageBody;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private pinConversation(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "convId"

    .line 484
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isPinned"

    .line 485
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 486
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v2, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/hyphenate/chat/EMChatManager;->asyncPinConversation(Ljava/lang/String;ZLcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private pinMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "msgId"

    .line 953
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isPinned"

    .line 954
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 956
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object p1

    new-instance v1, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v1, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p1, v0, v1}, Lcom/hyphenate/chat/EMChatManager;->asyncPinMessage(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    goto :goto_0

    .line 958
    :cond_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object p1

    new-instance v1, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v1, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p1, v0, v1}, Lcom/hyphenate/chat/EMChatManager;->asyncUnPinMessage(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private recallMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "msgId"

    .line 263
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ext"

    const-string v2, ""

    .line 264
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 266
    new-instance v1, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda7;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v1}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private registerEaseListener()V
    .locals 2

    .line 983
    new-instance v0, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;

    invoke-direct {v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->emWrapperMessageListener:Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;

    .line 984
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->emWrapperMessageListener:Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMChatManager;->addConversationListener(Lcom/hyphenate/EMConversationListener;)V

    .line 985
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->emWrapperMessageListener:Lcom/hyphenate/wrapper/listeners/EMWrapperMessageListener;

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMChatManager;->addMessageListener(Lcom/hyphenate/EMMessageListener;)V

    return-void
.end method

.method private removeMessagesFromServerWithMsgIds(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "convId"

    .line 844
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "convType"

    .line 845
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMConversationHelper;->typeFromInt(I)Lcom/hyphenate/chat/EMConversation$EMConversationType;

    move-result-object v1

    .line 846
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/hyphenate/chat/EMChatManager;->getConversation(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;Z)Lcom/hyphenate/chat/EMConversation;

    move-result-object v0

    const-string v1, "msgIds"

    .line 848
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 850
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 851
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 852
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 855
    :cond_0
    new-instance p1, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {p1, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, v1, p1}, Lcom/hyphenate/chat/EMConversation;->removeMessagesFromServer(Ljava/util/List;Lcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private removeMessagesFromServerWithTs(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "convId"

    .line 860
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "convType"

    .line 861
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMConversationHelper;->typeFromInt(I)Lcom/hyphenate/chat/EMConversation$EMConversationType;

    move-result-object v1

    .line 862
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/hyphenate/chat/EMChatManager;->getConversation(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;Z)Lcom/hyphenate/chat/EMConversation;

    move-result-object v0

    const-string v1, "timestamp"

    .line 864
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 865
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 867
    :goto_0
    new-instance p1, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {p1, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, v1, v2, p1}, Lcom/hyphenate/chat/EMConversation;->removeMessagesFromServer(JLcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private removeReaction(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "reaction"

    .line 763
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msgId"

    .line 764
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 765
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v2, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/hyphenate/chat/EMChatManager;->asyncRemoveReaction(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private reportMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "msgId"

    .line 836
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag"

    .line 837
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "reason"

    .line 838
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 839
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v2

    new-instance v3, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v3, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v2, v0, v1, p1, v3}, Lcom/hyphenate/chat/EMChatManager;->asyncReportMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private resendMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 186
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->fromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMMessage;

    move-result-object p1

    .line 187
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMChatManager;->getMessage(Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;

    move-result-object p1

    .line 188
    new-instance v0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$2;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Lcom/hyphenate/chat/EMMessage;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/EMMessage;->setMessageStatusCallback(Lcom/hyphenate/EMCallBack;)V

    .line 211
    new-instance p2, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda3;

    invoke-direct {p2, p1}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda3;-><init>(Lcom/hyphenate/chat/EMMessage;)V

    invoke-virtual {p0, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    .line 212
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private searchChatMsgFromDB(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "keywords"

    .line 624
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "timestamp"

    .line 625
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "count"

    .line 626
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v0, "from"

    .line 627
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "direction"

    .line 628
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->searchDirectionFromInt(I)Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    move-result-object v8

    .line 629
    new-instance p1, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda5;

    move-object v1, p1

    move-object v2, p0

    move-object v9, p2

    invoke-direct/range {v1 .. v9}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda5;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Ljava/lang/String;JILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMSearchDirection;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private searchChatMsgFromDBWithScope(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "keywords"

    .line 647
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "timestamp"

    .line 648
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "count"

    .line 649
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v0, "from"

    .line 650
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "direction"

    .line 651
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->searchDirectionFromInt(I)Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    move-result-object v8

    const-string v0, "scope"

    .line 652
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/EMMode;->searchScopeFromInt(I)Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;

    move-result-object v9

    .line 653
    new-instance p1, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda10;

    move-object v1, p1

    move-object v2, p0

    move-object v10, p2

    invoke-direct/range {v1 .. v10}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda10;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Ljava/lang/String;JILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMSearchDirection;Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private searchDirectionFromInt(I)Lcom/hyphenate/chat/EMConversation$EMSearchDirection;
    .locals 1

    if-nez p1, :cond_0

    .line 994
    sget-object p1, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->UP:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 996
    sget-object p1, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->DOWN:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    return-object p1

    .line 998
    :cond_1
    sget-object p1, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->UP:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    return-object p1
.end method

.method private searchDirectionFromString(Ljava/lang/String;)Lcom/hyphenate/chat/EMConversation$EMSearchDirection;
    .locals 1

    const-string v0, "up"

    .line 989
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->UP:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/hyphenate/chat/EMConversation$EMSearchDirection;->DOWN:Lcom/hyphenate/chat/EMConversation$EMSearchDirection;

    :goto_0
    return-object p1
.end method

.method private sendMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 157
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->fromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMMessage;

    move-result-object p1

    .line 158
    new-instance v0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$1;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Lcom/hyphenate/chat/EMMessage;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/EMMessage;->setMessageStatusCallback(Lcom/hyphenate/EMCallBack;)V

    .line 181
    new-instance p2, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda8;

    invoke-direct {p2, p1}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda8;-><init>(Lcom/hyphenate/chat/EMMessage;)V

    invoke-virtual {p0, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    .line 182
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private translateMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "message"

    .line 712
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->fromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMMessage;

    move-result-object v0

    .line 713
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "languages"

    .line 714
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 715
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v2, 0x0

    .line 716
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 717
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 720
    :cond_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object p1

    new-instance v2, Lcom/hyphenate/wrapper/EMChatManagerWrapper$11;

    invoke-direct {v2, p0, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$11;-><init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/hyphenate/chat/EMChatManager;->translateMessage(Lcom/hyphenate/chat/EMMessage;Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private typeFromInt(I)Lcom/hyphenate/chat/EMConversation$EMConversationType;
    .locals 1

    if-nez p1, :cond_0

    .line 1004
    sget-object p1, Lcom/hyphenate/chat/EMConversation$EMConversationType;->Chat:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1006
    sget-object p1, Lcom/hyphenate/chat/EMConversation$EMConversationType;->GroupChat:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    return-object p1

    .line 1008
    :cond_1
    sget-object p1, Lcom/hyphenate/chat/EMConversation$EMConversationType;->ChatRoom:Lcom/hyphenate/chat/EMConversation$EMConversationType;

    return-object p1
.end method

.method private updateChatMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string p2, "message"

    .line 320
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->fromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMMessage;

    move-result-object p1

    .line 321
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/hyphenate/chat/EMChatManager;->updateMessage(Lcom/hyphenate/chat/EMMessage;)Z

    move-result p1

    .line 322
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method synthetic lambda$ackConversationRead$4$com-hyphenate-wrapper-EMChatManagerWrapper(Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 253
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMChatManager;->ackConversationRead(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 254
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 256
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$ackGroupMessageRead$3$com-hyphenate-wrapper-EMChatManagerWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 240
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/hyphenate/chat/EMChatManager;->ackGroupMessageRead(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 241
    invoke-virtual {p0, p1, p4}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 243
    invoke-virtual {p0, p1, p4}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$ackMessageRead$2$com-hyphenate-wrapper-EMChatManagerWrapper(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 221
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/EMChatManager;->ackMessageRead(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 222
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 224
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$fetchHistoryMessages$9$com-hyphenate-wrapper-EMChatManagerWrapper(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMSearchDirection;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 7

    .line 587
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/hyphenate/chat/EMChatManager;->fetchHistoryMessages(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;ILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMSearchDirection;)Lcom/hyphenate/chat/EMCursorResult;

    move-result-object p1
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 590
    :try_start_1
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMCursorResultHelper;->toJson(Lcom/hyphenate/chat/EMCursorResult;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 594
    :try_start_2
    invoke-virtual {p0, p1, p6}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_2
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 592
    :try_start_3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 594
    :try_start_4
    invoke-virtual {p0, p2, p6}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p2, p6}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 595
    throw p1
    :try_end_4
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 597
    invoke-virtual {p0, p1, p6}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$getConversationsFromServer$8$com-hyphenate-wrapper-EMChatManagerWrapper(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 3

    .line 493
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 494
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMChatManager;->fetchConversationsFromServer()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 495
    new-instance v1, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 510
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/chat/EMConversation;

    .line 513
    invoke-static {v2}, Lcom/hyphenate/wrapper/helper/EMConversationHelper;->toJson(Lcom/hyphenate/chat/EMConversation;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 516
    :cond_0
    :try_start_2
    invoke-virtual {p0, v1, p1}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1, p1}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 517
    throw v0
    :try_end_2
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 519
    invoke-virtual {p0, v0, p1}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$importMessages$6$com-hyphenate-wrapper-EMChatManagerWrapper(Ljava/util/List;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 333
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMChatManager;->importMessages(Ljava/util/List;)V

    const/4 p1, 0x1

    .line 334
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    return-void
.end method

.method synthetic lambda$recallMessage$5$com-hyphenate-wrapper-EMChatManagerWrapper(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 268
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMChatManager;->getMessage(Ljava/lang/String;)Lcom/hyphenate/chat/EMMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 270
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/EMChatManager;->recallMessage(Lcom/hyphenate/chat/EMMessage;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 271
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    goto :goto_0

    .line 273
    :cond_0
    new-instance p1, Lcom/hyphenate/exceptions/HyphenateException;

    const-string p2, "The message was not found"

    const/16 v0, 0x1f4

    invoke-direct {p1, v0, p2}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 276
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$searchChatMsgFromDB$10$com-hyphenate-wrapper-EMChatManagerWrapper(Ljava/lang/String;JILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMSearchDirection;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 8

    .line 630
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/hyphenate/chat/EMChatManager;->searchMsgFromDB(Ljava/lang/String;JILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMSearchDirection;)Ljava/util/List;

    move-result-object p1

    .line 632
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 634
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/hyphenate/chat/EMMessage;

    .line 635
    invoke-static {p3}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 638
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 640
    :cond_0
    invoke-virtual {p0, p2, p7}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    return-void

    :goto_1
    invoke-virtual {p0, p2, p7}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 641
    throw p1
.end method

.method synthetic lambda$searchChatMsgFromDBWithScope$11$com-hyphenate-wrapper-EMChatManagerWrapper(Ljava/lang/String;JILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMSearchDirection;Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 11

    move-object v1, p0

    move-object/from16 v2, p8

    .line 654
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v3

    move-object v4, p1

    move-wide v5, p2

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/hyphenate/chat/EMChatManager;->searchMsgFromDB(Ljava/lang/String;JILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMSearchDirection;Lcom/hyphenate/chat/EMConversation$EMMessageSearchScope;)Ljava/util/List;

    move-result-object v0

    .line 656
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 658
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hyphenate/chat/EMMessage;

    .line 659
    invoke-static {v4}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 662
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    :cond_0
    invoke-virtual {p0, v3, v2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    return-void

    :goto_1
    invoke-virtual {p0, v3, v2}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 665
    throw v0
.end method

.method public onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "sendMessage"

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->sendMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    const-string v0, "resendMessage"

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->resendMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1
    const-string v0, "ackMessageRead"

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->ackMessageRead(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_2
    const-string v0, "ackGroupMessageRead"

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->ackGroupMessageRead(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    const-string v0, "ackConversationRead"

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 69
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->ackConversationRead(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_4
    const-string v0, "recallMessage"

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->recallMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_5
    const-string v0, "getConversation"

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 73
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->getConversation(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_6
    const-string v0, "getThreadConversation"

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 75
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->getThreadConversation(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_7
    const-string v0, "markAllChatMsgAsRead"

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 77
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->markAllChatMsgAsRead(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_8
    const-string v0, "getUnreadMessageCount"

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 79
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->getUnreadMessageCount(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_9
    const-string v0, "updateChatMessage"

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 81
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->updateChatMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_a
    const-string v0, "downloadAttachment"

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 83
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->downloadAttachment(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_b
    const-string v0, "downloadThumbnail"

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 85
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->downloadThumbnail(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_c
    const-string v0, "importMessages"

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 87
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->importMessages(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_d
    const-string v0, "loadAllConversations"

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 89
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->loadAllConversations(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_e
    const-string v0, "getConversationsFromServer"

    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 91
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->getConversationsFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_f
    const-string v0, "getConversationsFromServerWithCursor"

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 93
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->getConversationsFromServerWithCursor(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_10
    const-string v0, "getConversationsFromServerWithCursorAndMark"

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 95
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->getConversationsFromServerWithCursorAndMark(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_11
    const-string v0, "pinConversation"

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 97
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->pinConversation(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_12
    const-string v0, "deleteConversation"

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 99
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->deleteConversation(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_13
    const-string v0, "fetchHistoryMessages"

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 101
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->fetchHistoryMessages(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_14
    const-string v0, "searchChatMsgFromDB"

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 103
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->searchChatMsgFromDB(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_15
    const-string v0, "searchChatMsgFromDBWithScope"

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 105
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->searchChatMsgFromDBWithScope(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_16
    const-string v0, "getMessage"

    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 107
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->getMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_17
    const-string v0, "asyncFetchGroupAcks"

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 109
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->asyncFetchGroupMessageAckFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_18
    const-string v0, "deleteRemoteConversation"

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 111
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->deleteRemoteConversation(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_19
    const-string v0, "deleteMessagesBeforeTimestamp"

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 113
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->deleteMessagesBefore(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1a
    const-string v0, "translateMessage"

    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 115
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->translateMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1b
    const-string v0, "fetchSupportLanguages"

    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 117
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->fetchSupportedLanguages(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1c
    const-string v0, "addReaction"

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 119
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->addReaction(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1d
    const-string v0, "removeReaction"

    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 121
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->removeReaction(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1e
    const-string v0, "fetchReactionList"

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 123
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->fetchReactionList(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1f
    const-string v0, "fetchReactionDetail"

    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 125
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->fetchReactionDetail(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_20
    const-string v0, "reportMessage"

    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 127
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->reportMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_21
    const-string v0, "getConversationsFromServerWithPage"

    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 129
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->getConversationsFromServerWithPage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_22
    const-string v0, "removeMessagesFromServerWithMsgIds"

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 131
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->removeMessagesFromServerWithMsgIds(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_23
    const-string v0, "removeMessagesFromServerWithTs"

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 133
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->removeMessagesFromServerWithTs(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_24
    const-string v0, "fetchHistoryMessagesBy"

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 135
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->fetchHistoryMessagesBy(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_25
    const-string v0, "modifyMessage"

    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 137
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->modifyMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_26
    const-string v0, "downloadCombineMessages"

    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 139
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->downloadCombineMessages(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_27
    const-string v0, "markConversations"

    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 141
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->markConversations(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_28
    const-string v0, "deleteAllMessagesAndConversations"

    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 143
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->deleteAllMessagesAndConversations(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_29
    const-string v0, "pinMessage"

    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 145
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->pinMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2a
    const-string v0, "getPinnedMessagesFromServer"

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 147
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;->getPinnedMessagesFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 150
    :cond_2b
    invoke-super {p0, p1, p2, p3}, Lcom/hyphenate/wrapper/EMBaseWrapper;->onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
