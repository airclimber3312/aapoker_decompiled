.class public final Lcom/tencent/bugly/proguard/je$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/ba$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/je;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0016J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/tencent/rmonitor/base/reporter/ReporterMachine$reportInternal$1",
        "Lcom/tencent/bugly/common/reporter/IReporter$ReportCallback;",
        "onFailure",
        "",
        "errorCode",
        "",
        "errorMsg",
        "",
        "dbId",
        "contentLength",
        "onSuccess",
        "bugly-pro_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic wv:Lcom/tencent/bugly/proguard/bg;

.field final synthetic ww:Lcom/tencent/bugly/proguard/ba$a;

.field final synthetic wy:J

.field final synthetic wz:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;Lcom/tencent/bugly/proguard/bg;Lcom/tencent/bugly/proguard/ba$a;)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/bugly/proguard/je$d;->wy:J

    iput-object p3, p0, Lcom/tencent/bugly/proguard/je$d;->wz:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/bugly/proguard/je$d;->wv:Lcom/tencent/bugly/proguard/bg;

    iput-object p5, p0, Lcom/tencent/bugly/proguard/je$d;->ww:Lcom/tencent/bugly/proguard/ba$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;II)V
    .locals 11

    const-string v0, "errorMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/je$d;->wy:J

    sub-long v9, v0, v2

    sget-boolean v0, Lcom/tencent/bugly/proguard/km;->yv:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RMonitor_report"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reportInternal-onFailure, pluginName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/bugly/proguard/je$d;->wz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", dbId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", errorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", errorMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    invoke-static {}, Lcom/tencent/bugly/proguard/je;->fO()Lcom/tencent/bugly/proguard/jc;

    move-result-object v0

    sget-object v1, Lcom/tencent/bugly/proguard/hu;->uH:Lcom/tencent/bugly/proguard/hu;

    invoke-interface {v0, p3, v1}, Lcom/tencent/bugly/proguard/jc;->a(ILcom/tencent/bugly/proguard/hu;)V

    sget-object v0, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/je$d;->wv:Lcom/tencent/bugly/proguard/bg;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/je$d;->ww:Lcom/tencent/bugly/proguard/ba$a;

    invoke-static {p1, v0, v1}, Lcom/tencent/bugly/proguard/je;->a(ILcom/tencent/bugly/proguard/bg;Lcom/tencent/bugly/proguard/ba$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p2, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/je$d;->wv:Lcom/tencent/bugly/proguard/bg;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v7, p1

    move v8, p4

    invoke-static/range {v4 .. v10}, Lcom/tencent/bugly/proguard/je;->a(Lcom/tencent/bugly/proguard/bg;ZZIIJ)V

    return-void

    :cond_1
    sget-object v0, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/je$d;->wv:Lcom/tencent/bugly/proguard/bg;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, p1

    move v8, p4

    invoke-static/range {v4 .. v10}, Lcom/tencent/bugly/proguard/je;->a(Lcom/tencent/bugly/proguard/bg;ZZIIJ)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/je$d;->ww:Lcom/tencent/bugly/proguard/ba$a;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/ba$a;->a(ILjava/lang/String;II)V

    :cond_2
    return-void
.end method

.method public final al()V
    .locals 0

    return-void
.end method

.method public final b(II)V
    .locals 11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/je$d;->wy:J

    sub-long v9, v0, v2

    sget-boolean v0, Lcom/tencent/bugly/proguard/km;->yv:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RMonitor_report"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reportInternal-onSuccess, pluginName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/bugly/proguard/je$d;->wz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", dbId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    invoke-static {}, Lcom/tencent/bugly/proguard/je;->fO()Lcom/tencent/bugly/proguard/jc;

    move-result-object v0

    sget-object v1, Lcom/tencent/bugly/proguard/hu;->uG:Lcom/tencent/bugly/proguard/hu;

    invoke-interface {v0, p1, v1}, Lcom/tencent/bugly/proguard/jc;->a(ILcom/tencent/bugly/proguard/hu;)V

    sget-object v0, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/je$d;->wv:Lcom/tencent/bugly/proguard/bg;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v8, p2

    invoke-static/range {v4 .. v10}, Lcom/tencent/bugly/proguard/je;->a(Lcom/tencent/bugly/proguard/bg;ZZIIJ)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/je$d;->ww:Lcom/tencent/bugly/proguard/ba$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/tencent/bugly/proguard/ba$a;->b(II)V

    :cond_1
    return-void
.end method
