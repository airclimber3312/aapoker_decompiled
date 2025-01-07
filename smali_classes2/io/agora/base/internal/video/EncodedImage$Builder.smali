.class public Lio/agora/base/internal/video/EncodedImage$Builder;
.super Ljava/lang/Object;
.source "EncodedImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/video/EncodedImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private captureTimeNs:J

.field private completeFrame:Z

.field private encodedHeight:I

.field private encodedWidth:I

.field private frameType:Lio/agora/base/internal/video/EncodedImage$FrameType;

.field private qp:Ljava/lang/Integer;

.field private rotation:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/base/internal/video/EncodedImage$1;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lio/agora/base/internal/video/EncodedImage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public createEncodedImage()Lio/agora/base/internal/video/EncodedImage;
    .locals 12

    .line 136
    new-instance v11, Lio/agora/base/internal/video/EncodedImage;

    iget-object v1, p0, Lio/agora/base/internal/video/EncodedImage$Builder;->buffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lio/agora/base/internal/video/EncodedImage$Builder;->encodedWidth:I

    iget v3, p0, Lio/agora/base/internal/video/EncodedImage$Builder;->encodedHeight:I

    iget-wide v4, p0, Lio/agora/base/internal/video/EncodedImage$Builder;->captureTimeNs:J

    iget-object v6, p0, Lio/agora/base/internal/video/EncodedImage$Builder;->frameType:Lio/agora/base/internal/video/EncodedImage$FrameType;

    iget v7, p0, Lio/agora/base/internal/video/EncodedImage$Builder;->rotation:I

    iget-boolean v8, p0, Lio/agora/base/internal/video/EncodedImage$Builder;->completeFrame:Z

    iget-object v9, p0, Lio/agora/base/internal/video/EncodedImage$Builder;->qp:Ljava/lang/Integer;

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lio/agora/base/internal/video/EncodedImage;-><init>(Ljava/nio/ByteBuffer;IIJLio/agora/base/internal/video/EncodedImage$FrameType;IZLjava/lang/Integer;Lio/agora/base/internal/video/EncodedImage$1;)V

    return-object v11
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;)Lio/agora/base/internal/video/EncodedImage$Builder;
    .locals 0

    .line 90
    iput-object p1, p0, Lio/agora/base/internal/video/EncodedImage$Builder;->buffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public setCaptureTimeMs(J)Lio/agora/base/internal/video/EncodedImage$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/agora/base/internal/video/EncodedImage$Builder;->captureTimeNs:J

    return-object p0
.end method

.method public setCaptureTimeNs(J)Lio/agora/base/internal/video/EncodedImage$Builder;
    .locals 0

    .line 111
    iput-wide p1, p0, Lio/agora/base/internal/video/EncodedImage$Builder;->captureTimeNs:J

    return-object p0
.end method

.method public setCompleteFrame(Z)Lio/agora/base/internal/video/EncodedImage$Builder;
    .locals 0

    .line 126
    iput-boolean p1, p0, Lio/agora/base/internal/video/EncodedImage$Builder;->completeFrame:Z

    return-object p0
.end method

.method public setEncodedHeight(I)Lio/agora/base/internal/video/EncodedImage$Builder;
    .locals 0

    .line 100
    iput p1, p0, Lio/agora/base/internal/video/EncodedImage$Builder;->encodedHeight:I

    return-object p0
.end method

.method public setEncodedWidth(I)Lio/agora/base/internal/video/EncodedImage$Builder;
    .locals 0

    .line 95
    iput p1, p0, Lio/agora/base/internal/video/EncodedImage$Builder;->encodedWidth:I

    return-object p0
.end method

.method public setFrameType(Lio/agora/base/internal/video/EncodedImage$FrameType;)Lio/agora/base/internal/video/EncodedImage$Builder;
    .locals 0

    .line 116
    iput-object p1, p0, Lio/agora/base/internal/video/EncodedImage$Builder;->frameType:Lio/agora/base/internal/video/EncodedImage$FrameType;

    return-object p0
.end method

.method public setQp(Ljava/lang/Integer;)Lio/agora/base/internal/video/EncodedImage$Builder;
    .locals 0

    .line 131
    iput-object p1, p0, Lio/agora/base/internal/video/EncodedImage$Builder;->qp:Ljava/lang/Integer;

    return-object p0
.end method

.method public setRotation(I)Lio/agora/base/internal/video/EncodedImage$Builder;
    .locals 0

    .line 121
    iput p1, p0, Lio/agora/base/internal/video/EncodedImage$Builder;->rotation:I

    return-object p0
.end method
