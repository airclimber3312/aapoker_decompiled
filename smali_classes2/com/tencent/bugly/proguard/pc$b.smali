.class public final Lcom/tencent/bugly/proguard/pc$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/pc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final Em:Lcom/tencent/bugly/proguard/pe;

.field private Es:I

.field private final Et:Lcom/tencent/rmonitor/base/meta/InspectUUID;

.field private final Eu:Lcom/tencent/bugly/proguard/it;

.field private Ev:J

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/tencent/rmonitor/base/meta/InspectUUID;Landroid/os/Handler;Lcom/tencent/bugly/proguard/it;Lcom/tencent/bugly/proguard/pe;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/pc$b;->Es:I

    iput-object p1, p0, Lcom/tencent/bugly/proguard/pc$b;->Et:Lcom/tencent/rmonitor/base/meta/InspectUUID;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/pc$b;->handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/tencent/bugly/proguard/pc$b;->Eu:Lcom/tencent/bugly/proguard/it;

    iput-object p4, p0, Lcom/tencent/bugly/proguard/pc$b;->Em:Lcom/tencent/bugly/proguard/pe;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/tencent/bugly/proguard/pc$b;->Ev:J

    return-void
.end method

.method private static is()J
    .locals 5

    const-wide/16 v0, 0x0

    :try_start_0
    const-string v2, "art.gc.gc-count"

    invoke-static {v2}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    return-wide v2

    :catch_0
    :cond_0
    return-wide v0
.end method


# virtual methods
.method public final run()V
    .locals 21

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/tencent/bugly/proguard/pc$b;->Et:Lcom/tencent/rmonitor/base/meta/InspectUUID;

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "RMonitor_MemoryLeak_LeakInspector"

    const-string v3, "uuid is null"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/rmonitor/base/meta/InspectUUID;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x7

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v11, v5, [Ljava/lang/String;

    const-string v12, "RMonitor_MemoryLeak_LeakInspector"

    aput-object v12, v11, v9

    const-string v12, "Inspecting "

    aput-object v12, v11, v10

    aput-object v2, v11, v8

    const-string v12, " Time="

    aput-object v12, v11, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    const-string v12, " count="

    aput-object v12, v11, v4

    iget v12, v1, Lcom/tencent/bugly/proguard/pc$b;->Es:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v3

    invoke-virtual {v0, v11}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/ov;->ij()Lcom/tencent/bugly/proguard/gx;

    move-result-object v0

    iget-object v11, v1, Lcom/tencent/bugly/proguard/pc$b;->Et:Lcom/tencent/rmonitor/base/meta/InspectUUID;

    iget-object v11, v11, Lcom/tencent/rmonitor/base/meta/InspectUUID;->weakObj:Ljava/lang/ref/WeakReference;

    if-eqz v11, :cond_6

    iget-object v11, v1, Lcom/tencent/bugly/proguard/pc$b;->Et:Lcom/tencent/rmonitor/base/meta/InspectUUID;

    iget-object v11, v11, Lcom/tencent/rmonitor/base/meta/InspectUUID;->weakObj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_6

    iget-object v11, v1, Lcom/tencent/bugly/proguard/pc$b;->Et:Lcom/tencent/rmonitor/base/meta/InspectUUID;

    iget-object v11, v11, Lcom/tencent/rmonitor/base/meta/InspectUUID;->weakObj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->isEnqueued()Z

    move-result v11

    if-nez v11, :cond_6

    iget v0, v0, Lcom/tencent/bugly/proguard/gx;->tw:I

    int-to-long v11, v0

    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aQ()Z

    move-result v0

    const-wide/16 v13, -0x1

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/bugly/proguard/pc$b;->is()J

    move-result-wide v3

    iget-wide v7, v1, Lcom/tencent/bugly/proguard/pc$b;->Ev:J

    cmp-long v0, v7, v13

    if-nez v0, :cond_1

    iput-wide v3, v1, Lcom/tencent/bugly/proguard/pc$b;->Ev:J

    :cond_1
    move-wide v13, v3

    :cond_2
    iget-wide v3, v1, Lcom/tencent/bugly/proguard/pc$b;->Ev:J

    sub-long/2addr v13, v3

    const-wide/16 v3, 0x14

    cmp-long v0, v13, v3

    if-gez v0, :cond_3

    iget v0, v1, Lcom/tencent/bugly/proguard/pc$b;->Es:I

    add-int/2addr v0, v10

    iput v0, v1, Lcom/tencent/bugly/proguard/pc$b;->Es:I

    int-to-long v3, v0

    cmp-long v0, v3, v11

    if-gez v0, :cond_3

    invoke-static {}, Lcom/tencent/bugly/proguard/pc;->iq()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/tencent/bugly/proguard/pc$b;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/tencent/bugly/proguard/pc$c;

    iget-object v3, v1, Lcom/tencent/bugly/proguard/pc$b;->Et:Lcom/tencent/rmonitor/base/meta/InspectUUID;

    iget-object v4, v1, Lcom/tencent/bugly/proguard/pc$b;->Eu:Lcom/tencent/bugly/proguard/it;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    iget-object v7, v1, Lcom/tencent/bugly/proguard/pc$b;->Em:Lcom/tencent/bugly/proguard/pe;

    move-object v15, v0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v20, v7

    invoke-direct/range {v15 .. v20}, Lcom/tencent/bugly/proguard/pc$c;-><init>(Lcom/tencent/rmonitor/base/meta/InspectUUID;Lcom/tencent/bugly/proguard/it;JLcom/tencent/bugly/proguard/pe;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/pc;->ip()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/proguard/pc;->io()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Lcom/tencent/bugly/proguard/pc$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/pc$a;-><init>()V

    const-wide/16 v3, 0x0

    invoke-static {v0, v3, v4}, Lcom/tencent/bugly/proguard/by;->b(Ljava/lang/Runnable;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_6
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "RMonitor_MemoryLeak_LeakInspector"

    aput-object v4, v3, v9

    const-string v4, "inspect "

    aput-object v4, v3, v10

    const/4 v4, 0x2

    aput-object v2, v3, v4

    const-string v4, " finished no leak"

    const/4 v7, 0x3

    aput-object v4, v3, v7

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/pc;->ir()Lcom/tencent/bugly/proguard/ck;

    move-result-object v0

    iget-object v3, v1, Lcom/tencent/bugly/proguard/pc$b;->Et:Lcom/tencent/rmonitor/base/meta/InspectUUID;

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/proguard/ck;->a(Lcom/tencent/bugly/proguard/ck$b;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    sget-object v3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/String;

    const-string v7, "RMonitor_MemoryLeak_LeakInspector"

    aput-object v7, v4, v9

    const-string v7, "error, "

    aput-object v7, v4, v10

    const/4 v7, 0x2

    aput-object v2, v4, v7

    const-string v2, " Time="

    const/4 v7, 0x3

    aput-object v2, v4, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6

    const-string v2, " count="

    const/4 v6, 0x5

    aput-object v2, v4, v6

    iget v2, v1, Lcom/tencent/bugly/proguard/pc$b;->Es:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x6

    aput-object v2, v4, v6

    const-string v2, " Throwable: "

    aput-object v2, v4, v5

    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/km;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/pc;->ir()Lcom/tencent/bugly/proguard/ck;

    move-result-object v0

    iget-object v2, v1, Lcom/tencent/bugly/proguard/pc$b;->Et:Lcom/tencent/rmonitor/base/meta/InspectUUID;

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/ck;->a(Lcom/tencent/bugly/proguard/ck$b;)V

    return-void
.end method
