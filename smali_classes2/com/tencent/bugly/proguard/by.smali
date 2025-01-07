.class public final Lcom/tencent/bugly/proguard/by;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/by$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/tencent/bugly/common/thread/ThreadManager;",
        "",
        "()V",
        "Companion",
        "bugly-pro_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static volatile ed:Landroid/os/Looper;

.field private static volatile ee:Landroid/os/Looper;

.field private static volatile ef:Landroid/os/Looper;

.field private static volatile eg:Landroid/os/Handler;

.field private static volatile eh:Landroid/os/Handler;

.field private static volatile ei:Landroid/os/Handler;

.field public static final ej:Lcom/tencent/bugly/proguard/by$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/by$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/by$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/by;->ej:Lcom/tencent/bugly/proguard/by$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Landroid/os/Handler;)V
    .locals 0

    sput-object p0, Lcom/tencent/bugly/proguard/by;->eh:Landroid/os/Handler;

    return-void
.end method

.method public static final a(Ljava/lang/Runnable;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "task"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/by;->eg:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static final a(Ljava/lang/Runnable;J)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/tencent/bugly/proguard/by$a;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static final synthetic aA()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/by;->eh:Landroid/os/Handler;

    return-object v0
.end method

.method public static final synthetic aB()Landroid/os/Looper;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/by;->ed:Landroid/os/Looper;

    return-object v0
.end method

.method public static final synthetic aC()Landroid/os/Looper;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/by;->ee:Landroid/os/Looper;

    return-object v0
.end method

.method public static final synthetic aD()Landroid/os/Looper;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/by;->ef:Landroid/os/Looper;

    return-object v0
.end method

.method public static final aE()Z
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/proguard/by$a;->aF()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final aF()Landroid/os/Looper;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/tencent/bugly/proguard/by$a;->aF()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static final b(Ljava/lang/Runnable;J)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "task"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/by;->ei:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/tencent/bugly/proguard/by$a;->aH()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/bugly/proguard/by;->ei:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/by;->ei:Landroid/os/Handler;

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/bugly/proguard/by$a;->a(Ljava/lang/Runnable;JLandroid/os/Handler;)V

    return-void
.end method

.method public static final c(Ljava/lang/Runnable;J)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "task"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/by;->eg:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/bugly/proguard/by;->eg:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/by;->eg:Landroid/os/Handler;

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/bugly/proguard/by$a;->a(Ljava/lang/Runnable;JLandroid/os/Handler;)V

    return-void
.end method

.method public static final synthetic d(Landroid/os/Looper;)V
    .locals 0

    sput-object p0, Lcom/tencent/bugly/proguard/by;->ed:Landroid/os/Looper;

    return-void
.end method

.method public static final synthetic e(Landroid/os/Looper;)V
    .locals 0

    sput-object p0, Lcom/tencent/bugly/proguard/by;->ee:Landroid/os/Looper;

    return-void
.end method

.method public static final synthetic f(Landroid/os/Looper;)V
    .locals 0

    sput-object p0, Lcom/tencent/bugly/proguard/by;->ef:Landroid/os/Looper;

    return-void
.end method
