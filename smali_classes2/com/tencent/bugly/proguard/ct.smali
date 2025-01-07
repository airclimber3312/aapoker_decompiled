.class public final Lcom/tencent/bugly/proguard/ct;
.super Lcom/tencent/bugly/proguard/ha;


# instance fields
.field public fP:Z

.field public fQ:Z

.field public fR:I

.field public fS:J

.field public fT:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ha;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ct;->fP:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ct;->fQ:Z

    const v1, 0xf000

    iput v1, p0, Lcom/tencent/bugly/proguard/ct;->fR:I

    const-wide/16 v1, 0x2

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/ct;->fS:J

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ct;->fT:Z

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "enable_custom_data"

    const-string v3, "native_sub_process"

    const-string v4, "anr_msg_recorder"

    const-string v5, "log_before_time"

    const-string v6, "log_length"

    const-string v7, "new_userinfo"

    const-string v8, "cus_file_sample_ratio"

    const-string v9, "RMonitor_config"

    if-nez v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "crash configs is null"

    filled-new-array {v9, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v10, :cond_2

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v13

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v15

    cmpg-double v8, v15, v13

    if-gez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    iput-boolean v8, v1, Lcom/tencent/bugly/proguard/ct;->fP:Z

    :cond_2
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v1, Lcom/tencent/bugly/proguard/ct;->fQ:Z

    :cond_3
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/tencent/bugly/proguard/ct;->fR:I

    :cond_4
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/tencent/bugly/proguard/ct;->fS:J

    :cond_5
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/tencent/bugly/proguard/cs;->bz()Lcom/tencent/bugly/proguard/cs;

    move-result-object v5

    invoke-virtual {v0, v4, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/tencent/bugly/proguard/aj;->aU:Lcom/tencent/bugly/proguard/aj$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v6, v5, Lcom/tencent/bugly/proguard/cs;->fN:Lcom/tencent/bugly/proguard/al;

    invoke-static {v4, v6}, Lcom/tencent/bugly/proguard/aj$a;->a(Landroid/os/Looper;Lcom/tencent/bugly/proguard/ai;)V

    iput-boolean v11, v5, Lcom/tencent/bugly/proguard/cs;->fO:Z

    goto :goto_1

    :cond_6
    sget-object v4, Lcom/tencent/bugly/proguard/aj;->aU:Lcom/tencent/bugly/proguard/aj$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v6, v5, Lcom/tencent/bugly/proguard/cs;->fN:Lcom/tencent/bugly/proguard/al;

    invoke-static {v4, v6}, Lcom/tencent/bugly/proguard/aj$a;->b(Landroid/os/Looper;Lcom/tencent/bugly/proguard/ai;)V

    iput-boolean v12, v5, Lcom/tencent/bugly/proguard/cs;->fO:Z

    :cond_7
    :goto_1
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/tencent/bugly/proguard/cz;->bA()Lcom/tencent/bugly/proguard/cz;

    move-result-object v4

    invoke-virtual {v0, v3, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v4, Lcom/tencent/bugly/proguard/cz;->gl:Z

    iget-object v4, v4, Lcom/tencent/bugly/proguard/cz;->gm:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/bugly/proguard/cz$a;

    invoke-interface {v5, v3}, Lcom/tencent/bugly/proguard/cz$a;->onSubProcessConfigChanged(Z)V

    goto :goto_2

    :cond_8
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/tencent/bugly/proguard/ct;->fT:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    return-void

    :goto_3
    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v3, "parseCrashConfigs"

    invoke-virtual {v2, v9, v3, v0}, Lcom/tencent/bugly/proguard/km;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
