.class public Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;
.super Lcom/hyphenate/wrapper/EMBaseWrapper;
.source "EMUserInfoManagerWrapper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMBaseWrapper;-><init>()V

    .line 20
    invoke-direct {p0}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;->registerEaseListener()V

    return-void
.end method

.method private fetchUserInfoByIdWithType(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "userIds"

    .line 92
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "userInfoTypes"

    .line 93
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 95
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 96
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 97
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    .line 101
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 102
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;->getUserInfoTypeFromInt(I)Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    move-result-object v3

    .line 103
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 106
    :cond_1
    new-instance p1, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2, v1, v0}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;[Ljava/lang/String;[Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private fetchUserInfoByUserId(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "userIds"

    .line 64
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 66
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 67
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_0
    new-instance p1, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2, v0}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;[Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getUserInfoTypeFromInt(I)Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;
    .locals 3

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 194
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :pswitch_0
    sget-object p1, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->BIRTH:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    goto :goto_0

    .line 177
    :pswitch_1
    sget-object p1, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->SIGN:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    goto :goto_0

    .line 171
    :pswitch_2
    sget-object p1, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->GENDER:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    goto :goto_0

    .line 165
    :pswitch_3
    sget-object p1, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->PHONE:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    goto :goto_0

    .line 159
    :pswitch_4
    sget-object p1, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->EMAIL:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    goto :goto_0

    .line 153
    :pswitch_5
    sget-object p1, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->AVATAR_URL:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    goto :goto_0

    .line 147
    :pswitch_6
    sget-object p1, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->NICKNAME:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    goto :goto_0

    .line 189
    :cond_0
    sget-object p1, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->EXT:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$updateOwnUserInfo$0(Lcom/hyphenate/chat/EMUserInfo;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 2

    .line 48
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->userInfoManager()Lcom/hyphenate/chat/EMUserInfoManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;

    invoke-direct {v1, p1}, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p0, v1}, Lcom/hyphenate/chat/EMUserInfoManager;->updateOwnInfo(Lcom/hyphenate/chat/EMUserInfo;Lcom/hyphenate/EMValueCallBack;)V

    return-void
.end method

.method static synthetic lambda$updateOwnUserInfoWithType$1(Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 2

    .line 58
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->userInfoManager()Lcom/hyphenate/chat/EMUserInfoManager;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;

    invoke-direct {v1, p2}, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/hyphenate/chat/EMUserInfoManager;->updateOwnInfoByAttribute(Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    return-void
.end method

.method private registerEaseListener()V
    .locals 0

    return-void
.end method

.method private updateOwnUserInfo(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 40
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->getCurrentUser()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 42
    new-instance p1, Lcom/hyphenate/exceptions/HyphenateException;

    const/16 v0, 0xc9

    const-string v2, "User not login"

    invoke-direct {p1, v0, v2}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    return-object v1

    :cond_0
    const-string v2, "userInfo"

    .line 46
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMUserInfoHelper;->fromJson(Lorg/json/JSONObject;)Lcom/hyphenate/chat/EMUserInfo;

    move-result-object p1

    .line 47
    invoke-virtual {p1, v0}, Lcom/hyphenate/chat/EMUserInfo;->setUserId(Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/hyphenate/chat/EMUserInfo;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    return-object v1
.end method

.method private updateOwnUserInfoWithType(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "userInfoType"

    .line 54
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "userInfoValue"

    .line 55
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-direct {p0, v0}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;->getUserInfoTypeFromInt(I)Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p1, p2}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$$ExternalSyntheticLambda3;-><init>(Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    invoke-virtual {p0, v1}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;->asyncRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method generateMapFromMap(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hyphenate/chat/EMUserInfo;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 130
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 131
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 132
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 133
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyphenate/chat/EMUserInfo;

    .line 134
    invoke-static {v1}, Lcom/hyphenate/wrapper/helper/EMUserInfoHelper;->toJson(Lcom/hyphenate/chat/EMUserInfo;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method synthetic lambda$fetchUserInfoByIdWithType$3$com-hyphenate-wrapper-EMUserInfoManagerWrapper(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;[Ljava/lang/String;[Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;)V
    .locals 1

    .line 107
    new-instance v0, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$2;

    invoke-direct {v0, p0, p1}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$2;-><init>(Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 121
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->userInfoManager()Lcom/hyphenate/chat/EMUserInfoManager;

    move-result-object p1

    invoke-virtual {p1, p2, p3, v0}, Lcom/hyphenate/chat/EMUserInfoManager;->fetchUserInfoByAttribute([Ljava/lang/String;[Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;Lcom/hyphenate/EMValueCallBack;)V

    return-void
.end method

.method synthetic lambda$fetchUserInfoByUserId$2$com-hyphenate-wrapper-EMUserInfoManagerWrapper(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;[Ljava/lang/String;)V
    .locals 1

    .line 71
    new-instance v0, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$1;

    invoke-direct {v0, p0, p1}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper$1;-><init>(Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    .line 85
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->userInfoManager()Lcom/hyphenate/chat/EMUserInfoManager;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/hyphenate/chat/EMUserInfoManager;->fetchUserInfoByUserId([Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V

    return-void
.end method

.method public onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "updateOwnUserInfo"

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;->updateOwnUserInfo(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "updateOwnUserInfoWithType"

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;->updateOwnUserInfoWithType(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v0, "fetchUserInfoById"

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;->fetchUserInfoByUserId(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v0, "fetchUserInfoByIdWithType"

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    invoke-direct {p0, p2, p3}, Lcom/hyphenate/wrapper/EMUserInfoManagerWrapper;->fetchUserInfoByIdWithType(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 34
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/hyphenate/wrapper/EMBaseWrapper;->onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
