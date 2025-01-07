.class Lcom/hyphenate/chat/EMSmartHeartBeat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;,
        Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;,
        Lcom/hyphenate/chat/EMSmartHeartBeat$EMParamsQuickTest;,
        Lcom/hyphenate/chat/EMSmartHeartBeat$EMParams;,
        Lcom/hyphenate/chat/EMSmartHeartBeat$EMParamsCustomized;
    }
.end annotation


# static fields
.field static Debug:Z = false

.field private static final GCM_DISCONNECT_CHECK_INTERVAL:I = 0x2bf20

.field private static final PING_PONG_TIMEOUT:I = 0x1f40

.field private static final TAG:Ljava/lang/String; = "smart ping"


# instance fields
.field private alarmIntent:Landroid/app/PendingIntent;

.field private alarmIntentReceiver:Lcom/hyphenate/chat/EMHeartBeatReceiver;

.field private alarmManager:Landroid/app/AlarmManager;

.field private cnnListener:Lcom/hyphenate/EMConnectionListener;

.field private currentInterval:I

.field private dataReceivedDuringInterval:Z

.field private disconnectTask:Ljava/util/TimerTask;

.field private disconnectTimer:Ljava/util/Timer;

.field private fixedInterval:I

.field private heartBeatRunnable:Ljava/lang/Runnable;

.field private inited:Z

.field private isInBackground:Z

.field private mContext:Landroid/content/Context;

.field mCustomizedMobileParams:Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;

.field mCustomizedWifiParams:Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;

.field private messageListener:Lcom/hyphenate/EMMessageListener;

.field params:Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;

.field private pingState:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

.field private prevWifi:Z

.field private stateLock:Ljava/lang/Object;

.field private succeededInterval:I

.field threadPool:Ljava/util/concurrent/ExecutorService;

.field useCustomizedParams:Z

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->fixedInterval:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->useCustomizedParams:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->mCustomizedWifiParams:Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;

    iput-object v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->mCustomizedMobileParams:Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;

    iput-boolean v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->dataReceivedDuringInterval:Z

    iput-object v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->alarmIntentReceiver:Lcom/hyphenate/chat/EMHeartBeatReceiver;

    iput-object v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->alarmIntent:Landroid/app/PendingIntent;

    iput-object v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->cnnListener:Lcom/hyphenate/EMConnectionListener;

    iput-object v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->messageListener:Lcom/hyphenate/EMMessageListener;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->stateLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->inited:Z

    iput-boolean v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->prevWifi:Z

    iput-object v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->disconnectTimer:Ljava/util/Timer;

    iput-object v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->disconnectTask:Ljava/util/TimerTask;

    iput-boolean v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->isInBackground:Z

    sget-object v0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->EMReady:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    iput-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->pingState:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    new-instance v0, Lcom/hyphenate/chat/EMSmartHeartBeat$5;

    invoke-direct {v0, p0}, Lcom/hyphenate/chat/EMSmartHeartBeat$5;-><init>(Lcom/hyphenate/chat/EMSmartHeartBeat;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->heartBeatRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/hyphenate/chat/EMSmartHeartBeat;)I
    .locals 0

    iget p0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->fixedInterval:I

    return p0
.end method

.method static synthetic access$100(Lcom/hyphenate/chat/EMSmartHeartBeat;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/hyphenate/chat/EMSmartHeartBeat;)Lcom/hyphenate/chat/EMHeartBeatReceiver;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->alarmIntentReceiver:Lcom/hyphenate/chat/EMHeartBeatReceiver;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/hyphenate/chat/EMSmartHeartBeat;Lcom/hyphenate/chat/EMHeartBeatReceiver;)Lcom/hyphenate/chat/EMHeartBeatReceiver;
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->alarmIntentReceiver:Lcom/hyphenate/chat/EMHeartBeatReceiver;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/hyphenate/chat/EMSmartHeartBeat;)Z
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->hasDataConnection()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/hyphenate/chat/EMSmartHeartBeat;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/hyphenate/chat/EMSmartHeartBeat;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->checkPingPong()V

    return-void
.end method

