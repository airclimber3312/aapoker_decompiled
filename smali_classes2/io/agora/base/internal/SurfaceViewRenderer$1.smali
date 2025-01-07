.class Lio/agora/base/internal/SurfaceViewRenderer$1;
.super Ljava/lang/Object;
.source "SurfaceViewRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/internal/SurfaceViewRenderer;->onFrameResolutionChanged(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/base/internal/SurfaceViewRenderer;

.field final synthetic val$rotatedHeight:I

.field final synthetic val$rotatedWidth:I


# direct methods
.method constructor <init>(Lio/agora/base/internal/SurfaceViewRenderer;II)V
    .locals 0

    .line 287
    iput-object p1, p0, Lio/agora/base/internal/SurfaceViewRenderer$1;->this$0:Lio/agora/base/internal/SurfaceViewRenderer;

    iput p2, p0, Lio/agora/base/internal/SurfaceViewRenderer$1;->val$rotatedWidth:I

    iput p3, p0, Lio/agora/base/internal/SurfaceViewRenderer$1;->val$rotatedHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 290
    iget-object v0, p0, Lio/agora/base/internal/SurfaceViewRenderer$1;->this$0:Lio/agora/base/internal/SurfaceViewRenderer;

    iget v1, p0, Lio/agora/base/internal/SurfaceViewRenderer$1;->val$rotatedWidth:I

    invoke-static {v0, v1}, Lio/agora/base/internal/SurfaceViewRenderer;->access$002(Lio/agora/base/internal/SurfaceViewRenderer;I)I

    .line 291
    iget-object v0, p0, Lio/agora/base/internal/SurfaceViewRenderer$1;->this$0:Lio/agora/base/internal/SurfaceViewRenderer;

    iget v1, p0, Lio/agora/base/internal/SurfaceViewRenderer$1;->val$rotatedHeight:I

    invoke-static {v0, v1}, Lio/agora/base/internal/SurfaceViewRenderer;->access$102(Lio/agora/base/internal/SurfaceViewRenderer;I)I

    .line 292
    iget-object v0, p0, Lio/agora/base/internal/SurfaceViewRenderer$1;->this$0:Lio/agora/base/internal/SurfaceViewRenderer;

    invoke-static {v0}, Lio/agora/base/internal/SurfaceViewRenderer;->access$200(Lio/agora/base/internal/SurfaceViewRenderer;)V

    .line 293
    iget-object v0, p0, Lio/agora/base/internal/SurfaceViewRenderer$1;->this$0:Lio/agora/base/internal/SurfaceViewRenderer;

    invoke-virtual {v0}, Lio/agora/base/internal/SurfaceViewRenderer;->requestLayout()V

    return-void
.end method
