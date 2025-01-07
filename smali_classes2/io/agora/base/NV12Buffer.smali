.class public Lio/agora/base/NV12Buffer;
.super Ljava/lang/Object;
.source "NV12Buffer.java"

# interfaces
.implements Lio/agora/base/VideoFrame$Buffer;


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final height:I

.field private final refCountDelegate:Lio/agora/base/internal/RefCountDelegate;

.field private final sliceHeight:I

.field private final stride:I

.field private final width:I


# direct methods
.method public constructor <init>(IIIILjava/nio/ByteBuffer;Ljava/lang/Runnable;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iput p1, p0, Lio/agora/base/NV12Buffer;->width:I

    .line 33
    iput p2, p0, Lio/agora/base/NV12Buffer;->height:I

    .line 34
    iput p3, p0, Lio/agora/base/NV12Buffer;->stride:I

    .line 35
    iput p4, p0, Lio/agora/base/NV12Buffer;->sliceHeight:I

    .line 36
    iput-object p5, p0, Lio/agora/base/NV12Buffer;->buffer:Ljava/nio/ByteBuffer;

    .line 37
    new-instance p1, Lio/agora/base/internal/RefCountDelegate;

    invoke-direct {p1, p6}, Lio/agora/base/internal/RefCountDelegate;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lio/agora/base/NV12Buffer;->refCountDelegate:Lio/agora/base/internal/RefCountDelegate;

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Data buffers must be direct byte buffers."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native nativeCropAndScale(IIIIIILjava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)V
.end method


# virtual methods
.method public cropAndScale(IIIIII)Lio/agora/base/VideoFrame$Buffer;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 68
    invoke-static/range {p5 .. p6}, Lio/agora/base/JavaI420Buffer;->allocate(II)Lio/agora/base/JavaI420Buffer;

    move-result-object v18

    .line 69
    iget-object v7, v0, Lio/agora/base/NV12Buffer;->buffer:Ljava/nio/ByteBuffer;

    iget v8, v0, Lio/agora/base/NV12Buffer;->width:I

    iget v9, v0, Lio/agora/base/NV12Buffer;->height:I

    iget v10, v0, Lio/agora/base/NV12Buffer;->stride:I

    iget v11, v0, Lio/agora/base/NV12Buffer;->sliceHeight:I

    .line 70
    invoke-virtual/range {v18 .. v18}, Lio/agora/base/JavaI420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual/range {v18 .. v18}, Lio/agora/base/JavaI420Buffer;->getStrideY()I

    move-result v13

    .line 71
    invoke-virtual/range {v18 .. v18}, Lio/agora/base/JavaI420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual/range {v18 .. v18}, Lio/agora/base/JavaI420Buffer;->getStrideU()I

    move-result v15

    invoke-virtual/range {v18 .. v18}, Lio/agora/base/JavaI420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v16

    invoke-virtual/range {v18 .. v18}, Lio/agora/base/JavaI420Buffer;->getStrideV()I

    move-result v17

    .line 69
    invoke-static/range {v1 .. v17}, Lio/agora/base/NV12Buffer;->nativeCropAndScale(IIIIIILjava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)V

    return-object v18
.end method

.method public getHeight()I
    .locals 1

    .line 47
    iget v0, p0, Lio/agora/base/NV12Buffer;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 42
    iget v0, p0, Lio/agora/base/NV12Buffer;->width:I

    return v0
.end method

.method public mirror(I)Lio/agora/base/VideoFrame$Buffer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public release()V
    .locals 1

    .line 62
    iget-object v0, p0, Lio/agora/base/NV12Buffer;->refCountDelegate:Lio/agora/base/internal/RefCountDelegate;

    invoke-virtual {v0}, Lio/agora/base/internal/RefCountDelegate;->release()V

    return-void
.end method

.method public retain()V
    .locals 1

    .line 57
    iget-object v0, p0, Lio/agora/base/NV12Buffer;->refCountDelegate:Lio/agora/base/internal/RefCountDelegate;

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

    .line 52
    iget v5, p0, Lio/agora/base/NV12Buffer;->width:I

    iget v6, p0, Lio/agora/base/NV12Buffer;->height:I

    move-object v0, p0

    move v3, v5

    move v4, v6

    invoke-virtual/range {v0 .. v6}, Lio/agora/base/NV12Buffer;->cropAndScale(IIIIII)Lio/agora/base/VideoFrame$Buffer;

    move-result-object v0

    check-cast v0, Lio/agora/base/VideoFrame$I420Buffer;

    return-object v0
.end method

.method public transform(IIIIIII)Lio/agora/base/VideoFrame$Buffer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
