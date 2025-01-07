.class public final Lcom/tencent/bugly/proguard/eg;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Lcom/tencent/bugly/proguard/kz;)V
    .locals 2

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/eg;->dt()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/kz;->gD()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/kz;->gE()Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/kz;->gC()Lorg/json/JSONObject;

    move-result-object v0

    const/4 p1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const-string v1, "user_custom"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    const-string v0, "extend_info"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/eg;->ah(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    .locals 5

    const-string v0, "biz_extend_info"

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v2, "extend_info"

    invoke-virtual {p1, v2}, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_1
    :try_start_2
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method

.method private static ah(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    const-string v1, "\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/du;->b(Ljava/lang/Throwable;)Z

    :cond_1
    return-object v0
.end method

.method private static dt()Z
    .locals 2

    invoke-static {}, Lcom/tencent/bugly/proguard/gf;->eO()Lcom/tencent/bugly/proguard/gf;

    move-result-object v0

    const-string v1, "crash"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/gf;->aB(Ljava/lang/String;)Lcom/tencent/bugly/proguard/ha;

    move-result-object v0

    instance-of v1, v0, Lcom/tencent/bugly/proguard/ct;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tencent/bugly/proguard/ct;

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/ct;->fT:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static u(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    .locals 4

    if-eqz p0, :cond_6

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kJ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kJ:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/proguard/bz;->aI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/tencent/bugly/proguard/kd;->ge()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "stage"

    invoke-virtual {p0, v1, v0}, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/proguard/la;->gG()Lcom/tencent/bugly/proguard/kz;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/eg;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Lcom/tencent/bugly/proguard/kz;)V

    return-void

    :cond_2
    new-instance v1, Lcom/tencent/bugly/proguard/ej;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/ej;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/proguard/aa$a;->C()Lcom/tencent/bugly/proguard/aa;

    move-result-object v2

    iget-object v3, v2, Lcom/tencent/bugly/proguard/aa;->av:Lcom/tencent/bugly/proguard/v;

    if-nez v3, :cond_3

    invoke-virtual {v2, v1}, Lcom/tencent/bugly/proguard/aa;->a(Lcom/tencent/bugly/proguard/v;)V

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, v2, Lcom/tencent/bugly/proguard/aa;->av:Lcom/tencent/bugly/proguard/v;

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {v1, v0}, Lcom/tencent/bugly/proguard/v;->h(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    new-instance v3, Lcom/tencent/bugly/proguard/y;

    invoke-direct {v3, v0}, Lcom/tencent/bugly/proguard/y;-><init>(Ljava/util/Map;)V

    :goto_1
    invoke-static {v3}, Lcom/tencent/bugly/proguard/la;->a(Lcom/tencent/bugly/proguard/u;)Lcom/tencent/bugly/proguard/kz;

    move-result-object v0

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method public static v(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Lorg/json/JSONObject;
    .locals 3

    if-nez p0, :cond_0

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0

    :cond_0
    const-string v0, "user_custom"

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->ac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_2
    :try_start_1
    const-string v0, "RDelivery"

    const-string v2, "a11"

    invoke-static {p0, v1, v0, v2}, Lcom/tencent/bugly/proguard/eg;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "testLabel"

    const-string v2, "a12"

    invoke-static {p0, v1, v0, v2}, Lcom/tencent/bugly/proguard/eg;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "caseLabel"

    const-string v2, "a13"

    invoke-static {p0, v1, v0, v2}, Lcom/tencent/bugly/proguard/eg;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->kJ:Ljava/lang/String;

    aput-object p0, v0, v2

    const-string p0, "[extra data]assemble custom data {%s}"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/du;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v1
.end method
