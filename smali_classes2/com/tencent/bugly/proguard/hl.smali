.class final Lcom/tencent/bugly/proguard/hl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/hp;


# instance fields
.field private ur:Lcom/tencent/bugly/proguard/hg;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/hl;->ur:Lcom/tencent/bugly/proguard/hg;

    return-void
.end method

.method private a(Landroid/content/SharedPreferences;)Lcom/tencent/bugly/proguard/hg;
    .locals 6

    const-string v0, "version"

    new-instance v1, Lcom/tencent/bugly/proguard/hg;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/hg;-><init>()V

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/tencent/bugly/proguard/hg;->uk:Lcom/tencent/bugly/proguard/hi;

    const-string v3, "rmonitor_config_data"

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, v2, Lcom/tencent/bugly/proguard/hi;->um:Lorg/json/JSONObject;

    :cond_1
    const-string v3, "config_latest_md5_code"

    iget-object v4, v2, Lcom/tencent/bugly/proguard/hi;->un:Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/bugly/proguard/hi;->un:Ljava/lang/String;

    const-string v3, "config_next_time"

    iget-wide v4, v2, Lcom/tencent/bugly/proguard/hi;->uo:J

    invoke-interface {p1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/proguard/hi;->uo:J

    const-string v3, "config_latest_update_time"

    iget-wide v4, v2, Lcom/tencent/bugly/proguard/hi;->uq:J

    invoke-interface {p1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/bugly/proguard/hi;->uq:J

    iget-object v3, v1, Lcom/tencent/bugly/proguard/hg;->uj:Lcom/tencent/bugly/proguard/hh;

    const-string v4, "config_last_apply_params"

    const-string v5, ""

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "pid"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/tencent/bugly/proguard/hh;->appId:Ljava/lang/String;

    const-string p1, "app_key"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/tencent/bugly/proguard/hh;->appKey:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/tencent/bugly/proguard/hh;->appVersion:Ljava/lang/String;

    const-string p1, "uin"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/tencent/bugly/proguard/hh;->bA:Ljava/lang/String;

    const-string p1, "deviceid"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/tencent/bugly/proguard/hh;->by:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/tencent/bugly/proguard/hh;->appVersion:Ljava/lang/String;

    const-string p1, "sdk_ver"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/tencent/bugly/proguard/hh;->bD:Ljava/lang/String;

    const-string p1, "os"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/tencent/bugly/proguard/hh;->cD:Ljava/lang/String;

    const-string p1, "manu"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/tencent/bugly/proguard/hh;->cC:Ljava/lang/String;

    const-string p1, "device"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/tencent/bugly/proguard/hh;->bx:Ljava/lang/String;

    const-string p1, "app_version_mode"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/tencent/bugly/proguard/hh;->bE:Ljava/lang/String;

    const-string p1, "md5code"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/tencent/bugly/proguard/hh;->ul:Ljava/lang/String;

    :cond_2
    const-string p1, "apply result from cache"

    invoke-virtual {v2, p1}, Lcom/tencent/bugly/proguard/hi;->aG(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/hl;->ur:Lcom/tencent/bugly/proguard/hg;

    if-eqz v0, :cond_3

    move-object v1, v0

    :cond_3
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "RMonitor_config"

    aput-object v4, v2, v3

    const-string v3, "load apply result fail for "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/hg;)Z
    .locals 7

    iput-object p1, p0, Lcom/tencent/bugly/proguard/hl;->ur:Lcom/tencent/bugly/proguard/hg;

    invoke-static {}, Lcom/tencent/bugly/proguard/kc;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v3, p1, Lcom/tencent/bugly/proguard/hg;->uk:Lcom/tencent/bugly/proguard/hi;

    const-string v4, "config_next_time"

    iget-wide v5, v3, Lcom/tencent/bugly/proguard/hi;->uo:J

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v4, "config_update_time_from_apply_in_sec"

    iget-wide v5, v3, Lcom/tencent/bugly/proguard/hi;->up:J

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v4, "config_latest_update_time"

    iget-wide v5, v3, Lcom/tencent/bugly/proguard/hi;->uq:J

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-boolean v4, p1, Lcom/tencent/bugly/proguard/hg;->ui:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, ""

    if-eqz v4, :cond_2

    :try_start_1
    iget-object v4, v3, Lcom/tencent/bugly/proguard/hi;->um:Lorg/json/JSONObject;

    if-nez v4, :cond_0

    move-object v4, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-string v6, "rmonitor_config_data"

    if-nez v4, :cond_1

    move-object v4, v5

    :cond_1
    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "config_latest_md5_code"

    iget-object v3, v3, Lcom/tencent/bugly/proguard/hi;->un:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    iget-object p1, p1, Lcom/tencent/bugly/proguard/hg;->uj:Lcom/tencent/bugly/proguard/hh;

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/hh;->fo()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_3

    move-object p1, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string v3, "config_last_apply_params"

    if-nez p1, :cond_4

    move-object p1, v5

    :cond_4
    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    goto :goto_3

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_5
    const-string v5, "editor is null."

    :goto_2
    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_6

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "RMonitor_config"

    aput-object v4, v3, v2

    const-string v2, "save config apply data fail for "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    :cond_6
    return p1
.end method

.method public final fs()Lcom/tencent/bugly/proguard/hg;
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/kc;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/hl;->a(Landroid/content/SharedPreferences;)Lcom/tencent/bugly/proguard/hg;

    move-result-object v0

    return-object v0
.end method
