.class Lcom/hyphenate/chat/EMPushManager$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMPushManager;->reportPushAction(Lorg/json/JSONObject;Lcom/hyphenate/chat/EMPushManager$EMPushAction;Lcom/hyphenate/EMCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMPushManager;

.field final synthetic val$action:Lcom/hyphenate/chat/EMPushManager$EMPushAction;

.field final synthetic val$callBack:Lcom/hyphenate/EMCallBack;

.field final synthetic val$json:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMPushManager;Lorg/json/JSONObject;Lcom/hyphenate/chat/EMPushManager$EMPushAction;Lcom/hyphenate/EMCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMPushManager$13;->this$0:Lcom/hyphenate/chat/EMPushManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMPushManager$13;->val$json:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/hyphenate/chat/EMPushManager$13;->val$action:Lcom/hyphenate/chat/EMPushManager$EMPushAction;

    iput-object p4, p0, Lcom/hyphenate/chat/EMPushManager$13;->val$callBack:Lcom/hyphenate/EMCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMPushManager$13;->val$json:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v1, "action"

    iget-object v2, p0, Lcom/hyphenate/chat/EMPushManager$13;->val$action:Lcom/hyphenate/chat/EMPushManager$EMPushAction;

    invoke-static {v2}, Lcom/hyphenate/chat/EMPushManager$EMPushAction;->access$100(Lcom/hyphenate/chat/EMPushManager$EMPushAction;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/hyphenate/chat/EMPushManager$13;->this$0:Lcom/hyphenate/chat/EMPushManager;

    iget-object v1, p0, Lcom/hyphenate/chat/EMPushManager$13;->val$json:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hyphenate/chat/EMPushManager;->access$200(Lcom/hyphenate/chat/EMPushManager;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMPushManager$13;->val$callBack:Lcom/hyphenate/EMCallBack;

    invoke-interface {v0}, Lcom/hyphenate/EMCallBack;->onSuccess()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/hyphenate/exceptions/HyphenateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMPushManager$13;->val$callBack:Lcom/hyphenate/EMCallBack;

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/hyphenate/exceptions/HyphenateException;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMPushManager$13;->val$callBack:Lcom/hyphenate/EMCallBack;

    const/16 v2, 0xcd

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    :goto_1
    return-void
.end method
