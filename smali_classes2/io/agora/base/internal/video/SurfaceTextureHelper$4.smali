.class Lio/agora/base/internal/video/SurfaceTextureHelper$4;
.super Ljava/lang/Object;
.source "SurfaceTextureHelper.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/internal/video/SurfaceTextureHelper;-><init>(Ljava/lang/String;Lio/agora/base/internal/video/EglBase$Context;Landroid/os/Handler;I)V
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

    .line 155
    iput-object p1, p0, Lio/agora/base/internal/video/SurfaceTextureHelper$4;->this$0:Lio/agora/base/internal/video/SurfaceTextureHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 158
    iget-object p1, p0, Lio/agora/base/internal/video/SurfaceTextureHelper$4;->this$0:Lio/agora/base/internal/video/SurfaceTextureHelper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/agora/base/internal/video/SurfaceTextureHelper;->access$302(Lio/agora/base/internal/video/SurfaceTextureHelper;Z)Z

    .line 159
    iget-object p1, p0, Lio/agora/base/internal/video/SurfaceTextureHelper$4;->this$0:Lio/agora/base/internal/video/SurfaceTextureHelper;

    invoke-static {p1}, Lio/agora/base/internal/video/SurfaceTextureHelper;->access$1000(Lio/agora/base/internal/video/SurfaceTextureHelper;)V

    return-void
.end method
