.class final Lcom/tencent/imsdk/common/SystemUtil$1;
.super Ljava/lang/Object;
.source "SystemUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/common/SystemUtil;->getAppMemory()F
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$currentTimeMillis:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 394
    iput-wide p1, p0, Lcom/tencent/imsdk/common/SystemUtil$1;->val$currentTimeMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x0

    .line 399
    invoke-static {v0}, Lcom/tencent/imsdk/common/SystemUtil;->access$002(Z)Z

    .line 401
    :try_start_0
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 402
    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 403
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    .line 404
    iget-wide v1, p0, Lcom/tencent/imsdk/common/SystemUtil$1;->val$currentTimeMillis:J

    invoke-static {v1, v2}, Lcom/tencent/imsdk/common/SystemUtil;->access$102(J)J

    .line 405
    div-int/lit16 v0, v0, 0x400

    invoke-static {v0}, Lcom/tencent/imsdk/common/SystemUtil;->access$202(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
