.class public Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;
.super Ljava/lang/Object;
.source "MonitorManager.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static conn:Landroid/content/ServiceConnection;

.field private static iSendStat:Lcom/netease/cloud/nos/yidun/monitor/ISendStat;

.field private static monitorConfigInit:Z

.field private static refCount:I

.field private static running:Z


# instance fields
.field private ctx:Landroid/content/Context;

.field private instConn:Landroid/content/ServiceConnection;

.field private instSendStat:Lcom/netease/cloud/nos/yidun/monitor/ISendStat;

.field private item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;

    invoke-static {v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->monitorConfigInit:Z

    .line 101
    sput-boolean v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->running:Z

    .line 102
    sput v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->refCount:I

    const/4 v0, 0x0

    .line 103
    sput-object v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->iSendStat:Lcom/netease/cloud/nos/yidun/monitor/ISendStat;

    .line 104
    new-instance v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager$2;

    invoke-direct {v0}, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager$2;-><init>()V

    sput-object v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->conn:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->ctx:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    .line 4
    iput-object v0, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/yidun/monitor/ISendStat;

    .line 5
    new-instance v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager$1;

    invoke-direct {v0, p0}, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager$1;-><init>(Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;)V

    iput-object v0, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->instConn:Landroid/content/ServiceConnection;

    .line 25
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->ctx:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    return-void
.end method

.method public static synthetic access$000(Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;)Lcom/netease/cloud/nos/yidun/monitor/ISendStat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/yidun/monitor/ISendStat;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;Lcom/netease/cloud/nos/yidun/monitor/ISendStat;)Lcom/netease/cloud/nos/yidun/monitor/ISendStat;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/yidun/monitor/ISendStat;

    return-object p1
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200()Lcom/netease/cloud/nos/yidun/monitor/ISendStat;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->iSendStat:Lcom/netease/cloud/nos/yidun/monitor/ISendStat;

    return-object v0
.end method

.method public static synthetic access$202(Lcom/netease/cloud/nos/yidun/monitor/ISendStat;)Lcom/netease/cloud/nos/yidun/monitor/ISendStat;
    .locals 0

    .line 1
    sput-object p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->iSendStat:Lcom/netease/cloud/nos/yidun/monitor/ISendStat;

    return-object p0
.end method

.method public static declared-synchronized endService(Landroid/content/Context;)V
    .locals 4

    const-string v0, "MonitorService has binded to else or unbinded: refCount="

    const-class v1, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;

    monitor-enter v1

    .line 1
    :try_start_0
    sget v2, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->refCount:I

    if-eqz v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    sput v3, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->refCount:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 9
    sget-object p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    const-string v0, "unbind MonitorService success"

    invoke-static {p0, v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    .line 10
    :cond_1
    :goto_0
    :try_start_1
    sget-object p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->refCount:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method private static declared-synchronized runService(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 5
    :try_start_1
    sput-boolean v1, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->running:Z

    .line 6
    sget-object v1, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    const-string v2, "init MonitorService"

    invoke-static {v1, v2}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/netease/cloud/nos/yidun/service/MonitorService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static sendStatItem(Landroid/content/Context;Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->iSendStat:Lcom/netease/cloud/nos/yidun/monitor/ISendStat;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    const-string v1, "iSendStat is null, bind to MonitorService"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p0}, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->runService(Landroid/content/Context;)V

    .line 5
    new-instance v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;

    invoke-direct {v0, p0, p1}, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;-><init>(Landroid/content/Context;Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;)V

    invoke-virtual {v0}, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->instStartService()V

    return-void

    .line 10
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/netease/cloud/nos/yidun/monitor/ISendStat;->sendStat(Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    sget-object p1, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send Statistic data exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "iSendStat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->iSendStat:Lcom/netease/cloud/nos/yidun/monitor/ISendStat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {p1, v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static declared-synchronized startService(Landroid/content/Context;)V
    .locals 5

    const-string v0, "bind MonitorService, iSendStat="

    const-string v1, "MonitorService has binded: refCount="

    const-class v2, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;

    monitor-enter v2

    .line 1
    :try_start_0
    sget v3, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->refCount:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->refCount:I

    if-lez v3, :cond_0

    .line 2
    sget-object p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->refCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    .line 6
    :cond_0
    :try_start_1
    sget-object v1, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->iSendStat:Lcom/netease/cloud/nos/yidun/monitor/ISendStat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v2

    return-void

    .line 11
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 12
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/netease/cloud/nos/yidun/service/MonitorService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    sget-object v3, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->conn:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 14
    sget-object p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->iSendStat:Lcom/netease/cloud/nos/yidun/monitor/ISendStat;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method


# virtual methods
.method public instEndService()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->instConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2
    sget-object v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    const-string v1, "unbind MonitorService success"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public instSendConfig()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/yidun/monitor/ISendStat;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    const-string v1, "instSendStat is null, not bind to MonitorService"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->monitorConfigInit:Z

    if-eqz v0, :cond_1

    return-void

    .line 10
    :cond_1
    :try_start_0
    new-instance v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;

    invoke-static {}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->getMonitorHost()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->getConnectionTimeout()I

    move-result v3

    .line 12
    invoke-static {}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->getSoTimeout()I

    move-result v4

    .line 13
    invoke-static {}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->getMonitorInterval()J

    move-result-wide v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;-><init>(Ljava/lang/String;IIJ)V

    .line 14
    iget-object v1, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/yidun/monitor/ISendStat;

    invoke-interface {v1, v0}, Lcom/netease/cloud/nos/yidun/monitor/ISendStat;->sendConfig(Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;)V

    .line 15
    sget-object v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    const-string v1, "send config to MonitorService"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    sget-object v1, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send MonitorConfig exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "instSendStat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/yidun/monitor/ISendStat;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-static {v1, v2}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public instSendStatItem()V
    .locals 4

    const-string v0, "send statistic to MonitorService, get configInit "

    .line 1
    iget-object v1, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/yidun/monitor/ISendStat;

    if-nez v1, :cond_0

    .line 2
    sget-object v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    const-string v1, "instSendStat is null, not bind to MonitorService"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    invoke-interface {v1, v2}, Lcom/netease/cloud/nos/yidun/monitor/ISendStat;->sendStat(Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;)Z

    move-result v1

    sput-boolean v1, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->monitorConfigInit:Z

    .line 8
    sget-object v1, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->monitorConfigInit:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    sget-object v1, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send Statistic data exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "instSendStat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/yidun/monitor/ISendStat;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {v1, v2}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public instStartService()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/yidun/monitor/ISendStat;

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->ctx:Landroid/content/Context;

    const-class v2, Lcom/netease/cloud/nos/yidun/service/MonitorService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    iget-object v1, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->instConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 8
    sget-object v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bind MonitorService, instSendStat="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/yidun/monitor/ISendStat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
