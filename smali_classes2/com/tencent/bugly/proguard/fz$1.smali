.class final Lcom/tencent/bugly/proguard/fz$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/fz;->b(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic rR:I

.field final synthetic rS:Ljava/util/List;


# direct methods
.method constructor <init>(ILjava/util/List;)V
    .locals 0

    iput p1, p0, Lcom/tencent/bugly/proguard/fz$1;->rR:I

    iput-object p2, p0, Lcom/tencent/bugly/proguard/fz$1;->rS:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/tencent/bugly/proguard/fz$1;->rR:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    sget-object v0, Lcom/tencent/bugly/proguard/ot;->DQ:Lcom/tencent/bugly/proguard/ot;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ot;->if()V

    sget-object v0, Lcom/tencent/bugly/proguard/ot;->DQ:Lcom/tencent/bugly/proguard/ot;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/fz$1;->rS:Ljava/util/List;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v3, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    if-nez v3, :cond_1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_manager_Launcher"

    const-string v2, "launch fail for app is null."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v3, Lcom/tencent/bugly/proguard/ot;->DL:Lcom/tencent/bugly/proguard/oo;

    sget-object v4, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    check-cast v4, Landroid/content/Context;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/oo;->DH:[Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/ce;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_manager_Launcher"

    const-string v2, "launch fail, please check environment."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return-void

    :cond_3
    sget-object v3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v4, v1, [Ljava/lang/String;

    const-string v6, "RMonitor_manager_Launcher"

    aput-object v6, v4, v5

    const-string v6, "launch plugins of "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-virtual {v3, v4}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    sget-object v3, Lcom/tencent/bugly/proguard/aq;->cl:Lcom/tencent/bugly/proguard/aq;

    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->S()V

    const-string v3, "monitorList"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/tencent/bugly/proguard/gg;->sn:Lcom/tencent/bugly/proguard/gg;

    invoke-static {}, Lcom/tencent/bugly/proguard/gg;->eS()Lcom/tencent/bugly/proguard/gd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/gd;->eL()V

    invoke-static {}, Lcom/tencent/bugly/proguard/gf;->eO()Lcom/tencent/bugly/proguard/gf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/gf;->eP()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/gf;->eQ()V

    :cond_4
    iget-object v3, v3, Lcom/tencent/bugly/proguard/gf;->sg:Lcom/tencent/bugly/proguard/hb;

    const/4 v4, 0x0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/tencent/bugly/proguard/hb;->ax(Ljava/lang/String;)Lcom/tencent/bugly/proguard/hc;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-boolean v8, v7, Lcom/tencent/bugly/proguard/hc;->enabled:Z

    if-eqz v8, :cond_6

    if-nez v4, :cond_7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    iget-object v7, v7, Lcom/tencent/bugly/proguard/hc;->name:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    :goto_2
    if-eqz v4, :cond_b

    move-object v3, v4

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_b

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/tencent/bugly/proguard/ot;->DM:Lcom/tencent/bugly/proguard/op;

    invoke-interface {v4, v3}, Lcom/tencent/bugly/proguard/op;->bu(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    sget-boolean v0, Lcom/tencent/bugly/proguard/ot;->DN:Z

    if-nez v0, :cond_c

    sput-boolean v2, Lcom/tencent/bugly/proguard/ot;->DN:Z

    sget-object v0, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    sget-object v3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "RMonitor_report"

    aput-object v4, v1, v5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "start, isStarted: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/tencent/bugly/proguard/je;->wl:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v3, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/proguard/je;->wl:Z

    if-nez v1, :cond_a

    sget-object v1, Lcom/tencent/bugly/proguard/je;->wn:Lcom/tencent/bugly/proguard/jc;

    invoke-interface {v1}, Lcom/tencent/bugly/proguard/jc;->fN()V

    sget-object v1, Lcom/tencent/bugly/proguard/je;->wq:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    sput-boolean v2, Lcom/tencent/bugly/proguard/je;->wl:Z

    :cond_a
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_b
    invoke-static {v0}, Lcom/tencent/bugly/proguard/ot;->B(Ljava/util/List;)V

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_manager_Launcher"

    const-string v2, "no monitor turned on!"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V

    :cond_c
    return-void

    :cond_d
    :goto_4
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_manager_Launcher"

    const-string v2, "none plugin to launch."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return-void

    :cond_e
    if-ne v0, v1, :cond_f

    sget-object v0, Lcom/tencent/bugly/proguard/ot;->DQ:Lcom/tencent/bugly/proguard/ot;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/fz$1;->rS:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ot;->B(Ljava/util/List;)V

    return-void

    :cond_f
    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    sget-object v0, Lcom/tencent/bugly/proguard/ot;->DQ:Lcom/tencent/bugly/proguard/ot;

    invoke-static {}, Lcom/tencent/bugly/proguard/ot;->eK()V

    return-void

    :cond_10
    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    sget-object v0, Lcom/tencent/bugly/proguard/ot;->DQ:Lcom/tencent/bugly/proguard/ot;

    invoke-static {}, Lcom/tencent/bugly/proguard/ot;->ig()V

    :cond_11
    return-void
.end method
