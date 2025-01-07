.class public Lcom/tencent/rmonitor/common/bhook/BHookManager;
.super Ljava/lang/Object;


# static fields
.field private static xM:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "rmonitor_base"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/rmonitor/common/bhook/BHookManager;->xM:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/rmonitor/common/bhook/BHookManager;->xM:Z

    return-void
.end method

.method public static ga()I
    .locals 1

    sget-boolean v0, Lcom/tencent/rmonitor/common/bhook/BHookManager;->xM:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/rmonitor/common/bhook/BHookManager;->getSigLongJmpNumberNative()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static native getSigLongJmpNumberNative()I
.end method
