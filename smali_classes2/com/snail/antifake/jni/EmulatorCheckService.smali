.class public Lcom/snail/antifake/jni/EmulatorCheckService;
.super Landroid/app/Service;
.source "EmulatorCheckService.java"


# instance fields
.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snail/antifake/jni/EmulatorCheckService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 29
    new-instance p1, Lcom/snail/antifake/jni/EmulatorCheckService$1;

    invoke-direct {p1, p0}, Lcom/snail/antifake/jni/EmulatorCheckService$1;-><init>(Lcom/snail/antifake/jni/EmulatorCheckService;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 50
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 51
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