.method static synthetic access$1400(Lcom/hyphenate/chat/EMSmartHeartBeat;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->releaseWakelock()V

    return-void
.end method

.method static synthetic access$200(Lcom/hyphenate/chat/EMSmartHeartBeat;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->isInBackground:Z

    return p0
.end method

.method static synthetic access$202(Lcom/hyphenate/chat/EMSmartHeartBeat;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->isInBackground:Z

    return p1
.end method

.method static synthetic access$300(Lcom/hyphenate/chat/EMSmartHeartBeat;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->calcDisconnectedInterval()V

    return-void
.end method

.method static synthetic access$402(Lcom/hyphenate/chat/EMSmartHeartBeat;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->dataReceivedDuringInterval:Z

    return p1
.end method

.method static synthetic access$500(Lcom/hyphenate/chat/EMSmartHeartBeat;)Ljava/util/TimerTask;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->disconnectTask:Ljava/util/TimerTask;

    return-object p0
.end method

.method static synthetic access$502(Lcom/hyphenate/chat/EMSmartHeartBeat;Ljava/util/TimerTask;)Ljava/util/TimerTask;
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->disconnectTask:Ljava/util/TimerTask;

    return-object p1
.end method

.method static synthetic access$600(Lcom/hyphenate/chat/EMSmartHeartBeat;)Ljava/util/TimerTask;
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->getTask()Ljava/util/TimerTask;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/hyphenate/chat/EMSmartHeartBeat;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->disconnectTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/hyphenate/chat/EMSmartHeartBeat;)Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->alarmIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static synthetic access$900(Lcom/hyphenate/chat/EMSmartHeartBeat;)Landroid/app/AlarmManager;
    .locals 0

    iget-object p0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->alarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method private calcDisconnectedInterval()V
    .locals 4

    const-string v0, "reset interval..."

    const-string v1, "smart ping"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hyphenate/util/NetUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    iget-object v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/hyphenate/util/NetUtils;->isEthernetConnected(Landroid/content/Context;)Z

    move-result v2

    sget-boolean v3, Lcom/hyphenate/chat/EMSmartHeartBeat;->Debug:Z

    if-eqz v3, :cond_0

    new-instance v2, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParamsQuickTest;

    invoke-direct {v2, p0}, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParamsQuickTest;-><init>(Lcom/hyphenate/chat/EMSmartHeartBeat;)V

    :goto_0
    iput-object v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->params:Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;

    goto :goto_2

    :cond_0
    iget-boolean v3, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->useCustomizedParams:Z

    if-eqz v3, :cond_3

    if-eqz v2, :cond_1

    new-instance v2, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParams;

    invoke-direct {v2, p0}, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParams;-><init>(Lcom/hyphenate/chat/EMSmartHeartBeat;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParamsCustomized;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->mCustomizedWifiParams:Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->mCustomizedMobileParams:Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;

    :goto_1
    invoke-direct {v2, p0, v3}, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParamsCustomized;-><init>(Lcom/hyphenate/chat/EMSmartHeartBeat;Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;)V

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParams;

    invoke-direct {v2, p0}, Lcom/hyphenate/chat/EMSmartHeartBeat$EMParams;-><init>(Lcom/hyphenate/chat/EMSmartHeartBeat;)V

    goto :goto_0

    :goto_2
    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->isSameNet(Z)Z

    move-result v2

    iput-boolean v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->prevWifi:Z

    const/4 v0, 0x0

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->currentInterval:I

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->params:Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;

    invoke-virtual {v3, v2, v0}, Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;->getNextInterval(IZ)I

    move-result v2

    iput v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->currentInterval:I

    iget-object v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->pingState:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    sget-object v3, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->EMHitted:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    if-ne v2, v3, :cond_5

    sget-object v2, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->EMEvaluating:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    goto :goto_3

    :cond_5
    sget-object v2, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->EMReevaluating:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    :goto_3
    invoke-direct {p0, v2}, Lcom/hyphenate/chat/EMSmartHeartBeat;->changeState(Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;)V

    iput v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->succeededInterval:I

    goto :goto_5

    :cond_6
    :goto_4
    iget-object v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->params:Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;->getDefaultInterval()I

    move-result v2

    iput v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->currentInterval:I

    iput v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->succeededInterval:I

    sget-object v2, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->EMEvaluating:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    invoke-direct {p0, v2}, Lcom/hyphenate/chat/EMSmartHeartBeat;->changeState(Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;)V

    :goto_5
    iput-boolean v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->dataReceivedDuringInterval:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "reset currentInterval:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->currentInterval:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/hyphenate/chat/EMCollector;->timeToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private changeState(Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;)V
    .locals 3

    const-string v0, "smart ping"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "change smart ping state from : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->pingState:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->pingState:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private checkPingPong()V
    .locals 6

    const-string v0, "check pingpong ..."

    const-string v1, "smart ping"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v2, v4, :cond_7

    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-boolean v3, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->dataReceivedDuringInterval:Z

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->sendPingPong()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "success to send ping pong ... with current heartbeat interval : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->currentInterval:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/hyphenate/chat/EMCollector;->timeToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->currentInterval:I

    iput v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->succeededInterval:I

    const-string v2, "send ping-pong successes"

    invoke-static {v1, v2}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->pingState:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    sget-object v4, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->EMHitted:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    if-ne v2, v4, :cond_1

    const-string v0, "that\'s already in the EMHitted state, just return..."

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->succeededInterval:I

    iget-object v4, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->params:Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;

    invoke-virtual {v4}, Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;->getMaxInterval()I

    move-result v4

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->pingState:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    sget-object v4, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->EMReevaluating:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    if-ne v2, v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->params:Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;

    iget v4, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->currentInterval:I

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;->getNextInterval(IZ)I

    move-result v2

    iput v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->currentInterval:I

    goto :goto_2

    :cond_3
    :goto_1
    iget v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->succeededInterval:I

    iget-object v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->params:Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;->getMaxInterval()I

    move-result v2

    if-ne v0, v2, :cond_4

    const-string v0, "Find the best interval, interval is the max interval"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->pingState:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    sget-object v2, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->EMReevaluating:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    if-ne v0, v2, :cond_5

    const-string v0, "success to pingping and current state is EMSmartPingState.EMReevaluating, so use current interval as final interval"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter the ping state : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->pingState:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->EMHitted:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->changeState(Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    return-void

    :catch_1
    const-string v0, "heartbeat thread be interrupt"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_7
    :goto_2
    if-nez v3, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to send ping pong ... with current heartbeat interval : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->currentInterval:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/hyphenate/chat/EMCollector;->timeToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->hasDataConnection()Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->currentInterval:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/hyphenate/chat/EMCollector;->timeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->pingState:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    sget-object v3, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->EMEvaluating:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->pingState:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    sget-object v3, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->EMHitted:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    if-ne v2, v3, :cond_9

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send ping-pong failed, but has success interval candidate with ping state : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->pingState:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " enter EMSmartPingState.EMReevaluating"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->EMReevaluating:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    invoke-direct {p0, v1}, Lcom/hyphenate/chat/EMSmartHeartBeat;->changeState(Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;)V

    :cond_9
    iput v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->succeededInterval:I

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->forceReconnect()V

    :cond_a
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/hyphenate/chat/EMSmartHeartBeat;
    .locals 1

    new-instance v0, Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-direct {v0, p0}, Lcom/hyphenate/chat/EMSmartHeartBeat;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getTask()Ljava/util/TimerTask;
    .locals 1

    new-instance v0, Lcom/hyphenate/chat/EMSmartHeartBeat$4;

    invoke-direct {v0, p0}, Lcom/hyphenate/chat/EMSmartHeartBeat$4;-><init>(Lcom/hyphenate/chat/EMSmartHeartBeat;)V

    return-object v0
.end method

.method private hasDataConnection()Z
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hyphenate/util/NetUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSameNet(Z)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prevWifi:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->prevWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isWifi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "smart ping"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->prevWifi:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private releaseWakelock()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "smart ping"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "smart ping"

    const-string v1, "released the wake lock"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private reset()V
    .locals 2

    const-string v0, "smart ping"

    const-string v1, "reset interval..."

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->currentInterval:I

    iput v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->succeededInterval:I

    iput-boolean v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->dataReceivedDuringInterval:Z

    sget-object v0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->EMEvaluating:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->changeState(Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;)V

    return-void
.end method

.method private sendPingPong()Z
    .locals 4

    const-string v0, "smart ping"

    const-string v1, "send ping-pong type heartbeat"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->checkTokenAvailability()V

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Lcom/hyphenate/chat/EMClient;->sendPing(ZJ)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onInit()V
    .locals 3

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->threadPool:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->EMEvaluating:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->changeState(Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;)V

    invoke-direct {p0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->reset()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->disconnectTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->alarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->cnnListener:Lcom/hyphenate/EMConnectionListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hyphenate/chat/EMSmartHeartBeat$1;

    invoke-direct {v0, p0}, Lcom/hyphenate/chat/EMSmartHeartBeat$1;-><init>(Lcom/hyphenate/chat/EMSmartHeartBeat;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->cnnListener:Lcom/hyphenate/EMConnectionListener;

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->messageListener:Lcom/hyphenate/EMMessageListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/hyphenate/chat/EMSmartHeartBeat$2;

    invoke-direct {v0, p0}, Lcom/hyphenate/chat/EMSmartHeartBeat$2;-><init>(Lcom/hyphenate/chat/EMSmartHeartBeat;)V

    iput-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->messageListener:Lcom/hyphenate/EMMessageListener;

    :cond_1
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->cnnListener:Lcom/hyphenate/EMConnectionListener;

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->addConnectionListener(Lcom/hyphenate/EMConnectionListener;)V

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->messageListener:Lcom/hyphenate/EMMessageListener;

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMChatManager;->addMessageListener(Lcom/hyphenate/EMMessageListener;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const-string v1, "heartbeatlock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->wakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_2
    invoke-static {}, Lcom/hyphenate/util/Utils;->isSdk14()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    new-instance v1, Lcom/hyphenate/chat/EMSmartHeartBeat$3;

    invoke-direct {v1, p0}, Lcom/hyphenate/chat/EMSmartHeartBeat$3;-><init>(Lcom/hyphenate/chat/EMSmartHeartBeat;)V

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->setAppStateListener(Lcom/hyphenate/chat/EMClient$AppStateListener;)V

    :cond_3
    iput-boolean v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->inited:Z

    return-void
.end method

.method public scheduleNextAlarm()V
    .locals 9

    const-string v0, "smart ping"

    const-string v1, "current heartbeat interval is not set, use default interval : "

    const-string v2, "current heartbeat interval : "

    :try_start_0
    const-string v3, "schedule next alarm"

    invoke-static {v0, v3}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->currentInterval:I

    int-to-long v4, v2

    invoke-static {v4, v5}, Lcom/hyphenate/chat/EMCollector;->timeToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " smart ping state : "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->pingState:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->dataReceivedDuringInterval:Z

    iget-object v3, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->alarmIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x17

    const-string v5, "hyphenate.chat.heatbeat."

    if-nez v3, :cond_1

    :try_start_1
    new-instance v3, Landroid/content/Intent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hyphenate/chat/EMClient;->getChatConfigPrivate()Lcom/hyphenate/chat/a/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hyphenate/chat/a/a;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v4, :cond_0

    iget-object v6, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->mContext:Landroid/content/Context;

    const/high16 v7, 0x4000000

    invoke-static {v6, v2, v3, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->alarmIntent:Landroid/app/PendingIntent;

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->alarmIntentReceiver:Lcom/hyphenate/chat/EMHeartBeatReceiver;

    if-nez v3, :cond_3

    new-instance v3, Lcom/hyphenate/chat/EMHeartBeatReceiver;

    invoke-direct {v3, p0}, Lcom/hyphenate/chat/EMHeartBeatReceiver;-><init>(Lcom/hyphenate/chat/EMSmartHeartBeat;)V

    iput-object v3, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->alarmIntentReceiver:Lcom/hyphenate/chat/EMHeartBeatReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hyphenate/chat/EMClient;->getChatConfigPrivate()Lcom/hyphenate/chat/a/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hyphenate/chat/a/a;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x21

    if-lt v5, v6, :cond_2

    iget-object v5, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->alarmIntentReceiver:Lcom/hyphenate/chat/EMHeartBeatReceiver;

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v3, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->alarmIntentReceiver:Lcom/hyphenate/chat/EMHeartBeatReceiver;

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-direct {p0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->hasDataConnection()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->currentInterval:I

    if-gtz v3, :cond_5

    iget-object v3, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->params:Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/hyphenate/chat/EMSmartHeartBeat$IParams;->getDefaultInterval()I

    move-result v3

    iput v3, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->currentInterval:I

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->currentInterval:I

    int-to-long v5, v1

    invoke-static {v5, v6}, Lcom/hyphenate/chat/EMCollector;->timeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->currentInterval:I

    int-to-long v7, v1

    add-long/2addr v5, v7

    goto :goto_3

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x2bf20

    add-long/2addr v5, v7

    const-string v1, "is not connected to server, so use idle interval : 3 mins"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v1, v3, :cond_8

    iget-object v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->alarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->alarmIntent:Landroid/app/PendingIntent;

    :goto_4
    invoke-virtual {v1, v2, v5, v6, v3}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->alarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->alarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v5, v6, v3}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_5

    :cond_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_9

    iget-object v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->alarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->alarmIntent:Landroid/app/PendingIntent;

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->alarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->alarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v5, v6, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "schedule next alarm error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method sendPingCheckConnection()V
    .locals 4

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/hyphenate/chat/EMClient;->sendPing(ZJ)Z

    move-result v0

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->checkTokenAvailability()V

    if-eqz v0, :cond_0

    const-string v1, "success"

    goto :goto_0

    :cond_0
    const-string v1, "timeout"

    :goto_0
    const-string v2, "send check Ping "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "smart ping"

    invoke-static {v2, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->dataReceivedDuringInterval:Z

    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->scheduleNextAlarm()V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->forceReconnect()V

    :goto_1
    return-void
.end method

.method public setCustomizedParams(Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->useCustomizedParams:Z

    iput-object p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->mCustomizedWifiParams:Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;

    iput-object p2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->mCustomizedMobileParams:Lcom/hyphenate/chat/adapter/EMAHeartBeatCustomizedParams;

    :cond_1
    :goto_0
    return-void
.end method

.method public setFixedInterval(I)V
    .locals 0

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->fixedInterval:I

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->pingState:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    sget-object v1, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->EMStopped:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hyphenate/util/NetUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->onNetworkChanged()V

    :cond_1
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hyphenate/util/NetUtils;->hasNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->dataReceivedDuringInterval:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->dataReceivedDuringInterval:Z

    const-string v0, "smart ping"

    const-string v1, "receiving packet..."

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "smart ping"

    const-string v1, "post heartbeat runnable"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->threadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->threadPool:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->heartBeatRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :goto_0
    iget-boolean v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->dataReceivedDuringInterval:Z

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->dataReceivedDuringInterval:Z

    :cond_6
    invoke-virtual {p0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->scheduleNextAlarm()V

    return-void
.end method

.method public stop()V
    .locals 3

    const-string v0, "smart ping"

    const-string v1, "stop heart beat timer"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->inited:Z

    if-nez v0, :cond_0

    const-string v0, "smart ping"

    const-string v1, "smart heartbeat is not inited!"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;->EMStopped:Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;

    invoke-direct {p0, v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->changeState(Lcom/hyphenate/chat/EMSmartHeartBeat$EMSmartPingState;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->reset()V

    invoke-direct {p0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->releaseWakelock()V

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->disconnectTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->cnnListener:Lcom/hyphenate/EMConnectionListener;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->cnnListener:Lcom/hyphenate/EMConnectionListener;

    invoke-virtual {v0, v1}, Lcom/hyphenate/chat/EMClient;->removeConnectionListener(Lcom/hyphenate/EMConnectionListener;)V

    :cond_1
    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->messageListener:Lcom/hyphenate/EMMessageListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->chatManager()Lcom/hyphenate/chat/EMChatManager;

    move-result-object v0

    iget-object v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->messageListener:Lcom/hyphenate/EMMessageListener;

    invoke-virtual {v0, v2}, Lcom/hyphenate/chat/EMChatManager;->removeMessageListener(Lcom/hyphenate/EMMessageListener;)V

    iput-object v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->messageListener:Lcom/hyphenate/EMMessageListener;

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->alarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->alarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->alarmIntentReceiver:Lcom/hyphenate/chat/EMHeartBeatReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat;->alarmIntentReceiver:Lcom/hyphenate/chat/EMHeartBeatReceiver;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Receiver not registered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
