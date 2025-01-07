.class Lio/agora/base/internal/video/VideoDecoderWrapper$1;
.super Ljava/lang/Object;
.source "VideoDecoderWrapper.java"

# interfaces
.implements Lio/agora/base/internal/video/VideoDecoder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/internal/video/VideoDecoderWrapper;->createDecoderCallback(J)Lio/agora/base/internal/video/VideoDecoder$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$nativeDecoder:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 23
    iput-wide p1, p0, Lio/agora/base/internal/video/VideoDecoderWrapper$1;->val$nativeDecoder:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDecodeBufferPrepared(J)V
    .locals 2

    .line 38
    iget-wide v0, p0, Lio/agora/base/internal/video/VideoDecoderWrapper$1;->val$nativeDecoder:J

    invoke-static {v0, v1, p1, p2}, Lio/agora/base/internal/video/VideoDecoderWrapper;->access$200(JJ)V

    return-void
.end method

.method public onDecodeReset()V
    .locals 2

    .line 33
    iget-wide v0, p0, Lio/agora/base/internal/video/VideoDecoderWrapper$1;->val$nativeDecoder:J

    invoke-static {v0, v1}, Lio/agora/base/internal/video/VideoDecoderWrapper;->access$100(J)V

    return-void
.end method

.method public onDecodedFrame(Lio/agora/base/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;IIILio/agora/base/internal/video/CodecSpecificInfo;Lio/agora/base/internal/video/FrameExtraInfo;)V
    .locals 11

    move-object v0, p0

    .line 27
    iget-wide v1, v0, Lio/agora/base/internal/video/VideoDecoderWrapper$1;->val$nativeDecoder:J

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v1 .. v10}, Lio/agora/base/internal/video/VideoDecoderWrapper;->access$000(JLio/agora/base/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;IIILio/agora/base/internal/video/CodecSpecificInfo;Lio/agora/base/internal/video/FrameExtraInfo;)V

    return-void
.end method
