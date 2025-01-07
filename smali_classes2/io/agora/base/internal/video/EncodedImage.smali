.class public Lio/agora/base/internal/video/EncodedImage;
.super Ljava/lang/Object;
.source "EncodedImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/base/internal/video/EncodedImage$Builder;,
        Lio/agora/base/internal/video/EncodedImage$FrameType;
    }
.end annotation


# instance fields
.field public final buffer:Ljava/nio/ByteBuffer;

.field public final captureTimeMs:J

.field public final captureTimeNs:J

.field public final completeFrame:Z

.field public final encodedHeight:I

.field public final encodedWidth:I

.field public final frameType:Lio/agora/base/internal/video/EncodedImage$FrameType;

.field public final qp:Ljava/lang/Integer;

.field public final rotation:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;IIJLio/agora/base/internal/video/EncodedImage$FrameType;IZLjava/lang/Integer;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lio/agora/base/internal/video/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    .line 63
    iput p2, p0, Lio/agora/base/internal/video/EncodedImage;->encodedWidth:I

    .line 64
    iput p3, p0, Lio/agora/base/internal/video/EncodedImage;->encodedHeight:I

    .line 65
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/agora/base/internal/video/EncodedImage;->captureTimeMs:J

    .line 66
    iput-wide p4, p0, Lio/agora/base/internal/video/EncodedImage;->captureTimeNs:J

    .line 67
    iput-object p6, p0, Lio/agora/base/internal/video/EncodedImage;->frameType:Lio/agora/base/internal/video/EncodedImage$FrameType;

    .line 68
    iput p7, p0, Lio/agora/base/internal/video/EncodedImage;->rotation:I

    .line 69
    iput-boolean p8, p0, Lio/agora/base/internal/video/EncodedImage;->completeFrame:Z

    .line 70
    iput-object p9, p0, Lio/agora/base/internal/video/EncodedImage;->qp:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;IIJLio/agora/base/internal/video/EncodedImage$FrameType;IZLjava/lang/Integer;Lio/agora/base/internal/video/EncodedImage$1;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p9}, Lio/agora/base/internal/video/EncodedImage;-><init>(Ljava/nio/ByteBuffer;IIJLio/agora/base/internal/video/EncodedImage$FrameType;IZLjava/lang/Integer;)V

    return-void
.end method

.method public static builder()Lio/agora/base/internal/video/EncodedImage$Builder;
    .locals 2

    .line 74
    new-instance v0, Lio/agora/base/internal/video/EncodedImage$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/agora/base/internal/video/EncodedImage$Builder;-><init>(Lio/agora/base/internal/video/EncodedImage$1;)V

    return-object v0
.end method
