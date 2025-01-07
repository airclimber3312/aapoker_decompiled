.class public final Lcom/tencent/bugly/proguard/my;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/tencent/bugly/proguard/md;Ljava/lang/String;)V
    .locals 8

    const-string v0, "FdLeakReporter"

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/bb;->a([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "process_name"

    sget-object v4, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/kp;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "is64bit"

    sget-object v4, Lcom/tencent/bugly/proguard/id;->vp:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "fileObj"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "stage"

    invoke-static {}, Lcom/tencent/bugly/proguard/kd;->ge()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "fd_count"

    iget v4, p0, Lcom/tencent/bugly/proguard/md;->zU:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "fd_max_limit"

    invoke-static {}, Lcom/tencent/bugly/proguard/mu;->hf()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "fd_threshold"

    invoke-static {}, Lcom/tencent/bugly/proguard/ld;->gM()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "fd_type"

    iget v4, p0, Lcom/tencent/bugly/proguard/md;->zT:I

    invoke-static {v4}, Lcom/tencent/bugly/proguard/mu;->G(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "fd_issue_content"

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/md;->gW()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object p0, p0, Lcom/tencent/bugly/proguard/md;->zV:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/bugly/proguard/mn;

    iget v4, v4, Lcom/tencent/bugly/proguard/mn;->Ag:I

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    sget-object v4, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v5, "get file name failed"

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, "file_stacks"

    const-string v5, "fd_stacks.txt"

    :goto_1
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string v4, "heap_info"

    const-string v5, "heap.hprof"

    goto :goto_1

    :cond_2
    const-string v4, "thread_info"

    const-string v5, "threads.txt"

    goto :goto_1

    :cond_3
    const-string v4, "fd_info"

    const-string v5, "fd.txt"

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    const-string v4, "memory"

    const-string v6, "fd_leak"

    sget-object v7, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    invoke-static {p0, v4, v6, v7}, Lcom/tencent/bugly/proguard/bb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/am;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v4, "Attributes"

    invoke-virtual {p0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "Body"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "stack_structure_type"

    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Lcom/tencent/bugly/proguard/bg;

    sget-object v3, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/am;->bA:Ljava/lang/String;

    const-string v4, "FdLeakAnalyzed"

    invoke-direct {v2, v3, v5, v4, p0}, Lcom/tencent/bugly/proguard/bg;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V

    iget-object p0, v2, Lcom/tencent/bugly/proguard/bg;->cU:Lcom/tencent/bugly/proguard/bh;

    sget-object v3, Lcom/tencent/bugly/proguard/bh$c;->dp:Lcom/tencent/bugly/proguard/bh$c;

    invoke-virtual {p0, v3}, Lcom/tencent/bugly/proguard/bh;->a(Lcom/tencent/bugly/proguard/bh$c;)V

    invoke-virtual {v2, p1, v5}, Lcom/tencent/bugly/proguard/bg;->a(Ljava/lang/String;Z)V

    iput-boolean v5, v2, Lcom/tencent/bugly/proguard/bg;->cV:Z

    invoke-static {}, Lcom/tencent/bugly/proguard/lb$a;->gI()Lcom/tencent/bugly/proguard/lb;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/lb;->a(ZLcom/tencent/bugly/proguard/bg;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/lb$a;->gI()Lcom/tencent/bugly/proguard/lb;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/lb;->c(Lcom/tencent/bugly/proguard/bg;)V

    sget-object p0, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/tencent/bugly/proguard/je;->a(Lcom/tencent/bugly/proguard/bg;Lcom/tencent/bugly/proguard/ba$a;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "reportAnalyzeResult failed: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/bugly/proguard/nb;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
