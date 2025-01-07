.class public Lcom/snail/antifake/jni/EmulatorDetectUtil;
.super Ljava/lang/Object;
.source "EmulatorDetectUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snail/antifake/jni/EmulatorDetectUtil$Arch;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "emulator_check"

    .line 19
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native detectS()Z
.end method

.method public static getSystemArch()I
    .locals 3

    const-string v0, "ro.product.cpu.abi"

    .line 40
    invoke-static {v0}, Lcom/snail/antifake/jni/PropertiesGet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "armeabi-v7a"

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const-string v1, "arm64-v8a"

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const-string v1, "x86"

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    const-string v1, "x86_64"

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v2
.end method

.method public static isEmulator(Landroid/content/Context;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 29
    invoke-static {}, Lcom/snail/antifake/jni/EmulatorDetectUtil;->detectS()Z

    move-result p0

    return p0
.end method

.method public static isEmulatorFromAll(Landroid/content/Context;)Z
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
    invoke-static {p0}, Lcom/snail/antifake/deviceid/AndroidDeviceIMEIUtil;->isRunOnEmulator(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/snail/antifake/jni/EmulatorDetectUtil;->detectS()Z

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
