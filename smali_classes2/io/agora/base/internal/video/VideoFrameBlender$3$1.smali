.class Lio/agora/base/internal/video/VideoFrameBlender$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/internal/video/VideoFrameBlender$3;->call()Lio/agora/base/VideoFrame$Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/agora/base/internal/video/VideoFrameBlender$3;


# direct methods
.method constructor <init>(Lio/agora/base/internal/video/VideoFrameBlender$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/base/internal/video/VideoFrameBlender$3$1;->this$1:Lio/agora/base/internal/video/VideoFrameBlender$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender$3$1;->this$1:Lio/agora/base/internal/video/VideoFrameBlender$3;

    iget-object v0, v0, Lio/agora/base/internal/video/VideoFrameBlender$3;->this$0:Lio/agora/base/internal/video/VideoFrameBlender;

    invoke-static {v0}, Lio/agora/base/internal/video/VideoFrameBlender;->access$1200(Lio/agora/base/internal/video/VideoFrameBlender;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/agora/base/internal/video/VideoFrameBlender$3$1$1;

    invoke-direct {v1, p0}, Lio/agora/base/internal/video/VideoFrameBlender$3$1$1;-><init>(Lio/agora/base/internal/video/VideoFrameBlender$3$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
