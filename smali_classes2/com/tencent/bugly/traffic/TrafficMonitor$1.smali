.class final Lcom/tencent/bugly/traffic/TrafficMonitor$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/traffic/TrafficMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qI:Lcom/tencent/bugly/traffic/TrafficMonitor;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/traffic/TrafficMonitor;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor$1;->qI:Lcom/tencent/bugly/traffic/TrafficMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/tencent/bugly/traffic/TrafficMonitor$1;->qI:Lcom/tencent/bugly/traffic/TrafficMonitor;

    invoke-static {}, Lcom/tencent/bugly/traffic/TrafficMonitor;->ed()Ljava/util/ArrayList;

    move-result-object v1

    iget-boolean v2, p1, Lcom/tencent/bugly/traffic/TrafficMonitor;->qu:Z

    const-string v3, "TrafficMonitor"

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v4, "saveTrafficMsgs"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/tencent/bugly/traffic/TrafficMonitor;->b(Ljava/util/ArrayList;)V

    :cond_0
    iget-boolean v2, p1, Lcom/tencent/bugly/traffic/TrafficMonitor;->qv:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v4, "reportTrafficMsgs"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/tencent/bugly/traffic/TrafficMonitor;->d(Ljava/util/ArrayList;)V

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/traffic/TrafficMonitor;->ee()V

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/traffic/TrafficMonitor$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/bugly/traffic/TrafficMonitor$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method
