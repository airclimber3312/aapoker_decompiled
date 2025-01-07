.class Lio/agora/base/internal/video/VideoFrameBlender$5$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/internal/video/VideoFrameBlender$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/agora/base/internal/video/VideoFrameBlender$5$1;


# direct methods
.method constructor <init>(Lio/agora/base/internal/video/VideoFrameBlender$5$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/base/internal/video/VideoFrameBlender$5$1$1;->this$2:Lio/agora/base/internal/video/VideoFrameBlender$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    iget-object v2, p0, Lio/agora/base/internal/video/VideoFrameBlender$5$1$1;->this$2:Lio/agora/base/internal/video/VideoFrameBlender$5$1;

    iget v2, v2, Lio/agora/base/internal/video/VideoFrameBlender$5$1;->val$new_texture_id:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method
