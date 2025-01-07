.class Lio/agora/base/internal/video/TimerSurfaceTextureHelper$8$1;
.super Ljava/lang/Object;
.source "TimerSurfaceTextureHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/internal/video/TimerSurfaceTextureHelper$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/agora/base/internal/video/TimerSurfaceTextureHelper$8;


# direct methods
.method constructor <init>(Lio/agora/base/internal/video/TimerSurfaceTextureHelper$8;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$8$1;->this$1:Lio/agora/base/internal/video/TimerSurfaceTextureHelper$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 271
    iget-object v0, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$8$1;->this$1:Lio/agora/base/internal/video/TimerSurfaceTextureHelper$8;

    iget-object v0, v0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$8;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->access$700(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$8$1;->this$1:Lio/agora/base/internal/video/TimerSurfaceTextureHelper$8;

    iget-object v0, v0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$8;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->access$600(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$8$1;->this$1:Lio/agora/base/internal/video/TimerSurfaceTextureHelper$8;

    iget-object v0, v0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$8;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->access$1400(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)Lio/agora/base/internal/video/TextureBufferPool;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/base/internal/video/TextureBufferPool;->anyTextureInUse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$8$1;->this$1:Lio/agora/base/internal/video/TimerSurfaceTextureHelper$8;

    iget-object v0, v0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$8;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-static {v0}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->access$1500(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)V

    :cond_0
    return-void
.end method
