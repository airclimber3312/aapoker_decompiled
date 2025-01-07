.class public Lio/agora/rtc2/extensions/ScreenCapture;
.super Ljava/lang/Object;
.source "ScreenCapture.java"

# interfaces
.implements Lio/agora/base/internal/video/VideoSink;
.implements Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;


# static fields
.field private static final DISPLAY_FLAGS:I = 0x3

.field private static final SCREEN_CAPTURER_THREAD_NAME:Ljava/lang/String; = "ScreenCapturerThread"

.field private static final TAG:Ljava/lang/String; = "ScreenCapture"

.field private static final VIRTUAL_DISPLAY_DPI:I = 0x190


# instance fields
.field private densityDpi:I

.field private enableFrameCopy:Z

.field private final frameRate:I

.field private volatile heightParameters:I

.field private volatile heightPixel:I

.field private volatile lastOrientation:Z

.field private final mediaProjection:Landroid/media/projection/MediaProjection;

.field private restartVirtualDisplay:Z

.field private final smoothCapture:Z

.field private surfaceTextureHelper:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

.field private videoListener:Lio/agora/base/internal/video/VideoSink;

.field private virtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field private virtualDisplayHeight:I

.field private virtualDisplayWidth:I

.field private final waitForDeviceClosedConditionVariable:Landroid/os/ConditionVariable;

.field private volatile widthParameters:I

.field private volatile widthPixel:I


