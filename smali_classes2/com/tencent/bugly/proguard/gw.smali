.class public final Lcom/tencent/bugly/proguard/gw;
.super Lcom/tencent/bugly/proguard/hc;


# instance fields
.field public tb:Z

.field private tm:F

.field public tn:Z

.field private to:J

.field private tp:Z

.field private tq:I

.field private tr:J

.field private ts:J

.field private tt:J

.field private tu:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const v0, 0x3dcccccd    # 0.1f

    const/16 v1, 0xc8

    const-string v2, "looper_stack"

    invoke-direct {p0, v2, v0, v1}, Lcom/tencent/bugly/proguard/hc;-><init>(Ljava/lang/String;FI)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/gw;->tm:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gw;->tn:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/gw;->tb:Z

    const-wide/16 v2, 0x34

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/gw;->to:J

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gw;->tp:Z

    const/16 v0, 0x1e

    iput v0, p0, Lcom/tencent/bugly/proguard/gw;->tq:I

    const-wide/16 v2, 0x14

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/gw;->tr:J

    const-wide/16 v2, 0xbb8

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/gw;->ts:J

    const-wide/32 v2, 0x2bf20

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/gw;->tt:J

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/gw;->tu:Z

    return-void
.end method

.method private constructor <init>(Lcom/tencent/bugly/proguard/gw;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/hc;-><init>(Lcom/tencent/bugly/proguard/hc;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/gw;->tm:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gw;->tn:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/gw;->tb:Z

    const-wide/16 v2, 0x34

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/gw;->to:J

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gw;->tp:Z

    const/16 v0, 0x1e

    iput v0, p0, Lcom/tencent/bugly/proguard/gw;->tq:I

    const-wide/16 v2, 0x14

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/gw;->tr:J

    const-wide/16 v2, 0xbb8

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/gw;->ts:J

    const-wide/32 v2, 0x2bf20

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/gw;->tt:J

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/gw;->tu:Z

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/gw;->a(Lcom/tencent/bugly/proguard/hc;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/hc;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/bugly/proguard/hc;->a(Lcom/tencent/bugly/proguard/hc;)V

    instance-of v0, p1, Lcom/tencent/bugly/proguard/gw;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/tencent/bugly/proguard/gw;

    iget v0, p1, Lcom/tencent/bugly/proguard/gw;->tm:F

    iput v0, p0, Lcom/tencent/bugly/proguard/gw;->tm:F

    iget-boolean v0, p1, Lcom/tencent/bugly/proguard/gw;->tb:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gw;->tb:Z

    iget-boolean v0, p1, Lcom/tencent/bugly/proguard/gw;->tn:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gw;->tn:Z

    iget-wide v0, p1, Lcom/tencent/bugly/proguard/gw;->to:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/gw;->to:J

    iget-boolean v0, p1, Lcom/tencent/bugly/proguard/gw;->tp:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gw;->tp:Z

    iget v0, p1, Lcom/tencent/bugly/proguard/gw;->tq:I

    iput v0, p0, Lcom/tencent/bugly/proguard/gw;->tq:I

    iget-wide v0, p1, Lcom/tencent/bugly/proguard/gw;->tr:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/gw;->tr:J

    iget-wide v0, p1, Lcom/tencent/bugly/proguard/gw;->ts:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/gw;->ts:J

    iget-wide v0, p1, Lcom/tencent/bugly/proguard/gw;->tt:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/gw;->tt:J

    iget-boolean p1, p1, Lcom/tencent/bugly/proguard/gw;->tu:Z

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/gw;->tu:Z

    :cond_1
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 11

    const-string v0, "suspend_before_get_stack"

    const-string v1, "lag_max_cost_in_ms"

    const-string v2, "long_lag_in_ms"

    const-string v3, "collect_stack_delay_in_ms"

    const-string v4, "long_lag_slice_count"

    const-string v5, "enable_validate"

    const-string v6, "stack_interval_ms"

    const-string v7, "quick_trace_protect"

    const-string v8, "quick_trace_record"

    const-string v9, "quick_trace_ratio"

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/bugly/proguard/hc;->a(Lorg/json/JSONObject;)V

    :try_start_0
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-float v9, v9

    iput v9, p0, Lcom/tencent/bugly/proguard/gw;->tm:F

    :cond_1
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/tencent/bugly/proguard/gw;->tn:Z

    :cond_2
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/tencent/bugly/proguard/gw;->tb:Z

    :cond_3
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x5

    cmp-long v10, v6, v8

    if-gez v10, :cond_4

    move-wide v6, v8

    :cond_4
    iput-wide v6, p0, Lcom/tencent/bugly/proguard/gw;->to:J

    :cond_5
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/tencent/bugly/proguard/gw;->tp:Z

    :cond_6
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_7

    const/16 v4, 0x1e

    :cond_7
    iput v4, p0, Lcom/tencent/bugly/proguard/gw;->tq:I

    :cond_8
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_a

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v7, v3, v5

    if-gtz v7, :cond_9

    const-wide/16 v3, 0x14

    :cond_9
    iput-wide v3, p0, Lcom/tencent/bugly/proguard/gw;->tr:J

    :cond_a
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-gtz v4, :cond_b

    const-wide/16 v2, 0xbb8

    :cond_b
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/gw;->ts:J

    :cond_c
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v3, v1, v5

    if-gtz v3, :cond_d

    const-wide/32 v1, 0x2bf20

    :cond_d
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/gw;->tt:J

    :cond_e
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/gw;->tu:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_f
    return-void

    :catchall_0
    move-exception p1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RMonitor_config"

    aput-object v3, v1, v2

    const-string v2, "LooperConfigParser, t: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/gw;->eX()Lcom/tencent/bugly/proguard/hc;

    move-result-object v0

    return-object v0
.end method

.method public final eX()Lcom/tencent/bugly/proguard/hc;
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/gw;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/gw;-><init>(Lcom/tencent/bugly/proguard/gw;)V

    return-object v0
.end method

.method public final fd()F
    .locals 1

    iget v0, p0, Lcom/tencent/bugly/proguard/gw;->tm:F

    return v0
.end method

.method public final fe()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/gw;->to:J

    return-wide v0
.end method

.method public final ff()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/gw;->tp:Z

    return v0
.end method

.method public final fg()I
    .locals 1

    iget v0, p0, Lcom/tencent/bugly/proguard/gw;->tq:I

    return v0
.end method

.method public final fh()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/gw;->tr:J

    return-wide v0
.end method

.method public final fi()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/gw;->tt:J

    return-wide v0
.end method

.method public final fj()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/gw;->tu:Z

    return v0
.end method
