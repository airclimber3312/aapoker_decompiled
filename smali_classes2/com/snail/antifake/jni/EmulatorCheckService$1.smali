.class Lcom/snail/antifake/jni/EmulatorCheckService$1;
.super Lcom/snail/antifake/IEmulatorCheck$Stub;
.source "EmulatorCheckService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snail/antifake/jni/EmulatorCheckService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snail/antifake/jni/EmulatorCheckService;


# direct methods
.method constructor <init>(Lcom/snail/antifake/jni/EmulatorCheckService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/snail/antifake/jni/EmulatorCheckService$1;->this$0:Lcom/snail/antifake/jni/EmulatorCheckService;

    invoke-direct {p0}, Lcom/snail/antifake/IEmulatorCheck$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isEmulator()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/snail/antifake/jni/EmulatorCheckService$1;->this$0:Lcom/snail/antifake/jni/EmulatorCheckService;

    invoke-static {v0}, Lcom/snail/antifake/jni/EmulatorDetectUtil;->isEmulator(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public kill()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/snail/antifake/jni/EmulatorCheckService$1;->this$0:Lcom/snail/antifake/jni/EmulatorCheckService;

    invoke-virtual {v0}, Lcom/snail/antifake/jni/EmulatorCheckService;->stopSelf()V

    .line 38
    iget-object v0, p0, Lcom/snail/antifake/jni/EmulatorCheckService$1;->this$0:Lcom/snail/antifake/jni/EmulatorCheckService;

    iget-object v0, v0, Lcom/snail/antifake/jni/EmulatorCheckService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/snail/antifake/jni/EmulatorCheckService$1$1;

    invoke-direct {v1, p0}, Lcom/snail/antifake/jni/EmulatorCheckService$1$1;-><init>(Lcom/snail/antifake/jni/EmulatorCheckService$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
