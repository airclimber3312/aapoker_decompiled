.class public abstract Lio/agora/rtc2/video/VideoCapture;
.super Ljava/lang/Object;
.source "VideoCapture.java"

# interfaces
.implements Lio/agora/rtc2/video/IVideoCapture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc2/video/VideoCapture$FramerateRange;,
        Lio/agora/rtc2/video/VideoCapture$AndroidVideoCaptureFrameDropReason;,
        Lio/agora/rtc2/video/VideoCapture$AndroidVideoCaptureError;,
        Lio/agora/rtc2/video/VideoCapture$AndroidImageFormat;,
        Lio/agora/rtc2/video/VideoCapture$VideoCaptureTransportType;,
        Lio/agora/rtc2/video/VideoCapture$VideoCaptureApi;,
        Lio/agora/rtc2/video/VideoCapture$CAMERA_DIRECTION;,
        Lio/agora/rtc2/video/VideoCapture$AndroidFillLightMode;,
        Lio/agora/rtc2/video/VideoCapture$AndroidMeteringMode;,
        Lio/agora/rtc2/video/VideoCapture$VideoFacingMode;
    }
.end annotation


# static fields
.field public static final DEBUG_MODE:Z = false

.field public static final ERR_FAILED:I = 0x1

.field public static final ERR_INVALID_ARGUMENT:I = 0x2

.field public static final ERR_NOT_READY:I = 0x3

.field public static final ERR_NOT_SUPPORTED:I = 0x4

.field public static final ERR_OK:I = 0x0

.field private static final VIDEO_CAPTURER_THREAD_NAME:Ljava/lang/String; = "VideoCapturerThread"


# instance fields
.field protected mCameraNativeOrientation:I

.field protected mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

.field private mEventsCallback:Lio/agora/rtc2/video/IVideoCapture$Events;

.field private mInjector:Ljava/util/Observable;

.field protected mInvertDeviceOrientationReadings:Z

.field protected final mNativeVideoCaptureAndroid:J

.field protected mPQFirst:Z

.field protected mProxyThreadHandler:Landroid/os/Handler;

.field protected mSurfaceTextureHelper:Lio/agora/base/internal/video/ISurfaceTextureHelper;


# direct methods
.method constructor <init>(JLio/agora/base/internal/video/EglBase$Context;)V
    .locals 2

    const-string v0, "VideoCapturerThread"

    const/16 v1, 0x8

    .line 184
    invoke-static {v0, p3, v1}, Lio/agora/base/internal/video/SurfaceTextureHelper;->create(Ljava/lang/String;Lio/agora/base/internal/video/EglBase$Context;I)Lio/agora/base/internal/video/SurfaceTextureHelper;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lio/agora/rtc2/video/VideoCapture;-><init>(JLio/agora/base/internal/video/ISurfaceTextureHelper;)V

    return-void
.end method

.method constructor <init>(JLio/agora/base/internal/video/ISurfaceTextureHelper;)V
    .locals 1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lio/agora/rtc2/video/VideoCapture;->mPQFirst:Z

    .line 188
    iput-wide p1, p0, Lio/agora/rtc2/video/VideoCapture;->mNativeVideoCaptureAndroid:J

    .line 189
    iput-object p3, p0, Lio/agora/rtc2/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/base/internal/video/ISurfaceTextureHelper;

    .line 190
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "VideoCaptureCamera_ProxyThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 192
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lio/agora/rtc2/video/VideoCapture;->mProxyThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method static FindBestMatchedCapability(Ljava/util/List;Lio/agora/rtc2/video/VideoCaptureFormat;)Lio/agora/rtc2/video/VideoCaptureFormat;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/agora/rtc2/video/VideoCaptureFormat;",
            ">;",
            "Lio/agora/rtc2/video/VideoCaptureFormat;",
            ")",
            "Lio/agora/rtc2/video/VideoCaptureFormat;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    invoke-static {p0, p1}, Lio/agora/rtc2/video/VideoCapture;->nativeFindBestMatchedCapability(Ljava/util/List;Lio/agora/rtc2/video/VideoCaptureFormat;)Lio/agora/rtc2/video/VideoCaptureFormat;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static createTextureBufferWithModifiedTransformMatrix(Lio/agora/base/TextureBuffer;ZI)Lio/agora/base/VideoFrame$TextureBuffer;
    .locals 2

    .line 222
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 224
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    if-eqz p1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 226
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_0
    int-to-float p1, p2

    .line 228
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preRotate(F)Z

    const/high16 p1, -0x41000000    # -0.5f

    .line 229
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 233
    invoke-virtual {p0}, Lio/agora/base/TextureBuffer;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lio/agora/base/TextureBuffer;->getHeight()I

    move-result p2

    invoke-virtual {p0, v0, p1, p2}, Lio/agora/base/TextureBuffer;->applyTransformMatrix(Landroid/graphics/Matrix;II)Lio/agora/base/TextureBuffer;

    move-result-object p0

    return-object p0
