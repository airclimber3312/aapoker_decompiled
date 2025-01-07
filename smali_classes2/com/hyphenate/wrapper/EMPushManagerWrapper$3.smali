.class Lcom/hyphenate/wrapper/EMPushManagerWrapper$3;
.super Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;
.source "EMPushManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/wrapper/EMPushManagerWrapper;->setSilentModeForAll(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/wrapper/callback/EMCommonValueCallback<",
        "Lcom/hyphenate/chat/EMSilentModeResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/wrapper/EMPushManagerWrapper;


# direct methods
.method constructor <init>(Lcom/hyphenate/wrapper/EMPushManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/hyphenate/wrapper/EMPushManagerWrapper$3;->this$0:Lcom/hyphenate/wrapper/EMPushManagerWrapper;

    invoke-direct {p0, p2}, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/hyphenate/chat/EMSilentModeResult;)V
    .locals 1

    const/4 v0, 0x0

    .line 210
    :try_start_0
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMSilentModeResultHelper;->toJson(Lcom/hyphenate/chat/EMSilentModeResult;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMPushManagerWrapper$3;->updateObject(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 212
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMPushManagerWrapper$3;->updateObject(Ljava/lang/Object;)V

    :goto_0
    return-void

    :goto_1
    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMPushManagerWrapper$3;->updateObject(Ljava/lang/Object;)V

    .line 215
    throw p1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 205
    check-cast p1, Lcom/hyphenate/chat/EMSilentModeResult;

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMPushManagerWrapper$3;->onSuccess(Lcom/hyphenate/chat/EMSilentModeResult;)V

    return-void
.end method
