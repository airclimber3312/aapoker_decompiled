.class public Lcom/tencent/bugly/proguard/qd;
.super Ljava/lang/Object;


# static fields
.field private static FB:Lcom/tencent/bugly/proguard/qd;


# instance fields
.field public FC:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/qd;->FC:Z

    return-void
.end method

.method public static a(Lcom/tencent/bugly/proguard/qh;)Lorg/json/JSONObject;
    .locals 8

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qh;->Gk:Lcom/tencent/bugly/proguard/qg;

    iget-wide v1, v0, Lcom/tencent/bugly/proguard/qg;->Gh:J

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-lez v7, :cond_0

    iget-wide v1, v0, Lcom/tencent/bugly/proguard/qg;->Gi:J

    cmp-long v7, v1, v5

    if-lez v7, :cond_0

    iget-wide v0, v0, Lcom/tencent/bugly/proguard/qg;->Gj:J

    cmp-long v2, v0, v5

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const-string v0, "stage"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/bb;->a([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v2, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/kp;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "process_name"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "is64bit"

    sget-object v5, Lcom/tencent/bugly/proguard/id;->vp:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/qh;->Gk:Lcom/tencent/bugly/proguard/qg;

    invoke-virtual {v2, v1}, Lcom/tencent/bugly/proguard/qg;->l(Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/tencent/bugly/proguard/qh;->Gl:Lcom/tencent/bugly/proguard/qg;

    invoke-virtual {v2, v1}, Lcom/tencent/bugly/proguard/qg;->l(Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/tencent/bugly/proguard/qh;->Gm:Lcom/tencent/bugly/proguard/qg;

    invoke-virtual {v2, v1}, Lcom/tencent/bugly/proguard/qg;->l(Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/tencent/bugly/proguard/qh;->Gn:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tencent/bugly/proguard/qh;->Gn:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/qh;->Go:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "RMonitor_MemoryQuantile"

    if-nez v0, :cond_2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/tencent/bugly/proguard/qh;->Go:Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "user_custom"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v5, "packJson"

    invoke-virtual {v0, v2, v5, p0}, Lcom/tencent/bugly/proguard/km;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    sget-object p0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v4

    const-string v2, "makeAttribute, "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return-object v1
.end method

.method public static a(Lcom/tencent/bugly/proguard/qg;)V
    .locals 9

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/qg;->Gh:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-wide v5, p0, Lcom/tencent/bugly/proguard/qg;->Gi:J

    cmp-long v7, v5, v2

    if-gtz v7, :cond_1

    sget-object v8, Lcom/tencent/bugly/proguard/id;->vp:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    or-int/lit8 v4, v4, 0x4

    :cond_1
    if-gtz v7, :cond_2

    sget-object v7, Lcom/tencent/bugly/proguard/id;->vp:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_2

    or-int/lit8 v4, v4, 0x2

    :cond_2
    iget-wide v7, p0, Lcom/tencent/bugly/proguard/qg;->Gj:J

    cmp-long p0, v7, v2

    if-gtz p0, :cond_3

    or-int/lit8 v4, v4, 0x8

    :cond_3
    const p0, 0x30d40

    or-int/2addr p0, v4

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/bb;->b(Lcom/tencent/bugly/proguard/am;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "memory"

    const-string v3, "memory_quantile"

    invoke-static {v1, v3, p0, v2, v0}, Lcom/tencent/bugly/proguard/rb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lcom/tencent/bugly/proguard/qh;)V
    .locals 2

    iget-object v0, p1, Lcom/tencent/bugly/proguard/qh;->du:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "process_launch_id"

    iget-object v1, p1, Lcom/tencent/bugly/proguard/qh;->du:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p1, Lcom/tencent/bugly/proguard/qh;->dt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "launch_id"

    iget-object p1, p1, Lcom/tencent/bugly/proguard/qh;->dt:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-void
.end method

.method public static iJ()Lcom/tencent/bugly/proguard/qd;
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/qd;->FB:Lcom/tencent/bugly/proguard/qd;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/bugly/proguard/qd;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/qd;->FB:Lcom/tencent/bugly/proguard/qd;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/bugly/proguard/qd;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/qd;-><init>()V

    sput-object v1, Lcom/tencent/bugly/proguard/qd;->FB:Lcom/tencent/bugly/proguard/qd;

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
    sget-object v0, Lcom/tencent/bugly/proguard/qd;->FB:Lcom/tencent/bugly/proguard/qd;

    return-object v0
.end method
