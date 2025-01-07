.class public final Lcom/tencent/bugly/proguard/dr;
.super Lcom/tencent/bugly/proguard/dq;


# direct methods
.method public constructor <init>(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/do;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/do;",
            ")V"
        }
    .end annotation

    const/16 v2, 0x3e9

    const/16 v3, 0x348

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v10}, Lcom/tencent/bugly/proguard/dq;-><init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/do;IIZ)V

    return-void
.end method

.method private g([B)Z
    .locals 10

    const-string v0, "code"

    const-string v1, "next_time_in_sec"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    sget-object v1, Lcom/tencent/bugly/proguard/cr;->fp:Lcom/tencent/bugly/proguard/cq;

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v6, v4

    if-gez v8, :cond_0

    const-wide/32 v6, 0x240c8400

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    iput-wide v4, v1, Lcom/tencent/bugly/proguard/cq;->eW:J

    const-string v1, "userInfoMinInterval"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/bugly/proguard/dz;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    :try_start_1
    const-string v1, "metric"

    const-string v5, "union_dau"

    invoke-static {v1, v5, v3}, Lcom/tencent/bugly/proguard/bo;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v1, "success"

    const/4 v3, 0x0

    const/4 v5, 0x2

    invoke-virtual {p0, v3, v4, v5, v1}, Lcom/tencent/bugly/proguard/dr;->a(Lcom/tencent/bugly/proguard/rp;ZILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :goto_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3, p1}, Lcom/tencent/bugly/proguard/du;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/Throwable;)Z

    move v0, v1

    :cond_2
    :goto_2
    return v0
.end method


# virtual methods
.method public final run()V
    .locals 13

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/tencent/bugly/proguard/dr;->jB:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/dr;->jC:J

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/dr;->jD:J

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/dr;->cM()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2, v0, v0, v1}, Lcom/tencent/bugly/proguard/dr;->a(Lcom/tencent/bugly/proguard/rp;ZILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/dr;->jr:[B

    if-nez v1, :cond_1

    const-string v1, "failed to zip request body"

    invoke-virtual {p0, v2, v0, v0, v1}, Lcom/tencent/bugly/proguard/dr;->a(Lcom/tencent/bugly/proguard/rp;ZILjava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/dr;->cL()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/dr;->cK()V

    iget-object v4, p0, Lcom/tencent/bugly/proguard/dr;->iy:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/bugly/proguard/dr;->jt:Lcom/tencent/bugly/proguard/dj;

    invoke-virtual {v5}, Lcom/tencent/bugly/proguard/dj;->cC()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    add-int/lit8 v7, v5, 0x1

    iget v8, p0, Lcom/tencent/bugly/proguard/dr;->jo:I

    if-ge v5, v8, :cond_7

    const/4 v5, 0x1

    if-le v7, v5, :cond_2

    const-string v8, "[Upload] Failed to upload last time, wait and try(%d) again."

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v0

    invoke-static {v8, v9}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget v8, p0, Lcom/tencent/bugly/proguard/dr;->jp:I

    int-to-long v8, v8

    invoke-static {v8, v9}, Lcom/tencent/bugly/proguard/dz;->sleep(J)V

    iget v8, p0, Lcom/tencent/bugly/proguard/dr;->jo:I

    if-ne v7, v8, :cond_2

    const-string v4, "[Upload] Use the back-up url at the last time: %s"

    new-array v8, v5, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/tencent/bugly/proguard/dr;->jz:Ljava/lang/String;

    aput-object v9, v8, v0

    invoke-static {v4, v8}, Lcom/tencent/bugly/proguard/du;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/tencent/bugly/proguard/dr;->jz:Ljava/lang/String;

    :cond_2
    const-string v8, "[Upload] Send %d bytes"

    new-array v9, v5, [Ljava/lang/Object;

    array-length v10, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v0

    invoke-static {v8, v9}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v8, "[Upload] Upload to %s with cmd %d (pid=%d | tid=%d)."

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v0

    iget v10, p0, Lcom/tencent/bugly/proguard/dr;->jq:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x3

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/tencent/bugly/proguard/dr;->ju:Lcom/tencent/bugly/proguard/dm;

    invoke-virtual {v8, v4, v1, p0, v3}, Lcom/tencent/bugly/proguard/dm;->a(Ljava/lang/String;[BLcom/tencent/bugly/proguard/dq;Ljava/util/Map;)[B

    move-result-object v8

    invoke-static {}, Lcom/tencent/bugly/proguard/dh;->bG()Lcom/tencent/bugly/proguard/dh;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tencent/bugly/proguard/dh;->bE()Z

    move-result v9

    if-eqz v9, :cond_5

    if-nez v8, :cond_3

    const-string v5, "response is null"

    invoke-virtual {p0, v2, v0, v11, v5}, Lcom/tencent/bugly/proguard/dr;->a(Lcom/tencent/bugly/proguard/rp;ZILjava/lang/String;)V

    move v5, v7

    goto :goto_0

    :cond_3
    invoke-direct {p0, v8}, Lcom/tencent/bugly/proguard/dr;->g([B)Z

    move-result v6

    if-eqz v6, :cond_4

    return-void

    :cond_4
    const-string v6, "failed from server"

    invoke-virtual {p0, v2, v0, v11, v6}, Lcom/tencent/bugly/proguard/dr;->a(Lcom/tencent/bugly/proguard/rp;ZILjava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/tencent/bugly/proguard/dr;->ju:Lcom/tencent/bugly/proguard/dm;

    iget-object v6, v6, Lcom/tencent/bugly/proguard/dm;->iM:Ljava/util/Map;

    invoke-virtual {p0, v8, v6}, Lcom/tencent/bugly/proguard/dr;->b([BLjava/util/Map;)Z

    move-result v6

    if-eqz v6, :cond_6

    :goto_1
    move v5, v7

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_6
    return-void

    :cond_7
    const-string v1, "failed after many attempts"

    invoke-virtual {p0, v2, v0, v6, v1}, Lcom/tencent/bugly/proguard/dr;->a(Lcom/tencent/bugly/proguard/rp;ZILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    return-void
.end method
