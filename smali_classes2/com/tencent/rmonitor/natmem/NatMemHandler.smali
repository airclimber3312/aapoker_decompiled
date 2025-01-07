.class public Lcom/tencent/rmonitor/natmem/NatMemHandler;
.super Landroid/os/Handler;

# interfaces
.implements Lcom/tencent/bugly/proguard/kf;
.implements Lcom/tencent/bugly/proguard/qb;
.implements Lcom/tencent/bugly/proguard/qc;


# instance fields
.field private FE:Landroid/content/SharedPreferences;

.field private FF:Landroid/content/SharedPreferences$Editor;

.field private Gp:J

.field private Gq:J

.field private Gr:Ljava/lang/String;

.field private Gs:Z

.field private Gt:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide v0, 0x10000000000L

    iput-wide v0, p0, Lcom/tencent/rmonitor/natmem/NatMemHandler;->Gp:J

    const-wide/32 v0, 0x40000000

    iput-wide v0, p0, Lcom/tencent/rmonitor/natmem/NatMemHandler;->Gq:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/rmonitor/natmem/NatMemHandler;->Gs:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/rmonitor/natmem/NatMemHandler;->FF:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private L(I)V
    .locals 9

    sget-object v0, Lcom/tencent/bugly/proguard/gg;->sn:Lcom/tencent/bugly/proguard/gg;

    const-string v0, "native_memory"

    invoke-static {}, Lcom/tencent/bugly/proguard/gf;->eO()Lcom/tencent/bugly/proguard/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/gf;->ax(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;

    move-result-object v0

    iget v0, v0, Lcom/tencent/bugly/proguard/hc;->tT:F

    iget-boolean v1, p0, Lcom/tencent/rmonitor/natmem/NatMemHandler;->Gt:Z

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    float-to-double v3, v0

    cmpl-double v0, v1, v3

    if-lez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/ix;->we:Lcom/tencent/bugly/proguard/ix;

    const/16 v0, 0x9a

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ix;->v(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/rmonitor/natmem/NatMemHandler;->Gr:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/rmonitor/natmem/NatMemHandler;->Gr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "usage_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/rmonitor/natmem/NatMemHandler;->Gr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "mem_history_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/rmonitor/natmem/NatMemHandler;->Gr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "smaps_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".txt"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gv:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->jb()Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    move-result-object v1

    invoke-static {}, Lcom/tencent/bugly/proguard/qf;->iK()Lcom/tencent/bugly/proguard/qf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/qf;->iO()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->nativeDumpNatMemUsageInfo(Ljava/lang/String;J)I

    :cond_4
    sget-boolean v1, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gv:Z

    const-string v4, "RMonitor_NatMem_Handler"

    if-eqz v1, :cond_7

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x0

    :try_start_0
    const-string v6, "pss"

    invoke-static {}, Lcom/tencent/bugly/proguard/qf;->iK()Lcom/tencent/bugly/proguard/qf;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/bugly/proguard/qf;->FV:Ljava/util/LinkedList;

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "vss"

    invoke-static {}, Lcom/tencent/bugly/proguard/qf;->iK()Lcom/tencent/bugly/proguard/qf;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/bugly/proguard/qf;->FW:Ljava/util/LinkedList;

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "java_heap"

    invoke-static {}, Lcom/tencent/bugly/proguard/qf;->iK()Lcom/tencent/bugly/proguard/qf;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/bugly/proguard/qf;->FX:Ljava/util/LinkedList;

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_5
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/4 v6, 0x0

    invoke-virtual {v7, v5, v6, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v5, v7

    goto :goto_0

    :catchall_1
    move-exception v1

    :goto_0
    :try_start_3
    sget-object v6, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    invoke-virtual {v6, v4, v1}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v5, :cond_7

    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    sget-object v5, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    invoke-virtual {v5, v4, v1}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_3
    move-exception p1

    if-eqz v5, :cond_6

    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_1

    :catchall_4
    move-exception v0

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    invoke-virtual {v1, v4, v0}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw p1

    :cond_7
    :goto_2
    sget-boolean v1, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gv:Z

    if-eqz v1, :cond_9

    :try_start_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_8
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    new-instance v5, Ljava/io/File;

    const-string v6, "/proc/self/smaps"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v1}, Lcom/tencent/bugly/proguard/ku;->c(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v1

    sget-object v5, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    invoke-virtual {v5, v4, v1}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_3
    const/4 v1, 0x1

    if-ne v1, p1, :cond_a

    invoke-static {v2, v3, v0, v1}, Lcom/tencent/bugly/proguard/qj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_4
    invoke-static {}, Lcom/tencent/bugly/proguard/qk;->jc()V

    goto :goto_5

    :cond_a
    const/4 v4, 0x2

    if-ne v4, p1, :cond_b

    invoke-static {v2, v3, v0, v4}, Lcom/tencent/bugly/proguard/qj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    :cond_b
    :goto_5
    if-eqz v2, :cond_c

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/bugly/proguard/ku;->a(Ljava/io/File;)V

    :cond_c
    if-eqz v3, :cond_d

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/bugly/proguard/ku;->a(Ljava/io/File;)V

    :cond_d
    if-eqz v0, :cond_e

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/bugly/proguard/ku;->a(Ljava/io/File;)V

    :cond_e
    iput-boolean v1, p0, Lcom/tencent/rmonitor/natmem/NatMemHandler;->Gt:Z

    return-void
.end method

.method private iZ()V
    .locals 3

    invoke-static {}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->jb()Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gx:Lcom/tencent/bugly/proguard/gy;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/gy;->tI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->jb()Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->nativeRegisterAppLib(Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->jb()Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gx:Lcom/tencent/bugly/proguard/gy;

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/gy;->tG:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->jb()Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gx:Lcom/tencent/bugly/proguard/gy;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/gy;->tK:Ljava/util/List;

    const-string v1, ".*/libc.so$"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->jb()Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gx:Lcom/tencent/bugly/proguard/gy;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/gy;->tK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->jb()Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->nativeIgnoreLib(Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->jb()Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gx:Lcom/tencent/bugly/proguard/gy;

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/gy;->tz:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->jb()Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gx:Lcom/tencent/bugly/proguard/gy;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/gy;->tJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->jb()Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->nativeRegisterSysLib(Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->jb()Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/proguard/qf;->iK()Lcom/tencent/bugly/proguard/qf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/qf;->iO()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->nativeStartHook(J)I

    sget-object v0, Lcom/tencent/bugly/proguard/iv;->vV:Lcom/tencent/bugly/proguard/iw;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/iw;->fJ()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "NatMemSuccEvent"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/qi;->c(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/qf;->iK()Lcom/tencent/bugly/proguard/qf;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/proguard/qf;->iL()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/tencent/bugly/proguard/qf;->FY:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/tencent/bugly/proguard/qf;->FY:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/qf;->iQ()V

    :cond_5
    invoke-static {}, Lcom/tencent/bugly/proguard/qf;->iK()Lcom/tencent/bugly/proguard/qf;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/proguard/qf;->iL()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/tencent/bugly/proguard/qf;->FZ:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/tencent/bugly/proguard/qf;->FZ:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/qf;->iQ()V

    :cond_6
    invoke-static {}, Lcom/tencent/bugly/proguard/kd;->gb()Lcom/tencent/bugly/proguard/kd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/kd;->a(Lcom/tencent/bugly/proguard/kf;)V

    invoke-static {}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->jb()Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/proguard/kd;->ge()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->nativeSetSceneInfo(Ljava/lang/String;)V

    return-void
.end method

.method private ja()V
    .locals 3

    invoke-static {}, Lcom/tencent/rmonitor/common/bhook/BHookManager;->ga()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/rmonitor/natmem/NatMemHandler;->FE:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/rmonitor/natmem/NatMemHandler;->FF:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v2, "sig_jmp_info_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private native nativeIs64Bit()Z
.end method


# virtual methods
.method public final aW(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->jb()Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    move-result-object p1

    invoke-static {}, Lcom/tencent/bugly/proguard/kd;->ge()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->nativeSetSceneInfo(Ljava/lang/String;)V

    return-void
.end method

.method public final aX(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->jb()Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    move-result-object p1

    invoke-static {}, Lcom/tencent/bugly/proguard/kd;->ge()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->nativeSetSceneInfo(Ljava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/tencent/rmonitor/natmem/NatMemHandler;->iZ()V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->jb()Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->Gx:Lcom/tencent/bugly/proguard/gy;

    invoke-static {}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->jb()Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->nativeInit()I

    invoke-static {}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->jb()Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    move-result-object v1

    iget v2, p1, Lcom/tencent/bugly/proguard/gy;->tA:I

    iget v3, p1, Lcom/tencent/bugly/proguard/gy;->tB:I

    iget v4, p1, Lcom/tencent/bugly/proguard/gy;->tC:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->nativeInitSysHookParameter(III)V

    invoke-static {}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->jb()Lcom/tencent/rmonitor/natmem/NatMemMonitor;

    move-result-object v1

    iget v2, p1, Lcom/tencent/bugly/proguard/gy;->tD:I

    invoke-virtual {v1, v2}, Lcom/tencent/rmonitor/natmem/NatMemMonitor;->nativeInitAppHookParameter(I)V

    sget-object v1, Lcom/tencent/bugly/proguard/id;->bB:Landroid/content/SharedPreferences;

    iput-object v1, p0, Lcom/tencent/rmonitor/natmem/NatMemHandler;->FE:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/rmonitor/natmem/NatMemHandler;->FF:Landroid/content/SharedPreferences$Editor;

    :cond_2
    iget-object v1, p0, Lcom/tencent/rmonitor/natmem/NatMemHandler;->FE:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/tencent/rmonitor/natmem/NatMemHandler;->FF:Landroid/content/SharedPreferences$Editor;

    if-eqz v3, :cond_4

    const-string v3, "sig_jmp_info_key"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "NatMemSigJmpEvent"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/qi;->c(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/rmonitor/natmem/NatMemHandler;->FF:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    invoke-direct {p0}, Lcom/tencent/rmonitor/natmem/NatMemHandler;->nativeIs64Bit()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/rmonitor/natmem/NatMemHandler;->Gs:Z

    if-eqz v0, :cond_5

    iget-wide v0, p1, Lcom/tencent/bugly/proguard/gy;->tF:J

    goto :goto_1

    :cond_5
    const-wide v0, 0x100000000L

    :goto_1
    iput-wide v0, p0, Lcom/tencent/rmonitor/natmem/NatMemHandler;->Gp:J

    iget-wide v0, p1, Lcom/tencent/bugly/proguard/gy;->tE:J

    iput-wide v0, p0, Lcom/tencent/rmonitor/natmem/NatMemHandler;->Gq:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/proguard/cc;->aX()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/Tencent/RMonitor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "NatMem"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/rmonitor/natmem/NatMemHandler;->Gr:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/proguard/ff;->dT()V

    iput-boolean v2, p0, Lcom/tencent/rmonitor/natmem/NatMemHandler;->Gt:Z

    return-void
.end method

.method public final m(J)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/rmonitor/natmem/NatMemHandler;->ja()V

    long-to-float p1, p1

    iget-wide v0, p0, Lcom/tencent/rmonitor/natmem/NatMemHandler;->Gq:J

    long-to-float p2, v0

    const v0, 0x3f59999a    # 0.85f

    mul-float p2, p2, v0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/tencent/rmonitor/natmem/NatMemHandler;->L(I)V

    :cond_0
    return-void
.end method

.method public final n(J)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/rmonitor/natmem/NatMemHandler;->ja()V

    long-to-float p1, p1

    iget-wide v0, p0, Lcom/tencent/rmonitor/natmem/NatMemHandler;->Gp:J

    long-to-float p2, v0

    const v0, 0x3f59999a    # 0.85f

    mul-float p2, p2, v0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/tencent/rmonitor/natmem/NatMemHandler;->L(I)V

    :cond_0
    return-void
.end method
