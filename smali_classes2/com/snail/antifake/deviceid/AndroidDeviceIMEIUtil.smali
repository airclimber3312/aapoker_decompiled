.class public Lcom/snail/antifake/deviceid/AndroidDeviceIMEIUtil;
.super Ljava/lang/Object;
.source "AndroidDeviceIMEIUtil.java"


# static fields
.field public static sBatteryChangeReceiver:Lcom/snail/antifake/deviceid/BatteryChangeReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 42
    invoke-static {p0}, Lcom/snail/antifake/deviceid/androidid/IAndroidIdUtil;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBoard()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.product.board"

    .line 105
    invoke-static {v0}, Lcom/snail/antifake/jni/PropertiesGet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBootloader()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.bootloader"

    .line 117
    invoke-static {v0}, Lcom/snail/antifake/jni/PropertiesGet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBrand()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.product.brand"

    .line 83
    invoke-static {v0}, Lcom/snail/antifake/jni/PropertiesGet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCpuAbi()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.product.cpu.abi"

    .line 92
    invoke-static {v0}, Lcom/snail/antifake/jni/PropertiesGet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentBatteryLevel()I
    .locals 1

    .line 154
    sget-object v0, Lcom/snail/antifake/deviceid/AndroidDeviceIMEIUtil;->sBatteryChangeReceiver:Lcom/snail/antifake/deviceid/BatteryChangeReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snail/antifake/deviceid/BatteryChangeReceiver;->getCurrentLevel()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.product.device"

    .line 97
    invoke-static {v0}, Lcom/snail/antifake/jni/PropertiesGet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lcom/snail/antifake/deviceid/deviceid/DeviceIdUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHardware()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.hardware"

    .line 113
    invoke-static {v0}, Lcom/snail/antifake/jni/PropertiesGet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "phone"

    .line 123
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 124
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lcom/snail/antifake/deviceid/macaddress/MacAddressUtils;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.product.manufacturer"

    .line 78
    invoke-static {v0}, Lcom/snail/antifake/jni/PropertiesGet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.product.model"

    .line 87
    invoke-static {v0}, Lcom/snail/antifake/jni/PropertiesGet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSerialno()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 63
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 64
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "ro.serialno"

    .line 66
    invoke-static {v1}, Lcom/snail/antifake/jni/PropertiesGet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static isCharging()Z
    .locals 1

    .line 149
    sget-object v0, Lcom/snail/antifake/deviceid/AndroidDeviceIMEIUtil;->sBatteryChangeReceiver:Lcom/snail/antifake/deviceid/BatteryChangeReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snail/antifake/deviceid/BatteryChangeReceiver;->isCharging()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRunOnEmulator(Landroid/content/Context;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 31
    invoke-static {p0}, Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil;->mayOnEmulator(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isValidAddress(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "macAddress"
        }
    .end annotation

    .line 161
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "02:00:00:00:00:00"

    .line 162
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "00:90:4C:11:22:33"

    .line 163
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "00:90:4c:11:22:33"

    .line 164
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidIMEI(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 168
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 169
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 171
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 172
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public static registerBatteryChangeListener(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 132
    sget-object v0, Lcom/snail/antifake/deviceid/AndroidDeviceIMEIUtil;->sBatteryChangeReceiver:Lcom/snail/antifake/deviceid/BatteryChangeReceiver;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/snail/antifake/deviceid/BatteryChangeReceiver;

    invoke-direct {v0}, Lcom/snail/antifake/deviceid/BatteryChangeReceiver;-><init>()V

    sput-object v0, Lcom/snail/antifake/deviceid/AndroidDeviceIMEIUtil;->sBatteryChangeReceiver:Lcom/snail/antifake/deviceid/BatteryChangeReceiver;

    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    sget-object v1, Lcom/snail/antifake/deviceid/AndroidDeviceIMEIUtil;->sBatteryChangeReceiver:Lcom/snail/antifake/deviceid/BatteryChangeReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public static unRegisterBatteryChangeListener(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 141
    sget-object v0, Lcom/snail/antifake/deviceid/AndroidDeviceIMEIUtil;->sBatteryChangeReceiver:Lcom/snail/antifake/deviceid/BatteryChangeReceiver;

    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p0, 0x0

    .line 143
    sput-object p0, Lcom/snail/antifake/deviceid/AndroidDeviceIMEIUtil;->sBatteryChangeReceiver:Lcom/snail/antifake/deviceid/BatteryChangeReceiver;

    :cond_0
    return-void
.end method
