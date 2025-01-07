.class public final Lcom/tencent/bugly/proguard/gr;
.super Lcom/tencent/bugly/proguard/hc;


# instance fields
.field tb:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x64

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "launch_metric"

    invoke-direct {p0, v2, v0, v1}, Lcom/tencent/bugly/proguard/hc;-><init>(Ljava/lang/String;IF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gr;->tb:Z

    return-void
.end method

.method private constructor <init>(Lcom/tencent/bugly/proguard/gr;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/hc;-><init>(Lcom/tencent/bugly/proguard/hc;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/gr;->tb:Z

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/gr;->a(Lcom/tencent/bugly/proguard/hc;)V

    return-void
.end method

.method private eW()Lcom/tencent/bugly/proguard/gr;
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/gr;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/gr;-><init>(Lcom/tencent/bugly/proguard/gr;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/hc;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/bugly/proguard/hc;->a(Lcom/tencent/bugly/proguard/hc;)V

    instance-of v0, p1, Lcom/tencent/bugly/proguard/gr;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tencent/bugly/proguard/gr;

    iget-boolean p1, p1, Lcom/tencent/bugly/proguard/gr;->tb:Z

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/gr;->tb:Z

    :cond_0
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, "enable_protect"

    const-string v1, "RMonitor_config"

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/bugly/proguard/hc;->a(Lorg/json/JSONObject;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/gr;->tb:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v5, v2, [Ljava/lang/String;

    aput-object v1, v5, v4

    const-string v6, "AppLaunchPluginConfig, parseLaunchConfigInfo, t: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object p1, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/ci;->h(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lcom/tencent/bugly/proguard/gs;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/gs;-><init>()V

    :try_start_1
    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/gr;->tb:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/tencent/bugly/proguard/nl$a;->hv()Lcom/tencent/bugly/proguard/nl;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/tencent/bugly/proguard/nl;->B(Z)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/tencent/bugly/proguard/nl$a;->hv()Lcom/tencent/bugly/proguard/nl;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/tencent/bugly/proguard/nl;->B(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v5, v2, [Ljava/lang/String;

    aput-object v1, v5, v4

    const-string v6, "AppLaunchSampler, parseLaunchConfigInfo, t: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/tencent/bugly/proguard/nl$a;->hv()Lcom/tencent/bugly/proguard/nl;

    move-result-object p1

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/gr;->enabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/gr;->tb:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/nl;->ht()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v4}, Lcom/tencent/bugly/proguard/nl;->A(Z)V

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/gr;->tb:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1, v4}, Lcom/tencent/bugly/proguard/nl;->C(Z)V

    :cond_4
    invoke-virtual {p1, v3}, Lcom/tencent/bugly/proguard/nl;->A(Z)V

    return-void

    :cond_5
    invoke-virtual {p1, v4}, Lcom/tencent/bugly/proguard/nl;->A(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v4

    const-string v1, "AppLaunchSampler, scheduleNextLaunchMonitor, t: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/gr;->eW()Lcom/tencent/bugly/proguard/gr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic eX()Lcom/tencent/bugly/proguard/hc;
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/gr;->eW()Lcom/tencent/bugly/proguard/gr;

    move-result-object v0

    return-object v0
.end method
