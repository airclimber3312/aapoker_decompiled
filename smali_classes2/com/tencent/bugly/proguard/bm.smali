.class public Lcom/tencent/bugly/proguard/bm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/bk;


# static fields
.field private static volatile dA:Lcom/tencent/bugly/proguard/bm;


# instance fields
.field private final dB:Lcom/tencent/bugly/proguard/bk;

.field private final dC:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/bugly/proguard/bl;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/bl;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bm;->dB:Lcom/tencent/bugly/proguard/bk;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bm;->dC:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "looper.looper_stack"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "anr.basic_info"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "memory.activity_leak"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "memory.fd_leak"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "memory.big_bitmap"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "memory.fd_leak_ceil"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "memory.native_memory"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "crash.basic_info"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static as()Lcom/tencent/bugly/proguard/bm;
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/bm;->dA:Lcom/tencent/bugly/proguard/bm;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/bugly/proguard/bm;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/bm;->dA:Lcom/tencent/bugly/proguard/bm;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/bugly/proguard/bm;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/bm;-><init>()V

    sput-object v1, Lcom/tencent/bugly/proguard/bm;->dA:Lcom/tencent/bugly/proguard/bm;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/bugly/proguard/bm;->dA:Lcom/tencent/bugly/proguard/bm;

    return-object v0
.end method

.method public static at()Lorg/json/JSONObject;
    .locals 10

    const-string v0, "RMonitor_link"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/kc;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "linkages_last_anr_or_crash_data"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v6

    goto :goto_0

    :catchall_0
    move-exception v5

    sget-object v6, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v7, v3, [Ljava/lang/String;

    aput-object v0, v7, v2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "get last exception data from cache fail for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v1

    invoke-virtual {v6, v7}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v5, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v2

    const-string v0, "get last exception data from cache "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {v5, v3}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    return-object v4
.end method

.method public static c(Lcom/tencent/bugly/proguard/bi;)V
    .locals 11

    const/4 v0, 0x1

    const-string v1, "RMonitor_link"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, ""

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/bm;->at()Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-wide v6, p0, Lcom/tencent/bugly/proguard/bi;->dx:J

    const-string v8, "event_time_in_ms"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-lez v10, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/proguard/bm;->d(Lcom/tencent/bugly/proguard/bi;)Lorg/json/JSONObject;

    move-result-object v5

    :cond_2
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v4, p0

    :goto_0
    invoke-static {}, Lcom/tencent/bugly/proguard/kc;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v5, "linkages_last_anr_or_crash_data"

    invoke-interface {p0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object v5, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v6, v3, [Ljava/lang/String;

    aput-object v1, v6, v2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "save last exception data to cache fail for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v6, v0

    invoke-virtual {v5, v6}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    :goto_1
    sget-object p0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v2

    const-string v1, "save last exception data to cache "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {p0, v3}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    return-void
.end method

.method private static d(Lcom/tencent/bugly/proguard/bi;)Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "client_identify"

    iget-object v2, p0, Lcom/tencent/bugly/proguard/bi;->dv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "event_time"

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/bi;->dw:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "event_time_in_ms"

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/bi;->dx:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "process_launch_id"

    iget-object p0, p0, Lcom/tencent/bugly/proguard/bi;->du:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static g(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 1

    const-string v0, "Attributes"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "linkages"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;J)Lcom/tencent/bugly/proguard/bi;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bm;->dB:Lcom/tencent/bugly/proguard/bk;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/bk;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/tencent/bugly/proguard/bi;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final a(Lcom/tencent/bugly/proguard/bj;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/bm;->dB:Lcom/tencent/bugly/proguard/bk;

    invoke-interface {v0, p1}, Lcom/tencent/bugly/proguard/bk;->a(Lcom/tencent/bugly/proguard/bj;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bm;->dB:Lcom/tencent/bugly/proguard/bk;

    invoke-interface {v0, p1, p2}, Lcom/tencent/bugly/proguard/bk;->a(Lorg/json/JSONObject;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final ar()Lcom/tencent/bugly/proguard/bj;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/bm;->dB:Lcom/tencent/bugly/proguard/bk;

    invoke-interface {v0}, Lcom/tencent/bugly/proguard/bk;->ar()Lcom/tencent/bugly/proguard/bj;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lorg/json/JSONObject;)V
    .locals 5

    :try_start_0
    const-string v0, "."

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/bb;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "RMonitor_link"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "record link data of "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/bm;->dB:Lcom/tencent/bugly/proguard/bk;

    invoke-interface {v0, p1}, Lcom/tencent/bugly/proguard/bk;->e(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final f(Lorg/json/JSONObject;)V
    .locals 12

    const-string v0, "RMonitor_link"

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v1, "."

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/bb;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/bugly/proguard/bm;->dC:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {p1}, Lcom/tencent/bugly/proguard/bm;->g(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {p0, p1, v2}, Lcom/tencent/bugly/proguard/bm;->a(Lorg/json/JSONObject;Ljava/util/List;)V

    :cond_2
    invoke-static {p1}, Lcom/tencent/bugly/proguard/bi;->d(Lorg/json/JSONObject;)Lcom/tencent/bugly/proguard/bi;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v5, "crash"

    iget-object v6, v2, Lcom/tencent/bugly/proguard/bi;->dr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "anr"

    iget-object v6, v2, Lcom/tencent/bugly/proguard/bi;->dr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    invoke-static {v2}, Lcom/tencent/bugly/proguard/bm;->c(Lcom/tencent/bugly/proguard/bi;)V

    :cond_4
    :try_start_0
    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/bb;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-string v2, "process_launch_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/bugly/proguard/bz;->aI()Ljava/lang/String;

    move-result-object v3

    const-string v4, "client_identify"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    sget-object v3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "try collect link data for "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_5

    const-string v1, " from current launch"

    goto :goto_0

    :cond_5
    const-string v1, " from last launch"

    :goto_0
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cost "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v8, v2

    invoke-virtual {v3, v8}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/bugly/proguard/bm;->g(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p1

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v3, v7, [Ljava/lang/String;

    aput-object v0, v3, v9

    if-nez p1, :cond_6

    const-string p1, "linkages is null"

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "linkages is "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    aput-object p1, v3, v2

    invoke-virtual {v1, v3}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_7
    :goto_2
    return-void
.end method
