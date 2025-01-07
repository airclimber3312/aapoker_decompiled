.class Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper$7;
.super Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;
.source "EMChatThreadManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;->createChatThread(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/wrapper/callback/EMCommonValueCallback<",
        "Lcom/hyphenate/chat/EMChatThread;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;


# direct methods
.method constructor <init>(Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper$7;->this$0:Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper;

    invoke-direct {p0, p2}, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/hyphenate/chat/EMChatThread;)V
    .locals 1

    const/4 v0, 0x0

    .line 235
    :try_start_0
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMChatThreadHelper;->toJson(Lcom/hyphenate/chat/EMChatThread;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper$7;->updateObject(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 237
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper$7;->updateObject(Ljava/lang/Object;)V

    :goto_0
    return-void

    :goto_1
    invoke-virtual {p0, v0}, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper$7;->updateObject(Ljava/lang/Object;)V

    .line 240
    throw p1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 230
    check-cast p1, Lcom/hyphenate/chat/EMChatThread;

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMChatThreadManagerWrapper$7;->onSuccess(Lcom/hyphenate/chat/EMChatThread;)V

    return-void
.end method
