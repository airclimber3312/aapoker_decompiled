.class public final Lcom/tencent/bugly/proguard/ny;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000eH\u0002J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u000eH\u0002J\u000e\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u0012J\u0010\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0010\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R*\u0010\u000c\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e0\rj\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/tencent/rmonitor/looper/LooperReport;",
        "",
        "()V",
        "COLLECT_STACK_MSG_MAX_DELAY",
        "",
        "HAS_FULL_STACK",
        "",
        "LONG_LAG_LIMIT",
        "MAX_LONG_LAG_MAP_SIZE",
        "",
        "NO_FULL_STACK",
        "TAG",
        "longLagMap",
        "Ljava/util/HashMap;",
        "Lcom/tencent/bugly/common/reporter/data/ReportData;",
        "Lkotlin/collections/HashMap;",
        "buildReportData",
        "monitorInfo",
        "Lcom/tencent/rmonitor/looper/MonitorInfo;",
        "cancelCachedReportData",
        "",
        "reportData",
        "checkValid",
        "",
        "dealLongLag",
        "gotoReport",
        "gotoReportInner",
        "reportSLA",
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
.field private static final CC:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/tencent/bugly/proguard/bg;",
            ">;"
        }
    .end annotation
.end field

.field public static final CD:Lcom/tencent/bugly/proguard/ny;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/ny;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ny;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/ny;->CD:Lcom/tencent/bugly/proguard/ny;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/tencent/bugly/proguard/ny;->CC:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b(Lcom/tencent/bugly/proguard/nz;)V
    .locals 8

    invoke-static {}, Lcom/tencent/bugly/proguard/qy;->ji()Lcom/tencent/bugly/proguard/qy;

    move-result-object v0

    const-string v1, "RMLooperStackCollectStack"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/qy;->cb(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/tencent/bugly/proguard/qs;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/qs;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/bugly/proguard/nz;->CM:I

    if-lez v1, :cond_1

    iget-wide v1, p0, Lcom/tencent/bugly/proguard/nz;->CL:J

    long-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double v1, v1, v3

    iget v3, p0, Lcom/tencent/bugly/proguard/nz;->CM:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/proguard/qs;->bM(Ljava/lang/String;)V

    iget v3, p0, Lcom/tencent/bugly/proguard/nz;->CM:I

    if-lez v3, :cond_2

    iget-wide v3, p0, Lcom/tencent/bugly/proguard/nz;->CK:J

    iget v5, p0, Lcom/tencent/bugly/proguard/nz;->CM:I

    int-to-long v5, v5

    div-long/2addr v3, v5

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    :goto_1
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/proguard/qs;->bN(Ljava/lang/String;)V

    iget v5, p0, Lcom/tencent/bugly/proguard/nz;->CM:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/proguard/qs;->bO(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/tencent/bugly/proguard/nz;->CG:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/proguard/qs;->bP(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/tencent/bugly/proguard/nz;->CG:J

    long-to-int v6, v5

    iput v6, v0, Lcom/tencent/bugly/proguard/qs;->GO:I

    iget-object v5, p0, Lcom/tencent/bugly/proguard/nz;->CH:Lorg/json/JSONObject;

    if-nez v5, :cond_3

    const-string v5, "0"

    goto :goto_2

    :cond_3
    const-string v5, "1"

    :goto_2
    invoke-virtual {v0, v5}, Lcom/tencent/bugly/proguard/qs;->bQ(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/ay;->aj()Lcom/tencent/bugly/proguard/ay;

    move-result-object v5

    const-string v6, "PrivacyInformation.getInstance()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/tencent/bugly/proguard/ay;->ai()Ljava/lang/String;

    move-result-object v5

    const-string v7, "PrivacyInformation.getInstance().osVersion"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/proguard/qs;->bR(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/ay;->aj()Lcom/tencent/bugly/proguard/ay;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/tencent/bugly/proguard/ay;->ah()Ljava/lang/String;

    move-result-object v5

    const-string v7, "PrivacyInformation.getInstance().manufacture"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/proguard/qs;->bS(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/ay;->aj()Lcom/tencent/bugly/proguard/ay;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/tencent/bugly/proguard/ay;->getModel()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PrivacyInformation.getInstance().model"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/proguard/qs;->bT(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/tencent/bugly/proguard/nz;->CN:Z

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/qs;->bU(Ljava/lang/String;)V

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v5

    long-to-double v3, v3

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    cmpl-double p0, v1, v3

    if-lez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_3

    :cond_4
    const/4 p0, 0x1

    :goto_3
    iput p0, v0, Lcom/tencent/bugly/proguard/qs;->GN:I

    sget-object p0, Lcom/tencent/bugly/proguard/qv;->Hw:Lcom/tencent/bugly/proguard/qv$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/qv$a;->jg()Lcom/tencent/bugly/proguard/qv;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/qv;->e(Lcom/tencent/bugly/proguard/qs;)V

    return-void
.end method

.method static c(Lcom/tencent/bugly/proguard/nz;)Z
    .locals 20

    move-object/from16 v0, p0

    const-string v1, ".json"

    const-string v2, "rmonitor_trace_"

    sget-object v3, Lcom/tencent/bugly/proguard/nv;->Co:Lcom/tencent/bugly/proguard/nv;

    const-string v3, "looper_stack"

    invoke-static {v3}, Lcom/tencent/bugly/proguard/nv;->ax(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;

    move-result-object v4

    instance-of v5, v4, Lcom/tencent/bugly/proguard/gw;

    if-nez v5, :cond_0

    const/4 v4, 0x0

    :cond_0
    check-cast v4, Lcom/tencent/bugly/proguard/gw;

    const-string v5, "RMonitor_looper_report"

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/gw;->ff()Z

    move-result v10

    if-nez v10, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-wide v10, v0, Lcom/tencent/bugly/proguard/nz;->CG:J

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/gw;->fi()J

    move-result-wide v12

    cmp-long v14, v10, v12

    if-lez v14, :cond_2

    sget-object v12, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v13, v7, [Ljava/lang/String;

    aput-object v5, v13, v9

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "not valid sample for "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " exceed "

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/gw;->fi()J

    move-result-wide v10

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v8

    invoke-virtual {v12, v13}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    move-object/from16 v18, v1

    move-object/from16 v19, v5

    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_2
    iget v12, v0, Lcom/tencent/bugly/proguard/nz;->CM:I

    iget-object v13, v0, Lcom/tencent/bugly/proguard/nz;->Cp:Lcom/tencent/bugly/proguard/oh;

    iget-wide v13, v13, Lcom/tencent/bugly/proguard/oh;->Dk:J

    int-to-long v8, v12

    mul-long v16, v13, v8

    sub-long v6, v10, v16

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/gw;->fh()J

    move-result-wide v16

    mul-long v8, v8, v16

    add-long/2addr v8, v13

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/gw;->fg()I

    move-result v4

    if-ge v12, v4, :cond_4

    cmp-long v4, v6, v8

    if-gtz v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_5

    sget-object v15, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    move-object/from16 v18, v1

    move/from16 v17, v4

    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v5, v1, v4

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v19, v5

    const-string v5, "not valid sample for {totalCost: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", sliceCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", stackInterval: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", delay: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", delayLimit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x7d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    invoke-virtual {v15, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object/from16 v18, v1

    move/from16 v17, v4

    move-object/from16 v19, v5

    :goto_2
    move/from16 v15, v17

    goto :goto_4

    :cond_6
    :goto_3
    move-object/from16 v18, v1

    move-object/from16 v19, v5

    const/4 v15, 0x1

    :goto_4
    if-nez v15, :cond_7

    const/4 v1, 0x0

    return v1

    :cond_7
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/bb;->am()Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "process_name"

    sget-object v6, Lcom/tencent/bugly/proguard/kp;->yL:Lcom/tencent/bugly/proguard/kp$a;

    sget-object v6, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    check-cast v6, Landroid/content/Context;

    sget-object v7, Lcom/tencent/bugly/proguard/ci;->eG:Lcom/tencent/bugly/proguard/ci$a;

    invoke-static {v6}, Lcom/tencent/bugly/proguard/ci$a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "time_cost"

    iget-wide v6, v0, Lcom/tencent/bugly/proguard/nz;->CG:J

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "stage"

    iget-object v6, v0, Lcom/tencent/bugly/proguard/nz;->vs:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "stack_interval"

    iget-object v6, v0, Lcom/tencent/bugly/proguard/nz;->Cp:Lcom/tencent/bugly/proguard/oh;

    iget-wide v6, v6, Lcom/tencent/bugly/proguard/oh;->Dk:J

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "start_time"

    iget-wide v6, v0, Lcom/tencent/bugly/proguard/nz;->CE:J

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "monitored_thread_name"

    iget-object v6, v0, Lcom/tencent/bugly/proguard/nz;->lf:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "app_in_foreground"

    iget-boolean v6, v0, Lcom/tencent/bugly/proguard/nz;->CI:Z

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-object v5, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    check-cast v5, Landroid/content/Context;

    const-string v6, "looper"

    sget-object v7, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    invoke-static {v5, v6, v3, v7}, Lcom/tencent/bugly/proguard/bb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/am;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "Attributes"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v5, v0, Lcom/tencent/bugly/proguard/nz;->CE:J

    iget-wide v7, v0, Lcom/tencent/bugly/proguard/nz;->CG:J

    add-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long v9, v5, v7

    const-string v1, "event_time_in_ms"

    invoke-virtual {v3, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "event_time"

    invoke-virtual {v3, v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v1, Lcom/tencent/bugly/proguard/bg;

    sget-object v5, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    iget-object v5, v5, Lcom/tencent/bugly/proguard/am;->bA:Ljava/lang/String;

    const-string v6, "Looper single"

    const-string v9, "params"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v1, v5, v4, v6, v3}, Lcom/tencent/bugly/proguard/bg;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V

    iput-boolean v4, v1, Lcom/tencent/bugly/proguard/bg;->cV:Z

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/bugly/proguard/nz;->hR()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "Body"

    if-eqz v4, :cond_b

    :try_start_1
    sget-object v4, Lcom/tencent/bugly/proguard/ku;->zf:Lcom/tencent/bugly/proguard/ku$a;

    const-string v4, "rmonitor_trace"

    const-string v6, "json"

    const-string v9, "prefix"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "suffix"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sget-object v4, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    const/16 v6, 0x3e8

    const/4 v11, 0x0

    invoke-virtual {v4, v11, v6}, Lkotlin/random/Random$Default;->nextInt(II)I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x5f

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v18

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/tencent/bugly/proguard/ku;->zf:Lcom/tencent/bugly/proguard/ku$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/ku$a;->be()Ljava/lang/String;

    move-result-object v6

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v10, "File.separator"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v6, v9, v12, v11, v10}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v10, "temp"

    if-eqz v9, :cond_8

    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :goto_6
    invoke-direct {v4, v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/tencent/bugly/proguard/nz;->CH:Lorg/json/JSONObject;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/tencent/bugly/proguard/ku;->zf:Lcom/tencent/bugly/proguard/ku$a;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    if-eqz v6, :cond_a

    sget-object v10, Lcom/tencent/bugly/proguard/ku;->zf:Lcom/tencent/bugly/proguard/ku$a;

    sget-object v11, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz v6, :cond_9

    invoke-virtual {v6, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    const-string v11, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v9, v6}, Lcom/tencent/bugly/proguard/ku$a;->a(Ljava/lang/String;[B)Z

    goto :goto_7

    :cond_9
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_7
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v6, "file.absolutePath"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v6}, Lcom/tencent/bugly/proguard/bg;->a(Ljava/lang/String;Z)V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "file_stacks"

    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_8

    :cond_b
    iget-object v2, v0, Lcom/tencent/bugly/proguard/nz;->CH:Lorg/json/JSONObject;

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_8
    new-instance v2, Lcom/tencent/bugly/proguard/ig;

    iget-object v3, v1, Lcom/tencent/bugly/proguard/bg;->da:Lorg/json/JSONObject;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/nz;->vE:Ljava/lang/String;

    iget-object v5, v0, Lcom/tencent/bugly/proguard/nz;->lf:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/tencent/bugly/proguard/ig;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/bugly/proguard/iv;->vQ:Lcom/tencent/bugly/proguard/iw;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/iw;->fJ()Ljava/util/ArrayList;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_9

    :cond_c
    sget-object v2, Lcom/tencent/bugly/proguard/ix;->we:Lcom/tencent/bugly/proguard/ix;

    const/16 v2, 0x66

    invoke-static {v2}, Lcom/tencent/bugly/proguard/ix;->v(I)Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, Lcom/tencent/bugly/proguard/gg;->sn:Lcom/tencent/bugly/proguard/gg;

    invoke-static {}, Lcom/tencent/bugly/proguard/gg;->eS()Lcom/tencent/bugly/proguard/gd;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tencent/bugly/proguard/gd;->s(I)Lcom/tencent/bugly/proguard/gh;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v2, v2, Lcom/tencent/bugly/proguard/gh;->sq:Lcom/tencent/bugly/proguard/hc;

    iget v2, v2, Lcom/tencent/bugly/proguard/hc;->tU:F

    goto :goto_a

    :cond_d
    const/4 v2, 0x0

    :goto_a
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    float-to-double v5, v2

    cmpg-double v2, v3, v5

    if-gez v2, :cond_e

    const/4 v2, 0x1

    goto :goto_b

    :cond_e
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_14

    invoke-static {}, Lcom/tencent/bugly/proguard/lb;->gH()Lcom/tencent/bugly/proguard/lb;

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/lb;->a(ZLcom/tencent/bugly/proguard/bg;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/lb;->gH()Lcom/tencent/bugly/proguard/lb;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/lb;->c(Lcom/tencent/bugly/proguard/bg;)V

    iget-boolean v2, v0, Lcom/tencent/bugly/proguard/nz;->CJ:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v3, ", clientIdentify: "

    const-string v4, ", requestTime: "

    const-string v5, "client_identify"

    if-eqz v2, :cond_10

    :try_start_3
    sget-object v2, Lcom/tencent/bugly/proguard/ny;->CC:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v6

    const/16 v7, 0x14

    if-lt v6, v7, :cond_f

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_f
    check-cast v2, Ljava/util/Map;

    iget-wide v6, v0, Lcom/tencent/bugly/proguard/nz;->CE:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/tencent/bugly/proguard/bg;->cU:Lcom/tencent/bugly/proguard/bh;

    sget-object v6, Lcom/tencent/bugly/proguard/bh$c;->dp:Lcom/tencent/bugly/proguard/bh$c;

    invoke-virtual {v2, v6}, Lcom/tencent/bugly/proguard/bh;->a(Lcom/tencent/bugly/proguard/bh$c;)V

    sget-boolean v2, Lcom/tencent/bugly/proguard/km;->yv:Z

    if-eqz v2, :cond_13

    iget-object v2, v1, Lcom/tencent/bugly/proguard/bg;->da:Lorg/json/JSONObject;

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v19, v7, v6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "record unfinished long lag clientIdentify, duration: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v0, Lcom/tencent/bugly/proguard/nz;->CG:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v0, Lcom/tencent/bugly/proguard/nz;->CE:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v7, v2

    invoke-virtual {v5, v7}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    goto :goto_d

    :cond_10
    iget-wide v9, v0, Lcom/tencent/bugly/proguard/nz;->CG:J

    const-wide/16 v11, 0x1388

    cmp-long v2, v9, v11

    if-ltz v2, :cond_13

    sget-object v2, Lcom/tencent/bugly/proguard/ny;->CC:Ljava/util/HashMap;

    iget-wide v9, v0, Lcom/tencent/bugly/proguard/nz;->CE:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/bg;

    if-eqz v2, :cond_12

    iget v6, v2, Lcom/tencent/bugly/proguard/bg;->cS:I

    if-nez v6, :cond_11

    goto :goto_c

    :cond_11
    const-wide/16 v7, 0xc8

    :goto_c
    new-instance v6, Lcom/tencent/bugly/proguard/ny$a;

    invoke-direct {v6, v2}, Lcom/tencent/bugly/proguard/ny$a;-><init>(Lcom/tencent/bugly/proguard/bg;)V

    check-cast v6, Ljava/lang/Runnable;

    sget-object v2, Lcom/tencent/bugly/proguard/by;->ej:Lcom/tencent/bugly/proguard/by$a;

    invoke-static {v6, v7, v8}, Lcom/tencent/bugly/proguard/by$a;->a(Ljava/lang/Runnable;J)V

    :cond_12
    sget-boolean v2, Lcom/tencent/bugly/proguard/km;->yv:Z

    if-eqz v2, :cond_13

    iget-object v2, v1, Lcom/tencent/bugly/proguard/bg;->da:Lorg/json/JSONObject;

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v19, v7, v6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "deal finished long lag clientIdentify, duration: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v0, Lcom/tencent/bugly/proguard/nz;->CG:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v0, Lcom/tencent/bugly/proguard/nz;->CE:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v7, v2

    invoke-virtual {v5, v7}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_13
    :goto_d
    sget-object v0, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/bugly/proguard/ba;->a(Lcom/tencent/bugly/proguard/bg;Lcom/tencent/bugly/proguard/ba$a;)Z

    goto :goto_e

    :cond_14
    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v19, v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "miss report for sampling. [ThreadName: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/tencent/bugly/proguard/nz;->lf:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", CostInMs: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/tencent/bugly/proguard/nz;->CG:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", Scene: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/nz;->vs:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Foreground: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/nz;->CI:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v3, v2

    invoke-virtual {v1, v3}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_e
    const/4 v8, 0x1

    goto :goto_f

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v19, v2, v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "looper data may be error, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_f
    return v8
.end method
