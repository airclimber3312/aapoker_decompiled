.class public Lio/agora/rtc2/extensions/MediaProjectionSource;
.super Ljava/lang/Object;
.source "MediaProjectionSource.java"

# interfaces
.implements Lio/agora/base/internal/video/VideoSink;
.implements Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioFrameListener;
.implements Lio/agora/rtc2/extensions/MediaProjectionMgr$RequestListener;
.implements Lio/agora/rtc2/extensions/MediaProjectionMgr$ConfigurationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc2/extensions/MediaProjectionSource$Callback;,
        Lio/agora/rtc2/extensions/MediaProjectionSource$MediaProjectionSourceError;,
        Lio/agora/rtc2/extensions/MediaProjectionSource$DefaultCaptureFactory;,
        Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;,
        Lio/agora/rtc2/extensions/MediaProjectionSource$AudioCaptureParameters;,
        Lio/agora/rtc2/extensions/MediaProjectionSource$CaptureFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaProjectionSource"

.field private static injectedFactory:Lio/agora/rtc2/extensions/MediaProjectionSource$CaptureFactory;


# instance fields
.field private audioCapture:Lio/agora/rtc2/extensions/MediaProjectionMgr$IAudioCapture;

.field private audioCaptureParameters:Lio/agora/rtc2/extensions/MediaProjectionSource$AudioCaptureParameters;

.field private final callback:Lio/agora/rtc2/extensions/MediaProjectionSource$Callback;

.field private final checker:Lio/agora/base/internal/ThreadUtils$ThreadChecker;

.field private final factory:Lio/agora/rtc2/extensions/MediaProjectionSource$CaptureFactory;

.field mediaProjectManager:Lio/agora/rtc2/extensions/MediaProjectionMgr;

.field private final objectLock:Ljava/lang/Object;

.field private requestedMediaProjection:Landroid/media/projection/MediaProjection;

.field private screeenCaptureParameters:Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;

.field private screenCapture:Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;

.field private virtualDisplayCallback:Landroid/media/projection/MediaProjection$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 96
    invoke-static {p1, p2}, Lio/agora/rtc2/extensions/MediaProjectionSource;->createCallback(J)Lio/agora/rtc2/extensions/MediaProjectionSource$Callback;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/agora/rtc2/extensions/MediaProjectionSource;-><init>(Lio/agora/rtc2/extensions/MediaProjectionSource$Callback;)V

    return-void
.end method

.method public constructor <init>(Lio/agora/rtc2/extensions/MediaProjectionSource$Callback;)V
    .locals 1

    .line 140
    invoke-static {}, Lio/agora/rtc2/extensions/MediaProjectionSource;->createDefaultCaptureFactory()Lio/agora/rtc2/extensions/MediaProjectionSource$CaptureFactory;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/agora/rtc2/extensions/MediaProjectionSource;-><init>(Lio/agora/rtc2/extensions/MediaProjectionSource$Callback;Lio/agora/rtc2/extensions/MediaProjectionSource$CaptureFactory;)V

    return-void
.end method

.method public constructor <init>(Lio/agora/rtc2/extensions/MediaProjectionSource$Callback;Lio/agora/rtc2/extensions/MediaProjectionSource$CaptureFactory;)V
    .locals 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->objectLock:Ljava/lang/Object;

    const-string v0, "MediaProjectionSource"

    const-string v1, "constructor()"

    .line 145
    invoke-static {v0, v1}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iput-object p1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->callback:Lio/agora/rtc2/extensions/MediaProjectionSource$Callback;

    .line 147
    sget-object p1, Lio/agora/rtc2/extensions/MediaProjectionSource;->injectedFactory:Lio/agora/rtc2/extensions/MediaProjectionSource$CaptureFactory;

    if-eqz p1, :cond_0

    .line 149
    iput-object p1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->factory:Lio/agora/rtc2/extensions/MediaProjectionSource$CaptureFactory;

    goto :goto_0

    .line 151
    :cond_0
    iput-object p2, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->factory:Lio/agora/rtc2/extensions/MediaProjectionSource$CaptureFactory;

    .line 153
    :goto_0
    new-instance p1, Lio/agora/base/internal/ThreadUtils$ThreadChecker;

    invoke-direct {p1}, Lio/agora/base/internal/ThreadUtils$ThreadChecker;-><init>()V

    iput-object p1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->checker:Lio/agora/base/internal/ThreadUtils$ThreadChecker;

    return-void
.end method

