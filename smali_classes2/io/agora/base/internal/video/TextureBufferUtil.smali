.class public Lio/agora/base/internal/video/TextureBufferUtil;
.super Ljava/lang/Object;
.source "TextureBufferUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/base/internal/video/TextureBufferUtil$BufferType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVideoFrameBufferType(Lio/agora/base/VideoFrame$Buffer;)I
    .locals 2

    .line 29
    instance-of v0, p0, Lio/agora/base/VideoFrame$I420Buffer;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 31
    :cond_0
    instance-of v0, p0, Lio/agora/base/NV12Buffer;

    if-eqz v0, :cond_1

    const/4 p0, 0x4

    return p0

    .line 33
    :cond_1
    instance-of v0, p0, Lio/agora/base/NV21Buffer;

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    .line 35
    :cond_2
    instance-of v0, p0, Lio/agora/base/VideoFrame$TextureBuffer;

    if-eqz v0, :cond_4

    .line 36
    check-cast p0, Lio/agora/base/VideoFrame$TextureBuffer;

    .line 37
    sget-object v0, Lio/agora/base/VideoFrame$TextureBuffer$Type;->OES:Lio/agora/base/VideoFrame$TextureBuffer$Type;

    invoke-interface {p0}, Lio/agora/base/VideoFrame$TextureBuffer;->getType()Lio/agora/base/VideoFrame$TextureBuffer$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/agora/base/VideoFrame$TextureBuffer$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x1

    return p0

    .line 39
    :cond_3
    sget-object v0, Lio/agora/base/VideoFrame$TextureBuffer$Type;->RGB:Lio/agora/base/VideoFrame$TextureBuffer$Type;

    invoke-interface {p0}, Lio/agora/base/VideoFrame$TextureBuffer;->getType()Lio/agora/base/VideoFrame$TextureBuffer$Type;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/agora/base/VideoFrame$TextureBuffer$Type;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x2

    return p0

    .line 42
    :cond_4
    instance-of v0, p0, Lio/agora/base/VideoFrame$I422Buffer;

    if-eqz v0, :cond_5

    const/4 p0, 0x5

    return p0

    .line 44
    :cond_5
    instance-of v0, p0, Lio/agora/base/VideoFrame$RgbaBuffer;

    if-eqz v0, :cond_6

    const/4 p0, 0x6

    return p0

    .line 46
    :cond_6
    instance-of p0, p0, Lio/agora/base/JavaI010Buffer;

    if-eqz p0, :cond_7

    const/4 p0, 0x7

    return p0

    .line 49
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unknown buffer type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
