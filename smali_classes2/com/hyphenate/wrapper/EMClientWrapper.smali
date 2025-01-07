.class public Lcom/hyphenate/wrapper/EMClientWrapper;
.super Lcom/hyphenate/wrapper/EMBaseWrapper;
.source "EMClientWrapper.java"


# static fields
.field static clientWrapper:Lcom/hyphenate/wrapper/EMClientWrapper;


# instance fields
.field public chatManagerWrapper:Lcom/hyphenate/wrapper/EMChatManagerWrapper;

.field public chatThreadManagerWrapper:Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;

.field public contactManagerWrapper:Lcom/hyphenate/wrapper/EMContactManagerWrapper;

.field public conversationWrapper:Lcom/hyphenate/wrapper/EMConversationWrapper;

.field public groupManagerWrapper:Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

.field public messageManager:Lcom/hyphenate/wrapper/EMMessageManager;

.field public presenceManagerWrapper:Lcom/hyphenate/wrapper/EMPresenceManagerWrapper;

.field public pushManagerWrapper:Lcom/hyphenate/wrapper/EMPushManagerWrapper;

.field public roomManagerWrapper:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

.field public userInfoManagerWrapper:Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;

.field public wrapperConnectionListener:Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;

.field public wrapperMultiDeviceListener:Lcom/hyphenate/wrapper/listeners/EMWrapperMultiDeviceListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMBaseWrapper;-><init>()V

    return-void
.end method

.method private bindingManagers()V
    .locals 1

    .line 350
    new-instance v0, Lcom/hyphenate/wrapper/EMChatManagerWrapper;

    invoke-direct {v0}, Lcom/hyphenate/wrapper/EMChatManagerWrapper;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/wrapper/EMClientWrapper;->chatManagerWrapper:Lcom/hyphenate/wrapper/EMChatManagerWrapper;

    .line 351
    new-instance v0, Lcom/hyphenate/wrapper/EMContactManagerWrapper;

    invoke-direct {v0}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/wrapper/EMClientWrapper;->contactManagerWrapper:Lcom/hyphenate/wrapper/EMContactManagerWrapper;

    .line 352
    new-instance v0, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    invoke-direct {v0}, Lcom/hyphenate/wrapper/EMRoomManagerWrapper;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/wrapper/EMClientWrapper;->roomManagerWrapper:Lcom/hyphenate/wrapper/EMRoomManagerWrapper;

    .line 353
    new-instance v0, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

    invoke-direct {v0}, Lcom/hyphenate/wrapper/EMGroupManagerWrapper;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/wrapper/EMClientWrapper;->groupManagerWrapper:Lcom/hyphenate/wrapper/EMGroupManagerWrapper;

    .line 354
    new-instance v0, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;

    invoke-direct {v0}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/wrapper/EMClientWrapper;->userInfoManagerWrapper:Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;

    .line 355
    new-instance v0, Lcom/hyphenate/wrapper/EMPresenceManagerWrapper;

    invoke-direct {v0}, Lcom/hyphenate/wrapper/EMPresenceManagerWrapper;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/wrapper/EMClientWrapper;->presenceManagerWrapper:Lcom/hyphenate/wrapper/EMPresenceManagerWrapper;

    .line 356
    new-instance v0, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;

    invoke-direct {v0}, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/wrapper/EMClientWrapper;->chatThreadManagerWrapper:Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;

    .line 357
    new-instance v0, Lcom/hyphenate/wrapper/EMPushManagerWrapper;

    invoke-direct {v0}, Lcom/hyphenate/wrapper/EMPushManagerWrapper;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/wrapper/EMClientWrapper;->pushManagerWrapper:Lcom/hyphenate/wrapper/EMPushManagerWrapper;

    .line 358
    new-instance v0, Lcom/hyphenate/wrapper/EMMessageManager;

    invoke-direct {v0}, Lcom/hyphenate/wrapper/EMMessageManager;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/wrapper/EMClientWrapper;->messageManager:Lcom/hyphenate/wrapper/EMMessageManager;

    .line 359
    new-instance v0, Lcom/hyphenate/wrapper/EMConversationWrapper;

    invoke-direct {v0}, Lcom/hyphenate/wrapper/EMConversationWrapper;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/wrapper/EMClientWrapper;->conversationWrapper:Lcom/hyphenate/wrapper/EMConversationWrapper;

    return-void
.end method

