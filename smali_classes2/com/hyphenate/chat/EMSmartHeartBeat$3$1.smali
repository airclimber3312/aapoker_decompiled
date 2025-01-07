.class Lcom/hyphenate/chat/EMSmartHeartBeat$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMSmartHeartBeat$3;->onForeground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hyphenate/chat/EMSmartHeartBeat$3;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMSmartHeartBeat$3;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$3$1;->this$1:Lcom/hyphenate/chat/EMSmartHeartBeat$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/push/EMPushHelper;->getPushType()Lcom/hyphenate/push/EMPushType;

    move-result-object v0

    sget-object v1, Lcom/hyphenate/push/EMPushType;->FCM:Lcom/hyphenate/push/EMPushType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$3$1;->this$1:Lcom/hyphenate/chat/EMSmartHeartBeat$3;

    iget-object v0, v0, Lcom/hyphenate/chat/EMSmartHeartBeat$3;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$500(Lcom/hyphenate/chat/EMSmartHeartBeat;)Ljava/util/TimerTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$3$1;->this$1:Lcom/hyphenate/chat/EMSmartHeartBeat$3;

    iget-object v0, v0, Lcom/hyphenate/chat/EMSmartHeartBeat$3;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$500(Lcom/hyphenate/chat/EMSmartHeartBeat;)Ljava/util/TimerTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$3$1;->this$1:Lcom/hyphenate/chat/EMSmartHeartBeat$3;

    iget-object v0, v0, Lcom/hyphenate/chat/EMSmartHeartBeat$3;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$100(Lcom/hyphenate/chat/EMSmartHeartBeat;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hyphenate/util/NetUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->onNetworkChanged()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$3$1;->this$1:Lcom/hyphenate/chat/EMSmartHeartBeat$3;

    iget-object v0, v0, Lcom/hyphenate/chat/EMSmartHeartBeat$3;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->sendPingCheckConnection()V

    :cond_2
    :goto_0
    return-void
.end method
