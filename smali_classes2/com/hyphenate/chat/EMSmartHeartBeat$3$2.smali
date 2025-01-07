.class Lcom/hyphenate/chat/EMSmartHeartBeat$3$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMSmartHeartBeat$3;->onBackground()V
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

    iput-object p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$3$2;->this$1:Lcom/hyphenate/chat/EMSmartHeartBeat$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/push/EMPushHelper;->getPushType()Lcom/hyphenate/push/EMPushType;

    move-result-object v0

    sget-object v1, Lcom/hyphenate/push/EMPushType;->FCM:Lcom/hyphenate/push/EMPushType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$3$2;->this$1:Lcom/hyphenate/chat/EMSmartHeartBeat$3;

    iget-object v0, v0, Lcom/hyphenate/chat/EMSmartHeartBeat$3;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    iget-object v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$3$2;->this$1:Lcom/hyphenate/chat/EMSmartHeartBeat$3;

    iget-object v1, v1, Lcom/hyphenate/chat/EMSmartHeartBeat$3;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {v1}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$600(Lcom/hyphenate/chat/EMSmartHeartBeat;)Ljava/util/TimerTask;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$502(Lcom/hyphenate/chat/EMSmartHeartBeat;Ljava/util/TimerTask;)Ljava/util/TimerTask;

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$3$2;->this$1:Lcom/hyphenate/chat/EMSmartHeartBeat$3;

    iget-object v0, v0, Lcom/hyphenate/chat/EMSmartHeartBeat$3;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$700(Lcom/hyphenate/chat/EMSmartHeartBeat;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$3$2;->this$1:Lcom/hyphenate/chat/EMSmartHeartBeat$3;

    iget-object v1, v1, Lcom/hyphenate/chat/EMSmartHeartBeat$3;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {v1}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$500(Lcom/hyphenate/chat/EMSmartHeartBeat;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const-string v0, "smart ping"

    const-string v1, "schedule disconnect task"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
