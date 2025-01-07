.class public final Lcom/tencent/bugly/proguard/jh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/jc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/jh$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000bH\u0002J\u0008\u0010\u000e\u001a\u00020\u0006H\u0016J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000bH\u0002J\u0018\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/tencent/rmonitor/base/reporter/batch/ReportCacheImpl;",
        "Lcom/tencent/rmonitor/base/reporter/IReportCache;",
        "()V",
        "reportTask",
        "Ljava/lang/Runnable;",
        "cacheReportData",
        "",
        "reportData",
        "Lcom/tencent/bugly/common/reporter/data/ReportData;",
        "cacheReportDataSync",
        "getCollectDataDelay",
        "",
        "reportAttaData",
        "delay",
        "reportCacheData",
        "reportDbData",
        "updateCacheDataStatus",
        "dbId",
        "",
        "status",
        "Lcom/tencent/rmonitor/base/db/DBDataStatus;",
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
.field public static final wI:Lcom/tencent/bugly/proguard/jh$a;


# instance fields
.field private final wH:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/jh$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/jh$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/jh;->wI:Lcom/tencent/bugly/proguard/jh$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/bugly/proguard/jh$c;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/jh$c;-><init>(Lcom/tencent/bugly/proguard/jh;)V

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/jh;->wH:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic a(Lcom/tencent/bugly/proguard/jh;)V
    .locals 2

    const-wide/32 v0, 0x6ddd00

    invoke-direct {p0, v0, v1}, Lcom/tencent/bugly/proguard/jh;->j(J)V

    return-void
.end method

.method private final j(J)V
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/jh;->wH:Ljava/lang/Runnable;

    invoke-static {v0, p1, p2}, Lcom/tencent/bugly/proguard/je;->f(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public final a(ILcom/tencent/bugly/proguard/hu;)V
    .locals 3

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p1, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/id;->uK:Lcom/tencent/bugly/proguard/hw;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/tencent/bugly/proguard/hw;->uO:Lcom/tencent/bugly/proguard/hv;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/tencent/bugly/proguard/ib;->vh:Lcom/tencent/bugly/proguard/ib$a;

    int-to-long v1, p1

    iget p1, p2, Lcom/tencent/bugly/proguard/hu;->value:I

    const-string p2, "report_data"

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/tencent/bugly/proguard/hv;->a(Ljava/lang/String;JI)I

    :cond_0
    return-void
.end method

.method public final b(Lcom/tencent/bugly/proguard/bg;)V
    .locals 1

    const-string v0, "reportData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/bugly/proguard/ji;

    invoke-direct {v0, p1}, Lcom/tencent/bugly/proguard/ji;-><init>(Lcom/tencent/bugly/proguard/bg;)V

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ji;->run()V

    return-void
.end method

.method public final fN()V
    .locals 3

    sget-boolean v0, Lcom/tencent/bugly/proguard/km;->yv:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_report_ReporterMachine"

    const-string v2, "reportCacheData"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/kq;->yT:Lcom/tencent/bugly/proguard/kq;

    sget-object v0, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/kq;->U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x3e8

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0x493e0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/tencent/bugly/proguard/jh;->j(J)V

    sget-object v2, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    sget-object v2, Lcom/tencent/bugly/proguard/jh$b;->wJ:Lcom/tencent/bugly/proguard/jh$b;

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v2, v0, v1}, Lcom/tencent/bugly/proguard/je;->f(Ljava/lang/Runnable;J)V

    return-void
.end method
