.class public Lcom/snail/antifake/deviceid/BatteryChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryChangeReceiver.java"


# instance fields
.field private mCurrentLevel:I

.field private mIsCharging:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentLevel()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/snail/antifake/deviceid/BatteryChangeReceiver;->mCurrentLevel:I

    return v0
.end method

.method public isCharging()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/snail/antifake/deviceid/BatteryChangeReceiver;->mIsCharging:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    const-string p1, "status"

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "level"

    .line 26
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/snail/antifake/deviceid/BatteryChangeReceiver;->mCurrentLevel:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 38
    :cond_0
    iput-boolean v0, p0, Lcom/snail/antifake/deviceid/BatteryChangeReceiver;->mIsCharging:Z

    goto :goto_0

    .line 34
    :cond_1
    iput-boolean p2, p0, Lcom/snail/antifake/deviceid/BatteryChangeReceiver;->mIsCharging:Z

    :goto_0
    return-void
.end method
