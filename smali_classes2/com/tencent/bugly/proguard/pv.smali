.class public final Lcom/tencent/bugly/proguard/pv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final Fd:Lcom/tencent/bugly/proguard/ie;

.field private final so:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/tencent/bugly/proguard/ie;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/pv;->so:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/pv;->Fd:Lcom/tencent/bugly/proguard/ie;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tencent/bugly/proguard/ie;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v1, :cond_0

    :goto_0
    const/4 v7, 0x1

    goto :goto_2

    :cond_0
    const-wide/16 v7, 0xa

    invoke-static {v1, v7, v8}, Lcom/tencent/bugly/proguard/pw;->a(Lcom/tencent/bugly/proguard/ie;J)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v7, v1, Lcom/tencent/bugly/proguard/ie;->vx:J

    cmp-long v9, v7, v3

    if-gez v9, :cond_2

    const/4 v7, 0x4

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    iget-wide v8, v1, Lcom/tencent/bugly/proguard/ie;->vw:J

    cmp-long v10, v8, v3

    if-gez v10, :cond_3

    or-int/lit8 v7, v7, 0x8

    :cond_3
    iget-object v8, v1, Lcom/tencent/bugly/proguard/ie;->vv:[J

    invoke-static {v8}, Lcom/tencent/bugly/proguard/pw;->a([J)Z

    move-result v8

    if-eqz v8, :cond_4

    or-int/lit8 v7, v7, 0x10

    :cond_4
    iget-object v8, v1, Lcom/tencent/bugly/proguard/ie;->vu:[J

    invoke-static {v8}, Lcom/tencent/bugly/proguard/pw;->a([J)Z

    move-result v8

    if-eqz v8, :cond_5

    or-int/lit8 v7, v7, 0x20

    :cond_5
    iget-wide v8, v1, Lcom/tencent/bugly/proguard/ie;->vt:J

    const-wide/32 v10, 0x2932e00

    cmp-long v12, v8, v10

    if-lez v12, :cond_6

    or-int/lit8 v7, v7, 0x2

    :cond_6
    iget-object v8, v1, Lcom/tencent/bugly/proguard/ie;->vu:[J

    invoke-static {v8}, Lcom/tencent/bugly/proguard/pw;->b([J)J

    move-result-wide v8

    iget-wide v10, v1, Lcom/tencent/bugly/proguard/ie;->vt:J

    cmp-long v12, v8, v10

    if-lez v12, :cond_7

    or-int/lit16 v7, v7, 0x80

    :cond_7
    :goto_2
    const-string v8, "RMonitor_looper_metric"

    const/4 v9, 0x2

    if-nez v7, :cond_c

    sget-boolean v10, Lcom/tencent/bugly/proguard/km;->yv:Z

    if-eqz v10, :cond_b

    iget-object v10, v1, Lcom/tencent/bugly/proguard/ie;->vu:[J

    array-length v11, v10

    move-wide v13, v3

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_8

    aget-wide v15, v10, v12

    add-long/2addr v13, v15

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_8
    cmp-long v10, v13, v3

    if-lez v10, :cond_a

    iget-object v10, v1, Lcom/tencent/bugly/proguard/ie;->vv:[J

    array-length v11, v10

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_4
    if-ge v12, v11, :cond_9

    aget-wide v16, v10, v12

    int-to-long v3, v15

    add-long v3, v3, v16

    long-to-int v15, v3

    add-int/lit8 v12, v12, 0x1

    const-wide/16 v3, 0x0

    goto :goto_4

    :cond_9
    int-to-float v3, v15

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float v3, v3, v4

    long-to-float v4, v13

    div-float/2addr v3, v4

    iget-wide v10, v1, Lcom/tencent/bugly/proguard/ie;->vw:J

    sub-long v10, v13, v10

    long-to-float v10, v10

    const/high16 v11, 0x42700000    # 60.0f

    mul-float v10, v10, v11

    div-float/2addr v10, v4

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_5
    sget-object v4, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/16 v11, 0x9

    new-array v11, v11, [Ljava/lang/String;

    aput-object v8, v11, v5

    const-string v8, "dump, "

    aput-object v8, v11, v6

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/bugly/proguard/ie;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v9

    const/4 v8, 0x3

    const-string v9, ", totalRefreshDuration: "

    aput-object v9, v11, v8

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v2

    const/4 v2, 0x5

    const-string v8, ", fps1: "

    aput-object v8, v11, v2

    const/4 v2, 0x6

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v2

    const/4 v2, 0x7

    const-string v3, ", fps2: "

    aput-object v3, v11, v2

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v11, v3

    invoke-virtual {v4, v11}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_b
    new-instance v2, Lcom/tencent/bugly/proguard/pv;

    invoke-direct {v2, v0, v1}, Lcom/tencent/bugly/proguard/pv;-><init>(Ljava/lang/String;Lcom/tencent/bugly/proguard/ie;)V

    :goto_6
    const-wide/16 v0, 0x0

    invoke-static {v2, v0, v1}, Lcom/tencent/bugly/proguard/by;->a(Ljava/lang/Runnable;J)V

    goto :goto_8

    :cond_c
    if-nez v1, :cond_d

    const-string v1, "null"

    goto :goto_7

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/bugly/proguard/ie;->fG()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_7
    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v3, v9, [Ljava/lang/String;

    aput-object v8, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "saveData, pluginName: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", ret: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", invalid data: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    if-eq v7, v6, :cond_e

    new-instance v2, Lcom/tencent/bugly/proguard/pv$1;

    invoke-direct {v2, v0, v7, v1}, Lcom/tencent/bugly/proguard/pv$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_6

    :cond_e
    :goto_8
    if-nez v7, :cond_f

    return v6

    :cond_f
    return v5
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final run()V
    .locals 6

    const-string v0, "user_custom"

    sget-object v1, Lcom/tencent/bugly/proguard/id;->uK:Lcom/tencent/bugly/proguard/hw;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/proguard/lb$a;->gI()Lcom/tencent/bugly/proguard/lb;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/pv;->so:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/bugly/proguard/pv;->Fd:Lcom/tencent/bugly/proguard/ie;

    iget-object v5, v5, Lcom/tencent/bugly/proguard/ie;->vs:Ljava/lang/String;

    invoke-static {v2, v4, v5, v3}, Lcom/tencent/bugly/proguard/lb;->a(ZLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/tencent/bugly/proguard/pv;->Fd:Lcom/tencent/bugly/proguard/ie;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/bugly/proguard/ie;->vz:Lorg/json/JSONObject;

    :cond_1
    sget-object v0, Lcom/tencent/bugly/proguard/iv;->vP:Lcom/tencent/bugly/proguard/iw;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/iw;->fJ()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_2
    new-instance v0, Lcom/tencent/bugly/proguard/hz;

    invoke-static {}, Lcom/tencent/bugly/proguard/id;->fE()Lcom/tencent/bugly/proguard/hs;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/bugly/proguard/pv;->so:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/bugly/proguard/pv;->Fd:Lcom/tencent/bugly/proguard/ie;

    invoke-direct {v0, v3, v4, v5}, Lcom/tencent/bugly/proguard/hz;-><init>(Lcom/tencent/bugly/proguard/hs;Ljava/lang/String;Lcom/tencent/bugly/proguard/ie;)V

    iget-object v1, v1, Lcom/tencent/bugly/proguard/hw;->uO:Lcom/tencent/bugly/proguard/hv;

    invoke-virtual {v1, v0, p0}, Lcom/tencent/bugly/proguard/hv;->a(Lcom/tencent/bugly/proguard/ht;Lkotlin/jvm/functions/Function0;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "RMonitor_looper"

    aput-object v4, v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveToDB fail pluginName: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/bugly/proguard/pv;->so:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", meta: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/pv;->Fd:Lcom/tencent/bugly/proguard/ie;

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/ie;->fG()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_3
    return-void
.end method
