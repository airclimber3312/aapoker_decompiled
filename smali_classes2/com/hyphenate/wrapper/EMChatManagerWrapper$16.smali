.class Lcom/hyphenate/wrapper/EMChatManagerWrapper$16;
.super Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;
.source "EMChatManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/wrapper/EMChatManagerWrapper;->modifyMessage(Lorg/json/JSONObject;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hyphenate/wrapper/callback/EMCommonValueCallback<",
        "Lcom/hyphenate/chat/EMMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/wrapper/EMChatManagerWrapper;


# direct methods
.method constructor <init>(Lcom/hyphenate/wrapper/EMChatManagerWrapper;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V
    .locals 0

    .line 900
    iput-object p1, p0, Lcom/hyphenate/wrapper/EMChatManagerWrapper$16;->this$0:Lcom/hyphenate/wrapper/EMChatManagerWrapper;

    invoke-direct {p0, p2}, Lcom/hyphenate/wrapper/callback/EMCommonValueCallback;-><init>(Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/hyphenate/chat/EMMessage;)V
    .locals 0

    .line 905
    :try_start_0
    invoke-static {p1}, Lcom/hyphenate/wrapper/helper/EMMessageHelper;->toJson(Lcom/hyphenate/chat/EMMessage;)Lorg/json/JSONObject;

    move-result-object p1

    .line 906
    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$16;->updateObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 908
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 900
    check-cast p1, Lcom/hyphenate/chat/EMMessage;

    invoke-virtual {p0, p1}, Lcom/hyphenate/wrapper/EMChatManagerWrapper$16;->onSuccess(Lcom/hyphenate/chat/EMMessage;)V

    return-void
.end method
