.class public final Lcom/tencent/bugly/proguard/lb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/lb$a;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static G(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/kz;
    .locals 4

    sget-object v0, Lcom/tencent/bugly/proguard/iv;->wa:Lcom/tencent/bugly/proguard/iw;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/iw;->wc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/iv;->wa:Lcom/tencent/bugly/proguard/iw;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/iw;->fJ()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/la;->gG()Lcom/tencent/bugly/proguard/kz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/kz;->gA()Lcom/tencent/bugly/proguard/kz;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/rmonitor/base/plugin/listener/ICustomDataCollectorForIssue;

    invoke-interface {v2, p0, p1, v1}, Lcom/tencent/rmonitor/base/plugin/listener/ICustomDataCollectorForIssue;->collectCustomData(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/rmonitor/custom/ICustomDataEditorForIssue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RMonitor_custom"

    aput-object v3, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "collectCustomDataForIssueInner, msg: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v0, v2

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method private static H(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/kz;
    .locals 4

    sget-object v0, Lcom/tencent/bugly/proguard/iv;->vZ:Lcom/tencent/bugly/proguard/iw;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/iw;->wc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/iv;->vZ:Lcom/tencent/bugly/proguard/iw;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/iw;->fJ()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/la;->gG()Lcom/tencent/bugly/proguard/kz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/kz;->gA()Lcom/tencent/bugly/proguard/kz;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/rmonitor/base/plugin/listener/ICustomDataCollector;

    invoke-interface {v2, p0, p1, v1}, Lcom/tencent/rmonitor/base/plugin/listener/ICustomDataCollector;->collectCustomData(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/rmonitor/custom/ICustomDataEditor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RMonitor_custom"

    aput-object v3, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "collectCustomDataForMetricInner, msg: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v0, v2

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public static a(ZLcom/tencent/bugly/proguard/bg;)V
    .locals 2

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/bg;->ao()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/tencent/bugly/proguard/lb;->d(Lcom/tencent/bugly/proguard/bg;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {}, Lcom/tencent/bugly/proguard/kd;->ge()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lcom/tencent/bugly/proguard/lb;->a(ZLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a(ZLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "RMonitor_custom"

    aput-object v4, v2, v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "collectCustomData, pluginName: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", scene: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    if-eqz p0, :cond_1

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/lb;->H(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/kz;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/lb;->G(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/kz;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    invoke-static {}, Lcom/tencent/bugly/proguard/la;->gG()Lcom/tencent/bugly/proguard/kz;

    move-result-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/kz;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/kz;->gD()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "user_custom"

    invoke-virtual {p3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/kz;->gE()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string p1, "biz_extend_info"

    invoke-virtual {p3, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array p2, v1, [Ljava/lang/String;

    aput-object v4, p2, v3

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "collectCustomData, msg: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v6

    invoke-virtual {p1, p2}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static a(ZLjava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/kd;->ge()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/tencent/bugly/proguard/lb;->a(ZLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static c(Lcom/tencent/bugly/proguard/bg;)V
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/tencent/bugly/proguard/lb;->d(Lcom/tencent/bugly/proguard/bg;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/lb;->k(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static d(Lcom/tencent/bugly/proguard/bg;)Lorg/json/JSONObject;
    .locals 2

    iget-object p0, p0, Lcom/tencent/bugly/proguard/bg;->da:Lorg/json/JSONObject;

    const-string v0, "Attributes"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/bb;->a([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v1
.end method

.method public static gH()Lcom/tencent/bugly/proguard/lb;
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/lb$a;->gI()Lcom/tencent/bugly/proguard/lb;

    move-result-object v0

    return-object v0
.end method

.method public static k(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/kh;->yf:Lcom/tencent/bugly/proguard/kh;

    invoke-static {}, Lcom/tencent/bugly/proguard/kh;->gi()Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "operation_log"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method
