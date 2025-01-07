.class final Lcom/tencent/bugly/proguard/pq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/pq;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EU:Lcom/tencent/bugly/proguard/pq;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/pq;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/pq$1;->EU:Lcom/tencent/bugly/proguard/pq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/tencent/bugly/proguard/qd;->iJ()Lcom/tencent/bugly/proguard/qd;

    move-result-object v0

    iget-boolean v1, v0, Lcom/tencent/bugly/proguard/qd;->FC:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/qd;->FC:Z

    invoke-static {}, Lcom/tencent/bugly/proguard/qf;->iK()Lcom/tencent/bugly/proguard/qf;

    invoke-static {}, Lcom/tencent/bugly/proguard/qf;->iN()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/qf;->iK()Lcom/tencent/bugly/proguard/qf;

    move-result-object v2

    new-instance v3, Lcom/tencent/bugly/proguard/qh;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/qf;->FS:Lcom/tencent/bugly/proguard/qh;

    invoke-direct {v3, v2}, Lcom/tencent/bugly/proguard/qh;-><init>(Lcom/tencent/bugly/proguard/qh;)V

    invoke-static {v3}, Lcom/tencent/bugly/proguard/qd;->a(Lcom/tencent/bugly/proguard/qh;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v4, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    const-string v5, "metric"

    const-string v6, "memory_quantile"

    sget-object v7, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    invoke-static {v4, v5, v6, v7}, Lcom/tencent/bugly/proguard/bb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/am;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/qd;->a(Lorg/json/JSONObject;Lcom/tencent/bugly/proguard/qh;)V

    const-string v3, "Attributes"

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lcom/tencent/bugly/proguard/bg;

    sget-object v3, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/am;->bA:Ljava/lang/String;

    const-string v5, "QUANTILE_EVENT"

    invoke-direct {v2, v3, v1, v5, v4}, Lcom/tencent/bugly/proguard/bg;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V

    iget-object v1, v2, Lcom/tencent/bugly/proguard/bg;->cU:Lcom/tencent/bugly/proguard/bh;

    sget-object v3, Lcom/tencent/bugly/proguard/bh$c;->do:Lcom/tencent/bugly/proguard/bh$c;

    invoke-virtual {v1, v3}, Lcom/tencent/bugly/proguard/bh;->a(Lcom/tencent/bugly/proguard/bh$c;)V

    sget-object v1, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    new-instance v3, Lcom/tencent/bugly/proguard/qd$1;

    invoke-direct {v3, v0}, Lcom/tencent/bugly/proguard/qd$1;-><init>(Lcom/tencent/bugly/proguard/qd;)V

    invoke-virtual {v1, v2, v3}, Lcom/tencent/bugly/proguard/je;->a(Lcom/tencent/bugly/proguard/bg;Lcom/tencent/bugly/proguard/ba$a;)Z

    goto :goto_0

    :cond_0
    iget-object v0, v3, Lcom/tencent/bugly/proguard/qh;->Gk:Lcom/tencent/bugly/proguard/qg;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/qd;->a(Lcom/tencent/bugly/proguard/qg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "RMonitor_MemoryQuantile"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "json_parser_error"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/qe;->J(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/tencent/bugly/proguard/qf;->iK()Lcom/tencent/bugly/proguard/qf;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/qf;->E(Z)V

    :cond_1
    return-void
.end method
