.class public Lcom/hyphenate/wrapper/EMBaseWrapper;
.super Ljava/lang/Object;
.source "EMBaseWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onError$1(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;Lcom/hyphenate/exceptions/HyphenateException;)V
    .locals 0

    .line 32
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/HyphenateExceptionHelper;->toJson(Lcom/hyphenate/exceptions/HyphenateException;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/callback/EMWrapperCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onSuccess$0(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;Ljava/lang/Object;)V
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/callback/EMWrapperCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public asyncRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 21
    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMWrapperThreadUtil;->asyncExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 31
    new-instance v0, Lcom/hyphenate/wrapper/EMBaseWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p1}, Lcom/hyphenate/wrapper/EMBaseWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;Lcom/hyphenate/exceptions/HyphenateException;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMBaseWrapper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onErrorCode(ILjava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 38
    new-instance v0, Lcom/hyphenate/exceptions/HyphenateException;

    invoke-direct {v0, p1, p2}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    .line 39
    invoke-virtual {p0, v0, p3}, Lcom/hyphenate/wrapper/EMBaseWrapper;->onError(Lcom/hyphenate/exceptions/HyphenateException;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    return-void
.end method

.method public onMethodCall(Ljava/lang/String;Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onSuccess(Ljava/lang/Object;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 1

    .line 25
    new-instance v0, Lcom/hyphenate/wrapper/EMBaseWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Lcom/hyphenate/wrapper/EMBaseWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMBaseWrapper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 0

    .line 18
    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMWrapperThreadUtil;->mainThreadExecute(Ljava/lang/Runnable;)V

    return-void
.end method
