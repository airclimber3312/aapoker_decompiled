.class public final Lcom/tencent/bugly/proguard/eq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;


# instance fields
.field private final eX:Landroid/content/Context;

.field private final kq:Lcom/tencent/bugly/proguard/dh;

.field private final lB:Lcom/tencent/bugly/proguard/dj;

.field private final mg:Lcom/tencent/bugly/proguard/eb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/dh;Lcom/tencent/bugly/proguard/eb;Lcom/tencent/bugly/proguard/dj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/eq;->eX:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/bugly/proguard/eq;->mg:Lcom/tencent/bugly/proguard/eb;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/eq;->kq:Lcom/tencent/bugly/proguard/dh;

    iput-object p4, p0, Lcom/tencent/bugly/proguard/eq;->lB:Lcom/tencent/bugly/proguard/dj;

    return-void
.end method

.method private static b([Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    if-nez p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    array-length v2, p0

    :goto_0
    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    if-eqz p0, :cond_3

    const/4 v3, 0x0

    :goto_1
    array-length v4, p0

    if-ge v3, v4, :cond_4

    aget-object v4, p0, v3

    if-eqz v4, :cond_2

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    aput-object v4, v6, v1

    const-string v7, "Extra message[%d]: %s"

    invoke-static {v7, v6}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    if-ne v7, v5, :cond_1

    aget-object v4, v6, v2

    aget-object v5, v6, v1

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v2

    const-string v4, "bad extraMsg %s"

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string p0, "not found extraMsg"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method


# virtual methods
.method public final handleNativeException(IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v20, v0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Native Crash Happen v1"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/16 v19, 0x0

    move/from16 v1, p1

    move-object/from16 v0, v20

    invoke-virtual/range {v0 .. v19}, Lcom/tencent/bugly/proguard/eq;->handleNativeException2(IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final handleNativeException2(IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 24

    move-object/from16 v15, p0

    move/from16 v0, p2

    move-object/from16 v14, p8

    move/from16 v13, p12

    move/from16 v1, p14

    const/4 v12, 0x0

    new-array v2, v12, [Ljava/lang/Object;

    const-string v3, "Native Crash Happen v2"

    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, ")"

    const-string v3, "("

    if-lez v13, :cond_0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, p7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p13

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    goto :goto_0

    :cond_0
    move-object/from16 v5, p7

    move-object/from16 v6, p13

    move-object v11, v5

    :goto_0
    invoke-static/range {p9 .. p9}, Lcom/tencent/bugly/proguard/er;->ao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p19 .. p19}, Lcom/tencent/bugly/proguard/eq;->b([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, v15, Lcom/tencent/bugly/proguard/eq;->kq:Lcom/tencent/bugly/proguard/dh;

    const-string v7, "ExceptionProcessName"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v9, 0x1

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "Name of crash process: %s"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v7, v8, v12

    invoke-static {v5, v8}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v7, v5, Lcom/tencent/bugly/proguard/dh;->processName:Ljava/lang/String;

    :goto_2
    move-object/from16 v16, v7

    const-string v5, "ExceptionThreadName"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "crash thread name:%s tid:%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v8, v9

    invoke-static {v7, v8}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :goto_4
    const-wide/16 v7, 0x3e8

    mul-long v17, p3, v7

    div-long v7, p5, v7

    add-long v7, v17, v7

    const-string v5, "SysLogPath"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Ljava/lang/String;

    const-string v5, "JniLogPath"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Ljava/lang/String;

    invoke-static/range {p11 .. p11}, Lcom/tencent/bugly/proguard/cf;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v4, v15, Lcom/tencent/bugly/proguard/eq;->lB:Lcom/tencent/bugly/proguard/dj;

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/dj;->cB()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "no remote but still store!"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v4, v9}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_4
    iget-object v4, v15, Lcom/tencent/bugly/proguard/eq;->lB:Lcom/tencent/bugly/proguard/dj;

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/dj;->cC()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v4

    iget-boolean v4, v4, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->io:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v9, "\n"

    if-nez v4, :cond_5

    :try_start_1
    iget-object v4, v15, Lcom/tencent/bugly/proguard/eq;->lB:Lcom/tencent/bugly/proguard/dj;

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/dj;->cB()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v1, "crash report was closed by remote , will not upload to Bugly , print local for helpful!"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/du;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "NATIVE_CRASH"

    invoke-static {}, Lcom/tencent/bugly/proguard/dz;->cW()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v16

    move-object/from16 p4, v0

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    invoke-static/range {p1 .. p6}, Lcom/tencent/bugly/proguard/eb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    invoke-static {v5}, Lcom/tencent/bugly/proguard/cf;->x(Ljava/lang/String;)V

    return-void

    :cond_5
    if-lez v13, :cond_6

    const-string v4, "KERNEL"

    move-object/from16 v19, v4

    goto :goto_5

    :cond_6
    move-object/from16 v19, v6

    :goto_5
    const-string v4, "UNKNOWN"

    if-gtz v13, :cond_8

    if-lez v1, :cond_7

    invoke-static/range {p14 .. p14}, Lcom/tencent/bugly/proguard/dg;->m(I)Ljava/lang/String;

    move-result-object v4

    :cond_7
    invoke-static/range {p14 .. p14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v20, v1

    goto :goto_6

    :cond_8
    move-object/from16 v20, v4

    :goto_6
    move-object/from16 v1, p0

    move-object v2, v0

    move-wide v3, v7

    move-object v8, v5

    move-object v5, v11

    move-object/from16 v6, p8

    move-object v7, v10

    move-object/from16 v21, v8

    move-object/from16 v8, p10

    move-object/from16 p7, v0

    move-object v15, v9

    const/4 v0, 0x1

    move-object/from16 v9, v19

    move-object/from16 v22, v10

    move-object/from16 v10, v20

    move-object/from16 v23, v11

    move-object/from16 v11, p11

    const/4 v0, 0x0

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v14, p18

    :try_start_2
    invoke-virtual/range {v1 .. v14}, Lcom/tencent/bugly/proguard/eq;->packageCrashBasicDatas(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    move-result-object v13

    if-nez v13, :cond_9

    const-string v1, "pkg crash datas fail!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/du;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_9
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    const-wide/16 v17, -0x1

    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v3, v16

    move-object/from16 p10, v13

    move-wide/from16 v13, v17

    invoke-virtual/range {v1 .. v14}, Lcom/tencent/bugly/proguard/eq;->packageCrashDetailDatas(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Ljava/lang/String;[BLjava/util/Map;ZJJJJ)V

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v1

    sget v2, Lcom/tencent/bugly/proguard/dy$a;->kz:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->modifyProcessingState(IZ)V

    const-string v1, "NATIVE_CRASH"

    invoke-static {}, Lcom/tencent/bugly/proguard/dz;->cW()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v23

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v16

    move-object/from16 p4, p7

    move-object/from16 p5, v3

    move-object/from16 p6, p10

    invoke-static/range {p1 .. p6}, Lcom/tencent/bugly/proguard/eb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v1, p0

    :try_start_3
    iget-object v2, v1, Lcom/tencent/bugly/proguard/eq;->mg:Lcom/tencent/bugly/proguard/eb;

    if-nez v2, :cond_a

    const-string v2, "crashHandler is null. Won\'t upload native crash."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_a
    move-object/from16 v4, p10

    move/from16 v3, p12

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v3, v5}, Lcom/tencent/bugly/proguard/eb;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;IZ)Z

    move-result v2

    move-object/from16 v0, v21

    if-nez v2, :cond_b

    const/4 v12, 0x1

    goto :goto_7

    :cond_b
    const/4 v12, 0x0

    :goto_7
    invoke-static {v5, v0}, Lcom/tencent/bugly/proguard/er;->c(ZLjava/lang/String;)V

    if-eqz v12, :cond_c

    iget-object v0, v1, Lcom/tencent/bugly/proguard/eq;->mg:Lcom/tencent/bugly/proguard/eb;

    invoke-virtual {v0, v4, v5}, Lcom/tencent/bugly/proguard/eb;->b(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Z)V

    :cond_c
    iget-object v0, v1, Lcom/tencent/bugly/proguard/eq;->mg:Lcom/tencent/bugly/proguard/eb;

    invoke-virtual {v0, v4}, Lcom/tencent/bugly/proguard/eb;->d(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/ec;->dc()Lcom/tencent/bugly/proguard/ec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ec;->de()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v1, v15

    :goto_8
    invoke-static {v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    return-void
.end method

.method public final packageCrashBasicDatas(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p10

    invoke-static {}, Lcom/tencent/bugly/proguard/ec;->dc()Lcom/tencent/bugly/proguard/ec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/ec;->dl()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!"

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/du;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    new-instance v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    invoke-direct {v3}, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;-><init>()V

    const/4 v4, 0x1

    iput v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->type:I

    iget-object v4, v0, Lcom/tencent/bugly/proguard/eq;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/dh;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/eq;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/dh;->q()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->deviceModel:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/eq;->kq:Lcom/tencent/bugly/proguard/dh;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/dh;->appVersion:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kN:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/eq;->kq:Lcom/tencent/bugly/proguard/dh;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/dh;->bD:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kM:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/eq;->kq:Lcom/tencent/bugly/proguard/dh;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/dh;->hF:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kO:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/eq;->kq:Lcom/tencent/bugly/proguard/dh;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/dh;->appChannel:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->appChannel:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/eq;->kq:Lcom/tencent/bugly/proguard/dh;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/dh;->hK:Ljava/util/List;

    iput-object v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kQ:Ljava/util/List;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/eq;->kq:Lcom/tencent/bugly/proguard/dh;

    iget-boolean v4, v4, Lcom/tencent/bugly/proguard/dh;->hI:Z

    iput-boolean v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kL:Z

    iget-object v4, v0, Lcom/tencent/bugly/proguard/eq;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/dh;->getCountryName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kP:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/eq;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/dh;->bK()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->userId:Ljava/lang/String;

    move-object/from16 v4, p4

    iput-object v4, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kU:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, p7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n[Bugly]This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object/from16 v4, p7

    move-object v2, v4

    :goto_0
    iput-object v2, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kV:Ljava/lang/String;

    move-object/from16 v2, p5

    iput-object v2, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kW:Ljava/lang/String;

    if-nez p6, :cond_2

    const-string v2, ""

    goto :goto_1

    :cond_2
    move-object/from16 v2, p6

    :goto_1
    iput-object v2, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kX:Ljava/lang/String;

    move-wide v11, p2

    iput-wide v11, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kE:J

    iget-object v2, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kX:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/bugly/proguard/dz;->j([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kF:Ljava/lang/String;

    move-object v2, p1

    iput-object v2, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lf:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/bugly/proguard/eq;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/dh;->bV()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hu:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/bugly/proguard/eq;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/dh;->bT()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kR:Ljava/util/Map;

    iget-object v2, v0, Lcom/tencent/bugly/proguard/eq;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/dh;->cd()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kS:Ljava/util/Map;

    iput-object v1, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->la:Ljava/lang/String;

    invoke-static/range {p10 .. p10}, Lcom/tencent/bugly/proguard/cf;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/er;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/dz;->Y(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iput-object v1, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lv:Ljava/lang/String;

    :cond_3
    sget v5, Lcom/tencent/bugly/proguard/ec;->lN:I

    sget v6, Lcom/tencent/bugly/proguard/ec;->lO:I

    sget v7, Lcom/tencent/bugly/proguard/ec;->lP:I

    sget-object v8, Lcom/tencent/bugly/proguard/ec;->lU:Ljava/lang/String;

    move-object/from16 v4, p11

    move-wide v9, p2

    invoke-static/range {v4 .. v10}, Lcom/tencent/bugly/proguard/er;->a(Ljava/lang/String;IIILjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lb:Ljava/lang/String;

    sget v5, Lcom/tencent/bugly/proguard/ec;->lN:I

    sget v6, Lcom/tencent/bugly/proguard/ec;->lO:I

    sget v7, Lcom/tencent/bugly/proguard/ec;->lP:I

    const/4 v8, 0x0

    move-object/from16 v4, p12

    invoke-static/range {v4 .. v10}, Lcom/tencent/bugly/proguard/er;->a(Ljava/lang/String;IIILjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lc:Ljava/lang/String;

    move-object/from16 v1, p9

    iput-object v1, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lp:Ljava/lang/String;

    move-object/from16 v1, p8

    iput-object v1, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lq:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lr:Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/bugly/proguard/eq;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/dh;->bN()J

    move-result-wide v1

    iput-wide v1, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hg:J

    iget-object v1, v0, Lcom/tencent/bugly/proguard/eq;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/dh;->bM()J

    move-result-wide v1

    iput-wide v1, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hf:J

    iget-object v1, v0, Lcom/tencent/bugly/proguard/eq;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/dh;->bO()J

    move-result-wide v1

    iput-wide v1, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hh:J

    return-object v3
.end method

.method public final packageCrashDetailDatas(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Ljava/lang/String;[BLjava/util/Map;ZJJJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZJJJJ)V"
        }
    .end annotation

    if-eqz p5, :cond_2

    iget-object p3, p0, Lcom/tencent/bugly/proguard/eq;->eX:Landroid/content/Context;

    invoke-static {p3}, Lcom/tencent/bugly/proguard/di;->r(Landroid/content/Context;)J

    move-result-wide p3

    iput-wide p3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lj:J

    invoke-static {}, Lcom/tencent/bugly/proguard/di;->cm()J

    move-result-wide p3

    iput-wide p3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lk:J

    invoke-static {}, Lcom/tencent/bugly/proguard/di;->cn()J

    move-result-wide p3

    iput-wide p3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ll:J

    invoke-static {}, Lcom/tencent/bugly/proguard/di;->co()J

    move-result-wide p3

    iput-wide p3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lm:J

    invoke-static {}, Lcom/tencent/bugly/proguard/di;->cp()J

    move-result-wide p3

    iput-wide p3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ln:J

    invoke-static {}, Lcom/tencent/bugly/proguard/di;->cr()J

    move-result-wide p3

    iput-wide p3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lg:J

    invoke-static {}, Lcom/tencent/bugly/proguard/di;->cl()J

    move-result-wide p3

    iput-wide p3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lh:J

    invoke-static {}, Lcom/tencent/bugly/proguard/di;->ct()J

    move-result-wide p3

    iput-wide p3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->li:J

    invoke-static {}, Lcom/tencent/bugly/proguard/dx;->cS()[B

    move-result-object p3

    iput-object p3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ld:[B

    iget-object p3, p0, Lcom/tencent/bugly/proguard/eq;->kq:Lcom/tencent/bugly/proguard/dh;

    iget-wide p3, p3, Lcom/tencent/bugly/proguard/dh;->gU:J

    iput-wide p3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->gU:J

    iget-object p3, p0, Lcom/tencent/bugly/proguard/eq;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {p3}, Lcom/tencent/bugly/proguard/dh;->bF()Z

    move-result p3

    iput-boolean p3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fC:Z

    iget-object p3, p0, Lcom/tencent/bugly/proguard/eq;->kq:Lcom/tencent/bugly/proguard/dh;

    iget-boolean p3, p3, Lcom/tencent/bugly/proguard/dh;->hP:Z

    sget p4, Lcom/tencent/bugly/proguard/ec;->lR:I

    const/4 p5, 0x0

    invoke-static {p3, p4, p5}, Lcom/tencent/bugly/proguard/dz;->a(ZIZ)Ljava/util/Map;

    move-result-object p3

    iput-object p3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->le:Ljava/util/Map;

    const-string p3, "java:\n"

    iget-object p4, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kX:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_0

    add-int/lit8 p3, p3, 0x6

    iget-object p4, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kX:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    if-ge p3, p4, :cond_0

    iget-object p4, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kX:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p6

    add-int/lit8 p6, p6, -0x1

    invoke-virtual {p4, p3, p6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p6

    if-lez p6, :cond_0

    iget-object p6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->le:Ljava/util/Map;

    iget-object p7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lf:Ljava/lang/String;

    invoke-interface {p6, p7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_0

    iget-object p6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->le:Ljava/util/Map;

    iget-object p7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lf:Ljava/lang/String;

    invoke-interface {p6, p7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-virtual {p6, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p4

    if-lez p4, :cond_0

    invoke-virtual {p6, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    iget-object p6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->le:Ljava/util/Map;

    iget-object p7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lf:Ljava/lang/String;

    invoke-interface {p6, p7, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kX:Ljava/lang/String;

    invoke-virtual {p6, p5, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kX:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kX:Ljava/lang/String;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kX:Ljava/lang/String;

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/tencent/bugly/proguard/eq;->kq:Lcom/tencent/bugly/proguard/dh;

    iget-object p2, p2, Lcom/tencent/bugly/proguard/dh;->processName:Ljava/lang/String;

    :cond_1
    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->processName:Ljava/lang/String;

    iget-object p2, p0, Lcom/tencent/bugly/proguard/eq;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/dh;->cc()I

    move-result p2

    iput p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fG:I

    iget-object p2, p0, Lcom/tencent/bugly/proguard/eq;->kq:Lcom/tencent/bugly/proguard/dh;

    iget p2, p2, Lcom/tencent/bugly/proguard/dh;->fH:I

    iput p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fH:I

    iget-object p2, p0, Lcom/tencent/bugly/proguard/eq;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/dh;->bW()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fI:Ljava/util/Map;

    iget-object p2, p0, Lcom/tencent/bugly/proguard/eq;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/dh;->cb()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fJ:Ljava/util/Map;

    invoke-static {}, Lcom/tencent/bugly/proguard/ad;->D()Lcom/tencent/bugly/proguard/ad;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/ad;->E()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hotPatchNum:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/proguard/ad;->D()Lcom/tencent/bugly/proguard/ad;

    move-result-object p2

    iget-object p2, p2, Lcom/tencent/bugly/proguard/ad;->aD:Ljava/lang/String;

    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lx:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/eg;->u(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    goto :goto_0

    :cond_2
    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->processName:Ljava/lang/String;

    iput-wide p6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lg:J

    iput-wide p8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lh:J

    iput-wide p10, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->li:J

    iput-wide p12, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lk:J

    iget-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lb:Ljava/lang/String;

    if-nez p2, :cond_3

    const-string p2, "This crash occurred at last process! Log is miss, when get an terrible ABRT Native Exception etc."

    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lb:Ljava/lang/String;

    :cond_3
    const-wide/16 p5, -0x1

    iput-wide p5, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->gU:J

    const/4 p2, -0x1

    iput p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fG:I

    iput p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fH:I

    iput-object p4, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fI:Ljava/util/Map;

    iget-object p2, p0, Lcom/tencent/bugly/proguard/eq;->kq:Lcom/tencent/bugly/proguard/dh;

    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/dh;->cb()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->fJ:Ljava/util/Map;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->le:Ljava/util/Map;

    const-string p2, ""

    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->hotPatchNum:Ljava/lang/String;

    const-string p2, "0"

    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->lx:Ljava/lang/String;

    if-eqz p3, :cond_4

    iput-object p3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ld:[B

    :cond_4
    :goto_0
    iget-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->processName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "unknown(record)"

    iput-object p2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->processName:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public final updateStateAndHandleAnr()Z
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/el;->dB()Lcom/tencent/bugly/proguard/el;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/el;->dB()Lcom/tencent/bugly/proguard/el;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/el;->updateStateAndHandleAnr()Z

    move-result v0

    return v0
.end method
