.class public Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;
.super Ljava/lang/Object;
.source "EMCommonValueCallback.java"

# interfaces
.implements Lcom/hyphenate/EMValueCallBack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/hyphenate/EMValueCallBack<",
        "TT;>;"
    }
.end annotation


# instance fields
.field callback:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;


# direct methods
.method public constructor <init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;->callback:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    return-void
.end method


# virtual methods
.method synthetic lambda$onError$0$com-hyphenate-wrapper-callback-EMCommonValueCallback(ILjava/lang/String;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;->callback:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    invoke-static {p1, p2}, Lcom/hyphenate/wrapper/helper/EMErrorHelper;->toJson(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hyphenate/wrapper/callback/EMWrapperCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$updateObject$1$com-hyphenate-wrapper-callback-EMCommonValueCallback(Ljava/lang/Object;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;->callback:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    invoke-virtual {v0, p1}, Lcom/hyphenate/wrapper/callback/EMWrapperCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 30
    new-instance v0, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback$$ExternalSyntheticLambda0;-><init>(Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic onProgress(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/hyphenate/EMValueCallBack$-CC;->$default$onProgress(Lcom/hyphenate/EMValueCallBack;ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;->updateObject(Ljava/lang/Object;)V

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 0

    .line 20
    invoke-static {p1}, Lcom/hyphenate/wrapper/util/EMWrapperThreadUtil;->mainThreadExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateObject(Ljava/lang/Object;)V
    .locals 1

    .line 36
    new-instance v0, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback$$ExternalSyntheticLambda1;-><init>(Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;->post(Ljava/lang/Runnable;)V

    return-void
.end method
