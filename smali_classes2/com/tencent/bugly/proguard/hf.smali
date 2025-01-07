.class public final Lcom/tencent/bugly/proguard/hf;
.super Lcom/tencent/bugly/proguard/hc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/hf$a;
    }
.end annotation


# instance fields
.field private final ud:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/hf$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x64

    const v1, 0x3dcccccd    # 0.1f

    const-string v2, "work_thread_lag"

    invoke-direct {p0, v2, v0, v1}, Lcom/tencent/bugly/proguard/hc;-><init>(Ljava/lang/String;IF)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hf;->ud:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Lcom/tencent/bugly/proguard/hf;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/hc;-><init>(Lcom/tencent/bugly/proguard/hc;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hf;->ud:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/hf;->a(Lcom/tencent/bugly/proguard/hc;)V

    return-void
.end method

.method private aH(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hf$a;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/hf;->ud:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/hf$a;

    iget-object v2, v1, Lcom/tencent/bugly/proguard/hf$a;->ue:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_0

    :catchall_0
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private fn()Lcom/tencent/bugly/proguard/hf;
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/hf;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/hf;-><init>(Lcom/tencent/bugly/proguard/hf;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/hc;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/bugly/proguard/hc;->a(Lcom/tencent/bugly/proguard/hc;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/hf;->ud:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    instance-of v1, p1, Lcom/tencent/bugly/proguard/hf;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/hf;->ud:Ljava/util/ArrayList;

    check-cast p1, Lcom/tencent/bugly/proguard/hf;

    iget-object p1, p1, Lcom/tencent/bugly/proguard/hf;->ud:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "max_stack_duration"

    const-string v3, "stack_interval"

    const-string v4, "lag_threshold"

    const-string v5, "event_sample_ratio"

    const-string v6, "sample_ratio"

    const-string v7, "thread_name"

    const-string v8, "RMonitor_config"

    const-string v9, "threads"

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super/range {p0 .. p1}, Lcom/tencent/bugly/proguard/hc;->a(Lorg/json/JSONObject;)V

    :try_start_0
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v11, v0, :cond_a

    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_9

    const/4 v12, 0x1

    :try_start_1
    new-instance v13, Lcom/tencent/bugly/proguard/hf$a;

    invoke-direct {v13}, Lcom/tencent/bugly/proguard/hf$a;-><init>()V

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/tencent/bugly/proguard/hf$a;->ue:Ljava/lang/String;

    :cond_1
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    double-to-float v14, v14

    iput v14, v13, Lcom/tencent/bugly/proguard/hf$a;->tP:F

    :cond_2
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    double-to-float v14, v14

    iput v14, v13, Lcom/tencent/bugly/proguard/hf$a;->tT:F

    :cond_3
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v13, Lcom/tencent/bugly/proguard/hf$a;->uf:J

    :cond_4
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v13, Lcom/tencent/bugly/proguard/hf$a;->ug:J

    :cond_5
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v13, Lcom/tencent/bugly/proguard/hf$a;->uh:J

    :cond_6
    iget-object v0, v13, Lcom/tencent/bugly/proguard/hf$a;->ue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-wide v14, v13, Lcom/tencent/bugly/proguard/hf$a;->uf:J

    const-wide/16 v16, 0x0

    cmp-long v0, v14, v16

    if-lez v0, :cond_7

    iget-wide v14, v13, Lcom/tencent/bugly/proguard/hf$a;->ug:J

    cmp-long v0, v14, v16

    if-lez v0, :cond_7

    iget-wide v14, v13, Lcom/tencent/bugly/proguard/hf$a;->uh:J

    cmp-long v0, v14, v16

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_9

    iget-object v0, v13, Lcom/tencent/bugly/proguard/hf$a;->ue:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/tencent/bugly/proguard/hf;->aH(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hf$a;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v14, v13, Lcom/tencent/bugly/proguard/hf$a;->ue:Ljava/lang/String;

    iput-object v14, v0, Lcom/tencent/bugly/proguard/hf$a;->ue:Ljava/lang/String;

    iget v14, v13, Lcom/tencent/bugly/proguard/hf$a;->tP:F

    iput v14, v0, Lcom/tencent/bugly/proguard/hf$a;->tP:F

    iget v14, v13, Lcom/tencent/bugly/proguard/hf$a;->tT:F

    iput v14, v0, Lcom/tencent/bugly/proguard/hf$a;->tT:F

    iget-wide v14, v13, Lcom/tencent/bugly/proguard/hf$a;->uf:J

    iput-wide v14, v0, Lcom/tencent/bugly/proguard/hf$a;->uf:J

    iget-wide v14, v13, Lcom/tencent/bugly/proguard/hf$a;->ug:J

    iput-wide v14, v0, Lcom/tencent/bugly/proguard/hf$a;->ug:J

    iget-wide v13, v13, Lcom/tencent/bugly/proguard/hf$a;->uh:J

    iput-wide v13, v0, Lcom/tencent/bugly/proguard/hf$a;->uh:J

    goto :goto_2

    :cond_8
    iget-object v0, v1, Lcom/tencent/bugly/proguard/hf;->ud:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_2
    sget-object v13, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    aput-object v8, v14, v10

    const-string v15, "parseWorkTypeConfig, t: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v12

    invoke-virtual {v13, v14}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_9
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_a
    return-void

    :catchall_1
    move-exception v0

    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v3, "parsePluginConfig"

    invoke-virtual {v2, v8, v3, v0}, Lcom/tencent/bugly/proguard/km;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/hf;->fn()Lcom/tencent/bugly/proguard/hf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic eX()Lcom/tencent/bugly/proguard/hc;
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/hf;->fn()Lcom/tencent/bugly/proguard/hf;

    move-result-object v0

    return-object v0
.end method
