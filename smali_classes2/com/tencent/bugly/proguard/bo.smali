.class public final Lcom/tencent/bugly/proguard/bo;
.super Ljava/lang/Object;


# static fields
.field private static dE:Lcom/tencent/bugly/proguard/bo;


# instance fields
.field private dF:I

.field private dG:J

.field private dH:J

.field private dI:Z

.field private dJ:J

.field private dK:J

.field private final dL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final dM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/bo;->dF:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/bo;->dG:J

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/bo;->dH:J

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/bo;->dI:Z

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/bo;->dJ:J

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/bo;->dK:J

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bo;->dL:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/tencent/bugly/proguard/bo;->dM:Ljava/util/ArrayList;

    const-string v2, "crash"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "anr"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v0, "error"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "] fail for "

    const-string v5, "."

    const-string v6, "update by ["

    const-string v7, "RMonitor_report_entrance"

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v3, :cond_a

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v3, "limit_code"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    const-string v12, "config_latest_update_time"

    const-string v13, "limit_expiration_time"

    if-nez v11, :cond_1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    sget-object v3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v8, v8, [Ljava/lang/String;

    aput-object v7, v8, v10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v9

    invoke-virtual {v3, v8}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/bo;->au()Lcom/tencent/bugly/proguard/bo;

    move-result-object v11

    iget-boolean v14, v11, Lcom/tencent/bugly/proguard/bo;->dI:Z

    if-nez v14, :cond_2

    invoke-direct {v11}, Lcom/tencent/bugly/proguard/bo;->av()V

    :cond_2
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    iget v12, v11, Lcom/tencent/bugly/proguard/bo;->dF:I

    if-ne v12, v3, :cond_3

    move-wide v15, v9

    iget-wide v8, v11, Lcom/tencent/bugly/proguard/bo;->dG:J

    cmp-long v10, v8, v13

    if-nez v10, :cond_4

    iget-wide v8, v11, Lcom/tencent/bugly/proguard/bo;->dH:J

    cmp-long v10, v8, v15

    if-eqz v10, :cond_5

    goto :goto_0

    :cond_3
    move-wide v15, v9

    :cond_4
    :goto_0
    sget-object v8, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v10, v9

    const-string v9, "update, response: "

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x1

    aput-object v0, v10, v9

    invoke-virtual {v8, v10}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    iput v3, v11, Lcom/tencent/bugly/proguard/bo;->dF:I

    iput-wide v13, v11, Lcom/tencent/bugly/proguard/bo;->dG:J

    move-wide v8, v15

    iput-wide v8, v11, Lcom/tencent/bugly/proguard/bo;->dH:J

    invoke-static {}, Lcom/tencent/bugly/proguard/kc;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v3, "entrance_resp_limit_code"

    iget v8, v11, Lcom/tencent/bugly/proguard/bo;->dF:I

    invoke-interface {v0, v3, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v3, "entrance_resp_limit_code_expiration_time_in_sec"

    iget-wide v8, v11, Lcom/tencent/bugly/proguard/bo;->dG:J

    invoke-interface {v0, v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v3, "entrance_resp_config_latest_update_time_in_sec"

    iget-wide v8, v11, Lcom/tencent/bugly/proguard/bo;->dH:J

    invoke-interface {v0, v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v7, v8, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "save to cache, code: "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v11, Lcom/tencent/bugly/proguard/bo;->dF:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", code_expiration_time_in_sec: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v11, Lcom/tencent/bugly/proguard/bo;->dG:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", config_latest_update_time_in_sec: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v11, Lcom/tencent/bugly/proguard/bo;->dH:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-virtual {v0, v8}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_5
    iget-wide v8, v11, Lcom/tencent/bugly/proguard/bo;->dH:J

    const-wide/16 v13, 0x0

    cmp-long v0, v8, v13

    if-eqz v0, :cond_8

    iget-wide v12, v11, Lcom/tencent/bugly/proguard/bo;->dK:J

    cmp-long v0, v8, v12

    if-eqz v0, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v12, v11, Lcom/tencent/bugly/proguard/bo;->dJ:J

    const-wide/16 v15, 0x0

    cmp-long v0, v12, v15

    if-eqz v0, :cond_6

    sub-long v12, v8, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/32 v17, 0xea60

    cmp-long v0, v12, v17

    if-ltz v0, :cond_8

    :cond_6
    iput-wide v8, v11, Lcom/tencent/bugly/proguard/bo;->dJ:J

    invoke-static {}, Lcom/tencent/bugly/proguard/kc;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v8, "config_update_time_from_apply_in_sec"

    const-wide/16 v9, 0x0

    invoke-interface {v0, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v11, Lcom/tencent/bugly/proguard/bo;->dK:J

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v7, v8, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "load from cache, config_update_time_from_apply_in_sec: "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v9, v11, Lcom/tencent/bugly/proguard/bo;->dK:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-virtual {v0, v8}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_7
    iget-wide v8, v11, Lcom/tencent/bugly/proguard/bo;->dK:J

    iget-wide v10, v11, Lcom/tencent/bugly/proguard/bo;->dH:J

    cmp-long v0, v10, v8

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_9

    invoke-static {}, Lcom/tencent/bugly/proguard/gf;->eO()Lcom/tencent/bugly/proguard/gf;

    move-result-object v0

    iget-object v3, v0, Lcom/tencent/bugly/proguard/gf;->handler:Landroid/os/Handler;

    if-eqz v3, :cond_9

    new-instance v8, Lcom/tencent/bugly/proguard/gf$1;

    invoke-direct {v8, v0}, Lcom/tencent/bugly/proguard/gf$1;-><init>(Lcom/tencent/bugly/proguard/gf;)V

    const-wide/16 v9, 0x64

    invoke-virtual {v3, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    return-void

    :catchall_0
    move-exception v0

    sget-object v3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v8, v1

    invoke-virtual {v3, v8}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return-void

    :cond_a
    :goto_2
    sget-object v3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v8, v1

    invoke-virtual {v3, v8}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    return-void
.end method

.method private static au()Lcom/tencent/bugly/proguard/bo;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/bo;->dE:Lcom/tencent/bugly/proguard/bo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/bugly/proguard/bo;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/bo;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/bo;->dE:Lcom/tencent/bugly/proguard/bo;

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/bo;->dE:Lcom/tencent/bugly/proguard/bo;

    return-object v0
.end method

.method private av()V
    .locals 7

    invoke-static {}, Lcom/tencent/bugly/proguard/kc;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "entrance_resp_limit_code"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tencent/bugly/proguard/bo;->dF:I

    const-string v1, "entrance_resp_limit_code_expiration_time_in_sec"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/tencent/bugly/proguard/bo;->dG:J

    const-string v1, "entrance_resp_config_latest_update_time_in_sec"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/bo;->dH:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/bo;->dI:Z

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "RMonitor_report_entrance"

    aput-object v4, v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "load from cache, code: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/tencent/bugly/proguard/bo;->dF:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", code_expiration_time_in_sec: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/tencent/bugly/proguard/bo;->dG:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", config_latest_update_time_in_sec: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/tencent/bugly/proguard/bo;->dH:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-virtual {v1, v3}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "."

    const-string v4, "check block report of ["

    const-string v5, "RMonitor_report_entrance"

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/bo;->au()Lcom/tencent/bugly/proguard/bo;

    move-result-object v0

    const-string v9, "union_dau"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "metric"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    :goto_0
    const/4 v9, 0x0

    goto :goto_4

    :cond_0
    iget-boolean v9, v0, Lcom/tencent/bugly/proguard/bo;->dI:Z

    if-nez v9, :cond_1

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/bo;->av()V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    iget-wide v11, v0, Lcom/tencent/bugly/proguard/bo;->dG:J

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-eqz v15, :cond_2

    cmp-long v13, v9, v11

    if-lez v13, :cond_2

    goto :goto_0

    :cond_2
    iget v9, v0, Lcom/tencent/bugly/proguard/bo;->dF:I

    if-eqz v9, :cond_6

    const v10, 0x186ab

    if-ne v9, v10, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const v10, 0x186c8

    if-eq v9, v10, :cond_5

    const v10, 0x186be

    if-ne v9, v10, :cond_4

    goto :goto_1

    :cond_4
    const v10, 0x186b4

    if-ne v9, v10, :cond_6

    iget-object v0, v0, Lcom/tencent/bugly/proguard/bo;->dM:Ljava/util/ArrayList;

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v0, v0, Lcom/tencent/bugly/proguard/bo;->dL:Ljava/util/ArrayList;

    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    xor-int/2addr v0, v7

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    move v9, v0

    :goto_4
    const-string v0, "], block: "

    if-eqz v9, :cond_7

    :try_start_1
    sget-object v10, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v11, v6, [Ljava/lang/String;

    aput-object v5, v11, v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v7

    invoke-virtual {v10, v11}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    sget-object v10, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v11, v6, [Ljava/lang/String;

    aput-object v5, v11, v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v7

    invoke-virtual {v10, v11}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    const/4 v9, 0x0

    :goto_5
    sget-object v10, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] fail for "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-virtual {v10, v6}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    :goto_6
    return v9
.end method
