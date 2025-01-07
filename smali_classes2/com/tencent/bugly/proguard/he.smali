.class public final Lcom/tencent/bugly/proguard/he;
.super Lcom/tencent/bugly/proguard/hc;


# instance fields
.field public tK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tX:D

.field public tY:D

.field public tZ:D

.field public ua:D

.field public ub:D


# direct methods
.method public constructor <init>()V
    .locals 6

    const-string v1, "traffic_detail"

    const/16 v2, 0x3e8

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/16 v5, 0x64

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/hc;-><init>(Ljava/lang/String;IFFI)V

    const-wide v0, 0x407f400000000000L    # 500.0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/he;->tX:D

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/he;->tY:D

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/he;->tZ:D

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/he;->ua:D

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/he;->ub:D

    new-instance v0, Lcom/tencent/bugly/proguard/he$1;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/he$1;-><init>(Lcom/tencent/bugly/proguard/he;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/he;->tK:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/tencent/bugly/proguard/he;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/hc;-><init>(Lcom/tencent/bugly/proguard/hc;)V

    const-wide v0, 0x407f400000000000L    # 500.0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/he;->tX:D

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/he;->tY:D

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/he;->tZ:D

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/he;->ua:D

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/he;->ub:D

    new-instance v0, Lcom/tencent/bugly/proguard/he$1;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/he$1;-><init>(Lcom/tencent/bugly/proguard/he;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/he;->tK:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/he;->a(Lcom/tencent/bugly/proguard/hc;)V

    return-void
.end method

.method private fm()Lcom/tencent/bugly/proguard/he;
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/he;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/he;-><init>(Lcom/tencent/bugly/proguard/he;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/hc;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/bugly/proguard/hc;->a(Lcom/tencent/bugly/proguard/hc;)V

    instance-of v0, p1, Lcom/tencent/bugly/proguard/he;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tencent/bugly/proguard/he;

    iget-wide v0, p1, Lcom/tencent/bugly/proguard/he;->tX:D

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/he;->tX:D

    iget-wide v0, p1, Lcom/tencent/bugly/proguard/he;->tZ:D

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/he;->tZ:D

    iget-wide v0, p1, Lcom/tencent/bugly/proguard/he;->ua:D

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/he;->ua:D

    iget-wide v0, p1, Lcom/tencent/bugly/proguard/he;->ub:D

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/he;->ub:D

    iget-wide v0, p1, Lcom/tencent/bugly/proguard/he;->tY:D

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/he;->tY:D

    iget-object p1, p1, Lcom/tencent/bugly/proguard/he;->tK:Ljava/util/List;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/he;->tK:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 12

    const-string v0, "ignore_so_list"

    const-string v1, "auto_start_limit_in_megabyte"

    const-string v2, "custom_limit_in_megabyte"

    const-string v3, "backend_limit_in_megabyte"

    const-string v4, "mobile_limit_in_megabyte"

    const-string v5, "total_limit_in_megabyte"

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v6, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "TrafficDetailPluginConfig"

    aput-object v9, v7, v8

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v7, v11

    invoke-virtual {v6, v7}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/tencent/bugly/proguard/hc;->a(Lorg/json/JSONObject;)V

    :try_start_0
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/tencent/bugly/proguard/he;->tX:D

    :cond_1
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/bugly/proguard/he;->tZ:D

    :cond_2
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/bugly/proguard/he;->tY:D

    :cond_3
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/he;->ua:D

    :cond_4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/bugly/proguard/he;->ub:D

    :cond_5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_7

    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v8, v0, :cond_6

    invoke-virtual {p1, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/he;->tK:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "ignore_so_list parse failed"

    invoke-virtual {v0, v9, v1, p1}, Lcom/tencent/bugly/proguard/km;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_7
    return-void

    :catchall_1
    move-exception p1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "parsePluginConfig"

    invoke-virtual {v0, v9, v1, p1}, Lcom/tencent/bugly/proguard/km;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/he;->fm()Lcom/tencent/bugly/proguard/he;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic eX()Lcom/tencent/bugly/proguard/hc;
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/he;->fm()Lcom/tencent/bugly/proguard/he;

    move-result-object v0

    return-object v0
.end method
