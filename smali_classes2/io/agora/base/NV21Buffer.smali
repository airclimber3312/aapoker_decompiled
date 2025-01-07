.class public Lio/agora/base/NV21Buffer;
.super Ljava/lang/Object;
.source "NV21Buffer.java"

# interfaces
.implements Lio/agora/base/VideoFrame$Buffer;


# instance fields
.field private final data:[B

.field private final height:I

.field private final refCountDelegate:Lio/agora/base/internal/RefCountDelegate;

.field private sliceHeight:I

.field private stride:I

.field private final width:I


# direct methods
.method public constructor <init>(IIIILjava/nio/ByteBuffer;Ljava/lang/Runnable;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iput p1, p0, Lio/agora/base/NV21Buffer;->width:I

    .line 48
    iput p2, p0, Lio/agora/base/NV21Buffer;->height:I

    .line 49
    iput p3, p0, Lio/agora/base/NV21Buffer;->stride:I

    .line 50
    iput p4, p0, Lio/agora/base/NV21Buffer;->sliceHeight:I

    .line 51
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lio/agora/base/NV21Buffer;->data:[B

    const/4 p2, 0x0

    .line 52
    array-length p3, p1

    invoke-virtual {p5, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 53
    new-instance p1, Lio/agora/base/internal/RefCountDelegate;

    invoke-direct {p1, p6}, Lio/agora/base/internal/RefCountDelegate;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lio/agora/base/NV21Buffer;->refCountDelegate:Lio/agora/base/internal/RefCountDelegate;

    return-void

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Data buffers must be direct byte buffers."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([BIILjava/lang/Runnable;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lio/agora/base/NV21Buffer;->data:[B

    .line 37
    iput p2, p0, Lio/agora/base/NV21Buffer;->width:I

    .line 38
    iput p3, p0, Lio/agora/base/NV21Buffer;->height:I

    .line 39
    new-instance p1, Lio/agora/base/internal/RefCountDelegate;

    invoke-direct {p1, p4}, Lio/agora/base/internal/RefCountDelegate;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lio/agora/base/NV21Buffer;->refCountDelegate:Lio/agora/base/internal/RefCountDelegate;

    return-void
.end method

.method private static native nativeCropAndScale(IIIIII[BIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)V
.end method


# virtual methods
.method public cropAndScale(IIIIII)Lio/agora/base/VideoFrame$Buffer;
    .locals 18

    move-object/from16 v0, p0

    .line 86
    invoke-static/range {p5 .. p6}, Lio/agora/base/JavaI420Buffer;->allocate(II)Lio/agora/base/JavaI420Buffer;

    move-result-object v1

    .line 87
    iget v2, v0, Lio/agora/base/NV21Buffer;->stride:I

    if-nez v2, :cond_0

    iget v2, v0, Lio/agora/base/NV21Buffer;->width:I

    :cond_0
    move v10, v2

    .line 88
    iget v2, v0, Lio/agora/base/NV21Buffer;->sliceHeight:I

    if-nez v2, :cond_1

    iget v2, v0, Lio/agora/base/NV21Buffer;->height:I

    :cond_1
    move v11, v2

    .line 89
    iget-object v9, v0, Lio/agora/base/NV21Buffer;->data:[B

    .line 90
    invoke-virtual {v1}, Lio/agora/base/JavaI420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v1}, Lio/agora/base/JavaI420Buffer;->getStrideY()I

    move-result v13

    invoke-virtual {v1}, Lio/agora/base/JavaI420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v1}, Lio/agora/base/JavaI420Buffer;->getStrideU()I

    move-result v15

    .line 91
    invoke-virtual {v1}, Lio/agora/base/JavaI420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v16

    invoke-virtual {v1}, Lio/agora/base/JavaI420Buffer;->getStrideV()I

    move-result v17

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 89
    invoke-static/range {v3 .. v17}, Lio/agora/base/NV21Buffer;->nativeCropAndScale(IIIIII[BIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)V

    return-object v1
.end method

.method public getHeight()I
    .locals 1

    .line 63
    iget v0, p0, Lio/agora/base/NV21Buffer;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 58
    iget v0, p0, Lio/agora/base/NV21Buffer;->width:I

    return v0
.end method

.method public mirror(I)Lio/agora/base/VideoFrame$Buffer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public release()V
    .locals 1

    .line 80
    iget-object v0, p0, Lio/agora/base/NV21Buffer;->refCountDelegate:Lio/agora/base/internal/RefCountDelegate;

    invoke-virtual {v0}, Lio/agora/base/internal/RefCountDelegate;->release()V

    return-void
.end method

.method public retain()V
    .locals 1

    .line 75
    iget-object v0, p0, Lio/agora/base/NV21Buffer;->refCountDelegate:Lio/agora/base/internal/RefCountDelegate;

    invoke-virtual {v0}, Lio/agora/base/internal/RefCountDelegate;->retain()V

    return-void
.end method

.method public rotate(I)Lio/agora/base/VideoFrame$Buffer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public toI420()Lio/agora/base/VideoFrame$I420Buffer;
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 69
    iget v5, p0, Lio/agora/base/NV21Buffer;->width:I

    iget v6, p0, Lio/agora/base/NV21Buffer;->height:I

    move-object v0, p0

    move v3, v5

    move v4, v6

    invoke-virtual/range {v0 .. v6}, Lio/agora/base/NV21Buffer;->cropAndScale(IIIIII)Lio/agora/base/VideoFrame$Buffer;

    move-result-object v0

    check-cast v0, Lio/agora/base/VideoFrame$I420Buffer;

    return-object v0
.end method

.method public transform(IIIIIII)Lio/agora/base/VideoFrame$Buffer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
