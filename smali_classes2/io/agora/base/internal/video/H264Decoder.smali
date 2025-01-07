.class Lio/agora/base/internal/video/H264Decoder;
.super Lio/agora/base/internal/video/WrappedNativeVideoDecoder;
.source "H264Decoder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lio/agora/base/internal/video/WrappedNativeVideoDecoder;-><init>()V

    return-void
.end method

.method static native nativeCreateDecoder()J
.end method

.method static native nativeIsSupported()Z
.end method


# virtual methods
.method public createNativeVideoDecoder()J
    .locals 2

    .line 16
    invoke-static {}, Lio/agora/base/internal/video/H264Decoder;->nativeCreateDecoder()J

    move-result-wide v0

    return-wide v0
.end method
