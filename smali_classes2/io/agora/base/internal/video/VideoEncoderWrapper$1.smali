.class Lio/agora/base/internal/video/VideoEncoderWrapper$1;
.super Ljava/lang/Object;
.source "VideoEncoderWrapper.java"

# interfaces
.implements Lio/agora/base/internal/video/VideoEncoder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/internal/video/VideoEncoderWrapper;->createEncoderCallback(J)Lio/agora/base/internal/video/VideoEncoder$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$nativeEncoder:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 43
    iput-wide p1, p0, Lio/agora/base/internal/video/VideoEncoderWrapper$1;->val$nativeEncoder:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncodeBufferPrepared(J)V
    .locals 2

    .line 60
    iget-wide v0, p0, Lio/agora/base/internal/video/VideoEncoderWrapper$1;->val$nativeEncoder:J

    invoke-static {v0, v1, p1, p2}, Lio/agora/base/internal/video/VideoEncoderWrapper;->access$200(JJ)V

    return-void
.end method

.method public onEncodeReset()V
    .locals 2

    .line 55
    iget-wide v0, p0, Lio/agora/base/internal/video/VideoEncoderWrapper$1;->val$nativeEncoder:J

    invoke-static {v0, v1}, Lio/agora/base/internal/video/VideoEncoderWrapper;->access$100(J)V

    return-void
.end method

.method public onEncodedFrame(Lio/agora/base/internal/video/EncodedImage;IIIIILio/agora/base/internal/video/CodecSpecificInfo;)V
    .locals 18

    move-object/from16 v0, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move-object/from16 v17, p7

    move-object/from16 v11, p0

    .line 48
    iget-wide v1, v11, Lio/agora/base/internal/video/VideoEncoderWrapper$1;->val$nativeEncoder:J

    iget-object v3, v0, Lio/agora/base/internal/video/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    iget v4, v0, Lio/agora/base/internal/video/EncodedImage;->encodedWidth:I

    iget v5, v0, Lio/agora/base/internal/video/EncodedImage;->encodedHeight:I

    iget-wide v6, v0, Lio/agora/base/internal/video/EncodedImage;->captureTimeNs:J

    iget-object v8, v0, Lio/agora/base/internal/video/EncodedImage;->frameType:Lio/agora/base/internal/video/EncodedImage$FrameType;

    .line 49
    invoke-virtual {v8}, Lio/agora/base/internal/video/EncodedImage$FrameType;->getNative()I

    move-result v8

    iget v9, v0, Lio/agora/base/internal/video/EncodedImage;->rotation:I

    iget-boolean v10, v0, Lio/agora/base/internal/video/EncodedImage;->completeFrame:Z

    iget-object v0, v0, Lio/agora/base/internal/video/EncodedImage;->qp:Ljava/lang/Integer;

    move-object v11, v0

    .line 48
    invoke-static/range {v1 .. v17}, Lio/agora/base/internal/video/VideoEncoderWrapper;->access$000(JLjava/nio/ByteBuffer;IIJIIZLjava/lang/Integer;IIIIILio/agora/base/internal/video/CodecSpecificInfo;)V

    return-void
.end method
