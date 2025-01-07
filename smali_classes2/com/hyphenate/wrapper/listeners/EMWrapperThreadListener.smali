.class public Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener;
.super Ljava/lang/Object;
.source "EMWrapperThreadListener.java"

# interfaces
.implements Lcom/hyphenate/EMChatThreadChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onChatThreadCreated$0(Lorg/json/JSONObject;)V
    .locals 3

    .line 18
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onChatThreadCreate"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatThreadListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onChatThreadDestroyed$2(Lorg/json/JSONObject;)V
    .locals 3

    .line 38
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onChatThreadDestroy"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatThreadListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onChatThreadUpdated$1(Lorg/json/JSONObject;)V
    .locals 3

    .line 28
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onChatThreadUpdate"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatThreadListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onChatThreadUserRemoved$3(Lorg/json/JSONObject;)V
    .locals 3

    .line 48
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onUserKickOutOfChatThread"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatThreadListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onTestChatThreadCreated$4(Lorg/json/JSONObject;)V
    .locals 3

    .line 55
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onChatThreadCreate"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatThreadListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onTestChatThreadDestroyed$6(Lorg/json/JSONObject;)V
    .locals 3

    .line 65
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onChatThreadDestroy"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatThreadListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onTestChatThreadUpdated$5(Lorg/json/JSONObject;)V
    .locals 3

    .line 60
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onChatThreadUpdate"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatThreadListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onTestChatThreadUserRemoved$7(Lorg/json/JSONObject;)V
    .locals 3

    .line 70
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onUserKickOutOfChatThread"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "chatThreadListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onChatThreadCreated(Lcom/hyphenate/chat/EMChatThreadEvent;)V
    .locals 1

    .line 17
    :try_start_0
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMChatThreadEventHelper;->toJson(Lcom/hyphenate/chat/EMChatThreadEvent;)Lorg/json/JSONObject;

    move-result-object p1

    .line 18
    new-instance v0, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener$$ExternalSyntheticLambda2;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onChatThreadDestroyed(Lcom/hyphenate/chat/EMChatThreadEvent;)V
    .locals 1

    .line 37
    :try_start_0
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMChatThreadEventHelper;->toJson(Lcom/hyphenate/chat/EMChatThreadEvent;)Lorg/json/JSONObject;

    move-result-object p1

    .line 38
    new-instance v0, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener$$ExternalSyntheticLambda5;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onChatThreadUpdated(Lcom/hyphenate/chat/EMChatThreadEvent;)V
    .locals 1

    .line 27
    :try_start_0
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMChatThreadEventHelper;->toJson(Lcom/hyphenate/chat/EMChatThreadEvent;)Lorg/json/JSONObject;

    move-result-object p1

    .line 28
    new-instance v0, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener$$ExternalSyntheticLambda1;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onChatThreadUserRemoved(Lcom/hyphenate/chat/EMChatThreadEvent;)V
    .locals 1

    .line 47
    :try_start_0
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMChatThreadEventHelper;->toJson(Lcom/hyphenate/chat/EMChatThreadEvent;)Lorg/json/JSONObject;

    move-result-object p1

    .line 48
    new-instance v0, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener$$ExternalSyntheticLambda3;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onTestChatThreadCreated(Lorg/json/JSONObject;)V
    .locals 1

    .line 55
    new-instance v0, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener$$ExternalSyntheticLambda6;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTestChatThreadDestroyed(Lorg/json/JSONObject;)V
    .locals 1

    .line 65
    new-instance v0, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener$$ExternalSyntheticLambda0;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTestChatThreadUpdated(Lorg/json/JSONObject;)V
    .locals 1

    .line 60
    new-instance v0, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener$$ExternalSyntheticLambda4;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTestChatThreadUserRemoved(Lorg/json/JSONObject;)V
    .locals 1

    .line 70
    new-instance v0, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener$$ExternalSyntheticLambda7;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperThreadListener;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 0

    .line 75
    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMWrapperThreadUtil;->mainThreadExecute(Ljava/lang/Runnable;)V

    return-void
.end method
