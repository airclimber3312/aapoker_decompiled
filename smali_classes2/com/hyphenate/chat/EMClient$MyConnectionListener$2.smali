.class Lcom/hyphenate/chat/EMClient$MyConnectionListener$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMClient$MyConnectionListener;->onDisconnected(ILcom/hyphenate/chat/adapter/EMALogoutInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hyphenate/chat/EMClient$MyConnectionListener;

.field final synthetic val$errCode:I

.field final synthetic val$logoutInfo:Lcom/hyphenate/chat/EMLoginExtensionInfo;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMClient$MyConnectionListener;ILcom/hyphenate/chat/EMLoginExtensionInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient$MyConnectionListener$2;->this$1:Lcom/hyphenate/chat/EMClient$MyConnectionListener;

    iput p2, p0, Lcom/hyphenate/chat/EMClient$MyConnectionListener$2;->val$errCode:I

    iput-object p3, p0, Lcom/hyphenate/chat/EMClient$MyConnectionListener$2;->val$logoutInfo:Lcom/hyphenate/chat/EMLoginExtensionInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$MyConnectionListener$2;->this$1:Lcom/hyphenate/chat/EMClient$MyConnectionListener;

    iget-object v0, v0, Lcom/hyphenate/chat/EMClient$MyConnectionListener;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v0}, Lcom/hyphenate/chat/EMClient;->access$300(Lcom/hyphenate/chat/EMClient;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/hyphenate/chat/EMClient$MyConnectionListener$2;->val$errCode:I

    const/16 v2, 0xd9

    const/16 v3, 0xd8

    const/16 v4, 0xd6

    const/16 v5, 0xd5

    const/16 v6, 0xcf

    const/16 v7, 0xce

    const/16 v8, 0x131

    const/16 v9, 0xdc

    const/16 v10, 0x8

    if-eq v1, v10, :cond_1

    if-eq v1, v9, :cond_1

    if-eq v1, v8, :cond_1

    if-eq v1, v7, :cond_1

    if-eq v1, v6, :cond_0

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMSessionManager;->clearLastLoginUser()V

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMSessionManager;->clearLastLoginToken()V

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMSessionManager;->clearLastLoginPwd()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMSessionManager;->clearLastLoginToken()V

    invoke-static {}, Lcom/hyphenate/chat/EMSessionManager;->getInstance()Lcom/hyphenate/chat/EMSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMSessionManager;->clearLastLoginPwd()V

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient$MyConnectionListener$2;->this$1:Lcom/hyphenate/chat/EMClient$MyConnectionListener;

    iget-object v1, v1, Lcom/hyphenate/chat/EMClient$MyConnectionListener;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->isSdkInited()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/hyphenate/chat/a/b;->a()Lcom/hyphenate/chat/a/b;

    move-result-object v1

    const-string v11, ""

    invoke-virtual {v1, v11}, Lcom/hyphenate/chat/a/b;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/chat/a/b;->a()Lcom/hyphenate/chat/a/b;

    move-result-object v1

    const-string v11, ""

    invoke-virtual {v1, v11}, Lcom/hyphenate/chat/a/b;->h(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/hyphenate/chat/EMClient$MyConnectionListener$2;->this$1:Lcom/hyphenate/chat/EMClient$MyConnectionListener;

    iget-object v1, v1, Lcom/hyphenate/chat/EMClient$MyConnectionListener;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v1}, Lcom/hyphenate/chat/EMClient;->access$300(Lcom/hyphenate/chat/EMClient;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/hyphenate/EMConnectionListener;

    iget v12, p0, Lcom/hyphenate/chat/EMClient$MyConnectionListener$2;->val$errCode:I

    invoke-interface {v11, v12}, Lcom/hyphenate/EMConnectionListener;->onDisconnected(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    iget v1, p0, Lcom/hyphenate/chat/EMClient$MyConnectionListener$2;->val$errCode:I

    if-eq v1, v7, :cond_4

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_4

    if-eq v1, v9, :cond_4

    if-eq v1, v8, :cond_4

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_4

    if-ne v1, v10, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/hyphenate/chat/EMClient$MyConnectionListener$2;->this$1:Lcom/hyphenate/chat/EMClient$MyConnectionListener;

    iget-object v1, v1, Lcom/hyphenate/chat/EMClient$MyConnectionListener;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v1}, Lcom/hyphenate/chat/EMClient;->access$300(Lcom/hyphenate/chat/EMClient;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMConnectionListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget v3, p0, Lcom/hyphenate/chat/EMClient$MyConnectionListener$2;->val$errCode:I

    iget-object v4, p0, Lcom/hyphenate/chat/EMClient$MyConnectionListener$2;->val$logoutInfo:Lcom/hyphenate/chat/EMLoginExtensionInfo;

    invoke-interface {v2, v3, v4}, Lcom/hyphenate/EMConnectionListener;->onLogout(ILcom/hyphenate/chat/EMLoginExtensionInfo;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
