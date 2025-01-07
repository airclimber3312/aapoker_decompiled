.class public final Lcom/tencent/bugly/proguard/gx;
.super Lcom/tencent/bugly/proguard/hc;


# instance fields
.field public tg:I

.field public tv:Z

.field public tw:I

.field private tx:Z

.field public ty:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    const-string v1, "activity_leak"

    const/16 v2, 0xa

    const v3, 0x3dcccccd    # 0.1f

    const v4, 0x3dcccccd    # 0.1f

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/hc;-><init>(Ljava/lang/String;IFFI)V

    const/16 v0, 0x9

    iput v0, p0, Lcom/tencent/bugly/proguard/gx;->tg:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gx;->tv:Z

    const/16 v1, 0x64

    iput v1, p0, Lcom/tencent/bugly/proguard/gx;->tw:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/gx;->tx:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gx;->ty:Z

    return-void
.end method

.method private constructor <init>(Lcom/tencent/bugly/proguard/gx;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/hc;-><init>(Lcom/tencent/bugly/proguard/hc;)V

    const/16 v0, 0x9

    iput v0, p0, Lcom/tencent/bugly/proguard/gx;->tg:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gx;->tv:Z

    const/16 v1, 0x64

    iput v1, p0, Lcom/tencent/bugly/proguard/gx;->tw:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/gx;->tx:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gx;->ty:Z

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/gx;->a(Lcom/tencent/bugly/proguard/hc;)V

    return-void
.end method

.method private fk()Lcom/tencent/bugly/proguard/gx;
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/gx;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/gx;-><init>(Lcom/tencent/bugly/proguard/gx;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/hc;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/bugly/proguard/hc;->a(Lcom/tencent/bugly/proguard/hc;)V

    instance-of v0, p1, Lcom/tencent/bugly/proguard/gx;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tencent/bugly/proguard/gx;

    iget-boolean v0, p1, Lcom/tencent/bugly/proguard/gx;->tv:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gx;->tv:Z

    iget v0, p1, Lcom/tencent/bugly/proguard/gx;->tw:I

    iput v0, p0, Lcom/tencent/bugly/proguard/gx;->tw:I

    iget-boolean v0, p1, Lcom/tencent/bugly/proguard/gx;->tx:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gx;->tx:Z

    iget-boolean v0, p1, Lcom/tencent/bugly/proguard/gx;->ty:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gx;->ty:Z

    iget p1, p1, Lcom/tencent/bugly/proguard/gx;->tg:I

    iput p1, p0, Lcom/tencent/bugly/proguard/gx;->tg:I

    :cond_0
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "hprof_strip_switch"

    const-string v1, "enable_fragment_inspect"

    const-string v2, "keep_uuid_when_leaked"

    const-string v3, "loop_max_count"

    const-string v4, "auto_dump"

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/bugly/proguard/hc;->a(Lorg/json/JSONObject;)V

    :try_start_0
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/tencent/bugly/proguard/gx;->tv:Z

    :cond_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/tencent/bugly/proguard/gx;->tw:I

    :cond_2
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tencent/bugly/proguard/gx;->tx:Z

    :cond_3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/gx;->ty:Z

    :cond_4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/bugly/proguard/gx;->tg:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_config"

    const-string v2, "parsePluginConfig"

    invoke-virtual {v0, v1, v2, p1}, Lcom/tencent/bugly/proguard/km;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/gx;->fk()Lcom/tencent/bugly/proguard/gx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic eX()Lcom/tencent/bugly/proguard/hc;
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/gx;->fk()Lcom/tencent/bugly/proguard/gx;

    move-result-object v0

    return-object v0
.end method
