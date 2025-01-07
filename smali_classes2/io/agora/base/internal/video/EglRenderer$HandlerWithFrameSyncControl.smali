.class Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;
.super Landroid/os/Handler;
.source "EglRenderer.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/video/EglRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerWithFrameSyncControl"
.end annotation


# static fields
.field private static final MSG_SEND_CHOREOGRAPHER_QUIT_SIGNAL:I = 0x0

.field private static final MSG_SEND_DROP_FRAME:I = 0x1

.field private static final MSG_SEND_RENDER_FRAME_SIGNAL:I = 0x2

.field private static final QUEUE_BUFFER:I = 0x3


# instance fields
.field private final exceptionCallback:Ljava/lang/Runnable;

.field private isPreviousFrameDrawn:Z

.field private lastPersionStats:Lio/agora/base/internal/video/EglRenderer$VsyncStats;

.field private mLastFrameTimeNanos:J

.field private final queueLock:Ljava/lang/Object;

.field private final renderFrames:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/agora/base/internal/video/EglRenderer$VideoFrameInternal;",
            ">;"
        }
    .end annotation
.end field

.field private weakRenderer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/agora/base/internal/video/EglRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Ljava/lang/Runnable;Lio/agora/base/internal/video/EglRenderer;)V
    .locals 2

    .line 1364
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1356
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->queueLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 1358
    iput-wide v0, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->mLastFrameTimeNanos:J

    .line 1359
    sget-object p1, Lio/agora/base/internal/video/EglRenderer$VsyncStats;->NORMAL:Lio/agora/base/internal/video/EglRenderer$VsyncStats;

    iput-object p1, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->lastPersionStats:Lio/agora/base/internal/video/EglRenderer$VsyncStats;

    .line 1365
    iput-object p2, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->exceptionCallback:Ljava/lang/Runnable;

    .line 1366
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->renderFrames:Ljava/util/Queue;

    .line 1367
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->weakRenderer:Ljava/lang/ref/WeakReference;

    .line 1368
    iput-wide v0, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->mLastFrameTimeNanos:J

    const/4 p1, 0x0

    .line 1369
    iput-boolean p1, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->isPreviousFrameDrawn:Z

    return-void
.end method

