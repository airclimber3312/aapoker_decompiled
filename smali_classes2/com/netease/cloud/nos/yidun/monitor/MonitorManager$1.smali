.class public Lcom/netease/cloud/nos/yidun/monitor/MonitorManager$1;
.super Ljava/lang/Object;
.source "MonitorManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;


# direct methods
.method public constructor <init>(Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager$1;->this$0:Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager$1;->this$0:Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;

    invoke-static {p2}, Lcom/netease/cloud/nos/yidun/monitor/ISendStat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/netease/cloud/nos/yidun/monitor/ISendStat;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->access$002(Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;Lcom/netease/cloud/nos/yidun/monitor/ISendStat;)Lcom/netease/cloud/nos/yidun/monitor/ISendStat;

    .line 2
    invoke-static {}, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Stat onServiceConnected, instSendStat="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager$1;->this$0:Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;

    invoke-static {v0}, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->access$000(Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;)Lcom/netease/cloud/nos/yidun/monitor/ISendStat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager$1;->this$0:Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;

    invoke-virtual {p1}, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->instSendConfig()V

    .line 6
    iget-object p1, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager$1;->this$0:Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;

    invoke-virtual {p1}, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->instSendStatItem()V

    .line 7
    iget-object p1, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager$1;->this$0:Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;

    invoke-virtual {p1}, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->instEndService()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager$1;->this$0:Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;->access$002(Lcom/netease/cloud/nos/yidun/monitor/MonitorManager;Lcom/netease/cloud/nos/yidun/monitor/ISendStat;)Lcom/netease/cloud/nos/yidun/monitor/ISendStat;

    return-void
.end method
