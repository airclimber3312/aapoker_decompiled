.class Lio/agora/base/internal/video/SurfaceTextureHelper$3$1;
.super Ljava/lang/Object;
.source "SurfaceTextureHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/internal/video/SurfaceTextureHelper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/agora/base/internal/video/SurfaceTextureHelper$3;


# direct methods
.method constructor <init>(Lio/agora/base/internal/video/SurfaceTextureHelper$3;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lio/agora/base/internal/video/SurfaceTextureHelper$3$1;->this$1:Lio/agora/base/internal/video/SurfaceTextureHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 146
    iget-object v0, p0, Lio/agora/base/internal/video/SurfaceTextureHelper$3$1;->this$1:Lio/agora/base/internal/video/SurfaceTextureHelper$3;

    iget-object v0, v0, Lio/agora/base/internal/video/SurfaceTextureHelper$3;->this$0:Lio/agora/base/internal/video/SurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/base/internal/video/SurfaceTextureHelper;->access$500(Lio/agora/base/internal/video/SurfaceTextureHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/agora/base/internal/video/SurfaceTextureHelper$3$1;->this$1:Lio/agora/base/internal/video/SurfaceTextureHelper$3;

    iget-object v0, v0, Lio/agora/base/internal/video/SurfaceTextureHelper$3;->this$0:Lio/agora/base/internal/video/SurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/base/internal/video/SurfaceTextureHelper;->access$600(Lio/agora/base/internal/video/SurfaceTextureHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/base/internal/video/SurfaceTextureHelper$3$1;->this$1:Lio/agora/base/internal/video/SurfaceTextureHelper$3;

    iget-object v0, v0, Lio/agora/base/internal/video/SurfaceTextureHelper$3;->this$0:Lio/agora/base/internal/video/SurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/base/internal/video/SurfaceTextureHelper;->access$700(Lio/agora/base/internal/video/SurfaceTextureHelper;)Lio/agora/base/internal/video/TextureBufferPool;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/base/internal/video/TextureBufferPool;->anyTextureInUse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lio/agora/base/internal/video/SurfaceTextureHelper$3$1;->this$1:Lio/agora/base/internal/video/SurfaceTextureHelper$3;

    iget-object v0, v0, Lio/agora/base/internal/video/SurfaceTextureHelper$3;->this$0:Lio/agora/base/internal/video/SurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/base/internal/video/SurfaceTextureHelper;->access$800(Lio/agora/base/internal/video/SurfaceTextureHelper;)V

    :cond_0
    return-void
.end method