# direct methods
.method public constructor <init>(IIIZZZLandroid/media/projection/MediaProjection;Lio/agora/base/internal/video/VideoSink;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->waitForDeviceClosedConditionVariable:Landroid/os/ConditionVariable;

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iput p1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthParameters:I

    .line 67
    iput p2, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightParameters:I

    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    invoke-static {}, Lio/agora/rtc2/extensions/MediaProjectionMgr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/agora/rtc2/extensions/ScreenCapture;->getScreenSizeInlcudingTopBottomBar(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 63
    aget v1, v0, v1

    iput v1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthParameters:I

    const/4 v1, 0x1

    .line 64
    aget v0, v0, v1

    iput v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightParameters:I

    .line 69
    :goto_1
    iput-object p7, p0, Lio/agora/rtc2/extensions/ScreenCapture;->mediaProjection:Landroid/media/projection/MediaProjection;

    .line 70
    iput-object p8, p0, Lio/agora/rtc2/extensions/ScreenCapture;->videoListener:Lio/agora/base/internal/video/VideoSink;

    .line 71
    invoke-direct {p0}, Lio/agora/rtc2/extensions/ScreenCapture;->getOrientation()Z

    move-result p7

    iput-boolean p7, p0, Lio/agora/rtc2/extensions/ScreenCapture;->lastOrientation:Z

    .line 72
    iput-boolean p4, p0, Lio/agora/rtc2/extensions/ScreenCapture;->enableFrameCopy:Z

    .line 73
    iput-boolean p6, p0, Lio/agora/rtc2/extensions/ScreenCapture;->restartVirtualDisplay:Z

    .line 74
    iput p3, p0, Lio/agora/rtc2/extensions/ScreenCapture;->frameRate:I

    .line 75
    iput-boolean p5, p0, Lio/agora/rtc2/extensions/ScreenCapture;->smoothCapture:Z

    .line 77
    invoke-static {}, Lio/agora/rtc2/gl/EglBaseProvider;->instance()Lio/agora/rtc2/gl/EglBaseProvider;

    move-result-object p4

    invoke-virtual {p4}, Lio/agora/rtc2/gl/EglBaseProvider;->getLocalEglBaseContext()Lio/agora/base/internal/video/EglBase$Context;

    move-result-object p4

    const-string p7, "ScreenCapturerThread"

    .line 76
    invoke-static {p7, p5, p4}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->create(Ljava/lang/String;ZLio/agora/base/internal/video/EglBase$Context;)Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    move-result-object p4

    iput-object p4, p0, Lio/agora/rtc2/extensions/ScreenCapture;->surfaceTextureHelper:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    .line 78
    invoke-virtual {p4, p3}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->setFrameRate(I)V

    .line 79
    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "ScreenCapture width: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p5, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthParameters:I

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ", height: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightParameters:I

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ", frame rate:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", enable frameCopy: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {p0}, Lio/agora/rtc2/extensions/ScreenCapture;->enableTextureCopy()Z

    move-result p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", restartVirtualDisplay: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ScreenCapture"

    .line 79
    invoke-static {p4, p3}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lio/agora/rtc2/extensions/ScreenCapture;->initDisplayMetrics()V

    .line 84
    iget p3, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthParameters:I

    iget p5, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightParameters:I

    mul-int p3, p3, p5

    iget p5, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthPixel:I

    iget p6, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightPixel:I

    mul-int p5, p5, p6

    if-le p3, p5, :cond_2

    .line 85
    iget p3, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthPixel:I

    iput p3, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthParameters:I

    .line 86
    iget p3, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightPixel:I

    iput p3, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightParameters:I

    .line 87
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "ScreenCapture warring, "

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " size unsupported."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lio/agora/rtc2/extensions/ScreenCapture;)I
    .locals 0

    .line 29
    iget p0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthParameters:I

    return p0
.end method

.method static synthetic access$100(Lio/agora/rtc2/extensions/ScreenCapture;)I
    .locals 0

    .line 29
    iget p0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightParameters:I

    return p0
.end method

.method static synthetic access$1000(Lio/agora/rtc2/extensions/ScreenCapture;)I
    .locals 0

    .line 29
    iget p0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->densityDpi:I

    return p0
.end method

.method static synthetic access$1100(Lio/agora/rtc2/extensions/ScreenCapture;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->smoothCapture:Z

    return p0
.end method

.method static synthetic access$1200(Lio/agora/rtc2/extensions/ScreenCapture;)I
    .locals 0

    .line 29
    iget p0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->frameRate:I

    return p0
.end method

.method static synthetic access$1300(Lio/agora/rtc2/extensions/ScreenCapture;Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lio/agora/rtc2/extensions/ScreenCapture;->createVirtualDisplay(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)V

    return-void
.end method

.method static synthetic access$200(Lio/agora/rtc2/extensions/ScreenCapture;)Z
    .locals 0

    .line 29
    invoke-direct {p0}, Lio/agora/rtc2/extensions/ScreenCapture;->getOrientation()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lio/agora/rtc2/extensions/ScreenCapture;)Lio/agora/base/internal/video/TimerSurfaceTextureHelper;
    .locals 0

    .line 29
    iget-object p0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->surfaceTextureHelper:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    return-object p0
.end method

.method static synthetic access$302(Lio/agora/rtc2/extensions/ScreenCapture;Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)Lio/agora/base/internal/video/TimerSurfaceTextureHelper;
    .locals 0

    .line 29
    iput-object p1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->surfaceTextureHelper:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    return-object p1
.end method

.method static synthetic access$400(Lio/agora/rtc2/extensions/ScreenCapture;)Landroid/hardware/display/VirtualDisplay;
    .locals 0

    .line 29
    iget-object p0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object p0
.end method

.method static synthetic access$402(Lio/agora/rtc2/extensions/ScreenCapture;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;
    .locals 0

    .line 29
    iput-object p1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object p1
.end method

.method static synthetic access$500(Lio/agora/rtc2/extensions/ScreenCapture;)Landroid/os/ConditionVariable;
    .locals 0

    .line 29
    iget-object p0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->waitForDeviceClosedConditionVariable:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static synthetic access$600(Lio/agora/rtc2/extensions/ScreenCapture;)Z
    .locals 0

    .line 29
    invoke-direct {p0}, Lio/agora/rtc2/extensions/ScreenCapture;->shouldRestartVirtualDisplay()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lio/agora/rtc2/extensions/ScreenCapture;)I
    .locals 0

    .line 29
    iget p0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->virtualDisplayWidth:I

    return p0
.end method

.method static synthetic access$800(Lio/agora/rtc2/extensions/ScreenCapture;)I
    .locals 0

    .line 29
    iget p0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->virtualDisplayHeight:I

    return p0
.end method

.method static synthetic access$900(Lio/agora/rtc2/extensions/ScreenCapture;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->lastOrientation:Z

    return p0
.end method

.method private createVirtualDisplay(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 311
    :cond_0
    iget v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->virtualDisplayWidth:I

    iget v1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->virtualDisplayHeight:I

    invoke-virtual {p1, v0, v1}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->setTextureSize(II)V

    .line 313
    :try_start_0
    iget v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->densityDpi:I

    if-nez v0, :cond_1

    const/16 v0, 0x190

    const/16 v5, 0x190

    goto :goto_0

    :cond_1
    move v5, v0

    .line 314
    :goto_0
    iget-object v1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->mediaProjection:Landroid/media/projection/MediaProjection;

    const-string v2, "WebRTC_ScreenCapture"

    iget v3, p0, Lio/agora/rtc2/extensions/ScreenCapture;->virtualDisplayWidth:I

    iget v4, p0, Lio/agora/rtc2/extensions/ScreenCapture;->virtualDisplayHeight:I

    const/4 v6, 0x3

    new-instance v7, Landroid/view/Surface;

    .line 315
    invoke-virtual {p1}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-direct {v7, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 314
    invoke-virtual/range {v1 .. v9}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 318
    iput-object v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid media projection: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScreenCapture"

    invoke-static {v0, p1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private enableTextureCopy()Z
    .locals 1

    .line 414
    iget-boolean v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->enableFrameCopy:Z

    return v0
.end method

.method private getOrientation()Z
    .locals 5

    .line 179
    invoke-direct {p0}, Lio/agora/rtc2/extensions/ScreenCapture;->getRotationByDM()I

    move-result v0

    if-gez v0, :cond_0

    .line 181
    invoke-direct {p0}, Lio/agora/rtc2/extensions/ScreenCapture;->getRotationByWM()I

    move-result v0

    :cond_0
    const/16 v1, 0xb4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x10e

    goto :goto_0

    :cond_2
    const/16 v0, 0xb4

    goto :goto_0

    :cond_3
    const/16 v0, 0x5a

    :goto_0
    if-eqz v0, :cond_4

    if-ne v0, v1, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    return v2
.end method

.method private getRotationByDM()I
    .locals 2

    .line 145
    invoke-static {}, Lio/agora/rtc2/extensions/MediaProjectionMgr;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 149
    :cond_0
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 153
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method private getRotationByWM()I
    .locals 2

    .line 161
    invoke-static {}, Lio/agora/rtc2/extensions/MediaProjectionMgr;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 165
    :cond_0
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 169
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method static getScreenSizeInlcudingTopBottomBar(Landroid/content/Context;)[I
    .locals 3

    const-string/jumbo v0, "window"

    .line 118
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 119
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 121
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 123
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 124
    iget p0, v0, Landroid/graphics/Point;->x:I

    .line 125
    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput v0, v1, p0

    return-object v1
.end method

.method private getVirtualDisplaySize()[I
    .locals 7

    .line 400
    iget v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthPixel:I

    iget v1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightPixel:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthParameters:I

    iget v1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightParameters:I

    if-lt v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthPixel:I

    iget v1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightPixel:I

    if-ge v0, v1, :cond_2

    iget v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthParameters:I

    iget v1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightParameters:I

    if-le v0, v1, :cond_2

    .line 402
    :cond_1
    iget v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthParameters:I

    iget v1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightParameters:I

    xor-int/2addr v0, v1

    iput v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthParameters:I

    .line 403
    iget v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthParameters:I

    iget v1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightParameters:I

    xor-int/2addr v0, v1

    iput v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightParameters:I

    .line 404
    iget v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthParameters:I

    iget v1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightParameters:I

    xor-int/2addr v0, v1

    iput v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthParameters:I

    .line 406
    :cond_2
    iget v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthParameters:I

    iget v1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightParameters:I

    mul-int v0, v0, v1

    .line 407
    iget v1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthPixel:I

    int-to-double v1, v1

    iget v3, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightPixel:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    int-to-double v3, v0

    mul-double v5, v3, v1

    .line 408
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v0, v5

    add-int/lit8 v0, v0, 0x3

    const/4 v5, 0x2

    shr-int/2addr v0, v5

    shl-int/2addr v0, v5

    div-double/2addr v3, v1

    .line 409
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x3

    shr-int/2addr v1, v5

    shl-int/2addr v1, v5

    new-array v2, v5, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    return-object v2
.end method

.method private initDisplayMetrics()V
    .locals 2

    .line 96
    invoke-static {}, Lio/agora/rtc2/extensions/MediaProjectionMgr;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 97
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 105
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 106
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthPixel:I

    .line 107
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightPixel:I

    .line 108
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->densityDpi:I

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initDisplayMetrics widthPixel: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthPixel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , heightPixel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightPixel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , oritation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-boolean v1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->lastOrientation:Z

    if-eqz v1, :cond_2

    const-string v1, "landscape"

    goto :goto_0

    :cond_2
    const-string v1, "portrait"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , densityDpi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenCapture"

    .line 109
    invoke-static {v1, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private shouldRestartVirtualDisplay()Z
    .locals 1

    .line 395
    iget-boolean v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->restartVirtualDisplay:Z

    return v0
.end method


# virtual methods
.method declared-synchronized changeCaptureFormat(IIZ)V
    .locals 4

    const-string v0, "changeCaptureFormat failure, "

    const-string v1, "changeCaptureFormat, "

    monitor-enter p0

    :try_start_0
    const-string v2, "ScreenCapture"

    .line 332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " orientation: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget v1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthParameters:I

    iget v2, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightParameters:I

    mul-int v1, v1, v2

    iget v2, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthPixel:I

    iget v3, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightPixel:I

    mul-int v2, v2, v3

    if-le v1, v2, :cond_0

    .line 335
    iget p3, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthPixel:I

    iput p3, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthParameters:I

    .line 336
    iget p3, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightPixel:I

    iput p3, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightParameters:I

    const-string p3, "ScreenCapture"

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " size unsupported."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    monitor-exit p0

    return-void

    .line 340
    :cond_0
    :try_start_1
    iput p1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthParameters:I

    .line 341
    iput p2, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightParameters:I

    .line 342
    iput-boolean p3, p0, Lio/agora/rtc2/extensions/ScreenCapture;->lastOrientation:Z

    .line 343
    iget-object p1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 345
    monitor-exit p0

    return-void

    .line 347
    :cond_1
    :try_start_2
    iget-object p1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->surfaceTextureHelper:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_2

    .line 348
    monitor-exit p0

    return-void

    .line 350
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lio/agora/rtc2/extensions/ScreenCapture;->getVirtualDisplaySize()[I

    move-result-object p1

    .line 352
    iget p2, p0, Lio/agora/rtc2/extensions/ScreenCapture;->virtualDisplayWidth:I

    const/4 p3, 0x0

    aget p3, p1, p3

    if-eq p2, p3, :cond_4

    iget p2, p0, Lio/agora/rtc2/extensions/ScreenCapture;->virtualDisplayHeight:I

    const/4 v0, 0x1

    aget p1, p1, v0

    if-ne p2, p1, :cond_3

    goto :goto_0

    .line 355
    :cond_3
    iput p3, p0, Lio/agora/rtc2/extensions/ScreenCapture;->virtualDisplayWidth:I

    .line 356
    iput p1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->virtualDisplayHeight:I

    .line 357
    iget-object p1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->surfaceTextureHelper:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-virtual {p1}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lio/agora/rtc2/extensions/ScreenCapture$4;

    invoke-direct {p2, p0}, Lio/agora/rtc2/extensions/ScreenCapture$4;-><init>(Lio/agora/rtc2/extensions/ScreenCapture;)V

    invoke-static {p1, p2}, Lio/agora/base/internal/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 392
    monitor-exit p0

    return-void

    .line 353
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public changeCaptureFormatAsync(II)V
    .locals 2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "changeCaptureFormatAsync width: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenCapture"

    invoke-static {v1, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p1, :cond_3

    if-gtz p2, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    iget v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthParameters:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightParameters:I

    if-ne p2, v0, :cond_1

    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->surfaceTextureHelper:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    if-nez v0, :cond_2

    return-void

    .line 242
    :cond_2
    invoke-virtual {v0}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/agora/rtc2/extensions/ScreenCapture$1;

    invoke-direct {v1, p0, p1, p2}, Lio/agora/rtc2/extensions/ScreenCapture$1;-><init>(Lio/agora/rtc2/extensions/ScreenCapture;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public changeCaptureFrameRate(I)V
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "changeCaptureFrameRate frameRate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable frameCopy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-direct {p0}, Lio/agora/rtc2/extensions/ScreenCapture;->enableTextureCopy()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenCapture"

    .line 221
    invoke-static {v1, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->surfaceTextureHelper:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    if-nez v0, :cond_0

    return-void

    .line 227
    :cond_0
    invoke-virtual {v0, p1}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->setFrameRate(I)V

    return-void
.end method

.method public changeConfigurationAsync(Landroid/content/res/Configuration;)V
    .locals 4

    .line 256
    iget-object v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->surfaceTextureHelper:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    invoke-direct {p0}, Lio/agora/rtc2/extensions/ScreenCapture;->getOrientation()Z

    move-result v0

    .line 261
    invoke-static {}, Lio/agora/rtc2/extensions/MediaProjectionMgr;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 262
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz v1, :cond_1

    .line 264
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 266
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 269
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onConfigurationChanged oritation: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " lastOritation: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lio/agora/rtc2/extensions/ScreenCapture;->lastOrientation:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " screenWidthDp: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " screenHeightDp: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " widthPixels: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " heightPixels: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ScreenCapture"

    invoke-static {v1, p1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget p1, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->densityDpi:I

    .line 273
    iget p1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthPixel:I

    if-ne p1, v3, :cond_2

    iget p1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightPixel:I

    if-eq p1, v3, :cond_3

    .line 274
    :cond_2
    iget p1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthPixel:I

    .line 275
    iget p1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightPixel:I

    .line 276
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "changeCaptureFormat, swap pixel by metrics: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lio/agora/rtc2/extensions/ScreenCapture;->widthPixel:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " x "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/agora/rtc2/extensions/ScreenCapture;->heightPixel:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object p1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->surfaceTextureHelper:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-virtual {p1}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lio/agora/rtc2/extensions/ScreenCapture$2;

    invoke-direct {v1, p0, v0}, Lio/agora/rtc2/extensions/ScreenCapture$2;-><init>(Lio/agora/rtc2/extensions/ScreenCapture;Z)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 419
    iget-object v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->surfaceTextureHelper:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->dispose()V

    const/4 v0, 0x0

    .line 421
    iput-object v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->surfaceTextureHelper:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    :cond_0
    return-void
.end method

.method public onFrame(Lio/agora/base/VideoFrame;)V
    .locals 5

    .line 427
    iget-object v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->videoListener:Lio/agora/base/internal/video/VideoSink;

    if-nez v0, :cond_0

    return-void

    .line 430
    :cond_0
    invoke-direct {p0}, Lio/agora/rtc2/extensions/ScreenCapture;->enableTextureCopy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 431
    iget-object v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->videoListener:Lio/agora/base/internal/video/VideoSink;

    invoke-interface {v0, p1}, Lio/agora/base/internal/video/VideoSink;->onFrame(Lio/agora/base/VideoFrame;)V

    goto :goto_1

    .line 434
    :cond_1
    iget-object v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->surfaceTextureHelper:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    if-eqz v0, :cond_2

    .line 436
    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getBuffer()Lio/agora/base/VideoFrame$Buffer;

    move-result-object v1

    check-cast v1, Lio/agora/base/VideoFrame$TextureBuffer;

    invoke-virtual {v0, v1}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->textureCopy(Lio/agora/base/VideoFrame$TextureBuffer;)Lio/agora/base/VideoFrame$TextureBuffer;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v1, "ScreenCapture"

    if-nez v0, :cond_3

    const-string p1, "Dropped texture buffer."

    .line 439
    invoke-static {v1, p1}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 442
    :cond_3
    invoke-interface {v0}, Lio/agora/base/VideoFrame$TextureBuffer;->getWidth()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Lio/agora/base/VideoFrame$TextureBuffer;->getHeight()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    .line 446
    :cond_4
    new-instance v1, Lio/agora/base/VideoFrame;

    .line 447
    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getRotation()I

    move-result v2

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getTimestampNs()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Lio/agora/base/VideoFrame;-><init>(Lio/agora/base/VideoFrame$Buffer;IJ)V

    .line 448
    iget-object p1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->videoListener:Lio/agora/base/internal/video/VideoSink;

    invoke-interface {p1, v1}, Lio/agora/base/internal/video/VideoSink;->onFrame(Lio/agora/base/VideoFrame;)V

    .line 449
    invoke-virtual {v1}, Lio/agora/base/VideoFrame;->release()V

    :goto_1
    return-void

    :cond_5
    :goto_2
    const-string p1, "Dropped texture buffer. "

    .line 443
    invoke-static {v1, p1}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startCaptureMaybeAsync()Z
    .locals 2

    const-string v0, "ScreenCapture"

    const-string v1, "startCaptureMaybeAsync()"

    .line 207
    invoke-static {v0, v1}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->surfaceTextureHelper:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 211
    :cond_0
    invoke-direct {p0}, Lio/agora/rtc2/extensions/ScreenCapture;->getVirtualDisplaySize()[I

    move-result-object v0

    .line 212
    aget v1, v0, v1

    iput v1, p0, Lio/agora/rtc2/extensions/ScreenCapture;->virtualDisplayWidth:I

    const/4 v1, 0x1

    .line 213
    aget v0, v0, v1

    iput v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->virtualDisplayHeight:I

    .line 214
    iget-object v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->surfaceTextureHelper:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-direct {p0, v0}, Lio/agora/rtc2/extensions/ScreenCapture;->createVirtualDisplay(Lio/agora/base/internal/video/TimerSurfaceTextureHelper;)V

    .line 215
    iget-object v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->surfaceTextureHelper:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    invoke-virtual {v0, p0}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->startListening(Lio/agora/base/internal/video/VideoSink;)V

    return v1
.end method

.method public stopCaptureAndBlockUntilStopped()V
    .locals 2

    const-string v0, "ScreenCapture"

    const-string v1, "stopCaptureAndBlockUntilStopped"

    .line 288
    invoke-static {v0, v1}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->surfaceTextureHelper:Lio/agora/base/internal/video/TimerSurfaceTextureHelper;

    if-nez v0, :cond_0

    return-void

    .line 292
    :cond_0
    invoke-virtual {v0}, Lio/agora/base/internal/video/TimerSurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/agora/rtc2/extensions/ScreenCapture$3;

    invoke-direct {v1, p0}, Lio/agora/rtc2/extensions/ScreenCapture$3;-><init>(Lio/agora/rtc2/extensions/ScreenCapture;)V

    invoke-static {v0, v1}, Lio/agora/base/internal/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 303
    iget-object v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->waitForDeviceClosedConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    const/4 v0, 0x0

    .line 304
    iput-object v0, p0, Lio/agora/rtc2/extensions/ScreenCapture;->videoListener:Lio/agora/base/internal/video/VideoSink;

    return-void
.end method
