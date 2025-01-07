.class public Lcom/hyphenate/wrapper/EMPushManagerWrapper;
.super Lcom/hyphenate/wrapper/EMBaseWrapper;
.source "EMPushManagerWrapper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMBaseWrapper;-><init>()V

    .line 32
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->registerEaseListener()V

    return-void
.end method

.method private fetchConversationSilentMode(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "conversationId"

    .line 185
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "convType"

    .line 186
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMConversationHelper;->typeFromInt(I)Lcom/hyphenate/chat/EMConversation$EMConversationType;

    move-result-object p1

    .line 187
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->pushManager()Lcom/hyphenate/chat/EMPushManager;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/wrapper/EMPushManagerWrapper$2;

    invoke-direct {v2, p0, p2}, Lcom/hyphenate/wrapper/EMPushManagerWrapper$2;-><init>(Lcom/hyphenate/wrapper/EMPushManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/hyphenate/chat/EMPushManager;->getSilentModeForConversation(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private fetchPreferredNotificationLanguage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 272
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->pushManager()Lcom/hyphenate/chat/EMPushManager;

    move-result-object p1

    new-instance v0, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;

    invoke-direct {v0, p2}, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/EMPushManager;->getPreferredNotificationLanguage(Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private fetchSilentModeForAll(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 222
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->pushManager()Lcom/hyphenate/chat/EMPushManager;

    move-result-object p1

    new-instance v0, Lcom/hyphenate/wrapper/EMPushManagerWrapper$4;

    invoke-direct {v0, p0, p2}, Lcom/hyphenate/wrapper/EMPushManagerWrapper$4;-><init>(Lcom/hyphenate/wrapper/EMPushManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/EMPushManager;->getSilentModeForAll(Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private fetchSilentModeForConversations(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 238
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 240
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 242
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/hyphenate/wrapper/helper/EMConversationHelper;->typeFromInt(I)Lcom/hyphenate/chat/EMConversation$EMConversationType;

    move-result-object v3

    .line 243
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v3, v5}, Lcom/hyphenate/chat/EMChatManager;->getConversation(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;Z)Lcom/hyphenate/chat/EMConversation;

    move-result-object v2

    .line 244
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 247
    :cond_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->pushManager()Lcom/hyphenate/chat/EMPushManager;

    move-result-object p1

    new-instance v0, Lcom/hyphenate/wrapper/EMPushManagerWrapper$5;

    invoke-direct {v0, p0, p2}, Lcom/hyphenate/wrapper/EMPushManagerWrapper$5;-><init>(Lcom/hyphenate/wrapper/EMPushManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p1, v1, v0}, Lcom/hyphenate/chat/EMPushManager;->getSilentModeForConversations(Ljava/util/List;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getImPushConfig(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 94
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->pushManager()Lcom/hyphenate/chat/EMPushManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMPushManager;->getPushConfigs()Lcom/hyphenate/chat/EMPushConfigs;

    move-result-object p1

    .line 95
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMPushConfigsHelper;->toJson(Lcom/hyphenate/chat/EMPushConfigs;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getImPushConfigFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 99
    new-instance p1, Lcom/hyphenate/wrapper/EMPushManagerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/hyphenate/wrapper/EMPushManagerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/hyphenate/wrapper/EMPushManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getPushTemplate(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 283
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->pushManager()Lcom/hyphenate/chat/EMPushManager;

    move-result-object p1

    new-instance v0, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;

    invoke-direct {v0, p2}, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/EMPushManager;->getPushTemplate(Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private registerEaseListener()V
    .locals 0

    return-void
.end method

.method private removeConversationSilentMode(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "conversationId"

    .line 178
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "convType"

    .line 179
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMConversationHelper;->typeFromInt(I)Lcom/hyphenate/chat/EMConversation$EMConversationType;

    move-result-object p1

    .line 180
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->pushManager()Lcom/hyphenate/chat/EMPushManager;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v2, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/hyphenate/chat/EMPushManager;->clearRemindTypeForConversation(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;Lcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private reportPushAction(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method private setConversationSilentMode(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "convId"

    .line 159
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "conversationType"

    .line 160
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMConversationHelper;->typeFromInt(I)Lcom/hyphenate/chat/EMConversation$EMConversationType;

    move-result-object v1

    const-string v2, "param"

    .line 161
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMSilentModeParamHelper;->fromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMSilentModeParam;

    move-result-object p1

    .line 162
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->pushManager()Lcom/hyphenate/chat/EMPushManager;

    move-result-object v2

    new-instance v3, Lcom/hyphenate/wrapper/EMPushManagerWrapper$1;

    invoke-direct {v3, p0, p2}, Lcom/hyphenate/wrapper/EMPushManagerWrapper$1;-><init>(Lcom/hyphenate/wrapper/EMPushManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v2, v0, v1, p1, v3}, Lcom/hyphenate/chat/EMPushManager;->setSilentModeForConversation(Ljava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;Lcom/hyphenate/chat/EMSilentModeParam;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private setPreferredNotificationLanguage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "code"

    .line 266
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 267
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->pushManager()Lcom/hyphenate/chat/EMPushManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v1, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMPushManager;->setPreferredNotificationLanguage(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private setPushTemplate(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "pushTemplateName"

    .line 277
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->pushManager()Lcom/hyphenate/chat/EMPushManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v1, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMPushManager;->setPushTemplate(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private setSilentModeForAll(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "param"

    .line 204
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMSilentModeParamHelper;->fromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMSilentModeParam;

    move-result-object p1

    .line 205
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->pushManager()Lcom/hyphenate/chat/EMPushManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/EMPushManagerWrapper$3;

    invoke-direct {v1, p0, p2}, Lcom/hyphenate/wrapper/EMPushManagerWrapper$3;-><init>(Lcom/hyphenate/wrapper/EMPushManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMPushManager;->setSilentModeForAll(Lcom/hyphenate/chat/EMSilentModeParam;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private updateFCMPushToken(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "token"

    .line 148
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->getOptions()Lcom/hyphenate/chat/EMOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMOptions;->getPushConfig()Lcom/hyphenate/push/EMPushConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/push/EMPushConfig;->getFcmSenderId()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->pushManager()Lcom/hyphenate/chat/EMPushManager;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v2, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/hyphenate/chat/EMPushManager;->bindDeviceToken(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private updateHMSPushToken(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "token"

    .line 139
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 140
    new-instance v0, Lcom/hyphenate/wrapper/EMPushManagerWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/hyphenate/wrapper/EMPushManagerWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/hyphenate/wrapper/EMPushManagerWrapper;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private updateImPushStyle(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "pushStyle"

    .line 133
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/hyphenate/chat/EMPushManager$DisplayStyle;->SimpleBanner:Lcom/hyphenate/chat/EMPushManager$DisplayStyle;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/hyphenate/chat/EMPushManager$DisplayStyle;->MessageSummary:Lcom/hyphenate/chat/EMPushManager$DisplayStyle;

    .line 134
    :goto_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->pushManager()Lcom/hyphenate/chat/EMPushManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v1, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMPushManager;->asyncUpdatePushDisplayStyle(Lcom/hyphenate/chat/EMPushManager$DisplayStyle;Lcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private updatePushNickname(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "nickname"

    .line 119
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 121
    new-instance v0, Lcom/hyphenate/wrapper/EMPushManagerWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/hyphenate/wrapper/EMPushManagerWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/hyphenate/wrapper/EMPushManagerWrapper;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method synthetic lambda$getImPushConfigFromServer$0$com-hyphenate-wrapper-EMPushManagerWrapper(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 2

    .line 101
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->pushManager()Lcom/hyphenate/chat/EMPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMPushManager;->getPushConfigsFromServer()Lcom/hyphenate/chat/EMPushConfigs;

    move-result-object v0
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 104
    :try_start_1
    invoke-static {v0}, Lcom/hyphenate/wrapper/helper/EMPushConfigsHelper;->toJson(Lcom/hyphenate/chat/EMPushConfigs;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :try_start_2
    invoke-virtual {p0, v0, p1}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_2
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 107
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    :try_start_4
    invoke-virtual {p0, v1, p1}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    goto :goto_1

    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 110
    throw v0
    :try_end_4
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    .line 112
    invoke-virtual {p0, v0, p1}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$updateHMSPushToken$2$com-hyphenate-wrapper-EMPushManagerWrapper(Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 141
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMClient;->sendHMSPushTokenToServer(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    return-void
.end method

.method synthetic lambda$updatePushNickname$1$com-hyphenate-wrapper-EMPushManagerWrapper(Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 123
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->pushManager()Lcom/hyphenate/chat/EMPushManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMPushManager;->updatePushNickname(Ljava/lang/String;)Z

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_0
    return-void
.end method

.method public onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "getImPushConfig"

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->getImPushConfig(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    const-string v0, "getImPushConfigFromServer"

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->getImPushConfigFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1
    const-string v0, "updatePushNickname"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->updatePushNickname(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_2
    const-string v0, "updateImPushStyle"

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->updateImPushStyle(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    const-string v0, "updateHMSPushToken"

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->updateHMSPushToken(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_4
    const-string v0, "updateFCMPushToken"

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 53
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->updateFCMPushToken(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_5
    const-string v0, "reportPushAction"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 56
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->reportPushAction(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_6
    const-string v0, "setConversationSilentMode"

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 59
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->setConversationSilentMode(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_7
    const-string v0, "removeConversationSilentMode"

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 62
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->removeConversationSilentMode(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_8
    const-string v0, "fetchConversationSilentMode"

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 65
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->fetchConversationSilentMode(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_9
    const-string v0, "setSilentModeForAll"

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 68
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->setSilentModeForAll(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_a
    const-string v0, "fetchSilentModeForAll"

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 71
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->fetchSilentModeForAll(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_b
    const-string v0, "fetchSilentModeForConversations"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 74
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->fetchSilentModeForConversations(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_c
    const-string v0, "setPreferredNotificationLanguage"

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 77
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->setPreferredNotificationLanguage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_d
    const-string v0, "fetchPreferredNotificationLanguage"

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 80
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->fetchPreferredNotificationLanguage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_e
    const-string v0, "getPushTemplate"

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 83
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->getPushTemplate(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_f
    const-string v0, "setPushTemplate"

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 86
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;->setPushTemplate(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 88
    :cond_10
    invoke-super {p0, p1, p2, p3}, Lcom/hyphenate/wrapper/EMBaseWrapper;->onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
