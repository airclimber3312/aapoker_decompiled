.class Lio/agora/base/internal/video/TimerSurfaceTextureHelper$9;
.super Ljava/lang/Object;
.source "TimerSurfaceTextureHelper.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/internal/video/TimerSurfaceTextureHelper;-><init>(Ljava/lang/String;ZLio/agora/base/internal/video/EglBase$Context;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;


# direct methods
.method constructor <init>(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$9;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 281
    iget-object p1, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$9;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->access$302(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;Z)Z

    .line 282
    iget-object p1, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$9;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-static {p1}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->access$1600(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$9;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-static {p1}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->access$1700(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 283
    iget-object p1, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$9;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-static {p1}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->access$1100(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper$9;->this$0:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    iget-object v0, v0, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->systemGenerateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
