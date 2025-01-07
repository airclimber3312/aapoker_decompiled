.class public Lcom/hyphenate/wrapper/callback/EMCommonCallback;
.super Ljava/lang/Object;
.source "EMCommonCallback.java"

# interfaces
.implements Lcom/hyphenate/EMCallBack;


# instance fields
.field callback:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;


# direct methods
.method public constructor <init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/hyphenate/wrapper/callback/EMCommonCallback;->callback:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    return-void
.end method


# virtual methods
.method synthetic lambda$onError$2$com-hyphenate-wrapper-callback-EMCommonCallback(ILjava/lang/String;)V
    .locals 1

    .line 41
    new-instance v0, Lcom/hyphenate/exceptions/HyphenateException;

    invoke-direct {v0, p1, p2}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/hyphenate/wrapper/callback/EMCommonCallback;->callback:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    invoke-static {v0}, Lcom/hyphenate/wrapper/helper/HyphenateExceptionHelper;->toJson(Lcom/hyphenate/exceptions/HyphenateException;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hyphenate/wrapper/callback/EMWrapperCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$onProgress$1$com-hyphenate-wrapper-callback-EMCommonCallback(I)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/hyphenate/wrapper/callback/EMCommonCallback;->callback:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    invoke-virtual {v0, p1}, Lcom/hyphenate/wrapper/callback/EMWrapperCallback;->onProgress(I)V

    return-void
.end method

.method synthetic lambda$onSuccess$0$com-hyphenate-wrapper-callback-EMCommonCallback()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/hyphenate/wrapper/callback/EMCommonCallback;->callback:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hyphenate/wrapper/callback/EMWrapperCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 40
    new-instance v0, Lcom/hyphenate/wrapper/callback/EMCommonCallback$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback$$ExternalSyntheticLambda1;-><init>(Lcom/hyphenate/wrapper/callback/EMCommonCallback;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgress(ILjava/lang/String;)V
    .locals 0

    .line 33
    new-instance p2, Lcom/hyphenate/wrapper/callback/EMCommonCallback$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lcom/hyphenate/wrapper/callback/EMCommonCallback$$ExternalSyntheticLambda2;-><init>(Lcom/hyphenate/wrapper/callback/EMCommonCallback;I)V

    invoke-virtual {p0, p2}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 26
    new-instance v0, Lcom/hyphenate/wrapper/callback/EMCommonCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/hyphenate/wrapper/callback/EMCommonCallback$$ExternalSyntheticLambda0;-><init>(Lcom/hyphenate/wrapper/callback/EMCommonCallback;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/callback/EMCommonCallback;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 0

    .line 16
    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMWrapperThreadUtil;->mainThreadExecute(Ljava/lang/Runnable;)V

    return-void
.end method
