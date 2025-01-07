.class public final Lcom/tencent/bugly/proguard/bp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/ba$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0005J(\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\rH\u0016J\u0018\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\rH\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/tencent/bugly/common/reporter/upload/FileUploadCallback;",
        "Lcom/tencent/bugly/common/reporter/IReporter$ReportCallback;",
        "reportData",
        "Lcom/tencent/bugly/common/reporter/data/ReportData;",
        "callback",
        "(Lcom/tencent/bugly/common/reporter/data/ReportData;Lcom/tencent/bugly/common/reporter/IReporter$ReportCallback;)V",
        "getCallback",
        "()Lcom/tencent/bugly/common/reporter/IReporter$ReportCallback;",
        "getReportData",
        "()Lcom/tencent/bugly/common/reporter/data/ReportData;",
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
.field private final dN:Lcom/tencent/bugly/proguard/bg;

.field private final dO:Lcom/tencent/bugly/proguard/ba$a;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/bg;Lcom/tencent/bugly/proguard/ba$a;)V
    .locals 1

    const-string v0, "reportData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/bp;->dN:Lcom/tencent/bugly/proguard/bg;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/bp;->dO:Lcom/tencent/bugly/proguard/ba$a;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;II)V
    .locals 1

    const-string v0, "errorMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/bp;->dO:Lcom/tencent/bugly/proguard/ba$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/ba$a;->a(ILjava/lang/String;II)V

    :cond_0
    iget-object p1, p0, Lcom/tencent/bugly/proguard/bp;->dN:Lcom/tencent/bugly/proguard/bg;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/tencent/bugly/proguard/bg;->f(Z)V

    return-void
.end method

.method public final al()V
    .locals 0

    return-void
.end method

.method public final b(II)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/bp;->dO:Lcom/tencent/bugly/proguard/ba$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/tencent/bugly/proguard/ba$a;->b(II)V

    :cond_0
    iget-object p1, p0, Lcom/tencent/bugly/proguard/bp;->dN:Lcom/tencent/bugly/proguard/bg;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/tencent/bugly/proguard/bg;->f(Z)V

    return-void
.end method
