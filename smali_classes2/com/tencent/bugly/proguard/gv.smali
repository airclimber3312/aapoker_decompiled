.class public final Lcom/tencent/bugly/proguard/gv;
.super Lcom/tencent/bugly/proguard/hc;


# instance fields
.field public tj:Z

.field public tk:Z

.field private tl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/tencent/bugly/proguard/gv;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/hc;-><init>(Lcom/tencent/bugly/proguard/hc;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gv;->tj:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gv;->tk:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/gv;->tl:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/gv;->a(Lcom/tencent/bugly/proguard/hc;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xc8

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/bugly/proguard/hc;-><init>(Ljava/lang/String;FI)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/gv;->tj:Z

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/gv;->tk:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/gv;->tl:Ljava/lang/String;

    return-void
.end method

.method private fc()Lcom/tencent/bugly/proguard/gv;
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/gv;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/gv;-><init>(Lcom/tencent/bugly/proguard/gv;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/hc;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/bugly/proguard/hc;->a(Lcom/tencent/bugly/proguard/hc;)V

    instance-of v0, p1, Lcom/tencent/bugly/proguard/gv;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tencent/bugly/proguard/gv;

    iget-boolean v0, p1, Lcom/tencent/bugly/proguard/gv;->tj:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gv;->tj:Z

    iget-boolean v0, p1, Lcom/tencent/bugly/proguard/gv;->tk:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gv;->tk:Z

    iget-object p1, p1, Lcom/tencent/bugly/proguard/gv;->tl:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/gv;->tl:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/bugly/proguard/hc;->a(Lorg/json/JSONObject;)V

    :try_start_0
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/gv;->tl:Ljava/lang/String;

    const-string v0, "enable_custom_stage"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gv;->tj:Z

    const-string v0, "enable_activity_switch"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/gv;->tk:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_config"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/gv;->fc()Lcom/tencent/bugly/proguard/gv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic eX()Lcom/tencent/bugly/proguard/hc;
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/gv;->fc()Lcom/tencent/bugly/proguard/gv;

    move-result-object v0

    return-object v0
.end method
