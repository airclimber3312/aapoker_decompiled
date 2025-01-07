.class Lio/agora/base/internal/video/EglRenderer$8;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/internal/video/EglRenderer;->removeFrameListener(Lio/agora/base/internal/video/EglRenderer$FrameListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/base/internal/video/EglRenderer;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$listener:Lio/agora/base/internal/video/EglRenderer$FrameListener;


# direct methods
.method constructor <init>(Lio/agora/base/internal/video/EglRenderer;Ljava/util/concurrent/CountDownLatch;Lio/agora/base/internal/video/EglRenderer$FrameListener;)V
    .locals 0

    .line 713
    iput-object p1, p0, Lio/agora/base/internal/video/EglRenderer$8;->this$0:Lio/agora/base/internal/video/EglRenderer;

    iput-object p2, p0, Lio/agora/base/internal/video/EglRenderer$8;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lio/agora/base/internal/video/EglRenderer$8;->val$listener:Lio/agora/base/internal/video/EglRenderer$FrameListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 716
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer$8;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 717
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer$8;->this$0:Lio/agora/base/internal/video/EglRenderer;

    invoke-static {v0}, Lio/agora/base/internal/video/EglRenderer;->access$1600(Lio/agora/base/internal/video/EglRenderer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 718
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 719
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/agora/base/internal/video/EglRenderer$FrameListenerAndParams;

    iget-object v1, v1, Lio/agora/base/internal/video/EglRenderer$FrameListenerAndParams;->listener:Lio/agora/base/internal/video/EglRenderer$FrameListener;

    iget-object v2, p0, Lio/agora/base/internal/video/EglRenderer$8;->val$listener:Lio/agora/base/internal/video/EglRenderer$FrameListener;

    if-ne v1, v2, :cond_0

    .line 720
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
