.class Lio/agora/base/internal/video/EglRenderer$7;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/internal/video/EglRenderer;->addFrameListener(Lio/agora/base/internal/video/EglRenderer$FrameListener;FLio/agora/base/internal/video/RendererCommon$GlDrawer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/base/internal/video/EglRenderer;

.field final synthetic val$applyFpsReduction:Z

.field final synthetic val$drawerParam:Lio/agora/base/internal/video/RendererCommon$GlDrawer;

.field final synthetic val$listener:Lio/agora/base/internal/video/EglRenderer$FrameListener;

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lio/agora/base/internal/video/EglRenderer;Lio/agora/base/internal/video/RendererCommon$GlDrawer;Lio/agora/base/internal/video/EglRenderer$FrameListener;FZ)V
    .locals 0

    .line 687
    iput-object p1, p0, Lio/agora/base/internal/video/EglRenderer$7;->this$0:Lio/agora/base/internal/video/EglRenderer;

    iput-object p2, p0, Lio/agora/base/internal/video/EglRenderer$7;->val$drawerParam:Lio/agora/base/internal/video/RendererCommon$GlDrawer;

    iput-object p3, p0, Lio/agora/base/internal/video/EglRenderer$7;->val$listener:Lio/agora/base/internal/video/EglRenderer$FrameListener;

    iput p4, p0, Lio/agora/base/internal/video/EglRenderer$7;->val$scale:F

    iput-boolean p5, p0, Lio/agora/base/internal/video/EglRenderer$7;->val$applyFpsReduction:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 690
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer$7;->val$drawerParam:Lio/agora/base/internal/video/RendererCommon$GlDrawer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer$7;->this$0:Lio/agora/base/internal/video/EglRenderer;

    invoke-static {v0}, Lio/agora/base/internal/video/EglRenderer;->access$1300(Lio/agora/base/internal/video/EglRenderer;)Lio/agora/base/internal/video/RendererCommon$GlDrawer;

    move-result-object v0

    .line 691
    :cond_0
    iget-object v1, p0, Lio/agora/base/internal/video/EglRenderer$7;->this$0:Lio/agora/base/internal/video/EglRenderer;

    invoke-static {v1}, Lio/agora/base/internal/video/EglRenderer;->access$1600(Lio/agora/base/internal/video/EglRenderer;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lio/agora/base/internal/video/EglRenderer$FrameListenerAndParams;

    iget-object v3, p0, Lio/agora/base/internal/video/EglRenderer$7;->val$listener:Lio/agora/base/internal/video/EglRenderer$FrameListener;

    iget v4, p0, Lio/agora/base/internal/video/EglRenderer$7;->val$scale:F

    iget-boolean v5, p0, Lio/agora/base/internal/video/EglRenderer$7;->val$applyFpsReduction:Z

    invoke-direct {v2, v3, v4, v0, v5}, Lio/agora/base/internal/video/EglRenderer$FrameListenerAndParams;-><init>(Lio/agora/base/internal/video/EglRenderer$FrameListener;FLio/agora/base/internal/video/RendererCommon$GlDrawer;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
