.class Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil$1;
.super Ljava/lang/Object;
.source "EmuCheckUtil.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil;->checkEmulatorFromCache(Landroid/content/Context;Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil$CheckEmulatorCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil$CheckEmulatorCallBack;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil$CheckEmulatorCallBack;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$callBack",
            "val$context"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil$1;->val$callBack:Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil$CheckEmulatorCallBack;

    iput-object p2, p0, Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "service"
        }
    .end annotation

    .line 188
    invoke-static {p2}, Lcom/snail/antifake/IEmulatorCheck$Stub;->asInterface(Landroid/os/IBinder;)Lcom/snail/antifake/IEmulatorCheck;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 191
    :try_start_0
    iget-object p2, p0, Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil$1;->val$callBack:Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil$CheckEmulatorCallBack;

    invoke-interface {p1}, Lcom/snail/antifake/IEmulatorCheck;->isEmulator()Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil$CheckEmulatorCallBack;->onCheckSuccess(Z)V

    .line 192
    iget-object p1, p0, Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    iget-object p1, p0, Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil$1;->val$callBack:Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil$CheckEmulatorCallBack;

    invoke-interface {p1}, Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil$CheckEmulatorCallBack;->onCheckFaild()V

    .line 195
    iget-object p1, p0, Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    return-void
.end method
