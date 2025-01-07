.class public final Lcom/tencent/bugly/proguard/qj;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/tencent/bugly/proguard/qj;->bA(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p1}, Lcom/tencent/bugly/proguard/qj;->bA(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {p2}, Lcom/tencent/bugly/proguard/qj;->bA(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "yy-MM-dd_HH.mm.ss"

    invoke-static {v1, v2, v3}, Lcom/tencent/bugly/proguard/ox;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/proguard/ox;->il()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "dump_NatMem_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".zip"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/ku;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    const-string v2, "RMonitor_NatMem_Reporter"

    if-nez v0, :cond_3

    sget-object p0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string p1, "dump zip file failed!"

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    :try_start_0
    new-array v3, v0, [Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/bb;->a([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "process_name"

    sget-object v5, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    invoke-static {v5}, Lcom/tencent/bugly/proguard/kp;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "is64bit"

    sget-object v5, Lcom/tencent/bugly/proguard/id;->vp:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "fileObj"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "stage"

    invoke-static {}, Lcom/tencent/bugly/proguard/kd;->ge()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "memory_type"

    const/4 v5, 0x1

    if-ne p3, v5, :cond_4

    :try_start_1
    const-string p3, "vmsize"

    :goto_0
    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_4
    const/4 v6, 0x2

    if-ne p3, v6, :cond_5

    const-string p3, "physical"

    goto :goto_0

    :cond_5
    :goto_1
    const-string p3, "max_physical_pss"

    invoke-static {}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->jb()Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gx:Lcom/tencent/bugly/proguard/gy;

    iget-wide v6, v4, Lcom/tencent/bugly/proguard/gy;->tE:J

    invoke-virtual {v3, p3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p3, "max_vitural_vss"

    invoke-static {}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->jb()Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gx:Lcom/tencent/bugly/proguard/gy;

    iget-wide v6, v4, Lcom/tencent/bugly/proguard/gy;->tF:J

    invoke-virtual {v3, p3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p3, "sys_min_size"

    invoke-static {}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->jb()Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gx:Lcom/tencent/bugly/proguard/gy;

    iget v4, v4, Lcom/tencent/bugly/proguard/gy;->tC:I

    invoke-virtual {v3, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "enable_sys_hook"

    invoke-static {}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->jb()Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gx:Lcom/tencent/bugly/proguard/gy;

    iget-boolean v4, v4, Lcom/tencent/bugly/proguard/gy;->tz:Z

    invoke-virtual {v3, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p3, "sys_sample_factor"

    invoke-static {}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->jb()Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gx:Lcom/tencent/bugly/proguard/gy;

    iget v4, v4, Lcom/tencent/bugly/proguard/gy;->tA:I

    invoke-virtual {v3, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "app_min_size"

    invoke-static {}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->jb()Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gx:Lcom/tencent/bugly/proguard/gy;

    iget v4, v4, Lcom/tencent/bugly/proguard/gy;->tD:I

    invoke-virtual {v3, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "mem_ceiling_info"

    invoke-virtual {p3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "mem_history_info"

    invoke-virtual {p3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "smaps_info"

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "file_stacks"

    invoke-virtual {p3, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    const-string p1, "memory"

    const-string p2, "native_memory"

    sget-object v4, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    invoke-static {p0, p1, p2, v4}, Lcom/tencent/bugly/proguard/bb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/am;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "Attributes"

    invoke-virtual {p0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "Body"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "stack_structure_type"

    invoke-virtual {p0, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance p1, Lcom/tencent/bugly/proguard/bg;

    sget-object p2, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    iget-object p2, p2, Lcom/tencent/bugly/proguard/am;->bA:Ljava/lang/String;

    const-string p3, "NatMem"

    invoke-direct {p1, p2, v5, p3, p0}, Lcom/tencent/bugly/proguard/bg;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v1, v5}, Lcom/tencent/bugly/proguard/bg;->a(Ljava/lang/String;Z)V

    iput-boolean v5, p1, Lcom/tencent/bugly/proguard/bg;->cV:Z

    invoke-static {}, Lcom/tencent/bugly/proguard/lb$a;->gI()Lcom/tencent/bugly/proguard/lb;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/lb;->c(Lcom/tencent/bugly/proguard/bg;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/lb$a;->gI()Lcom/tencent/bugly/proguard/lb;

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/lb;->a(ZLcom/tencent/bugly/proguard/bg;)V

    sget-object p0, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/je;->a(Lcom/tencent/bugly/proguard/bg;Lcom/tencent/bugly/proguard/ba$a;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    invoke-virtual {p1, v2, p0}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static bA(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
