.class public Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;
.super Ljava/lang/Object;
.source "EMWrapperConnectionListener.java"

# interfaces
.implements Lcom/hyphenate/EMConnectionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onConnected$0()V
    .locals 4

    .line 17
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onConnected"

    const/4 v2, 0x0

    const-string v3, "connectionListener"

    invoke-interface {v0, v3, v1, v2}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onDisconnected$1()V
    .locals 4

    .line 23
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onChangedImPwd"

    const/4 v2, 0x0

    const-string v3, "connectionListener"

    invoke-interface {v0, v3, v1, v2}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onDisconnected$2()V
    .locals 4

    .line 25
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onLoginTooManyDevice"

    const/4 v2, 0x0

    const-string v3, "connectionListener"

    invoke-interface {v0, v3, v1, v2}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onDisconnected$3()V
    .locals 4

    .line 27
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onKickedByOtherDevice"

    const/4 v2, 0x0

    const-string v3, "connectionListener"

    invoke-interface {v0, v3, v1, v2}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onDisconnected$4()V
    .locals 4

    .line 29
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onAuthFailed"

    const/4 v2, 0x0

    const-string v3, "connectionListener"

    invoke-interface {v0, v3, v1, v2}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onDisconnected$5()V
    .locals 4

    .line 33
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onRemovedFromServer"

    const/4 v2, 0x0

    const-string v3, "connectionListener"

    invoke-interface {v0, v3, v1, v2}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onDisconnected$6()V
    .locals 4

    .line 35
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onForbidByServer"

    const/4 v2, 0x0

    const-string v3, "connectionListener"

    invoke-interface {v0, v3, v1, v2}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onDisconnected$7()V
    .locals 4

    .line 37
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onAppActiveNumberReachLimitation"

    const/4 v2, 0x0

    const-string v3, "connectionListener"

    invoke-interface {v0, v3, v1, v2}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onDisconnected$8()V
    .locals 4

    .line 39
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onDisconnected"

    const/4 v2, 0x0

    const-string v3, "connectionListener"

    invoke-interface {v0, v3, v1, v2}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onLogout$11(Lorg/json/JSONObject;)V
    .locals 3

    .line 59
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onLoggedOtherDevice"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "connectionListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onTokenExpired$9()V
    .locals 4

    .line 46
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onTokenExpired"

    const/4 v2, 0x0

    const-string v3, "connectionListener"

    invoke-interface {v0, v3, v1, v2}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onTokenWillExpire$10()V
    .locals 4

    .line 51
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onTokenWillExpire"

    const/4 v2, 0x0

    const-string v3, "connectionListener"

    invoke-interface {v0, v3, v1, v2}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 1

    .line 17
    new-instance v0, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisconnected(I)V
    .locals 1

    const/16 v0, 0xd8

    if-ne p1, v0, :cond_0

    .line 23
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xd6

    if-ne p1, v0, :cond_1

    .line 25
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xd9

    if-ne p1, v0, :cond_2

    .line 27
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0xca

    if-ne p1, v0, :cond_3

    .line 29
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0xdc

    if-eq p1, v0, :cond_8

    const/16 v0, 0xce

    if-ne p1, v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0xcf

    if-ne p1, v0, :cond_5

    .line 33
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    const/16 v0, 0x131

    if-ne p1, v0, :cond_6

    .line 35
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener$$ExternalSyntheticLambda9;

    invoke-direct {p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_6
    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    .line 37
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener$$ExternalSyntheticLambda10;

    invoke-direct {p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 39
    :cond_7
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener$$ExternalSyntheticLambda11;

    invoke-direct {p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;->post(Ljava/lang/Runnable;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public synthetic onLogout(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/hyphenate/EMConnectionListener$-CC;->$default$onLogout(Lcom/hyphenate/EMConnectionListener;I)V

    return-void
.end method

.method public synthetic onLogout(ILcom/hyphenate/chat/EMLoginExtensionInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/hyphenate/EMConnectionListener$-CC;->$default$onLogout(Lcom/hyphenate/EMConnectionListener;ILcom/hyphenate/chat/EMLoginExtensionInfo;)V

    return-void
.end method

.method public onLogout(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0xce

    if-eq p1, v0, :cond_0

    const/16 v0, 0xdc

    if-ne p1, v0, :cond_1

    .line 57
    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "deviceName"

    .line 58
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    new-instance p2, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener$$ExternalSyntheticLambda3;

    invoke-direct {p2, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener$$ExternalSyntheticLambda3;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p2}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public onTokenExpired()V
    .locals 1

    .line 46
    new-instance v0, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTokenWillExpire()V
    .locals 1

    .line 51
    new-instance v0, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperConnectionListener;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 0

    .line 67
    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMWrapperThreadUtil;->mainThreadExecute(Ljava/lang/Runnable;)V

    return-void
.end method
