.class public Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil;
.super Ljava/lang/Object;
.source "EmuCheckUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil$CheckEmulatorCallBack;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkEmulatorFromCache(Landroid/content/Context;Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil$CheckEmulatorCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "callBack"
        }
    .end annotation

    .line 185
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/snail/antifake/jni/EmulatorCheckService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    new-instance v1, Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil$1;

    invoke-direct {v1, p1, p0}, Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil$1;-><init>(Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil$CheckEmulatorCallBack;Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static checkPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "permission"
        }
    .end annotation

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_2

    .line 59
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 59
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 61
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v2, :cond_1

    .line 63
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 66
    :cond_1
    invoke-static {p0, p1}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    :catch_0
    :cond_2
    :goto_0
    return v1
.end method

.method public static getCpuInfo()Ljava/lang/String;
    .locals 2

    const-string v0, "cat /proc/cpuinfo"

    const/4 v1, 0x0

    .line 158
    invoke-static {v0, v1}, Lcom/snail/antifake/deviceid/ShellAdbUtils;->execCommand(Ljava/lang/String;Z)Lcom/snail/antifake/deviceid/ShellAdbUtils$CommandResult;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, v0, Lcom/snail/antifake/deviceid/ShellAdbUtils$CommandResult;->successMsg:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static getEmulatorQEMUKernel()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.kernel.qemu"

    .line 138
    invoke-static {v0}, Lcom/snail/antifake/jni/PropertiesGet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getQEmuDriverFileString()Ljava/lang/String;
    .locals 6

    .line 163
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/tty/drivers"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x400

    :try_start_0
    new-array v3, v2, [C

    .line 168
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 169
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_0
    const/4 v4, 0x0

    .line 171
    invoke-virtual {v0, v3, v4, v2}, Ljava/io/Reader;->read([CII)I

    move-result v5

    if-gez v5, :cond_0

    goto :goto_1

    .line 175
    :cond_0
    invoke-virtual {v1, v3, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static hasQemuPipe()Z
    .locals 2

    .line 133
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/socket/qemud"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static hasQemuSocket()Z
    .locals 2

    .line 128
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/socket/qemud"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private static isEmulatorFromAbi()Z
    .locals 2

    .line 152
    invoke-static {}, Lcom/snail/antifake/deviceid/AndroidDeviceIMEIUtil;->getCpuAbi()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isEmulatorFromCpu()Z
    .locals 4

    const-string v0, "cat /proc/cpuinfo"

    const/4 v1, 0x0

    .line 144
    invoke-static {v0, v1}, Lcom/snail/antifake/deviceid/ShellAdbUtils;->execCommand(Ljava/lang/String;Z)Lcom/snail/antifake/deviceid/ShellAdbUtils$CommandResult;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, v0, Lcom/snail/antifake/deviceid/ShellAdbUtils$CommandResult;->successMsg:Ljava/lang/String;

    .line 146
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "intel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "amd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isEmulatorViaBuild(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string p0, "ro.product.model"

    .line 77
    invoke-static {p0}, Lcom/snail/antifake/jni/PropertiesGet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 78
    invoke-static {p0}, Lcom/snail/antifake/jni/PropertiesGet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "sdk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const-string p0, "ro.product.manufacturer"

    .line 85
    invoke-static {p0}, Lcom/snail/antifake/jni/PropertiesGet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ro.product.manufacture"

    .line 86
    invoke-static {p0}, Lcom/snail/antifake/jni/PropertiesGet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const-string p0, "ro.product.device"

    .line 93
    invoke-static {p0}, Lcom/snail/antifake/jni/PropertiesGet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    invoke-static {p0}, Lcom/snail/antifake/jni/PropertiesGet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "generic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isFakeEmulatorFromIMEI(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    :try_start_0
    const-string v0, "phone"

    .line 114
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 115
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 119
    :goto_0
    invoke-static {p0}, Lcom/snail/antifake/deviceid/deviceid/IPhoneSubInfoUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {p0}, Lcom/snail/antifake/deviceid/deviceid/ITelephonyUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static mayOnEmulator(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil;->mayOnEmulatorViaQEMU(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    invoke-static {p0}, Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil;->isEmulatorViaBuild(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 49
    invoke-static {}, Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil;->isEmulatorFromAbi()Z

    move-result p0

    if-nez p0, :cond_1

    .line 50
    invoke-static {}, Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil;->isEmulatorFromCpu()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static mayOnEmulatorViaQEMU(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string p0, "ro.kernel.qemu"

    .line 104
    invoke-static {p0}, Lcom/snail/antifake/jni/PropertiesGet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