.method private doRenderFrame(J)V
    .locals 12

    .line 1490
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->weakRenderer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/base/internal/video/EglRenderer;

    if-nez v0, :cond_0

    const-string p1, "EglRenderer"

    const-string p2, "handleMessage: weak is null"

    .line 1492
    invoke-static {p1, p2}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1495
    :cond_0
    invoke-static {v0}, Lio/agora/base/internal/video/EglRenderer;->access$1700(Lio/agora/base/internal/video/EglRenderer;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    return-void

    .line 1498
    :cond_1
    iget-wide v1, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->mLastFrameTimeNanos:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 1499
    iput-wide p1, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->mLastFrameTimeNanos:J

    .line 1501
    :cond_2
    iget-wide v1, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->mLastFrameTimeNanos:J

    sub-long v10, p1, v1

    .line 1506
    iput-wide p1, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->mLastFrameTimeNanos:J

    .line 1509
    invoke-static {v0}, Lio/agora/base/internal/video/EglRenderer;->access$1700(Lio/agora/base/internal/video/EglRenderer;)J

    move-result-wide v1

    invoke-static {v0}, Lio/agora/base/internal/video/EglRenderer;->access$1700(Lio/agora/base/internal/video/EglRenderer;)J

    move-result-wide v5

    const-wide/16 v7, 0x2

    div-long/2addr v5, v7

    add-long/2addr v1, v5

    cmp-long v5, v10, v1

    if-ltz v5, :cond_3

    .line 1510
    invoke-static {v0}, Lio/agora/base/internal/video/EglRenderer;->access$1700(Lio/agora/base/internal/video/EglRenderer;)J

    move-result-wide v1

    div-long v3, v10, v1

    .line 1511
    sget-object v1, Lio/agora/base/internal/video/EglRenderer$VsyncStats;->DELAY:Lio/agora/base/internal/video/EglRenderer$VsyncStats;

    iput-object v1, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->lastPersionStats:Lio/agora/base/internal/video/EglRenderer$VsyncStats;

    goto :goto_0

    .line 1513
    :cond_3
    sget-object v1, Lio/agora/base/internal/video/EglRenderer$VsyncStats;->NORMAL:Lio/agora/base/internal/video/EglRenderer$VsyncStats;

    iput-object v1, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->lastPersionStats:Lio/agora/base/internal/video/EglRenderer$VsyncStats;

    :goto_0
    move-wide v8, v3

    .line 1515
    invoke-static {v0}, Lio/agora/base/internal/video/EglRenderer;->access$200(Lio/agora/base/internal/video/EglRenderer;)Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;

    move-result-object v5

    iget-object v6, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->lastPersionStats:Lio/agora/base/internal/video/EglRenderer$VsyncStats;

    iget-boolean v7, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->isPreviousFrameDrawn:Z

    invoke-static/range {v5 .. v11}, Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;->access$2700(Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;Lio/agora/base/internal/video/EglRenderer$VsyncStats;ZJJ)V

    const/4 v1, 0x0

    .line 1517
    iput-boolean v1, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->isPreviousFrameDrawn:Z

    .line 1519
    iget-object v1, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->queueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1520
    :try_start_0
    iget-object v2, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->renderFrames:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/agora/base/internal/video/EglRenderer$VideoFrameInternal;

    .line 1521
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    .line 1527
    iput-boolean v1, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->isPreviousFrameDrawn:Z

    .line 1528
    invoke-static {v0, v2, p1, p2}, Lio/agora/base/internal/video/EglRenderer;->access$2800(Lio/agora/base/internal/video/EglRenderer;Lio/agora/base/internal/video/EglRenderer$VideoFrameInternal;J)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 1521
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private stopChoreographer()V
    .locals 3

    .line 1473
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->queueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1474
    :try_start_0
    iget-object v1, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->renderFrames:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/agora/base/internal/video/EglRenderer$VideoFrameInternal;

    .line 1475
    iget-object v2, v2, Lio/agora/base/internal/video/EglRenderer$VideoFrameInternal;->frame:Lio/agora/base/VideoFrame;

    invoke-virtual {v2}, Lio/agora/base/VideoFrame;->release()V

    goto :goto_0

    .line 1477
    :cond_0
    iget-object v1, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->renderFrames:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 1478
    iget-object v1, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->weakRenderer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/agora/base/internal/video/EglRenderer;

    if-nez v1, :cond_1

    const-string v1, "EglRenderer"

    const-string v2, "handleMessage: weak is null"

    .line 1480
    invoke-static {v1, v2}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    monitor-exit v0

    return-void

    .line 1483
    :cond_1
    invoke-static {v1}, Lio/agora/base/internal/video/EglRenderer;->access$2600(Lio/agora/base/internal/video/EglRenderer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1484
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 1486
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2

    .line 1375
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "EglRenderer"

    const-string v1, "Exception on EglRenderer thread"

    .line 1377
    invoke-static {v0, v1, p1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1378
    iget-object p1, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->exceptionCallback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public doFrame(J)V
    .locals 3

    .line 1534
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->weakRenderer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/base/internal/video/EglRenderer;

    const-string v1, "EglRenderer"

    if-nez v0, :cond_0

    const-string p1, "doFrame: weak is null"

    .line 1536
    invoke-static {v1, p1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1539
    :cond_0
    invoke-static {v0}, Lio/agora/base/internal/video/EglRenderer;->access$2400(Lio/agora/base/internal/video/EglRenderer;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Choreographer real start"

    .line 1540
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x1

    .line 1542
    invoke-static {v0, v1}, Lio/agora/base/internal/video/EglRenderer;->access$2402(Lio/agora/base/internal/video/EglRenderer;Z)Z

    .line 1543
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->sendMessage(Landroid/os/Message;)Z

    .line 1544
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1439
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->weakRenderer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/base/internal/video/EglRenderer;

    const-string v1, "EglRenderer"

    if-nez v0, :cond_0

    const-string p1, "handleMessage: weak is null"

    .line 1441
    invoke-static {v1, p1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1444
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v0, 0x2

    if-eq v2, v0, :cond_1

    .line 1464
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1466
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setRepeatingRequest failed, error message : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1453
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1454
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1455
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1457
    :cond_2
    invoke-direct {p0, v0, v1}, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->doRenderFrame(J)V

    goto :goto_0

    .line 1447
    :cond_3
    iget-object p1, v0, Lio/agora/base/internal/video/EglRenderer;->rendererEvents:Lio/agora/base/internal/video/RendererCommon$RendererEvents;

    if-eqz p1, :cond_4

    .line 1448
    iget-object p1, v0, Lio/agora/base/internal/video/EglRenderer;->rendererEvents:Lio/agora/base/internal/video/RendererCommon$RendererEvents;

    invoke-interface {p1}, Lio/agora/base/internal/video/RendererCommon$RendererEvents;->onFrameDropped()V

    .line 1450
    :cond_4
    invoke-static {v0}, Lio/agora/base/internal/video/EglRenderer;->access$200(Lio/agora/base/internal/video/EglRenderer;)Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;

    move-result-object p1

    invoke-static {p1}, Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;->access$2500(Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;)V

    goto :goto_0

    .line 1460
    :cond_5
    invoke-direct {p0}, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->stopChoreographer()V

    :goto_0
    return-void
.end method

.method public sendFrameToRenderThread(JLio/agora/base/VideoFrame;)V
    .locals 4

    .line 1400
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->queueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1401
    :try_start_0
    invoke-virtual {p3}, Lio/agora/base/VideoFrame;->retain()V

    .line 1402
    iget-object v1, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->renderFrames:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 1409
    iget-object v1, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->renderFrames:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/agora/base/internal/video/EglRenderer$VideoFrameInternal;

    if-eqz v1, :cond_0

    .line 1411
    iget-object v1, v1, Lio/agora/base/internal/video/EglRenderer$VideoFrameInternal;->frame:Lio/agora/base/VideoFrame;

    invoke-virtual {v1}, Lio/agora/base/VideoFrame;->release()V

    :cond_0
    const/4 v1, 0x1

    .line 1413
    invoke-virtual {p0, v1}, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->sendMessage(Landroid/os/Message;)Z

    .line 1415
    :cond_1
    iget-object v1, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->weakRenderer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/agora/base/internal/video/EglRenderer;

    if-nez v1, :cond_2

    const-string p1, "EglRenderer"

    const-string p2, "sendFrameToRenderThread failed: weak is null"

    .line 1417
    invoke-static {p1, p2}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    monitor-exit v0

    return-void

    .line 1420
    :cond_2
    new-instance v2, Lio/agora/base/internal/video/EglRenderer$VideoFrameInternal;

    .line 1421
    invoke-static {v1}, Lio/agora/base/internal/video/EglRenderer;->access$2300(Lio/agora/base/internal/video/EglRenderer;)Z

    move-result v3

    invoke-direct {v2, p3, p1, p2, v3}, Lio/agora/base/internal/video/EglRenderer$VideoFrameInternal;-><init>(Lio/agora/base/VideoFrame;JZ)V

    .line 1422
    iget-object p1, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->renderFrames:Ljava/util/Queue;

    invoke-interface {p1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "EglRenderer"

    const-string p2, "offer error "

    .line 1423
    invoke-static {p1, p2}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    :cond_3
    invoke-static {v1}, Lio/agora/base/internal/video/EglRenderer;->access$2400(Lio/agora/base/internal/video/EglRenderer;)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x2

    .line 1426
    invoke-virtual {p0, p1}, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->sendMessage(Landroid/os/Message;)Z

    .line 1434
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sendLastFrameToRenderThread(J)V
    .locals 4

    .line 1387
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->weakRenderer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/base/internal/video/EglRenderer;

    .line 1388
    iget-object v1, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->queueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1389
    :try_start_0
    invoke-static {}, Lio/agora/base/internal/video/EglRenderer;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 1390
    new-instance v2, Lio/agora/base/internal/video/EglRenderer$VideoFrameInternal;

    .line 1391
    invoke-static {v0}, Lio/agora/base/internal/video/EglRenderer;->access$2200(Lio/agora/base/internal/video/EglRenderer;)Lio/agora/base/VideoFrame;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, p2, v3}, Lio/agora/base/internal/video/EglRenderer$VideoFrameInternal;-><init>(Lio/agora/base/VideoFrame;JZ)V

    .line 1392
    iget-object p1, p0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->renderFrames:Ljava/util/Queue;

    invoke-interface {p1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "EglRenderer"

    const-string p2, "sendLastFrameToRenderThread offer error "

    .line 1393
    invoke-static {p1, p2}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sendStopChoreographer()V
    .locals 1

    const/4 v0, 0x0

    .line 1383
    invoke-virtual {p0, v0}, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