.method static synthetic access$000(JI)V
    .locals 0

    .line 19
    invoke-static {p0, p1, p2}, Lio/agora/rtc2/extensions/MediaProjectionSource;->nativeOnError(JI)V

    return-void
.end method

.method static synthetic access$100(JIIIJZLio/agora/base/internal/video/EglBase$Context;IZ[F)V
    .locals 0

    .line 19
    invoke-static/range {p0 .. p11}, Lio/agora/rtc2/extensions/MediaProjectionSource;->nativeOnFrameCaptured(JIIIJZLio/agora/base/internal/video/EglBase$Context;IZ[F)V

    return-void
.end method

.method static synthetic access$200(JIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIJ)V
    .locals 0

    .line 19
    invoke-static/range {p0 .. p12}, Lio/agora/rtc2/extensions/MediaProjectionSource;->nativeOnI420FrameAvailable(JIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIJ)V

    return-void
.end method

.method static synthetic access$300(JLjava/nio/ByteBuffer;)V
    .locals 0

    .line 19
    invoke-static {p0, p1, p2}, Lio/agora/rtc2/extensions/MediaProjectionSource;->nativeOnCacheBufferReady(JLjava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$400(JI)V
    .locals 0

    .line 19
    invoke-static {p0, p1, p2}, Lio/agora/rtc2/extensions/MediaProjectionSource;->nativeOnDataIsRecorded(JI)V

    return-void
.end method

.method static createCallback(J)Lio/agora/rtc2/extensions/MediaProjectionSource$Callback;
    .locals 1

    .line 410
    new-instance v0, Lio/agora/rtc2/extensions/MediaProjectionSource$3;

    invoke-direct {v0, p0, p1}, Lio/agora/rtc2/extensions/MediaProjectionSource$3;-><init>(J)V

    return-object v0
.end method

.method static createDefaultCaptureFactory()Lio/agora/rtc2/extensions/MediaProjectionSource$CaptureFactory;
    .locals 1

    .line 136
    new-instance v0, Lio/agora/rtc2/extensions/MediaProjectionSource$DefaultCaptureFactory;

    invoke-direct {v0}, Lio/agora/rtc2/extensions/MediaProjectionSource$DefaultCaptureFactory;-><init>()V

    return-object v0
.end method

.method private getMediaProjectManager()Lio/agora/rtc2/extensions/MediaProjectionMgr;
    .locals 2

    .line 159
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->objectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->mediaProjectManager:Lio/agora/rtc2/extensions/MediaProjectionMgr;

    if-nez v1, :cond_0

    .line 161
    new-instance v1, Lio/agora/rtc2/extensions/MediaProjectionMgr;

    invoke-direct {v1, p0, p0}, Lio/agora/rtc2/extensions/MediaProjectionMgr;-><init>(Lio/agora/rtc2/extensions/MediaProjectionMgr$RequestListener;Lio/agora/rtc2/extensions/MediaProjectionMgr$ConfigurationChangedListener;)V

    iput-object v1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->mediaProjectManager:Lio/agora/rtc2/extensions/MediaProjectionMgr;

    .line 163
    :cond_0
    iget-object v1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->mediaProjectManager:Lio/agora/rtc2/extensions/MediaProjectionMgr;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 164
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static logD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 485
    invoke-static {p0, p1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static logE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 493
    invoke-static {p0, p1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static logW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 489
    invoke-static {p0, p1}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static native nativeOnCacheBufferReady(JLjava/nio/ByteBuffer;)V
.end method

.method private static native nativeOnDataIsRecorded(JI)V
.end method

.method private static native nativeOnError(JI)V
.end method

.method private static native nativeOnFrameCaptured(JIIIJZLio/agora/base/internal/video/EglBase$Context;IZ[F)V
.end method

.method private static native nativeOnI420FrameAvailable(JIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIJ)V
.end method

.method public static setInjectedFactory(Lio/agora/rtc2/extensions/MediaProjectionSource$CaptureFactory;)V
    .locals 0

    .line 90
    sput-object p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->injectedFactory:Lio/agora/rtc2/extensions/MediaProjectionSource$CaptureFactory;

    return-void
.end method


# virtual methods
.method changeScreenCaptureFormat(II)V
    .locals 2

    .line 281
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->checker:Lio/agora/base/internal/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lio/agora/base/internal/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    if-lez p1, :cond_2

    if-gtz p2, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->objectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->screenCapture:Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;

    if-eqz v1, :cond_1

    .line 287
    invoke-interface {v1, p1, p2}, Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;->changeCaptureFormatAsync(II)V

    .line 289
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method changeScreenCaptureFrameRate(I)V
    .locals 2

    .line 271
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->checker:Lio/agora/base/internal/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lio/agora/base/internal/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 272
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->objectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->screenCapture:Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;

    if-eqz v1, :cond_0

    .line 274
    invoke-interface {v1, p1}, Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;->changeCaptureFrameRate(I)V

    .line 276
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAudioCapture()Lio/agora/rtc2/extensions/MediaProjectionMgr$IAudioCapture;
    .locals 1

    .line 211
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->audioCapture:Lio/agora/rtc2/extensions/MediaProjectionMgr$IAudioCapture;

    return-object v0
.end method

.method public getAudioCaptureParameters()Lio/agora/rtc2/extensions/MediaProjectionSource$AudioCaptureParameters;
    .locals 1

    .line 205
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->audioCaptureParameters:Lio/agora/rtc2/extensions/MediaProjectionSource$AudioCaptureParameters;

    return-object v0
.end method

.method public getRequestedMediaProjection()Landroid/media/projection/MediaProjection;
    .locals 1

    .line 199
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->requestedMediaProjection:Landroid/media/projection/MediaProjection;

    return-object v0
.end method

.method public getScreeenCaptureParameters()Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;
    .locals 1

    .line 217
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->screeenCaptureParameters:Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;

    return-object v0
.end method

.method public getScreenCapture()Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;
    .locals 1

    .line 223
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->screenCapture:Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;

    return-object v0
.end method

.method public onCacheBufferReady(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 461
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->callback:Lio/agora/rtc2/extensions/MediaProjectionSource$Callback;

    invoke-interface {v0, p1}, Lio/agora/rtc2/extensions/MediaProjectionSource$Callback;->onCacheBufferReady(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "MediaProjectionSource"

    const-string v1, "onConfigurationChanged()"

    .line 391
    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->objectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->screenCapture:Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;

    if-eqz v1, :cond_0

    .line 394
    invoke-interface {v1, p1}, Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;->changeConfigurationAsync(Landroid/content/res/Configuration;)V

    .line 396
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onDataIsRecorded(I)V
    .locals 1

    .line 467
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->callback:Lio/agora/rtc2/extensions/MediaProjectionSource$Callback;

    invoke-interface {v0, p1}, Lio/agora/rtc2/extensions/MediaProjectionSource$Callback;->onDataIsRecorded(I)V

    return-void
.end method

.method public onFrame(Lio/agora/base/VideoFrame;)V
    .locals 1

    .line 455
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->callback:Lio/agora/rtc2/extensions/MediaProjectionSource$Callback;

    invoke-interface {v0, p1}, Lio/agora/rtc2/extensions/MediaProjectionSource$Callback;->onFrame(Lio/agora/base/VideoFrame;)V

    return-void
.end method

.method public onProjectionResult(Landroid/media/projection/MediaProjection;)V
    .locals 11

    const-string v0, "MediaProjectionSource"

    const-string v1, "onRequestSuccess()"

    .line 348
    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->objectLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "MediaProjectionSource"

    const-string v1, "Failed to get media projection, user denied"

    .line 351
    invoke-static {p1, v1}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object p1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->callback:Lio/agora/rtc2/extensions/MediaProjectionSource$Callback;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lio/agora/rtc2/extensions/MediaProjectionSource$Callback;->onError(I)V

    .line 353
    monitor-exit v0

    return-void

    .line 355
    :cond_0
    iput-object p1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->requestedMediaProjection:Landroid/media/projection/MediaProjection;

    .line 356
    iget-object v1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->screeenCaptureParameters:Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;

    if-eqz v1, :cond_2

    .line 357
    iget-object v2, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->factory:Lio/agora/rtc2/extensions/MediaProjectionSource$CaptureFactory;

    iget v3, v1, Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;->width:I

    iget-object v1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->screeenCaptureParameters:Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;

    iget v4, v1, Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;->height:I

    iget-object v1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->screeenCaptureParameters:Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;

    iget v5, v1, Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;->frameRate:I

    iget-object v1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->screeenCaptureParameters:Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;

    iget-boolean v6, v1, Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;->frameCopy:Z

    iget-object v1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->screeenCaptureParameters:Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;

    iget-boolean v7, v1, Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;->smoothCapture:Z

    iget-object v1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->screeenCaptureParameters:Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;

    iget-boolean v8, v1, Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;->restartVirtualDisplay:Z

    move-object v9, p1

    move-object v10, p0

    invoke-interface/range {v2 .. v10}, Lio/agora/rtc2/extensions/MediaProjectionSource$CaptureFactory;->createScreenCapture(IIIZZZLandroid/media/projection/MediaProjection;Lio/agora/base/internal/video/VideoSink;)Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;

    move-result-object v1

    iput-object v1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->screenCapture:Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;

    if-eqz v1, :cond_2

    .line 362
    iget-object v1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->virtualDisplayCallback:Landroid/media/projection/MediaProjection$Callback;

    if-nez v1, :cond_1

    .line 367
    new-instance v1, Lio/agora/rtc2/extensions/MediaProjectionSource$2;

    invoke-direct {v1, p0}, Lio/agora/rtc2/extensions/MediaProjectionSource$2;-><init>(Lio/agora/rtc2/extensions/MediaProjectionSource;)V

    iput-object v1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->virtualDisplayCallback:Landroid/media/projection/MediaProjection$Callback;

    .line 374
    iget-object v2, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->requestedMediaProjection:Landroid/media/projection/MediaProjection;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    .line 376
    :cond_1
    iget-object v1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->screenCapture:Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;

    invoke-interface {v1}, Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;->startCaptureMaybeAsync()Z

    .line 379
    :cond_2
    iget-object v1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->audioCaptureParameters:Lio/agora/rtc2/extensions/MediaProjectionSource$AudioCaptureParameters;

    if-eqz v1, :cond_3

    .line 380
    iget-object v2, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->factory:Lio/agora/rtc2/extensions/MediaProjectionSource$CaptureFactory;

    iget v3, v1, Lio/agora/rtc2/extensions/MediaProjectionSource$AudioCaptureParameters;->channels:I

    iget-object v1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->audioCaptureParameters:Lio/agora/rtc2/extensions/MediaProjectionSource$AudioCaptureParameters;

    iget v4, v1, Lio/agora/rtc2/extensions/MediaProjectionSource$AudioCaptureParameters;->sampleRate:I

    const/4 v6, 0x0

    move-object v5, p1

    move-object v7, p0

    invoke-interface/range {v2 .. v7}, Lio/agora/rtc2/extensions/MediaProjectionSource$CaptureFactory;->createAudioCapture(IILandroid/media/projection/MediaProjection;Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioRecordErrorCallback;Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioFrameListener;)Lio/agora/rtc2/extensions/MediaProjectionMgr$IAudioCapture;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->audioCapture:Lio/agora/rtc2/extensions/MediaProjectionMgr$IAudioCapture;

    if-eqz p1, :cond_3

    .line 383
    invoke-interface {p1}, Lio/agora/rtc2/extensions/MediaProjectionMgr$IAudioCapture;->startRecording()Z

    .line 386
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method releaseMediaProjectionManager()V
    .locals 6

    const-string v0, "Exception when stopCaptureAndBlockUntilStopped: "

    .line 168
    iget-object v1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->objectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v2, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->audioCapture:Lio/agora/rtc2/extensions/MediaProjectionMgr$IAudioCapture;

    if-nez v2, :cond_4

    iget-object v2, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->screenCapture:Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;

    if-eqz v2, :cond_0

    goto :goto_2

    .line 172
    :cond_0
    iget-object v2, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->requestedMediaProjection:Landroid/media/projection/MediaProjection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 175
    :try_start_1
    iget-object v2, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->virtualDisplayCallback:Landroid/media/projection/MediaProjection$Callback;

    if-eqz v2, :cond_1

    .line 176
    iget-object v4, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->requestedMediaProjection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v4, v2}, Landroid/media/projection/MediaProjection;->unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V

    .line 177
    iput-object v3, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->virtualDisplayCallback:Landroid/media/projection/MediaProjection$Callback;

    .line 179
    :cond_1
    iget-object v2, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->requestedMediaProjection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v2}, Landroid/media/projection/MediaProjection;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    :try_start_2
    iput-object v3, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->virtualDisplayCallback:Landroid/media/projection/MediaProjection$Callback;

    .line 186
    :goto_0
    iput-object v3, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->requestedMediaProjection:Landroid/media/projection/MediaProjection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    const-string v4, "MediaProjectionSource"

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v4, v0}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 185
    :try_start_4
    iput-object v3, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->virtualDisplayCallback:Landroid/media/projection/MediaProjection$Callback;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v3, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->virtualDisplayCallback:Landroid/media/projection/MediaProjection$Callback;

    .line 186
    iput-object v3, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->requestedMediaProjection:Landroid/media/projection/MediaProjection;

    throw v0

    .line 189
    :cond_2
    :goto_1
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->mediaProjectManager:Lio/agora/rtc2/extensions/MediaProjectionMgr;

    if-eqz v0, :cond_3

    .line 190
    invoke-virtual {v0}, Lio/agora/rtc2/extensions/MediaProjectionMgr;->dispose()V

    .line 191
    iput-object v3, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->mediaProjectManager:Lio/agora/rtc2/extensions/MediaProjectionMgr;

    .line 193
    :cond_3
    monitor-exit v1

    return-void

    .line 170
    :cond_4
    :goto_2
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    .line 193
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method startAudioCapture(Lio/agora/rtc2/extensions/MediaProjectionSource$AudioCaptureParameters;)Z
    .locals 7

    const-string v0, "MediaProjectionSource"

    const-string v1, "startAudioCapture()"

    .line 308
    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->checker:Lio/agora/base/internal/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lio/agora/base/internal/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "MediaProjectionSource"

    const-string v1, "invalid parameter for audio capture"

    .line 311
    invoke-static {p1, v1}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 314
    :cond_0
    iput-object p1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->audioCaptureParameters:Lio/agora/rtc2/extensions/MediaProjectionSource$AudioCaptureParameters;

    .line 315
    iget-object p1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->factory:Lio/agora/rtc2/extensions/MediaProjectionSource$CaptureFactory;

    invoke-interface {p1}, Lio/agora/rtc2/extensions/MediaProjectionSource$CaptureFactory;->isAudioCaptureSupported()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 318
    :cond_1
    iget-object p1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->objectLock:Ljava/lang/Object;

    monitor-enter p1

    .line 319
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->requestedMediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_2

    .line 320
    iget-object v1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->factory:Lio/agora/rtc2/extensions/MediaProjectionSource$CaptureFactory;

    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->audioCaptureParameters:Lio/agora/rtc2/extensions/MediaProjectionSource$AudioCaptureParameters;

    iget v2, v0, Lio/agora/rtc2/extensions/MediaProjectionSource$AudioCaptureParameters;->channels:I

    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->audioCaptureParameters:Lio/agora/rtc2/extensions/MediaProjectionSource$AudioCaptureParameters;

    iget v3, v0, Lio/agora/rtc2/extensions/MediaProjectionSource$AudioCaptureParameters;->sampleRate:I

    iget-object v4, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->requestedMediaProjection:Landroid/media/projection/MediaProjection;

    const/4 v5, 0x0

    move-object v6, p0

    invoke-interface/range {v1 .. v6}, Lio/agora/rtc2/extensions/MediaProjectionSource$CaptureFactory;->createAudioCapture(IILandroid/media/projection/MediaProjection;Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioRecordErrorCallback;Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioFrameListener;)Lio/agora/rtc2/extensions/MediaProjectionMgr$IAudioCapture;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->audioCapture:Lio/agora/rtc2/extensions/MediaProjectionMgr$IAudioCapture;

    if-eqz v0, :cond_3

    .line 323
    invoke-interface {v0}, Lio/agora/rtc2/extensions/MediaProjectionMgr$IAudioCapture;->startRecording()Z

    goto :goto_0

    .line 326
    :cond_2
    invoke-direct {p0}, Lio/agora/rtc2/extensions/MediaProjectionSource;->getMediaProjectManager()Lio/agora/rtc2/extensions/MediaProjectionMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/rtc2/extensions/MediaProjectionMgr;->requestPermission()V

    .line 328
    :cond_3
    :goto_0
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startVideoCapture(Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;)Z
    .locals 10

    .line 228
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->checker:Lio/agora/base/internal/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lio/agora/base/internal/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const-string v0, "MediaProjectionSource"

    const-string v1, "startVideoCapture()"

    .line 229
    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "MediaProjectionSource"

    const-string v1, "invalid parameter for video capture"

    .line 231
    invoke-static {p1, v1}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 234
    :cond_0
    iput-object p1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->screeenCaptureParameters:Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;

    .line 235
    iget-object p1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->factory:Lio/agora/rtc2/extensions/MediaProjectionSource$CaptureFactory;

    invoke-interface {p1}, Lio/agora/rtc2/extensions/MediaProjectionSource$CaptureFactory;->isScreenCaptureSupported()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 238
    :cond_1
    iget-object p1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->objectLock:Ljava/lang/Object;

    monitor-enter p1

    .line 239
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->requestedMediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_3

    .line 240
    iget-object v1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->factory:Lio/agora/rtc2/extensions/MediaProjectionSource$CaptureFactory;

    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->screeenCaptureParameters:Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;

    iget v2, v0, Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;->width:I

    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->screeenCaptureParameters:Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;

    iget v3, v0, Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;->height:I

    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->screeenCaptureParameters:Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;

    iget v4, v0, Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;->frameRate:I

    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->screeenCaptureParameters:Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;

    iget-boolean v5, v0, Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;->frameCopy:Z

    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->screeenCaptureParameters:Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;

    iget-boolean v6, v0, Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;->smoothCapture:Z

    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->screeenCaptureParameters:Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;

    iget-boolean v7, v0, Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;->restartVirtualDisplay:Z

    iget-object v8, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->requestedMediaProjection:Landroid/media/projection/MediaProjection;

    move-object v9, p0

    invoke-interface/range {v1 .. v9}, Lio/agora/rtc2/extensions/MediaProjectionSource$CaptureFactory;->createScreenCapture(IIIZZZLandroid/media/projection/MediaProjection;Lio/agora/base/internal/video/VideoSink;)Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->screenCapture:Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;

    if-eqz v0, :cond_4

    .line 245
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->virtualDisplayCallback:Landroid/media/projection/MediaProjection$Callback;

    if-nez v0, :cond_2

    .line 250
    new-instance v0, Lio/agora/rtc2/extensions/MediaProjectionSource$1;

    invoke-direct {v0, p0}, Lio/agora/rtc2/extensions/MediaProjectionSource$1;-><init>(Lio/agora/rtc2/extensions/MediaProjectionSource;)V

    iput-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->virtualDisplayCallback:Landroid/media/projection/MediaProjection$Callback;

    .line 257
    iget-object v1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->requestedMediaProjection:Landroid/media/projection/MediaProjection;

    new-instance v2, Landroid/os/Handler;

    .line 258
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 257
    invoke-virtual {v1, v0, v2}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    .line 260
    :cond_2
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->screenCapture:Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;

    invoke-interface {v0}, Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;->startCaptureMaybeAsync()Z

    goto :goto_0

    .line 263
    :cond_3
    invoke-direct {p0}, Lio/agora/rtc2/extensions/MediaProjectionSource;->getMediaProjectManager()Lio/agora/rtc2/extensions/MediaProjectionMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/rtc2/extensions/MediaProjectionMgr;->requestPermission()V

    .line 265
    :cond_4
    :goto_0
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method stopAudioCapture()V
    .locals 3

    const-string v0, "MediaProjectionSource"

    const-string v1, "stopAudioCapture()"

    .line 334
    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->checker:Lio/agora/base/internal/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lio/agora/base/internal/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 336
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->objectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 337
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->audioCapture:Lio/agora/rtc2/extensions/MediaProjectionMgr$IAudioCapture;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 338
    invoke-interface {v1}, Lio/agora/rtc2/extensions/MediaProjectionMgr$IAudioCapture;->stopRecording()V

    .line 339
    iput-object v2, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->audioCapture:Lio/agora/rtc2/extensions/MediaProjectionMgr$IAudioCapture;

    .line 341
    :cond_0
    iput-object v2, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->audioCaptureParameters:Lio/agora/rtc2/extensions/MediaProjectionSource$AudioCaptureParameters;

    .line 342
    invoke-virtual {p0}, Lio/agora/rtc2/extensions/MediaProjectionSource;->releaseMediaProjectionManager()V

    .line 343
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method stopVideoCapture()V
    .locals 3

    const-string v0, "MediaProjectionSource"

    const-string v1, "stopVideoCapture()"

    .line 294
    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->objectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->screenCapture:Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 297
    invoke-interface {v1}, Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;->stopCaptureAndBlockUntilStopped()V

    .line 298
    iget-object v1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->screenCapture:Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;

    invoke-interface {v1}, Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;->dispose()V

    .line 299
    iput-object v2, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->screenCapture:Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;

    .line 301
    :cond_0
    iput-object v2, p0, Lio/agora/rtc2/extensions/MediaProjectionSource;->screeenCaptureParameters:Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;

    .line 302
    invoke-virtual {p0}, Lio/agora/rtc2/extensions/MediaProjectionSource;->releaseMediaProjectionManager()V

    .line 303
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