.method private changeAppKey(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "appKey"

    .line 174
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 175
    new-instance v0, Lcom/hyphenate/wrapper/EMClientWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/hyphenate/wrapper/EMClientWrapper$$ExternalSyntheticLambda3;-><init>(Lcom/hyphenate/wrapper/EMClientWrapper;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMClientWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private compressLogs(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1

    .line 215
    new-instance v0, Lcom/hyphenate/wrapper/EMClientWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/hyphenate/wrapper/EMClientWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/hyphenate/wrapper/EMClientWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMClientWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private createAccount(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "userId"

    .line 140
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "password"

    .line 141
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 142
    new-instance v1, Lcom/hyphenate/wrapper/EMClientWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/hyphenate/wrapper/EMClientWrapper$$ExternalSyntheticLambda4;-><init>(Lcom/hyphenate/wrapper/EMClientWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v1}, Lcom/hyphenate/wrapper/EMClientWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getCurrentUser()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 187
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->getCurrentUser()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLoggedInDevicesFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "userId"

    .line 264
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "password"

    .line 265
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 266
    new-instance v1, Lcom/hyphenate/wrapper/EMClientWrapper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/hyphenate/wrapper/EMClientWrapper$$ExternalSyntheticLambda5;-><init>(Lcom/hyphenate/wrapper/EMClientWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v1}, Lcom/hyphenate/wrapper/EMClientWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getLoggedInDevicesFromServerWithToken(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "userId"

    .line 318
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "token"

    .line 319
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 320
    new-instance v1, Lcom/hyphenate/wrapper/EMClientWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/hyphenate/wrapper/EMClientWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/hyphenate/wrapper/EMClientWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v1}, Lcom/hyphenate/wrapper/EMClientWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getToken()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 198
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "options"

    .line 129
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 130
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/hyphenate/wrapper/helper/EMOptionsHelper;->fromJson(Lorg/json/JSONObject;Landroid/content/Context;)Lcom/hyphenate/chat/EMOptions;

    move-result-object v0

    .line 131
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    sget-object v2, Lcom/hyphenate/wrapper/EMWrapperHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/hyphenate/chat/EMClient;->init(Landroid/content/Context;Lcom/hyphenate/chat/EMOptions;)V

    .line 132
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    const-string v1, "debugMode"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMClient;->setDebugMode(Z)V

    .line 133
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMClientWrapper;->bindingManagers()V

    .line 134
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMClientWrapper;->registerEaseListener()V

    const/4 p1, 0x0

    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/wrapper/EMClientWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    const/4 p1, 0x0

    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isConnected()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 206
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->isConnected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isLoggedInBefore()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 202
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->isLoggedInBefore()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private kickAllDevices(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "userId"

    .line 243
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "password"

    .line 244
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 246
    new-instance v1, Lcom/hyphenate/wrapper/EMClientWrapper$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/hyphenate/wrapper/EMClientWrapper$$ExternalSyntheticLambda6;-><init>(Lcom/hyphenate/wrapper/EMClientWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v1}, Lcom/hyphenate/wrapper/EMClientWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private kickAllDevicesWithToken(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "userId"

    .line 303
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "token"

    .line 304
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 306
    new-instance v1, Lcom/hyphenate/wrapper/EMClientWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/hyphenate/wrapper/EMClientWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/hyphenate/wrapper/EMClientWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v1}, Lcom/hyphenate/wrapper/EMClientWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private kickDevice(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "userId"

    .line 228
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "password"

    .line 229
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "resource"

    .line 230
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 231
    new-instance p1, Lcom/hyphenate/wrapper/EMClientWrapper$$ExternalSyntheticLambda8;

    move-object v1, p1

    move-object v2, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/wrapper/EMClientWrapper$$ExternalSyntheticLambda8;-><init>(Lcom/hyphenate/wrapper/EMClientWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMClientWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private kickDeviceWithToken(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "userId"

    .line 288
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "token"

    .line 289
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "resource"

    .line 290
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 291
    new-instance p1, Lcom/hyphenate/wrapper/EMClientWrapper$$ExternalSyntheticLambda7;

    move-object v1, p1

    move-object v2, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/wrapper/EMClientWrapper$$ExternalSyntheticLambda7;-><init>(Lcom/hyphenate/wrapper/EMClientWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMClientWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private login(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "isToken"

    .line 154
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "userId"

    .line 155
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pwdOrToken"

    .line 156
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v2, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v2, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/hyphenate/chat/EMClient;->loginWithToken(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v2, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v2, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/hyphenate/chat/EMClient;->login(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private loginWithAgoraToken(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "userId"

    .line 191
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "token"

    .line 192
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v2, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/hyphenate/chat/EMClient;->loginWithToken(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private logout(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "unbindDeviceToken"

    .line 168
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 169
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v1, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMClient;->logout(ZLcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private registerEaseListener()V
    .locals 2

    .line 343
    new-instance v0, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;

    invoke-direct {v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/wrapper/EMClientWrapper;->wrapperConnectionListener:Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;

    .line 344
    new-instance v0, Lcom/hyphenate/wrapper/listeners/EMWrapperMultiDeviceListener;

    invoke-direct {v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperMultiDeviceListener;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/wrapper/EMClientWrapper;->wrapperMultiDeviceListener:Lcom/hyphenate/wrapper/listeners/EMWrapperMultiDeviceListener;

    .line 345
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/wrapper/EMClientWrapper;->wrapperConnectionListener:Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->addConnectionListener(Lcom/hyphenate/EMConnectionListener;)V

    .line 346
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/wrapper/EMClientWrapper;->wrapperMultiDeviceListener:Lcom/hyphenate/wrapper/listeners/EMWrapperMultiDeviceListener;

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->addMultiDeviceListener(Lcom/hyphenate/EMMultiDeviceListener;)V

    return-void
.end method

.method private renewToken(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "token"

    .line 258
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 259
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v1, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMClient;->renewToken(Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private runDelegateTester()Ljava/lang/String;
    .locals 1

    .line 124
    invoke-static {}, Lcom/hyphenate/wrapper/util/DelegateTester;->shared()Lcom/hyphenate/wrapper/util/DelegateTester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/wrapper/util/DelegateTester;->startTest()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static shared()Lcom/hyphenate/wrapper/EMClientWrapper;
    .locals 1

    .line 44
    sget-object v0, Lcom/hyphenate/wrapper/EMClientWrapper;->clientWrapper:Lcom/hyphenate/wrapper/EMClientWrapper;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/hyphenate/wrapper/EMClientWrapper;

    invoke-direct {v0}, Lcom/hyphenate/wrapper/EMClientWrapper;-><init>()V

    sput-object v0, Lcom/hyphenate/wrapper/EMClientWrapper;->clientWrapper:Lcom/hyphenate/wrapper/EMClientWrapper;

    .line 47
    :cond_0
    sget-object v0, Lcom/hyphenate/wrapper/EMClientWrapper;->clientWrapper:Lcom/hyphenate/wrapper/EMClientWrapper;

    return-object v0
.end method

.method private uploadLog(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2

    .line 210
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v1, p1}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->uploadLog(Lcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method synthetic lambda$changeAppKey$1$com-hyphenate-wrapper-EMClientWrapper(Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 177
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMClient;->changeAppkey(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/wrapper/EMClientWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/wrapper/EMClientWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$compressLogs$2$com-hyphenate-wrapper-EMClientWrapper(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 217
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->compressLogs()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-virtual {p0, v0, p1}, Lcom/hyphenate/wrapper/EMClientWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 220
    invoke-virtual {p0, v0, p1}, Lcom/hyphenate/wrapper/EMClientWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$createAccount$0$com-hyphenate-wrapper-EMClientWrapper(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 144
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/EMClient;->createAccount(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 145
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMClientWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 147
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMClientWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$getLoggedInDevicesFromServer$5$com-hyphenate-wrapper-EMClientWrapper(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 268
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/EMClient;->getLoggedInDevicesFromServer(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 269
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 271
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyphenate/chat/EMDeviceInfo;

    .line 272
    invoke-static {v0}, Lcom/hyphenate/wrapper/helper/EMDeviceInfoHelper;->toJson(Lcom/hyphenate/chat/EMDeviceInfo;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 278
    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMClientWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_2
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 275
    :try_start_3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 278
    :goto_2
    :try_start_4
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMClientWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 279
    throw p1
    :try_end_4
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 281
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMClientWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_3
    return-void
.end method

.method synthetic lambda$getLoggedInDevicesFromServerWithToken$8$com-hyphenate-wrapper-EMClientWrapper(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 322
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/EMClient;->getLoggedInDevicesFromServerWithToken(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 323
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 325
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyphenate/chat/EMDeviceInfo;

    .line 326
    invoke-static {v0}, Lcom/hyphenate/wrapper/helper/EMDeviceInfoHelper;->toJson(Lcom/hyphenate/chat/EMDeviceInfo;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 332
    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMClientWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_2
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 329
    :try_start_3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 332
    :goto_2
    :try_start_4
    invoke-virtual {p0, p2, p3}, Lcom/hyphenate/wrapper/EMClientWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 333
    throw p1
    :try_end_4
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 335
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMClientWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_3
    return-void
.end method

.method synthetic lambda$kickAllDevices$4$com-hyphenate-wrapper-EMClientWrapper(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 248
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/EMClient;->kickAllDevices(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 249
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMClientWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 251
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMClientWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$kickAllDevicesWithToken$7$com-hyphenate-wrapper-EMClientWrapper(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 308
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/EMClient;->kickAllDevicesWithToken(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 309
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMClientWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 311
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMClientWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$kickDevice$3$com-hyphenate-wrapper-EMClientWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 233
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/hyphenate/chat/EMClient;->kickDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 234
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lcom/hyphenate/wrapper/EMClientWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 236
    invoke-virtual {p0, p1, p4}, Lcom/hyphenate/wrapper/EMClientWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$kickDeviceWithToken$6$com-hyphenate-wrapper-EMClientWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 293
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/hyphenate/chat/EMClient;->kickDeviceWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 294
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lcom/hyphenate/wrapper/EMClientWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 296
    invoke-virtual {p0, p1, p4}, Lcom/hyphenate/wrapper/EMClientWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_0
    return-void
.end method

.method public onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "kickAllDevicesWithToken"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "isLoggedInBefore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "getToken"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "compressLogs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "uploadLog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "getLoggedInDevicesFromServerWithToken"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "createAccount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "isConnected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "loginWithAgoraToken"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "init"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "getLoggedInDevicesFromServer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "getCurrentUser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "startCallback"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_e
    const-string v0, "changeAppKey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_f
    const-string v0, "kickDeviceWithToken"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_10
    const-string v0, "logout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_11
    const-string v0, "runDelegateTester"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_12
    const-string v0, "kickDevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_13
    const-string v0, "renewToken"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_14
    const-string v0, "kickAllDevices"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_0

    :cond_14
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/hyphenate/wrapper/EMBaseWrapper;->onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    goto :goto_1

    .line 111
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMClientWrapper;->kickAllDevicesWithToken(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 88
    :pswitch_1
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMClientWrapper;->isLoggedInBefore()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 97
    :pswitch_2
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMClientWrapper;->getToken()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 76
    :pswitch_3
    invoke-direct {p0, p3}, Lcom/hyphenate/wrapper/EMClientWrapper;->compressLogs(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 73
    :pswitch_4
    invoke-direct {p0, p3}, Lcom/hyphenate/wrapper/EMClientWrapper;->uploadLog(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 114
    :pswitch_5
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMClientWrapper;->getLoggedInDevicesFromServerWithToken(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 61
    :pswitch_6
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMClientWrapper;->createAccount(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 100
    :pswitch_7
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMClientWrapper;->isConnected()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 94
    :pswitch_8
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMClientWrapper;->loginWithAgoraToken(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 64
    :pswitch_9
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMClientWrapper;->login(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 58
    :pswitch_a
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMClientWrapper;->init(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 79
    :pswitch_b
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMClientWrapper;->getLoggedInDevicesFromServer(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 91
    :pswitch_c
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMClientWrapper;->getCurrentUser()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :goto_1
    :pswitch_d
    const/4 p1, 0x0

    goto :goto_2

    .line 70
    :pswitch_e
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMClientWrapper;->changeAppKey(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 108
    :pswitch_f
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMClientWrapper;->kickDeviceWithToken(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 67
    :pswitch_10
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMClientWrapper;->logout(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 55
    :pswitch_11
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMClientWrapper;->runDelegateTester()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 82
    :pswitch_12
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMClientWrapper;->kickDevice(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 103
    :pswitch_13
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMClientWrapper;->renewToken(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 85
    :pswitch_14
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMClientWrapper;->kickAllDevices(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6890a51e -> :sswitch_14
        -0x66d0b094 -> :sswitch_13
        -0x531d07c4 -> :sswitch_12
        -0x4d2d01f1 -> :sswitch_11
        -0x4167ea76 -> :sswitch_10
        -0x3a99b009 -> :sswitch_f
        -0x247117b2 -> :sswitch_e
        -0x2b03939 -> :sswitch_d
        -0x2530052 -> :sswitch_c
        -0x1f12df3 -> :sswitch_b
        0x316510 -> :sswitch_a
        0x625ef69 -> :sswitch_9
        0x15cc1910 -> :sswitch_8
        0x23b734ff -> :sswitch_7
        0x3fbaad91 -> :sswitch_6
        0x4573f146 -> :sswitch_5
        0x49dad183 -> :sswitch_4
        0x55e3a431 -> :sswitch_3
        0x75346043 -> :sswitch_2
        0x77c14870 -> :sswitch_1
        0x7d478811 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