.end method

.method static native nativeFindBestMatchedCapability(Ljava/util/List;Lio/agora/rtc2/video/VideoCaptureFormat;)Lio/agora/rtc2/video/VideoCaptureFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/agora/rtc2/video/VideoCaptureFormat;",
            ">;",
            "Lio/agora/rtc2/video/VideoCaptureFormat;",
            ")",
            "Lio/agora/rtc2/video/VideoCaptureFormat;"
        }
    .end annotation
.end method

.method private native nativeGetDisplayRotation(J)I
.end method

.method private native nativeOnAvailable(JI)V
.end method

.method private native nativeOnError(JILjava/lang/String;)V
.end method

.method private native nativeOnFrameCaptured(JIIIJLio/agora/base/VideoFrame$Buffer;Lio/agora/base/VideoFrameMetaInfo;)V
.end method

.method private native nativeOnFrameDropped(JI)V
.end method

.method private native nativeOnI420FrameAvailable(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIJ)V
.end method

.method private native nativeOnStarted(J)V
.end method


# virtual methods
.method public allocate(III)Z
    .locals 2

    .line 199
    new-instance v0, Lio/agora/rtc2/video/VideoCaptureFormat;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lio/agora/rtc2/video/VideoCaptureFormat;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lio/agora/rtc2/video/VideoCapture;->allocate(Lio/agora/rtc2/video/VideoCaptureFormat;)Z

    move-result p1

    return p1
.end method

.method public dispose()V
    .locals 2

    .line 204
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/base/internal/video/ISurfaceTextureHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 205
    invoke-interface {v0}, Lio/agora/base/internal/video/ISurfaceTextureHelper;->dispose()V

    .line 206
    iput-object v1, p0, Lio/agora/rtc2/video/VideoCapture;->mSurfaceTextureHelper:Lio/agora/base/internal/video/ISurfaceTextureHelper;

    .line 208
    :cond_0
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCapture;->mProxyThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCapture;->mProxyThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 211
    iput-object v1, p0, Lio/agora/rtc2/video/VideoCapture;->mProxyThreadHandler:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method protected final getCameraRotation()I
    .locals 2

    .line 238
    iget-boolean v0, p0, Lio/agora/rtc2/video/VideoCapture;->mInvertDeviceOrientationReadings:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/agora/rtc2/video/VideoCapture;->getDeviceRotation()I

    move-result v0

    rsub-int v0, v0, 0x168

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/agora/rtc2/video/VideoCapture;->getDeviceRotation()I

    move-result v0

    .line 239
    :goto_0
    iget v1, p0, Lio/agora/rtc2/video/VideoCapture;->mCameraNativeOrientation:I

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    return v1
.end method

.method public getCaptureFormat()Lio/agora/rtc2/video/VideoCaptureFormat;
    .locals 1

    .line 217
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCapture;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    return-object v0
.end method

.method protected final getDeviceRotation()I
    .locals 2

    .line 243
    invoke-virtual {p0}, Lio/agora/rtc2/video/VideoCapture;->getDisplayRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10e

    goto :goto_0

    :cond_1
    const/16 v0, 0xb4

    goto :goto_0

    :cond_2
    const/16 v0, 0x5a

    :goto_0
    return v0
.end method

.method getDisplayRotation()I
    .locals 5

    .line 350
    iget-wide v0, p0, Lio/agora/rtc2/video/VideoCapture;->mNativeVideoCaptureAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 351
    invoke-direct {p0, v0, v1}, Lio/agora/rtc2/video/VideoCapture;->nativeGetDisplayRotation(J)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method notifyInjector(Ljava/lang/Object;)V
    .locals 1

    .line 344
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCapture;->mInjector:Ljava/util/Observable;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method onAvailable(I)V
    .locals 5

    .line 335
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCapture;->mEventsCallback:Lio/agora/rtc2/video/IVideoCapture$Events;

    if-eqz v0, :cond_0

    .line 336
    invoke-interface {v0, p1}, Lio/agora/rtc2/video/IVideoCapture$Events;->onAvailable(I)V

    return-void

    .line 339
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc2/video/VideoCapture;->mNativeVideoCaptureAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 340
    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc2/video/VideoCapture;->nativeOnAvailable(JI)V

    :cond_1
    return-void
