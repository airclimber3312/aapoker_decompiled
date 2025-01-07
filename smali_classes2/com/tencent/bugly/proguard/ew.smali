.class public final Lcom/tencent/bugly/proguard/ew;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/os;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/gh;)Lcom/tencent/bugly/proguard/iy;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p1, Lcom/tencent/bugly/proguard/gh;->so:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v1, "looper_metric"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/tencent/bugly/proguard/pt;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/pt;-><init>()V

    goto :goto_0

    :cond_2
    const-string v1, "memory_quantile"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/tencent/bugly/proguard/pq;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/pq;-><init>()V

    goto :goto_0

    :cond_3
    const-string v1, "sub_memory_quantile"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/tencent/bugly/proguard/pq;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/pq;-><init>()V

    goto :goto_0

    :cond_4
    const-string v1, "java_memory_ceiling_value"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/tencent/bugly/proguard/oy;->in()Lcom/tencent/bugly/proguard/oy;

    move-result-object v1

    goto :goto_0

    :cond_5
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_8

    const-string v1, "looper_stack"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/tencent/bugly/proguard/nw;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/nw;-><init>()V

    goto :goto_1

    :cond_6
    const-string v1, "work_thread_lag"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lcom/tencent/bugly/proguard/oa;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/oa;-><init>()V

    goto :goto_1

    :cond_7
    move-object v1, v0

    :cond_8
    :goto_1
    if-nez v1, :cond_e

    const-string v1, "activity_leak"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/tencent/bugly/proguard/pd$a;->it()Lcom/tencent/bugly/proguard/pd;

    move-result-object v1

    goto :goto_2

    :cond_9
    const-string v1, "big_bitmap"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/tencent/bugly/proguard/jq;->fZ()Lcom/tencent/bugly/proguard/jq;

    move-result-object v1

    goto :goto_2

    :cond_a
    const-string v1, "fd_leak"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/tencent/rmonitor/fd/FdLeakMonitor;->gR()Lcom/tencent/rmonitor/fd/FdLeakMonitor;

    move-result-object v1

    goto :goto_2

    :cond_b
    const-string v1, "native_memory"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->jb()Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    move-result-object v1

    goto :goto_2

    :cond_c
    const-string v1, "java_memory_ceiling_hprof"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/tencent/bugly/proguard/oy;->in()Lcom/tencent/bugly/proguard/oy;

    move-result-object v1

    goto :goto_2

    :cond_d
    move-object v1, v0

    :cond_e
    :goto_2
    if-nez v1, :cond_10

    const-string v1, "traffic"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Lcom/tencent/bugly/proguard/fj;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/fj;-><init>()V

    goto :goto_3

    :cond_f
    move-object v1, v0

    :cond_10
    :goto_3
    if-nez v1, :cond_12

    const-string v1, "traffic_detail"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v0, Lcom/tencent/bugly/proguard/fh;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/fh;-><init>()V

    :cond_11
    move-object v1, v0

    :cond_12
    if-nez v1, :cond_13

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "RMonitor_init"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "create plugin fail {"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    :cond_13
    return-object v1
.end method
