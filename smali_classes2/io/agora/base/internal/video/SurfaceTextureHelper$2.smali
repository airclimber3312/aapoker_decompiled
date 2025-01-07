.class Lio/agora/base/internal/video/SurfaceTextureHelper$2;
.super Ljava/lang/Object;
.source "SurfaceTextureHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/video/SurfaceTextureHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/base/internal/video/SurfaceTextureHelper;


# direct methods
.method constructor <init>(Lio/agora/base/internal/video/SurfaceTextureHelper;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lio/agora/base/internal/video/SurfaceTextureHelper$2;->this$0:Lio/agora/base/internal/video/SurfaceTextureHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting listener to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/agora/base/internal/video/SurfaceTextureHelper$2;->this$0:Lio/agora/base/internal/video/SurfaceTextureHelper;

    invoke-static {v1}, Lio/agora/base/internal/video/SurfaceTextureHelper;->access$100(Lio/agora/base/internal/video/SurfaceTextureHelper;)Lio/agora/base/internal/video/VideoSink;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceTextureHelper"

    invoke-static {v1, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lio/agora/base/internal/video/SurfaceTextureHelper$2;->this$0:Lio/agora/base/internal/video/SurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/base/internal/video/SurfaceTextureHelper;->access$100(Lio/agora/base/internal/video/SurfaceTextureHelper;)Lio/agora/base/internal/video/VideoSink;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/base/internal/video/SurfaceTextureHelper;->access$202(Lio/agora/base/internal/video/SurfaceTextureHelper;Lio/agora/base/internal/video/VideoSink;)Lio/agora/base/internal/video/VideoSink;

    .line 107
    iget-object v0, p0, Lio/agora/base/internal/video/SurfaceTextureHelper$2;->this$0:Lio/agora/base/internal/video/SurfaceTextureHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/agora/base/internal/video/SurfaceTextureHelper;->access$102(Lio/agora/base/internal/video/SurfaceTextureHelper;Lio/agora/base/internal/video/VideoSink;)Lio/agora/base/internal/video/VideoSink;

    .line 109
    iget-object v0, p0, Lio/agora/base/internal/video/SurfaceTextureHelper$2;->this$0:Lio/agora/base/internal/video/SurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/base/internal/video/SurfaceTextureHelper;->access$300(Lio/agora/base/internal/video/SurfaceTextureHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lio/agora/base/internal/video/SurfaceTextureHelper$2;->this$0:Lio/agora/base/internal/video/SurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/base/internal/video/SurfaceTextureHelper;->access$400(Lio/agora/base/internal/video/SurfaceTextureHelper;)V

    .line 112
    iget-object v0, p0, Lio/agora/base/internal/video/SurfaceTextureHelper$2;->this$0:Lio/agora/base/internal/video/SurfaceTextureHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/agora/base/internal/video/SurfaceTextureHelper;->access$302(Lio/agora/base/internal/video/SurfaceTextureHelper;Z)Z

    :cond_0
    return-void
.end method
