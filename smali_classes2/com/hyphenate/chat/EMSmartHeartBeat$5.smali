.class Lcom/hyphenate/chat/EMSmartHeartBeat$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMSmartHeartBeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMSmartHeartBeat;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$5;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "has network connection:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$5;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {v1}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$100(Lcom/hyphenate/chat/EMSmartHeartBeat;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hyphenate/util/NetUtils;->hasNetwork(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " has data conn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$5;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {v1}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$100(Lcom/hyphenate/chat/EMSmartHeartBeat;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hyphenate/util/NetUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isConnected to hyphenate server : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "smart ping"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$5;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$1100(Lcom/hyphenate/chat/EMSmartHeartBeat;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$5;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$1200(Lcom/hyphenate/chat/EMSmartHeartBeat;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "acquire wake lock"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$5;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$1300(Lcom/hyphenate/chat/EMSmartHeartBeat;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$5;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$1400(Lcom/hyphenate/chat/EMSmartHeartBeat;)V

    goto :goto_1

    :cond_0
    const-string v0, "....no connection to server"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$5;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$100(Lcom/hyphenate/chat/EMSmartHeartBeat;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hyphenate/util/NetUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/hyphenate/util/Utils;->isSdk14()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "no data connection but im connection is connected, reconnect"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    sget-object v1, Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;->NETWORK_NONE:Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->onNetworkChanged(Lcom/hyphenate/chat/adapter/EMAChatClient$EMANetwork;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->forceReconnect()V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/hyphenate/a/a;->d()V

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$5;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->scheduleNextAlarm()V

    return-void
.end method
