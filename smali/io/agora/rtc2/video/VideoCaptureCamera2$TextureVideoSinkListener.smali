.class Lio/agora/rtc2/video/VideoCaptureCamera2$TextureVideoSinkListener;
.super Ljava/lang/Object;
.source "VideoCaptureCamera2.java"

# interfaces
.implements Lio/agora/base/internal/video/SurfaceTextureHelper$IVideoCapture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/video/VideoCaptureCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextureVideoSinkListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;


# direct methods
.method private constructor <init>(Lio/agora/rtc2/video/VideoCaptureCamera2;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$TextureVideoSinkListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/rtc2/video/VideoCaptureCamera2;Lio/agora/rtc2/video/VideoCaptureCamera2$1;)V
    .locals 0

    .line 476
    invoke-direct {p0, p1}, Lio/agora/rtc2/video/VideoCaptureCamera2$TextureVideoSinkListener;-><init>(Lio/agora/rtc2/video/VideoCaptureCamera2;)V

    return-void
.end method


# virtual methods
.method public onFrame(Lio/agora/base/VideoFrame;)V
    .locals 6

    .line 479
    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getBuffer()Lio/agora/base/VideoFrame$Buffer;

    move-result-object v0

    .line 480
    iget-object v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$TextureVideoSinkListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-boolean v1, v1, Lio/agora/rtc2/video/VideoCaptureCamera2;->mEnableTextureCopy:Z

    if-eqz v1, :cond_0

    .line 481
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$TextureVideoSinkListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-object v0, v0, Lio/agora/rtc2/video/VideoCaptureCamera2;->mSurfaceTextureHelper:Lio/agora/base/internal/video/ISurfaceTextureHelper;

    check-cast v0, Lio/agora/base/internal/video/SurfaceTextureHelper;

    .line 482
    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getBuffer()Lio/agora/base/VideoFrame$Buffer;

    move-result-object v1

    check-cast v1, Lio/agora/base/VideoFrame$TextureBuffer;

    invoke-virtual {v0, v1}, Lio/agora/base/internal/video/SurfaceTextureHelper;->textureCopy(Lio/agora/base/VideoFrame$TextureBuffer;)Lio/agora/base/VideoFrame$TextureBuffer;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/16 p1, 0x9

    .line 485
    invoke-virtual {p0, p1}, Lio/agora/rtc2/video/VideoCaptureCamera2$TextureVideoSinkListener;->onFrameDropped(I)V

    .line 486
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[HWS] TextureVideoSinkListener copy frame error"

    invoke-static {p1, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 491
    :cond_1
    new-instance v1, Lio/agora/base/VideoFrame;

    move-object v2, v0

    check-cast v2, Lio/agora/base/TextureBuffer;

    iget-object v3, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$TextureVideoSinkListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-boolean v3, v3, Lio/agora/rtc2/video/VideoCaptureCamera2;->mInvertDeviceOrientationReadings:Z

    xor-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$TextureVideoSinkListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget v4, v4, Lio/agora/rtc2/video/VideoCaptureCamera2;->mCameraNativeOrientation:I

    neg-int v4, v4

    .line 492
    invoke-static {v2, v3, v4}, Lio/agora/rtc2/video/VideoCapture;->createTextureBufferWithModifiedTransformMatrix(Lio/agora/base/TextureBuffer;ZI)Lio/agora/base/VideoFrame$TextureBuffer;

    move-result-object v2

    iget-object v3, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$TextureVideoSinkListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    .line 495
    invoke-virtual {v3}, Lio/agora/rtc2/video/VideoCaptureCamera2;->getCameraRotation()I

    move-result v3

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getTimestampNs()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lio/agora/base/VideoFrame;-><init>(Lio/agora/base/VideoFrame$Buffer;IJ)V

    .line 496
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$TextureVideoSinkListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-virtual {p1, v1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->attachPerFrameMetaInfos(Lio/agora/base/VideoFrame;)V

    .line 497
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$TextureVideoSinkListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-virtual {p1, v1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->onFrameCaptured(Lio/agora/base/VideoFrame;)V

    .line 498
    iget-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$TextureVideoSinkListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    iget-boolean p1, p1, Lio/agora/rtc2/video/VideoCaptureCamera2;->mEnableTextureCopy:Z

    if-eqz p1, :cond_2

    .line 501
    invoke-interface {v0}, Lio/agora/base/VideoFrame$Buffer;->release()V

    .line 503
    :cond_2
    invoke-virtual {v1}, Lio/agora/base/VideoFrame;->release()V

    return-void
.end method

.method public onFrameDropped(I)V
    .locals 1

    .line 508
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera2$TextureVideoSinkListener;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera2;

    invoke-static {v0, p1}, Lio/agora/rtc2/video/VideoCaptureCamera2;->access$1601(Lio/agora/rtc2/video/VideoCaptureCamera2;I)V

    return-void
.end method
