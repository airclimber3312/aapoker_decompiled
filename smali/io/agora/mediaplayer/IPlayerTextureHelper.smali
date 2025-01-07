.class public interface abstract Lio/agora/mediaplayer/IPlayerTextureHelper;
.super Ljava/lang/Object;


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract getAvailableTextureInfo(I)Lio/agora/base/VideoFrame;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "waitTime"
        }
    .end annotation
.end method

.method public abstract getEglContextHandler()J
.end method

.method public abstract getFakeTextureInfo()Lio/agora/base/VideoFrame;
.end method

.method public abstract getRenderGlSurface()Landroid/view/Surface;
.end method

.method public abstract releaseRenderedTextureInfo(Lio/agora/base/VideoFrame;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation
.end method

.method public abstract resetTextureBufferQueue()V
.end method

.method public abstract setTextureSize(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "witdh",
            "height"
        }
    .end annotation
.end method
