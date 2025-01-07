.class Lcom/hyphenate/chat/EMSmartHeartBeat$4;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMSmartHeartBeat;->getTask()Ljava/util/TimerTask;
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

    iput-object p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$4;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "smart ping"

    const-string v1, "enter the disconnect task"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->disconnect()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$4;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$900(Lcom/hyphenate/chat/EMSmartHeartBeat;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$4;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {v1}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$800(Lcom/hyphenate/chat/EMSmartHeartBeat;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$4;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$100(Lcom/hyphenate/chat/EMSmartHeartBeat;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$4;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {v1}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$1000(Lcom/hyphenate/chat/EMSmartHeartBeat;)Lcom/hyphenate/chat/EMHeartBeatReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$4;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$1002(Lcom/hyphenate/chat/EMSmartHeartBeat;Lcom/hyphenate/chat/EMHeartBeatReceiver;)Lcom/hyphenate/chat/EMHeartBeatReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
