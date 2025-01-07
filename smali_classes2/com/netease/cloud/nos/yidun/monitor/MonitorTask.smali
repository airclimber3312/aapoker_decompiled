.class public Lcom/netease/cloud/nos/yidun/monitor/MonitorTask;
.super Ljava/util/TimerTask;
.source "MonitorTask.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private ctx:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorTask;

    invoke-static {v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorTask;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorTask;->ctx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorTask;->LOGTAG:Ljava/lang/String;

    const-string v1, "run MonitorTask"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorTask;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->getMonitorHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/yidun/monitor/MonitorHttp;->post(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
