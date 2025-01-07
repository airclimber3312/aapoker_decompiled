.class Lio/agora/rtc2/extensions/MediaProjectionSource$DefaultCaptureFactory;
.super Ljava/lang/Object;
.source "MediaProjectionSource.java"

# interfaces
.implements Lio/agora/rtc2/extensions/MediaProjectionSource$CaptureFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/extensions/MediaProjectionSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultCaptureFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAudioCapture(IILandroid/media/projection/MediaProjection;Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioRecordErrorCallback;Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioFrameListener;)Lio/agora/rtc2/extensions/MediaProjectionMgr$IAudioCapture;
    .locals 7

    .line 111
    invoke-virtual {p0}, Lio/agora/rtc2/extensions/MediaProjectionSource$DefaultCaptureFactory;->isAudioCaptureSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 114
    :cond_0
    new-instance v6, Lio/agora/rtc2/extensions/AudioCapture;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lio/agora/rtc2/extensions/AudioCapture;-><init>(IILandroid/media/projection/MediaProjection;Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioRecordErrorCallback;Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioFrameListener;)V

    return-object v6
.end method

.method public createScreenCapture(IIIZZZLandroid/media/projection/MediaProjection;Lio/agora/base/internal/video/VideoSink;)Lio/agora/rtc2/extensions/MediaProjectionMgr$IScreenCapture;
    .locals 10

    .line 127
    invoke-virtual {p0}, Lio/agora/rtc2/extensions/MediaProjectionSource$DefaultCaptureFactory;->isScreenCaptureSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 130
    :cond_0
    new-instance v0, Lio/agora/rtc2/extensions/ScreenCapture;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lio/agora/rtc2/extensions/ScreenCapture;-><init>(IIIZZZLandroid/media/projection/MediaProjection;Lio/agora/base/internal/video/VideoSink;)V

    return-object v0
.end method

.method public isAudioCaptureSupported()Z
    .locals 2

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScreenCaptureSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
