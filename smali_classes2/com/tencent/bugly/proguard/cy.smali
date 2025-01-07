.class public final Lcom/tencent/bugly/proguard/cy;
.super Lcom/tencent/bugly/proguard/hc;


# instance fields
.field private ga:F

.field private gb:F

.field private gc:F

.field private gd:F

.field private ge:F

.field private gf:F

.field private gg:F

.field private gh:F

.field private gi:F

.field private gj:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/hc;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/bugly/proguard/cy;->gf:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tencent/bugly/proguard/cy;->gg:F

    iput v0, p0, Lcom/tencent/bugly/proguard/cy;->gh:F

    iput v0, p0, Lcom/tencent/bugly/proguard/cy;->gi:F

    iput p1, p0, Lcom/tencent/bugly/proguard/cy;->gj:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/tencent/bugly/proguard/cy;->ga:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/tencent/bugly/proguard/cy;->gb:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/tencent/bugly/proguard/cy;->gc:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/tencent/bugly/proguard/cy;->gd:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/tencent/bugly/proguard/cy;->ge:F

    return-void
.end method

.method public static K(Ljava/lang/String;)Z
    .locals 8

    invoke-static {}, Lcom/tencent/bugly/proguard/gf;->eO()Lcom/tencent/bugly/proguard/gf;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/gf;->ax(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;

    move-result-object v0

    instance-of v1, v0, Lcom/tencent/bugly/proguard/cy;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    check-cast v0, Lcom/tencent/bugly/proguard/cy;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "launch_time_ratio"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "crash_portal_ratio"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "error_portal_ratio"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "crash_atta_ratio"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "userinfo_ratio"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_0
    const-string v1, "HttpRequestControlConfig"

    packed-switch v5, :pswitch_data_0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v5, v3, [Ljava/lang/String;

    aput-object v1, v5, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not a valid key"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :pswitch_0
    iget v5, v0, Lcom/tencent/bugly/proguard/cy;->gj:F

    iget v0, v0, Lcom/tencent/bugly/proguard/cy;->gd:F

    cmpl-float v0, v5, v0

    if-ltz v0, :cond_5

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :pswitch_1
    iget v5, v0, Lcom/tencent/bugly/proguard/cy;->gg:F

    iget v0, v0, Lcom/tencent/bugly/proguard/cy;->gb:F

    cmpl-float v0, v5, v0

    if-ltz v0, :cond_5

    goto :goto_1

    :pswitch_2
    iget v5, v0, Lcom/tencent/bugly/proguard/cy;->gh:F

    iget v0, v0, Lcom/tencent/bugly/proguard/cy;->gc:F

    cmpl-float v0, v5, v0

    if-ltz v0, :cond_5

    goto :goto_1

    :pswitch_3
    iget v5, v0, Lcom/tencent/bugly/proguard/cy;->gf:F

    iget v0, v0, Lcom/tencent/bugly/proguard/cy;->ga:F

    cmpl-float v0, v5, v0

    if-ltz v0, :cond_5

    goto :goto_1

    :pswitch_4
    iget v5, v0, Lcom/tencent/bugly/proguard/cy;->gi:F

    iget v0, v0, Lcom/tencent/bugly/proguard/cy;->ge:F

    cmpl-float v0, v5, v0

    if-ltz v0, :cond_5

    goto :goto_1

    :goto_2
    if-nez v0, :cond_6

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is disabled, please modify your project\'s setting"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return v2

    :cond_6
    return v4

    :cond_7
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6635b8bb -> :sswitch_4
        -0x2147677c -> :sswitch_3
        0x344a5f4f -> :sswitch_2
        0x453aa810 -> :sswitch_1
        0x7fd6ec25 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "userinfo_ratio"

    const-string v1, "launch_time_ratio"

    const-string v2, "error_portal_ratio"

    const-string v3, "crash_portal_ratio"

    const-string v4, "crash_atta_ratio"

    const-string v5, "HttpRequestControlConfig"

    if-nez p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v0, "http configs is null"

    filled-new-array {v5, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v4, v6

    iput v4, p0, Lcom/tencent/bugly/proguard/cy;->gf:F

    :cond_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, p0, Lcom/tencent/bugly/proguard/cy;->gg:F

    :cond_2
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/tencent/bugly/proguard/cy;->gh:F

    :cond_3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/tencent/bugly/proguard/cy;->gj:F

    :cond_4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/tencent/bugly/proguard/cy;->gi:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-void

    :goto_0
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "parseHttpConfigs"

    invoke-virtual {v0, v5, v1, p1}, Lcom/tencent/bugly/proguard/km;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
