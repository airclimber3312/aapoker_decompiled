.class public final Lcom/tencent/bugly/proguard/ag$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\u0006J\u0006\u0010\u000c\u001a\u00020\nJ\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/tencent/bugly/common/looper/FrameManager$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "frameManager",
        "Lcom/tencent/bugly/common/looper/FrameManager;",
        "handler",
        "Landroid/os/Handler;",
        "clearForTest",
        "",
        "getFrameManagerForUnitTest",
        "init",
        "isInit",
        "",
        "isStart",
        "register",
        "listener",
        "Lcom/tencent/bugly/common/looper/IFrame;",
        "unRegister",
        "bugly-pro_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ag$a;-><init>()V

    return-void
.end method

.method public static a(Lcom/tencent/bugly/proguard/ah;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/cn;->bk()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/bugly/proguard/ag;->H()Lcom/tencent/bugly/proguard/ag;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/ag;->a(Lcom/tencent/bugly/proguard/ah;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/ag;->I()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/proguard/ag$a$a;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/ag$a$a;-><init>(Lcom/tencent/bugly/proguard/ah;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static b(Lcom/tencent/bugly/proguard/ah;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/cn;->bk()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/bugly/proguard/ag;->H()Lcom/tencent/bugly/proguard/ag;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/ag;->b(Lcom/tencent/bugly/proguard/ah;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/ag;->I()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/proguard/ag$a$b;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/ag$a$b;-><init>(Lcom/tencent/bugly/proguard/ah;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