.end method

.method onError(ILjava/lang/String;)V
    .locals 5

    .line 326
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCapture;->mEventsCallback:Lio/agora/rtc2/video/IVideoCapture$Events;

    if-eqz v0, :cond_0

    .line 327
    invoke-interface {v0, p1, p2}, Lio/agora/rtc2/video/IVideoCapture$Events;->onError(ILjava/lang/String;)V

    return-void

    .line 330
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc2/video/VideoCapture;->mNativeVideoCaptureAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 331
    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc2/video/VideoCapture;->nativeOnError(JILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method onFrameCaptured(Lio/agora/base/VideoFrame;)V
    .locals 11

    .line 297
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCapture;->mEventsCallback:Lio/agora/rtc2/video/IVideoCapture$Events;

    if-eqz v0, :cond_0

    .line 298
    invoke-interface {v0, p1}, Lio/agora/rtc2/video/IVideoCapture$Events;->onFrameCaptured(Lio/agora/base/VideoFrame;)V

    return-void

    .line 301
    :cond_0
    iget-wide v2, p0, Lio/agora/rtc2/video/VideoCapture;->mNativeVideoCaptureAndroid:J

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getBuffer()Lio/agora/base/VideoFrame$Buffer;

    move-result-object v0

    invoke-interface {v0}, Lio/agora/base/VideoFrame$Buffer;->getWidth()I

    move-result v4

    .line 302
    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getBuffer()Lio/agora/base/VideoFrame$Buffer;

    move-result-object v0

    invoke-interface {v0}, Lio/agora/base/VideoFrame$Buffer;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getRotation()I

    move-result v6

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getTimestampNs()J

    move-result-wide v7

    .line 303
    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getBuffer()Lio/agora/base/VideoFrame$Buffer;

    move-result-object v9

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getMetaInfo()Lio/agora/base/VideoFrameMetaInfo;

    move-result-object v10

    move-object v1, p0

    .line 301
    invoke-direct/range {v1 .. v10}, Lio/agora/rtc2/video/VideoCapture;->nativeOnFrameCaptured(JIIIJLio/agora/base/VideoFrame$Buffer;Lio/agora/base/VideoFrameMetaInfo;)V

    return-void
.end method

.method onFrameDropped(I)V
    .locals 2

    .line 318
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCapture;->mEventsCallback:Lio/agora/rtc2/video/IVideoCapture$Events;

    if-eqz v0, :cond_0

    .line 319
    invoke-interface {v0, p1}, Lio/agora/rtc2/video/IVideoCapture$Events;->onFrameDropped(I)V

    return-void

    .line 322
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc2/video/VideoCapture;->mNativeVideoCaptureAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc2/video/VideoCapture;->nativeOnFrameDropped(JI)V

    return-void
.end method

.method onI420FrameAvailable(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIJ)V
    .locals 15

    move-object v14, p0

    .line 308
    iget-object v0, v14, Lio/agora/rtc2/video/VideoCapture;->mEventsCallback:Lio/agora/rtc2/video/IVideoCapture$Events;

    if-eqz v0, :cond_0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    .line 309
    invoke-interface/range {v0 .. v11}, Lio/agora/rtc2/video/IVideoCapture$Events;->onI420FrameAvailable(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIJ)V

    return-void

    .line 313
    :cond_0
    iget-wide v1, v14, Lio/agora/rtc2/video/VideoCapture;->mNativeVideoCaptureAndroid:J

    move-object v0, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-wide/from16 v12, p10

    invoke-direct/range {v0 .. v13}, Lio/agora/rtc2/video/VideoCapture;->nativeOnI420FrameAvailable(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIJ)V

    return-void
.end method

.method onStarted()V
    .locals 2

    .line 281
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCapture;->mEventsCallback:Lio/agora/rtc2/video/IVideoCapture$Events;

    if-eqz v0, :cond_0

    .line 282
    invoke-interface {v0}, Lio/agora/rtc2/video/IVideoCapture$Events;->onStarted()V

    return-void

    .line 285
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc2/video/VideoCapture;->mNativeVideoCaptureAndroid:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc2/video/VideoCapture;->nativeOnStarted(J)V

    return-void
.end method

.method public setEventsCallback(Lio/agora/rtc2/video/IVideoCapture$Events;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lio/agora/rtc2/video/VideoCapture;->mEventsCallback:Lio/agora/rtc2/video/IVideoCapture$Events;

    return-void
.end method

.method public setInjector(Ljava/util/Observable;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lio/agora/rtc2/video/VideoCapture;->mInjector:Ljava/util/Observable;

    return-void
.end method
