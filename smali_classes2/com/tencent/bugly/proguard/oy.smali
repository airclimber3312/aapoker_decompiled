.class public Lcom/tencent/bugly/proguard/oy;
.super Lcom/tencent/bugly/proguard/iy;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final DZ:Lcom/tencent/bugly/proguard/oz;

.field private static volatile Ec:Lcom/tencent/bugly/proguard/oy; = null

.field public static yv:Z = false


# instance fields
.field private final DY:Lcom/tencent/bugly/proguard/gc;

.field private final Ea:Lcom/tencent/bugly/proguard/pa;

.field private Eb:J

.field private Ed:I

.field private final handler:Landroid/os/Handler;

.field private final z:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/oz;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/oz;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/oy;->DZ:Lcom/tencent/bugly/proguard/oz;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/proguard/oy;->Ec:Lcom/tencent/bugly/proguard/oy;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/iy;-><init>()V

    new-instance v0, Lcom/tencent/bugly/proguard/gc;

    const-wide/16 v1, 0x1388

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/tencent/bugly/proguard/gc;-><init>(JJ)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/oy;->DY:Lcom/tencent/bugly/proguard/gc;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/oy;->z:Ljava/lang/StringBuilder;

    new-instance v0, Lcom/tencent/bugly/proguard/pa;

    sget-object v1, Lcom/tencent/bugly/proguard/oy;->DZ:Lcom/tencent/bugly/proguard/oz;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/pa;-><init>(Lcom/tencent/bugly/proguard/oz;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/oy;->Ea:Lcom/tencent/bugly/proguard/pa;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/oy;->Ed:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/tencent/bugly/proguard/by;->aF()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/oy;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static in()Lcom/tencent/bugly/proguard/oy;
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/oy;->Ec:Lcom/tencent/bugly/proguard/oy;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/bugly/proguard/oy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/oy;->Ec:Lcom/tencent/bugly/proguard/oy;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/bugly/proguard/oy;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/oy;-><init>()V

    sput-object v1, Lcom/tencent/bugly/proguard/oy;->Ec:Lcom/tencent/bugly/proguard/oy;

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
    sget-object v0, Lcom/tencent/bugly/proguard/oy;->Ec:Lcom/tencent/bugly/proguard/oy;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v1, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v3, "handle memory detect ceiling message."

    const-string v4, "RMonitor_MemoryCeiling"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/kp;->gr()J

    move-result-wide v5

    iget-object v1, v0, Lcom/tencent/bugly/proguard/oy;->z:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, v0, Lcom/tencent/bugly/proguard/oy;->z:Ljava/lang/StringBuilder;

    const-string v7, "PSS="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x400

    div-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " KB HeapMax="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v5

    div-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " KB HeapAlloc="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v5

    div-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " KB HeapFree="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v5

    div-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " KB"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    aput-object v4, v6, v3

    iget-object v7, v0, Lcom/tencent/bugly/proguard/oy;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v1, v6}, Lcom/tencent/bugly/proguard/km;->v([Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/ox;->im()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/tencent/bugly/proguard/oy;->Eb:J

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/tencent/bugly/proguard/oy;->Eb:J

    long-to-float v1, v8

    invoke-static {}, Lcom/tencent/bugly/proguard/ov;->ii()F

    move-result v8

    long-to-float v6, v6

    mul-float v8, v8, v6

    cmpl-float v1, v1, v8

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v6, 0x3

    if-eqz v1, :cond_7

    iget v1, v0, Lcom/tencent/bugly/proguard/oy;->Ed:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/tencent/bugly/proguard/oy;->Ed:I

    if-le v1, v2, :cond_6

    iget-object v1, v0, Lcom/tencent/bugly/proguard/oy;->Ea:Lcom/tencent/bugly/proguard/pa;

    iget-wide v7, v0, Lcom/tencent/bugly/proguard/oy;->Eb:J

    sget-object v9, Lcom/tencent/bugly/proguard/iv;->vO:Lcom/tencent/bugly/proguard/iw;

    invoke-virtual {v9}, Lcom/tencent/bugly/proguard/iw;->fK()Lcom/tencent/bugly/proguard/ik;

    move-result-object v9

    move-object v13, v9

    check-cast v13, Lcom/tencent/bugly/proguard/ir;

    invoke-static {}, Lcom/tencent/bugly/proguard/kd;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {}, Lcom/tencent/bugly/proguard/kd;->gf()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_1

    :cond_1
    const-string v9, ""

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v11, v1, Lcom/tencent/bugly/proguard/pa;->Ef:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    sget-boolean v11, Lcom/tencent/bugly/proguard/oy;->yv:Z

    if-eqz v11, :cond_5

    :cond_2
    sget-object v11, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v12, v6, [Ljava/lang/String;

    const-string v14, "RMonitor_MemoryCeiling_Trigger"

    aput-object v14, v12, v3

    const-string v15, "activityandhash report:"

    aput-object v15, v12, v2

    aput-object v9, v12, v5

    invoke-virtual {v11, v12}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/ov;->ii()F

    move-result v11

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v5

    long-to-float v5, v5

    mul-float v11, v11, v5

    float-to-long v5, v11

    invoke-static {v7, v8, v5, v6, v10}, Lcom/tencent/bugly/proguard/oz;->b(JJLjava/lang/String;)Lcom/tencent/bugly/proguard/bg;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/pa;->Ef:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v13, :cond_3

    invoke-interface {v13}, Lcom/tencent/bugly/proguard/ir;->fH()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    sget-object v1, Lcom/tencent/bugly/proguard/ix;->we:Lcom/tencent/bugly/proguard/ix;

    const/16 v1, 0x6c

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ix;->v(I)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v5, "startDumpingMemory abort canCollect=false"

    filled-new-array {v14, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/tencent/bugly/proguard/ow;->ik()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v10, "LowMemory"

    const-string v11, "LowMemory"

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lcom/tencent/bugly/proguard/ow;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/tencent/bugly/proguard/is;ZI)Lcom/tencent/bugly/proguard/if;

    move-result-object v1

    iget-boolean v1, v1, Lcom/tencent/bugly/proguard/if;->iW:Z

    if-nez v1, :cond_5

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v5, "RMonitor_MemoryCeiling_Reporter"

    const-string v6, "dump other file failed!"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    :cond_5
    :goto_2
    iput v3, v0, Lcom/tencent/bugly/proguard/oy;->Ed:I

    goto :goto_3

    :cond_6
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    :cond_7
    :goto_3
    sget-object v1, Lcom/tencent/bugly/proguard/ix;->we:Lcom/tencent/bugly/proguard/ix;

    const/16 v1, 0x6d

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ix;->v(I)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/tencent/bugly/proguard/ov;->ih()Lcom/tencent/bugly/proguard/gh;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/bugly/proguard/gh;->sq:Lcom/tencent/bugly/proguard/hc;

    iget v1, v1, Lcom/tencent/bugly/proguard/hc;->tS:I

    sget-object v5, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    aput-object v4, v6, v3

    const-string v3, "memory celling report count above, remove MSG_MEMORY_CALCULATE msg,"

    aput-object v3, v6, v2

    const-string v3, " max report num: "

    const/4 v4, 0x2

    aput-object v3, v6, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v6, v3

    invoke-virtual {v5, v6}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tencent/bugly/proguard/oy;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_4

    :cond_8
    iget-object v1, v0, Lcom/tencent/bugly/proguard/oy;->handler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/oy;->DY:Lcom/tencent/bugly/proguard/gc;

    iget-wide v3, v3, Lcom/tencent/bugly/proguard/gc;->rX:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_9
    :goto_4
    return v2
.end method

.method public final start()V
    .locals 6

    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aP()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "RMonitor_MemoryCeiling"

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/bugly/proguard/fy;->aY()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cannot start memory ceil monitor due to not support fork dump"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/nf;->hn()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cannot start memory ceil monitor due to not have valid dumper"

    :goto_0
    invoke-static {v3, v0}, Lcom/tencent/bugly/proguard/nb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/oy;->DY:Lcom/tencent/bugly/proguard/gc;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/kh;->a(Lcom/tencent/bugly/proguard/ke;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/ov;->ih()Lcom/tencent/bugly/proguard/gh;

    move-result-object v0

    iget v0, v0, Lcom/tencent/bugly/proguard/gh;->ss:I

    if-gtz v0, :cond_2

    const-string v0, "-1"

    const-wide/16 v4, -0x1

    invoke-static {v4, v5, v4, v5, v0}, Lcom/tencent/bugly/proguard/oz;->b(JJLjava/lang/String;)Lcom/tencent/bugly/proguard/bg;

    :cond_2
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "start detect memory ceiling"

    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/oy;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/oy;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/oy;->DY:Lcom/tencent/bugly/proguard/gc;

    iget-wide v3, v1, Lcom/tencent/bugly/proguard/gc;->rX:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Lcom/tencent/bugly/proguard/cj;->bi()Lcom/tencent/bugly/proguard/cj;

    move-result-object v0

    const-string v1, "java_memory_ceiling_hprof"

    invoke-static {v1}, Lcom/tencent/bugly/proguard/gz;->aD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/cj;->F(Ljava/lang/String;)V

    return-void

    :cond_3
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "has not valid dumper, start failed"

    filled-new-array {v3, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void
.end method

.method public final stop()V
    .locals 2

    invoke-static {}, Lcom/tencent/bugly/proguard/nf;->hn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/oy;->DY:Lcom/tencent/bugly/proguard/gc;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/kh;->b(Lcom/tencent/bugly/proguard/ke;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/oy;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/tencent/bugly/proguard/cj;->bi()Lcom/tencent/bugly/proguard/cj;

    move-result-object v0

    const-string v1, "java_memory_ceiling_hprof"

    invoke-static {v1}, Lcom/tencent/bugly/proguard/gz;->aD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/cj;->G(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
