.class Lcom/hyphenate/chat/EMClient$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMClient;->_login(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/EMCallBack;ZLcom/hyphenate/chat/EMLoginType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMClient;

.field final synthetic val$autoLogin:Z

.field final synthetic val$callback:Lcom/hyphenate/EMCallBack;

.field final synthetic val$code:Ljava/lang/String;

.field final synthetic val$loginType:Lcom/hyphenate/chat/EMLoginType;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMClient;Ljava/lang/String;Lcom/hyphenate/EMCallBack;Ljava/lang/String;ZLcom/hyphenate/chat/EMLoginType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient$6;->this$0:Lcom/hyphenate/chat/EMClient;

    iput-object p2, p0, Lcom/hyphenate/chat/EMClient$6;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/chat/EMClient$6;->val$callback:Lcom/hyphenate/EMCallBack;

    iput-object p4, p0, Lcom/hyphenate/chat/EMClient$6;->val$code:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/hyphenate/chat/EMClient$6;->val$autoLogin:Z

    iput-object p6, p0, Lcom/hyphenate/chat/EMClient$6;->val$loginType:Lcom/hyphenate/chat/EMLoginType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "emchat manager login in process:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " threadName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMClient"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$6;->val$username:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$6;->val$callback:Lcom/hyphenate/EMCallBack;

    const/16 v1, 0x65

    const-string v2, "Invalid user name"

    invoke-interface {v0, v1, v2}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/hyphenate/chat/adapter/EMAError;

    invoke-direct {v0}, Lcom/hyphenate/chat/adapter/EMAError;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient$6;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v1}, Lcom/hyphenate/chat/EMClient;->access$000(Lcom/hyphenate/chat/EMClient;)Lcom/hyphenate/chat/adapter/EMAChatClient;

    move-result-object v3

    iget-object v4, p0, Lcom/hyphenate/chat/EMClient$6;->val$username:Ljava/lang/String;

    iget-object v5, p0, Lcom/hyphenate/chat/EMClient$6;->val$code:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/hyphenate/chat/EMClient$6;->val$autoLogin:Z

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient$6;->val$loginType:Lcom/hyphenate/chat/EMLoginType;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMLoginType;->ordinal()I

    move-result v7

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Lcom/hyphenate/chat/adapter/EMAChatClient;->login(Ljava/lang/String;Ljava/lang/String;ZILcom/hyphenate/chat/adapter/EMAError;)V

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/hyphenate/chat/EMClient$6;->val$username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hyphenate/chat/EMSessionManager;->setLastLoginUser(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient$6;->val$loginType:Lcom/hyphenate/chat/EMLoginType;

    sget-object v2, Lcom/hyphenate/chat/EMLoginType;->LOGIN_PASSWORD:Lcom/hyphenate/chat/EMLoginType;

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/hyphenate/chat/EMClient$6;->val$code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hyphenate/chat/EMSessionManager;->setLastLoginPwd(Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hyphenate/chat/EMSessionManager;->setLastLoginWithToken(Z)V

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMSessionManager;->clearLastLoginToken()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/hyphenate/chat/EMClient$6;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v1}, Lcom/hyphenate/chat/EMClient;->access$100(Lcom/hyphenate/chat/EMClient;)V

    :goto_0
    iget-boolean v1, p0, Lcom/hyphenate/chat/EMClient$6;->val$autoLogin:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient$6;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v1}, Lcom/hyphenate/chat/EMClient;->access$200(Lcom/hyphenate/chat/EMClient;)V

    :cond_2
    iget-object v1, p0, Lcom/hyphenate/chat/EMClient$6;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->onNewLogin()V

    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/push/EMPushHelper;->register()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient$6;->val$callback:Lcom/hyphenate/EMCallBack;

    invoke-interface {v1}, Lcom/hyphenate/EMCallBack;->onSuccess()V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/hyphenate/chat/EMClient$6;->val$callback:Lcom/hyphenate/EMCallBack;

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errMsg()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/hyphenate/EMCallBack;->onError(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Lcom/hyphenate/chat/adapter/EMAError;->errCode()I

    move-result v0

    const/16 v1, 0xca

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMSessionManager;->clearLastLoginPwd()V

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMSessionManager;->clearLastLoginToken()V

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMSessionManager;->clearLoginWithTokenData()V

    :cond_4
    return-void
.end method
