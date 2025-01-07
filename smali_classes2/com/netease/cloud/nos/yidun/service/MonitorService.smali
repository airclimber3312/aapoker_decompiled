.class public Lcom/netease/cloud/nos/yidun/service/MonitorService;
.super Landroid/app/Service;
.source "MonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cloud/nos/yidun/service/MonitorService$MsgBinder;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private configInit:Z

.field private msgBinder:Lcom/netease/cloud/nos/yidun/service/MonitorService$MsgBinder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/netease/cloud/nos/yidun/service/MonitorService;

    invoke-static {v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/yidun/service/MonitorService;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/netease/cloud/nos/yidun/service/MonitorService;->msgBinder:Lcom/netease/cloud/nos/yidun/service/MonitorService$MsgBinder;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/netease/cloud/nos/yidun/service/MonitorService;->configInit:Z

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/cloud/nos/yidun/service/MonitorService;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/netease/cloud/nos/yidun/service/MonitorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/cloud/nos/yidun/service/MonitorService;->postMonitorData()V

    return-void
.end method

.method public static synthetic access$200(Lcom/netease/cloud/nos/yidun/service/MonitorService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/cloud/nos/yidun/service/MonitorService;->configInit:Z

    return p0
.end method

.method public static synthetic access$202(Lcom/netease/cloud/nos/yidun/service/MonitorService;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/cloud/nos/yidun/service/MonitorService;->configInit:Z

    return p1
.end method

.method private postMonitorData()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/cloud/nos/yidun/service/MonitorService$1;

    invoke-direct {v1, p0}, Lcom/netease/cloud/nos/yidun/service/MonitorService$1;-><init>(Lcom/netease/cloud/nos/yidun/service/MonitorService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    sget-object p1, Lcom/netease/cloud/nos/yidun/service/MonitorService;->LOGTAG:Ljava/lang/String;

    const-string v0, "MonitorService onBind"

    invoke-static {p1, v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/netease/cloud/nos/yidun/service/MonitorService;->msgBinder:Lcom/netease/cloud/nos/yidun/service/MonitorService$MsgBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/cloud/nos/yidun/service/MonitorService;->LOGTAG:Ljava/lang/String;

    const-string v1, "MonitorService onCreate"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 3
    new-instance v0, Lcom/netease/cloud/nos/yidun/service/MonitorService$MsgBinder;

    invoke-direct {v0, p0}, Lcom/netease/cloud/nos/yidun/service/MonitorService$MsgBinder;-><init>(Lcom/netease/cloud/nos/yidun/service/MonitorService;)V

    iput-object v0, p0, Lcom/netease/cloud/nos/yidun/service/MonitorService;->msgBinder:Lcom/netease/cloud/nos/yidun/service/MonitorService$MsgBinder;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/cloud/nos/yidun/service/MonitorService;->LOGTAG:Ljava/lang/String;

    const-string v1, "MonitorService onDestroy"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/netease/cloud/nos/yidun/service/MonitorService;->msgBinder:Lcom/netease/cloud/nos/yidun/service/MonitorService$MsgBinder;

    .line 3
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/cloud/nos/yidun/service/MonitorService;->LOGTAG:Ljava/lang/String;

    const-string v1, "Service onStart"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 4
    invoke-direct {p0}, Lcom/netease/cloud/nos/yidun/service/MonitorService;->postMonitorData()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/cloud/nos/yidun/service/MonitorService;->LOGTAG:Ljava/lang/String;

    const-string v1, "Service onStartCommand"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
