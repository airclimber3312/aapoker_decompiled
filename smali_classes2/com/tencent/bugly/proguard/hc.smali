.class public Lcom/tencent/bugly/proguard/hc;
.super Lcom/tencent/bugly/proguard/ha;

# interfaces
.implements Lcom/tencent/bugly/proguard/gl;
.implements Ljava/lang/Cloneable;


# instance fields
.field public enabled:Z

.field public final name:Ljava/lang/String;

.field public tP:F

.field public tS:I

.field public tT:F

.field public tU:F

.field public tV:I


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/hc;)V
    .locals 1

    iget-object v0, p1, Lcom/tencent/bugly/proguard/hc;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/hc;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/hc;->a(Lcom/tencent/bugly/proguard/hc;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ha;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/hc;->enabled:Z

    const/16 v1, 0xa

    iput v1, p0, Lcom/tencent/bugly/proguard/hc;->tS:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/bugly/proguard/hc;->tP:F

    iput v1, p0, Lcom/tencent/bugly/proguard/hc;->tT:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/tencent/bugly/proguard/hc;->tU:F

    iput v0, p0, Lcom/tencent/bugly/proguard/hc;->tV:I

    iput-object p1, p0, Lcom/tencent/bugly/proguard/hc;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FI)V
    .locals 1

    const/16 v0, 0x64

    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/bugly/proguard/hc;-><init>(Ljava/lang/String;IF)V

    iput p3, p0, Lcom/tencent/bugly/proguard/hc;->tV:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IF)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/hc;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/tencent/bugly/proguard/hc;->tS:I

    iput p3, p0, Lcom/tencent/bugly/proguard/hc;->tT:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/hc;->enabled:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IFFI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/hc;-><init>(Ljava/lang/String;IF)V

    iput p4, p0, Lcom/tencent/bugly/proguard/hc;->tP:F

    iput p5, p0, Lcom/tencent/bugly/proguard/hc;->tV:I

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/bugly/proguard/hc;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/tencent/bugly/proguard/hc;->enabled:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/hc;->enabled:Z

    iget v0, p1, Lcom/tencent/bugly/proguard/hc;->tS:I

    iput v0, p0, Lcom/tencent/bugly/proguard/hc;->tS:I

    iget v0, p1, Lcom/tencent/bugly/proguard/hc;->tP:F

    iput v0, p0, Lcom/tencent/bugly/proguard/hc;->tP:F

    iget v0, p1, Lcom/tencent/bugly/proguard/hc;->tT:F

    iput v0, p0, Lcom/tencent/bugly/proguard/hc;->tT:F

    iget v0, p1, Lcom/tencent/bugly/proguard/hc;->tU:F

    iput v0, p0, Lcom/tencent/bugly/proguard/hc;->tU:F

    iget p1, p1, Lcom/tencent/bugly/proguard/hc;->tV:I

    iput p1, p0, Lcom/tencent/bugly/proguard/hc;->tV:I

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, "threshold"

    const-string v1, "report_sample_ratio"

    const-string v2, "event_sample_ratio"

    const-string v3, "daily_report_limit"

    const-string v4, "enabled"

    const-string v5, "sample_ratio"

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v5, v5

    iput v5, p0, Lcom/tencent/bugly/proguard/hc;->tP:F

    :cond_1
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/tencent/bugly/proguard/hc;->enabled:Z

    :cond_2
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/tencent/bugly/proguard/hc;->tS:I

    :cond_3
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/tencent/bugly/proguard/hc;->tT:F

    :cond_4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/tencent/bugly/proguard/hc;->tU:F

    :cond_5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/bugly/proguard/hc;->tV:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_config"

    const-string v2, "parsePluginConfig"

    invoke-virtual {v0, v1, v2, p1}, Lcom/tencent/bugly/proguard/km;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/hc;->eX()Lcom/tencent/bugly/proguard/hc;

    move-result-object v0

    return-object v0
.end method

.method public eX()Lcom/tencent/bugly/proguard/hc;
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/hc;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/hc;-><init>(Lcom/tencent/bugly/proguard/hc;)V

    return-object v0
.end method
