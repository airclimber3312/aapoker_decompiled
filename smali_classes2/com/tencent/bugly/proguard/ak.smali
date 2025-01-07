.class public final Lcom/tencent/bugly/proguard/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/ak$b;,
        Lcom/tencent/bugly/proguard/ak$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u000f2\u00020\u0001:\u0002\u000f\u0010B\u0017\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/tencent/bugly/common/looper/LooperPrinter;",
        "Landroid/util/Printer;",
        "origin",
        "dispatch",
        "Lcom/tencent/bugly/common/looper/LooperPrinter$IDispatch;",
        "(Landroid/util/Printer;Lcom/tencent/bugly/common/looper/LooperPrinter$IDispatch;)V",
        "isHasChecked",
        "",
        "isValid",
        "getOrigin",
        "()Landroid/util/Printer;",
        "println",
        "",
        "x",
        "",
        "Companion",
        "IDispatch",
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
.field public static final bb:Lcom/tencent/bugly/proguard/ak$a;


# instance fields
.field private aX:Z

.field private aY:Z

.field final aZ:Landroid/util/Printer;

.field private final ba:Lcom/tencent/bugly/proguard/ak$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/ak$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/ak$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/ak;->bb:Lcom/tencent/bugly/proguard/ak$a;

    return-void
.end method

.method public constructor <init>(Landroid/util/Printer;Lcom/tencent/bugly/proguard/ak$b;)V
    .locals 1

    const-string v0, "dispatch"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ak;->aZ:Landroid/util/Printer;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/ak;->ba:Lcom/tencent/bugly/proguard/ak$b;

    return-void
.end method


# virtual methods
.method public final println(Ljava/lang/String;)V
    .locals 8

    const-string v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ak;->aZ:Landroid/util/Printer;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/tencent/bugly/proguard/ak;

    if-eq v0, p0, :cond_0

    instance-of v1, v0, Lcom/tencent/bugly/proguard/ak;

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ak;->ba:Lcom/tencent/bugly/proguard/ak$b;

    move-object v1, p0

    check-cast v1, Landroid/util/Printer;

    invoke-interface {v0, v1}, Lcom/tencent/bugly/proguard/ak$b;->b(Landroid/util/Printer;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ak;->aX:Z

    const-string v1, ">>"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v0, :cond_4

    invoke-static {p1, v1, v4, v3, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    if-nez v0, :cond_3

    const-string v0, "<<"

    invoke-static {p1, v0, v4, v3, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ak;->aY:Z

    iput-boolean v5, p0, Lcom/tencent/bugly/proguard/ak;->aX:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/tencent/bugly/proguard/km;->yv:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "RMonitor_looper_Printer [println] Printer is inValid! x: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_4
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ak;->aY:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ak;->ba:Lcom/tencent/bugly/proguard/ak$b;

    invoke-static {p1, v1, v4, v3, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/tencent/bugly/proguard/ak$b;->b(ZLjava/lang/String;)V

    :cond_5
    return-void
.end method
