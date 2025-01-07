.class public final Lcom/tencent/bugly/proguard/nz$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/nz;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000b\u001a\u00020\nH\u0002J\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/tencent/rmonitor/looper/MonitorInfo$Companion;",
        "",
        "()V",
        "MAX_STACK_LENGTH",
        "",
        "POOL_CAPACITY",
        "TAG",
        "",
        "recyclablePool",
        "Ljava/lang/ThreadLocal;",
        "Lcom/tencent/bugly/common/utils/RecyclablePool;",
        "getRecyclablePool",
        "obtain",
        "Lcom/tencent/rmonitor/looper/MonitorInfo;",
        "recycle",
        "",
        "monitorInfo",
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

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/nz$a;-><init>()V

    return-void
.end method

.method public static d(Lcom/tencent/bugly/proguard/nz;)V
    .locals 1

    const-string v0, "monitorInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/nz$a;->hT()Lcom/tencent/bugly/proguard/ck;

    move-result-object v0

    check-cast p0, Lcom/tencent/bugly/proguard/ck$b;

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/ck;->a(Lcom/tencent/bugly/proguard/ck$b;)V

    return-void
.end method

.method public static hT()Lcom/tencent/bugly/proguard/ck;
    .locals 3

    invoke-static {}, Lcom/tencent/bugly/proguard/nz;->hS()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/ck;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/bugly/proguard/ck;

    const-class v1, Lcom/tencent/bugly/proguard/nz;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/tencent/bugly/proguard/ck;-><init>(Ljava/lang/Class;I)V

    invoke-static {}, Lcom/tencent/bugly/proguard/nz;->hS()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method
