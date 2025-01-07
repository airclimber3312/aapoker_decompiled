.class public final Lcom/tencent/bugly/proguard/pc$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/pc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field Er:Lcom/tencent/bugly/proguard/gx;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/proguard/ov;->ij()Lcom/tencent/bugly/proguard/gx;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/pc$a;->Er:Lcom/tencent/bugly/proguard/gx;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/pc;->ip()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/proguard/pc;->io()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/tencent/bugly/proguard/pc;->io()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/pc;->io()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-lez v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/tencent/bugly/proguard/pc;->io()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/bugly/proguard/pc$c;

    iget-wide v7, v4, Lcom/tencent/bugly/proguard/pc$c;->Ez:J

    const-wide/32 v9, 0x2bf20

    add-long/2addr v7, v9

    cmp-long v4, v7, v1

    if-gez v4, :cond_2

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_7

    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/proguard/pc;->ip()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {}, Lcom/tencent/bugly/proguard/pc;->io()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/pc$c;

    iget-object v3, v2, Lcom/tencent/bugly/proguard/pc$c;->Ew:Lcom/tencent/rmonitor/base/meta/InspectUUID;

    invoke-virtual {v3}, Lcom/tencent/rmonitor/base/meta/InspectUUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/tencent/bugly/proguard/pc;->io()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/bugly/proguard/pc;->io()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/bugly/proguard/pc$c;

    new-instance v5, Ljava/lang/String;

    iget-object v6, v4, Lcom/tencent/bugly/proguard/pc$c;->Ew:Lcom/tencent/rmonitor/base/meta/InspectUUID;

    iget-object v6, v6, Lcom/tencent/rmonitor/base/meta/InspectUUID;->uuid:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/tencent/bugly/proguard/pc$c;->Ew:Lcom/tencent/rmonitor/base/meta/InspectUUID;

    iget-object v4, v4, Lcom/tencent/rmonitor/base/meta/InspectUUID;->className:Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/tencent/bugly/proguard/pc;->io()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_leak"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/tencent/bugly/proguard/pc$a;->Er:Lcom/tencent/bugly/proguard/gx;

    iget-boolean v9, v1, Lcom/tencent/bugly/proguard/gx;->tv:Z

    iget-object v10, v2, Lcom/tencent/bugly/proguard/pc$c;->Ex:Lcom/tencent/bugly/proguard/it;

    const/4 v11, 0x1

    iget-object v1, p0, Lcom/tencent/bugly/proguard/pc$a;->Er:Lcom/tencent/bugly/proguard/gx;

    iget v12, v1, Lcom/tencent/bugly/proguard/gx;->tg:I

    invoke-static/range {v7 .. v12}, Lcom/tencent/bugly/proguard/ow;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/tencent/bugly/proguard/is;ZI)Lcom/tencent/bugly/proguard/if;

    move-result-object v1

    iget-boolean v3, v1, Lcom/tencent/bugly/proguard/if;->iW:Z

    if-eqz v3, :cond_6

    const-string v3, ""

    iget-object v4, v2, Lcom/tencent/bugly/proguard/pc$c;->Ew:Lcom/tencent/rmonitor/base/meta/InspectUUID;

    iget-object v4, v4, Lcom/tencent/rmonitor/base/meta/InspectUUID;->uuid:Ljava/lang/String;

    if-eqz v4, :cond_5

    new-instance v3, Ljava/lang/String;

    iget-object v4, v2, Lcom/tencent/bugly/proguard/pc$c;->Ew:Lcom/tencent/rmonitor/base/meta/InspectUUID;

    iget-object v4, v4, Lcom/tencent/rmonitor/base/meta/InspectUUID;->uuid:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_5
    iget-object v2, v2, Lcom/tencent/bugly/proguard/pc$c;->Ew:Lcom/tencent/rmonitor/base/meta/InspectUUID;

    iget-object v2, v2, Lcom/tencent/rmonitor/base/meta/InspectUUID;->className:Ljava/lang/String;

    invoke-static {v2, v3, v1, v0}, Lcom/tencent/bugly/proguard/pe;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/if;Ljava/util/Map;)Lcom/tencent/bugly/proguard/bg;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    :cond_7
    const-wide/16 v0, 0x7530

    invoke-static {p0, v0, v1}, Lcom/tencent/bugly/proguard/by;->b(Ljava/lang/Runnable;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-void

    :cond_8
    :goto_2
    :try_start_7
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "RMonitor_MemoryLeak_LeakInspector"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
