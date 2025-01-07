.class Lcom/hyphenate/cwrapper/EMCWrapper$2;
.super Lcom/hyphenate/wrapper/callback/EMWrapperCallback;
.source "EMCWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/cwrapper/EMCWrapper;->nativeGet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/cwrapper/EMCWrapper;

.field final synthetic val$cid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hyphenate/cwrapper/EMCWrapper;Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/hyphenate/cwrapper/EMCWrapper$2;->this$0:Lcom/hyphenate/cwrapper/EMCWrapper;

    iput-object p2, p0, Lcom/hyphenate/cwrapper/EMCWrapper$2;->val$cid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hyphenate/wrapper/callback/EMWrapperCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Object;)V
    .locals 3

    .line 104
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "callbackId"

    .line 105
    iget-object v2, p0, Lcom/hyphenate/cwrapper/EMCWrapper$2;->val$cid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string v1, "error"

    .line 107
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    :cond_0
    sget-object p1, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "callback"

    iget-object v2, p0, Lcom/hyphenate/cwrapper/EMCWrapper$2;->val$cid:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onProgress(I)V
    .locals 3

    .line 118
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "callbackId"

    .line 119
    iget-object v2, p0, Lcom/hyphenate/cwrapper/EMCWrapper$2;->val$cid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "progress"

    .line 120
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 121
    sget-object p1, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "callbackProgress"

    iget-object v2, p0, Lcom/hyphenate/cwrapper/EMCWrapper$2;->val$cid:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 123
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 90
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "value"

    .line 92
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p1, "callbackId"

    .line 94
    iget-object v1, p0, Lcom/hyphenate/cwrapper/EMCWrapper$2;->val$cid:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    sget-object p1, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    const-string v1, "callback"

    iget-object v2, p0, Lcom/hyphenate/cwrapper/EMCWrapper$2;->val$cid:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, Lcom/hyphenate/wrapper/EMWrapperListener;->onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
