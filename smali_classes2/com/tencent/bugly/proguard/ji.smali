.class public final Lcom/tencent/bugly/proguard/ji;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/tencent/rmonitor/base/reporter/batch/StoreRecordDataRunnable;",
        "Ljava/lang/Runnable;",
        "reportData",
        "Lcom/tencent/bugly/common/reporter/data/ReportData;",
        "(Lcom/tencent/bugly/common/reporter/data/ReportData;)V",
        "run",
        "",
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


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/bg;)V
    .locals 1

    const-string v0, "reportData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ji;->dN:Lcom/tencent/bugly/proguard/bg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-object v0, Lcom/tencent/bugly/proguard/id;->uK:Lcom/tencent/bugly/proguard/hw;

    if-eqz v0, :cond_0

    iget-object v9, v0, Lcom/tencent/bugly/proguard/hw;->uO:Lcom/tencent/bugly/proguard/hv;

    if-eqz v9, :cond_0

    new-instance v10, Lcom/tencent/bugly/proguard/ib;

    sget-object v0, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    iget-object v1, v0, Lcom/tencent/bugly/proguard/am;->appId:Ljava/lang/String;

    sget-object v0, Lcom/tencent/bugly/proguard/kp;->yL:Lcom/tencent/bugly/proguard/kp$a;

    sget-object v0, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    check-cast v0, Landroid/content/Context;

    sget-object v2, Lcom/tencent/bugly/proguard/ci;->eG:Lcom/tencent/bugly/proguard/ci$a;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ci$a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/am;->appVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ji;->dN:Lcom/tencent/bugly/proguard/bg;

    iget v4, v0, Lcom/tencent/bugly/proguard/bg;->cY:I

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ji;->dN:Lcom/tencent/bugly/proguard/bg;

    iget-object v5, v0, Lcom/tencent/bugly/proguard/bg;->bA:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ji;->dN:Lcom/tencent/bugly/proguard/bg;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/bg;->da:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v0, "reportData.params.toString()"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v10

    invoke-direct/range {v0 .. v8}, Lcom/tencent/bugly/proguard/ib;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    check-cast v10, Lcom/tencent/bugly/proguard/ht;

    sget-object v0, Lcom/tencent/bugly/proguard/ji$a;->wL:Lcom/tencent/bugly/proguard/ji$a;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v9, v10, v0}, Lcom/tencent/bugly/proguard/hv;->a(Lcom/tencent/bugly/proguard/ht;Lkotlin/jvm/functions/Function0;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ji;->dN:Lcom/tencent/bugly/proguard/bg;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    iget v0, v1, Lcom/tencent/bugly/proguard/bg;->cS:I

    :goto_1
    iput v0, v1, Lcom/tencent/bugly/proguard/bg;->cS:I

    return-void
.end method
