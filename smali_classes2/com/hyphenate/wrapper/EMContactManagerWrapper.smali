.class public Lcom/hyphenate/wrapper/EMContactManagerWrapper;
.super Lcom/hyphenate/wrapper/EMBaseWrapper;
.source "EMContactManagerWrapper.java"


# instance fields
.field public wrapperContactListener:Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMBaseWrapper;-><init>()V

    .line 28
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->registerEaseListener()V

    return-void
.end method

.method private acceptInvitation(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "userId"

    .line 169
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 170
    new-instance v0, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/hyphenate/wrapper/EMContactManagerWrapper;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private addContact(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "userId"

    .line 72
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg"

    .line 74
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v3

    .line 78
    :goto_0
    new-instance v1, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/hyphenate/wrapper/EMContactManagerWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v1}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    return-object v3
.end method

.method private addUserToBlockList(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "userId"

    .line 126
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    new-instance v0, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda8;-><init>(Lcom/hyphenate/wrapper/EMContactManagerWrapper;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private declineInvitation(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "userId"

    .line 182
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 183
    new-instance v0, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda5;-><init>(Lcom/hyphenate/wrapper/EMContactManagerWrapper;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private deleteContact(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "userId"

    .line 90
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "keepConversation"

    .line 91
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 92
    new-instance v1, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda7;-><init>(Lcom/hyphenate/wrapper/EMContactManagerWrapper;Ljava/lang/String;ZLcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v1}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private fetchAllContactsFromLocal(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1

    .line 225
    new-instance v0, Lcom/hyphenate/wrapper/EMContactManagerWrapper$1;

    invoke-direct {v0, p0, p1}, Lcom/hyphenate/wrapper/EMContactManagerWrapper$1;-><init>(Lcom/hyphenate/wrapper/EMContactManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 241
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->contactManager()Lcom/hyphenate/chat/EMContactManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/EMContactManager;->asyncFetchAllContactsFromLocal(Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private fetchAllContactsFromServer(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1

    .line 246
    new-instance v0, Lcom/hyphenate/wrapper/EMContactManagerWrapper$2;

    invoke-direct {v0, p0, p1}, Lcom/hyphenate/wrapper/EMContactManagerWrapper$2;-><init>(Lcom/hyphenate/wrapper/EMContactManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 262
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->contactManager()Lcom/hyphenate/chat/EMContactManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/EMContactManager;->asyncFetchAllContactsFromServer(Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private fetchAllContactsFromServerByPage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "limit"

    .line 267
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "cursor"

    .line 268
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 269
    new-instance v1, Lcom/hyphenate/wrapper/EMContactManagerWrapper$3;

    invoke-direct {v1, p0, p2}, Lcom/hyphenate/wrapper/EMContactManagerWrapper$3;-><init>(Lcom/hyphenate/wrapper/EMContactManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 283
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->contactManager()Lcom/hyphenate/chat/EMContactManager;

    move-result-object p2

    invoke-virtual {p2, v0, p1, v1}, Lcom/hyphenate/chat/EMContactManager;->asyncFetchAllContactsFromServer(ILjava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private fetchContactFromLocal(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string p2, "userId"

    .line 215
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 217
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hyphenate/chat/EMClient;->contactManager()Lcom/hyphenate/chat/EMContactManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/hyphenate/chat/EMContactManager;->fetchContactFromLocal(Ljava/lang/String;)Lcom/hyphenate/chat/EMContact;

    move-result-object p1
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 221
    :goto_0
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMContactHelper;->toJson(Lcom/hyphenate/chat/EMContact;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAllContactsFromDB(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 118
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->contactManager()Lcom/hyphenate/chat/EMContactManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMContactManager;->getContactsFromLocal()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 122
    :goto_0
    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAllContactsFromServer(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1

    .line 104
    new-instance v0, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda4;-><init>(Lcom/hyphenate/wrapper/EMContactManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getBlockListFromDB(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 164
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->contactManager()Lcom/hyphenate/chat/EMContactManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMContactManager;->getBlackListUsernames()Ljava/util/List;

    move-result-object p1

    .line 165
    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->stringListToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMHelper;->getReturnJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getBlockListFromServer(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1

    .line 152
    new-instance v0, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda3;-><init>(Lcom/hyphenate/wrapper/EMContactManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getSelfIdsOnOtherPlatform(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1

    .line 195
    new-instance v0, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda6;-><init>(Lcom/hyphenate/wrapper/EMContactManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private registerEaseListener()V
    .locals 2

    .line 288
    new-instance v0, Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener;

    invoke-direct {v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->wrapperContactListener:Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener;

    .line 289
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->contactManager()Lcom/hyphenate/chat/EMContactManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->wrapperContactListener:Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener;

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMContactManager;->setContactListener(Lcom/hyphenate/EMContactListener;)V

    return-void
.end method

.method private removeUserFromBlockList(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "userId"

    .line 139
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 140
    new-instance v0, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/hyphenate/wrapper/EMContactManagerWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/hyphenate/wrapper/EMContactManagerWrapper;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private setContactRemark(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "userId"

    .line 207
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "remark"

    .line 208
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->contactManager()Lcom/hyphenate/chat/EMContactManager;

    move-result-object v1

    new-instance v2, Lcom/hyphenate/wrapper/callback/EMCommonCallback;

    invoke-direct {v2, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/hyphenate/chat/EMContactManager;->asyncSetContactRemark(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method synthetic lambda$acceptInvitation$6$com-hyphenate-wrapper-EMContactManagerWrapper(Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 172
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->contactManager()Lcom/hyphenate/chat/EMContactManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMContactManager;->acceptInvitation(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 175
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$addContact$0$com-hyphenate-wrapper-EMContactManagerWrapper(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 80
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->contactManager()Lcom/hyphenate/chat/EMContactManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/EMContactManager;->addContact(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 81
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$addUserToBlockList$3$com-hyphenate-wrapper-EMContactManagerWrapper(Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 2

    .line 129
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->contactManager()Lcom/hyphenate/chat/EMContactManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/hyphenate/chat/EMContactManager;->addUserToBlackList(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$declineInvitation$7$com-hyphenate-wrapper-EMContactManagerWrapper(Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 185
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->contactManager()Lcom/hyphenate/chat/EMContactManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMContactManager;->declineInvitation(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 186
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$deleteContact$1$com-hyphenate-wrapper-EMContactManagerWrapper(Ljava/lang/String;ZLcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 94
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->contactManager()Lcom/hyphenate/chat/EMContactManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hyphenate/chat/EMContactManager;->deleteContact(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 95
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$getAllContactsFromServer$2$com-hyphenate-wrapper-EMContactManagerWrapper(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 106
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->contactManager()Lcom/hyphenate/chat/EMContactManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMContactManager;->getAllContactsFromServer()Ljava/util/List;

    move-result-object v0

    .line 107
    invoke-static {v0}, Lcom/hyphenate/wrapper/util/EMHelper;->stringListToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {p0, v0, p1}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$getBlockListFromServer$5$com-hyphenate-wrapper-EMContactManagerWrapper(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 154
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->contactManager()Lcom/hyphenate/chat/EMContactManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMContactManager;->getBlackListFromServer()Ljava/util/List;

    move-result-object v0

    .line 155
    invoke-static {v0}, Lcom/hyphenate/wrapper/util/EMHelper;->stringListToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {p0, v0, p1}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$getSelfIdsOnOtherPlatform$8$com-hyphenate-wrapper-EMContactManagerWrapper(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 197
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->contactManager()Lcom/hyphenate/chat/EMContactManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMContactManager;->getSelfIdsOnOtherPlatform()Ljava/util/List;

    move-result-object v0

    .line 198
    invoke-static {v0}, Lcom/hyphenate/wrapper/util/EMHelper;->stringListToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 200
    invoke-virtual {p0, v0, p1}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$removeUserFromBlockList$4$com-hyphenate-wrapper-EMContactManagerWrapper(Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 142
    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->contactManager()Lcom/hyphenate/chat/EMContactManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hyphenate/chat/EMContactManager;->removeUserFromBlackList(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    :try_end_0
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

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

    const-string v0, "addContact"

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->addContact(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    const-string v0, "deleteContact"

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->deleteContact(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1
    const-string v0, "getAllContactsFromServer"

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    invoke-direct {p0, p3}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->getAllContactsFromServer(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_2
    const-string v0, "getAllContactsFromDB"

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40
    invoke-direct {p0, p3}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->getAllContactsFromDB(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    const-string v0, "addUserToBlockList"

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->addUserToBlockList(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_4
    const-string v0, "removeUserFromBlockList"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 44
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->removeUserFromBlockList(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_5
    const-string v0, "getBlockListFromServer"

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 46
    invoke-direct {p0, p3}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->getBlockListFromServer(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_6
    const-string v0, "getBlockListFromDB"

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 48
    invoke-direct {p0, p3}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->getBlockListFromDB(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_7
    const-string v0, "acceptInvitation"

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 50
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->acceptInvitation(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_8
    const-string v0, "declineInvitation"

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 52
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->declineInvitation(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_9
    const-string v0, "getSelfIdsOnOtherPlatform"

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 54
    invoke-direct {p0, p3}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->getSelfIdsOnOtherPlatform(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_a
    const-string v0, "setContactRemark"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 56
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->setContactRemark(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_b
    const-string v0, "fetchContactFromLocal"

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 58
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->fetchContactFromLocal(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_c
    const-string v0, "fetchAllContactsFromLocal"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 60
    invoke-direct {p0, p3}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->fetchAllContactsFromLocal(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_d
    const-string v0, "fetchAllContactsFromServer"

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 62
    invoke-direct {p0, p3}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->fetchAllContactsFromServer(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_e
    const-string v0, "fetchAllContactsFromServerByPage"

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 64
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMContactManagerWrapper;->fetchAllContactsFromServerByPage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 66
    :cond_f
    invoke-super {p0, p1, p2, p3}, Lcom/hyphenate/wrapper/EMBaseWrapper;->onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
