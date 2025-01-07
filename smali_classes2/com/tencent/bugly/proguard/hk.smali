.class final Lcom/tencent/bugly/proguard/hk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/ho;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/tencent/bugly/proguard/hb;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/hb;->aB(Ljava/lang/String;)Lcom/tencent/bugly/proguard/ha;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/tencent/bugly/proguard/ha;->a(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method private static b(Lorg/json/JSONObject;Lcom/tencent/bugly/proguard/hb;)Z
    .locals 7

    const-string v0, "features"

    const-string v1, "sample_ratio"

    const-string v2, "crash"

    const-string v3, "atta"

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, p1, Lcom/tencent/bugly/proguard/hb;->tP:F

    :cond_0
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p1, v3, v1}, Lcom/tencent/bugly/proguard/hk;->a(Lcom/tencent/bugly/proguard/hb;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lcom/tencent/bugly/proguard/hk;->a(Lcom/tencent/bugly/proguard/hb;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/tencent/bugly/proguard/hb;->aB(Ljava/lang/String;)Lcom/tencent/bugly/proguard/ha;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Lcom/tencent/bugly/proguard/ha;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v0, "RMonitor_config_ParserV7"

    const-string v1, "parseConfig"

    invoke-virtual {p1, v0, v1, p0}, Lcom/tencent/bugly/proguard/km;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return v4
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Lcom/tencent/bugly/proguard/hb;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/hk;->b(Lorg/json/JSONObject;Lcom/tencent/bugly/proguard/hb;)Z

    move-result p1

    return p1
.end method
