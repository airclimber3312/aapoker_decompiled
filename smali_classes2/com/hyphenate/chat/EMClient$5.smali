.class Lcom/hyphenate/chat/EMClient$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMClient;->getUserTokenFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMClient;

.field final synthetic val$callBack:Lcom/hyphenate/EMValueCallBack;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMClient;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMValueCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient$5;->this$0:Lcom/hyphenate/chat/EMClient;

    iput-object p2, p0, Lcom/hyphenate/chat/EMClient$5;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/chat/EMClient$5;->val$password:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyphenate/chat/EMClient$5;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient$5;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v1}, Lcom/hyphenate/chat/EMClient;->access$000(Lcom/hyphenate/chat/EMClient;)Lcom/hyphenate/chat/adapter/EMAChatClient;

    move-result-object v1

    iget-object v2, p0, Lcom/hyphenate/chat/EMClient$5;->val$username:Ljava/lang/String;

    iget-object v3, p0, Lcom/hyphenate/chat/EMClient$5;->val$password:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/hyphenate/chat/adapter/EMAChatClient;->getUserTokenFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/adapter/EMAError;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hyphenate/chat/EMClient$5;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$5;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    invoke-interface {v0, v1}, Lcom/hyphenate/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/hyphenate/chat/EMClient$5;->val$callBack:Lcom/hyphenate/EMValueCallBack;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errMsg()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hyphenate/EMValueCallBack;->onError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
