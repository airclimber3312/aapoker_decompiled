.class public Lcom/netease/cloud/nos/yidun/service/MonitorService$MsgBinder;
.super Lcom/netease/cloud/nos/yidun/monitor/ISendStat$Stub;
.source "MonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cloud/nos/yidun/service/MonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MsgBinder"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/netease/cloud/nos/yidun/service/MonitorService;


# direct methods
.method public constructor <init>(Lcom/netease/cloud/nos/yidun/service/MonitorService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/service/MonitorService$MsgBinder;->this$0:Lcom/netease/cloud/nos/yidun/service/MonitorService;

    invoke-direct {p0}, Lcom/netease/cloud/nos/yidun/monitor/ISendStat$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendConfig(Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/cloud/nos/yidun/service/MonitorService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Receive Monitor config"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->getMonitorHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->getMonitorHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->setMontiroHost(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->getMonitorInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->setMonitorInterval(J)V

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->getConnectionTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->setConnectionTimeout(I)V

    .line 11
    invoke-virtual {p1}, Lcom/netease/cloud/nos/yidun/monitor/MonitorConfig;->getSoTimeout()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->setSoTimeout(I)V
    :try_end_0
    .catch Lcom/netease/cloud/nos/yidun/exception/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    :goto_0
    invoke-static {}, Lcom/netease/cloud/nos/yidun/service/MonitorService;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "current Monitor config"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->getMonitorHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {p1, v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object p1, p0, Lcom/netease/cloud/nos/yidun/service/MonitorService$MsgBinder;->this$0:Lcom/netease/cloud/nos/yidun/service/MonitorService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netease/cloud/nos/yidun/service/MonitorService;->access$202(Lcom/netease/cloud/nos/yidun/service/MonitorService;Z)Z

    return-void
.end method

.method public sendStat(Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->set(Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/netease/cloud/nos/yidun/service/MonitorService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "send monitor data immediately"

    invoke-static {p1, v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/netease/cloud/nos/yidun/service/MonitorService$MsgBinder;->this$0:Lcom/netease/cloud/nos/yidun/service/MonitorService;

    invoke-static {p1}, Lcom/netease/cloud/nos/yidun/service/MonitorService;->access$100(Lcom/netease/cloud/nos/yidun/service/MonitorService;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/netease/cloud/nos/yidun/service/MonitorService$MsgBinder;->this$0:Lcom/netease/cloud/nos/yidun/service/MonitorService;

    invoke-static {p1}, Lcom/netease/cloud/nos/yidun/service/MonitorService;->access$200(Lcom/netease/cloud/nos/yidun/service/MonitorService;)Z

    move-result p1

    return p1
.end method
