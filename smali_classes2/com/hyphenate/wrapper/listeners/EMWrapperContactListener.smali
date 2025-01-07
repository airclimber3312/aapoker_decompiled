.class public Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener;
.super Ljava/lang/Object;
.source "EMWrapperContactListener.java"

# interfaces
.implements Lcom/hyphenate/EMContactListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onContactAdded$0(Lorg/json/JSONObject;)V
    .locals 3

    .line 17
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onContactAdded"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "contactListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onContactDeleted$1(Lorg/json/JSONObject;)V
    .locals 3

    .line 28
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onContactDeleted"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "contactListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onContactInvited$2(Lorg/json/JSONObject;)V
    .locals 3

    .line 40
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onContactInvited"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "contactListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onFriendRequestAccepted$3(Lorg/json/JSONObject;)V
    .locals 3

    .line 51
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onFriendRequestAccepted"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "contactListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onFriendRequestDeclined$4(Lorg/json/JSONObject;)V
    .locals 3

    .line 62
    sget-object v0, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "onFriendRequestDeclined"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "contactListener"

    invoke-interface {v0, v2, v1, p0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onContactAdded(Ljava/lang/String;)V
    .locals 2

    .line 14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "userId"

    .line 16
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener$$ExternalSyntheticLambda2;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener$$ExternalSyntheticLambda2;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onContactDeleted(Ljava/lang/String;)V
    .locals 2

    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "userId"

    .line 27
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener$$ExternalSyntheticLambda1;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener;->post(Ljava/lang/Runnable;)V
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

.method public onContactInvited(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "userId"

    .line 38
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "msg"

    .line 39
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener$$ExternalSyntheticLambda0;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onFriendRequestAccepted(Ljava/lang/String;)V
    .locals 2

    .line 48
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "userId"

    .line 50
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener$$ExternalSyntheticLambda3;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener$$ExternalSyntheticLambda3;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onFriendRequestDeclined(Ljava/lang/String;)V
    .locals 2

    .line 59
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "userId"

    .line 61
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    new-instance p1, Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener$$ExternalSyntheticLambda4;

    invoke-direct {p1, v0}, Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener$$ExternalSyntheticLambda4;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/listeners/EMWrapperContactListener;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 0

    .line 69
    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMWrapperThreadUtil;->mainThreadExecute(Ljava/lang/Runnable;)V

    return-void
.end method
