.class public interface abstract Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil$CheckEmulatorCallBack;
.super Ljava/lang/Object;
.source "EmuCheckUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snail/antifake/deviceid/emulator/EmuCheckUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CheckEmulatorCallBack"
.end annotation


# virtual methods
.method public abstract onCheckFaild()V
.end method

.method public abstract onCheckSuccess(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEmulator"
        }
    .end annotation
.end method
