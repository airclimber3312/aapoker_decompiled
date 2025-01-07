.class Lcom/hyphenate/wrapper/EMChatManagerWrapper$1;
.super Ljava/lang/Object;
.source "EMChatManagerWrapper.java"

# interfaces
.implements Lcom/hyphenate/EMCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/wrapper/EMChatManagerWrapper;->sendMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/wrapper/EMChatManagerWrapper;

.field final synthetic val$callback:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

.field final synthetic val$msg:Lcom/hyphenate/chat/EMMessage;


# direct methods
.method constructor <init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Lcom/hyphenate/chat/EMMessage;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$1;->this$0:Lcom/hyphenate/wrapper/EMChatManagerWrapper;

    iput-object p2, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$1;->val$msg:Lcom/hyphenate/chat/EMMessage;

    iput-object p3, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$1;->val$callback:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 172
    new-instance v0, Lcom/hyphenate/exceptions/HyphenateException;

    invoke-direct {v0, p1, p2}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    .line 173
    iget-object p1, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$1;->val$callback:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    invoke-static {v0}, Lcom/hyphenate/wrapper/helper/HyphenateExceptionHelper;->toJson(Lcom/hyphenate/exceptions/HyphenateException;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hyphenate/wrapper/callback/EMWrapperCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method public onProgress(ILjava/lang/String;)V
    .locals 0

    .line 178
    iget-object p2, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$1;->val$callback:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    invoke-virtual {p2, p1}, Lcom/hyphenate/wrapper/callback/EMWrapperCallback;->onProgress(I)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 161
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "ret"

    .line 163
    iget-object v2, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$1;->val$msg:Lcom/hyphenate/chat/EMMessage;

    invoke-static {v2}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    iget-object v1, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$1;->val$callback:Lcom/hyphenate/wrapper/callback/EMWrapperCallback;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hyphenate/wrapper/callback/EMWrapperCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
