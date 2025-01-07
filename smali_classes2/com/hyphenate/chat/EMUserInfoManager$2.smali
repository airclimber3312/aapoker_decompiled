.class Lcom/hyphenate/chat/EMUserInfoManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMUserInfoManager;->updateOwnInfoByAttribute(Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMUserInfoManager;

.field final synthetic val$attribute:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

.field final synthetic val$callBack:Lcom/hyphenate/EMValueCallBack;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMUserInfoManager;Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMUserInfoManager$2;->this$0:Lcom/hyphenate/chat/EMUserInfoManager;

    iput-object p2, p0, Lcom/hyphenate/chat/EMUserInfoManager$2;->val$attribute:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    iput-object p3, p0, Lcom/hyphenate/chat/EMUserInfoManager$2;->val$value:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyphenate/chat/EMUserInfoManager$2;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "EMUserInfoManager"

    const-string v1, "updateOwnInfoByAttribute failed error:"

    const-string v2, "updateOwnInfoByAttribute response: "

    const-string v3, "updateOwnInfoByAttribute param: "

    new-instance v4, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v4}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v6, p0, Lcom/hyphenate/chat/EMUserInfoManager$2;->val$attribute:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    invoke-virtual {v6}, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->getDesc()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/hyphenate/chat/EMUserInfoManager$2;->val$value:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hyphenate/chat/EMUserInfoManager$2;->this$0:Lcom/hyphenate/chat/EMUserInfoManager;

    iget-object v3, v3, Lcom/hyphenate/chat/EMUserInfoManager;->emaObject:Lcom/hyphenate/chat/adapter/EMAUserInfoManager;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/hyphenate/chat/adapter/EMAUserInfoManager;->updateOwnInfo(Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hyphenate/chat/EMUserInfoManager$2;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v4}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "updateOwnInfoByAttribute success"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMUserInfoManager$2;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    invoke-interface {v0, v3}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  errorMessage:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/hyphenate/chat/adapter/EMAError;->errMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMUserInfoManager$2;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    invoke-virtual {v4}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v1

    invoke-virtual {v4}, Lcom/hyphenate/chat/adapter/EMAError;->errMsg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    :goto_0
    return-void
.end method
