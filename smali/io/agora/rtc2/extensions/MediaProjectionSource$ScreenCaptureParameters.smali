.class Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;
.super Ljava/lang/Object;
.source "MediaProjectionSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/extensions/MediaProjectionSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScreenCaptureParameters"
.end annotation


# instance fields
.field frameCopy:Z

.field frameRate:I

.field height:I

.field restartVirtualDisplay:Z

.field smoothCapture:Z

.field width:I


# direct methods
.method public constructor <init>(IIIZZZ)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;->width:I

    .line 76
    iput p2, p0, Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;->height:I

    .line 77
    iput p3, p0, Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;->frameRate:I

    .line 78
    iput-boolean p4, p0, Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;->frameCopy:Z

    .line 79
    iput-boolean p5, p0, Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;->smoothCapture:Z

    .line 80
    iput-boolean p6, p0, Lio/agora/rtc2/extensions/MediaProjectionSource$ScreenCaptureParameters;->restartVirtualDisplay:Z

    return-void
.end method
