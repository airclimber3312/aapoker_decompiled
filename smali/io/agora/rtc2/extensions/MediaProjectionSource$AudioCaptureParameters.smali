.class Lio/agora/rtc2/extensions/MediaProjectionSource$AudioCaptureParameters;
.super Ljava/lang/Object;
.source "MediaProjectionSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/extensions/MediaProjectionSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AudioCaptureParameters"
.end annotation


# instance fields
.field channels:I

.field sampleRate:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lio/agora/rtc2/extensions/MediaProjectionSource$AudioCaptureParameters;->channels:I

    .line 60
    iput p2, p0, Lio/agora/rtc2/extensions/MediaProjectionSource$AudioCaptureParameters;->sampleRate:I

    return-void
.end method
