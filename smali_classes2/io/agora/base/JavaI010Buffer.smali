.class public Lio/agora/base/JavaI010Buffer;
.super Ljava/lang/Object;
.source "JavaI010Buffer.java"

# interfaces
.implements Lio/agora/base/VideoFrame$I420Buffer;


# static fields
.field private static final BYTE_PER_CHANNEL:I = 0x2


# instance fields
.field private final dataU:Ljava/nio/ByteBuffer;

.field private final dataV:Ljava/nio/ByteBuffer;

.field private final dataY:Ljava/nio/ByteBuffer;

.field private final height:I

.field private final refCountDelegate:Lio/agora/base/internal/RefCountDelegate;

.field private final strideU:I

.field private final strideV:I

.field private final strideY:I

.field private final width:I


# direct methods
.method public constructor <init>(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lio/agora/base/JavaI010Buffer;->width:I

    .line 35
    iput p2, p0, Lio/agora/base/JavaI010Buffer;->height:I

    .line 36
    iput p4, p0, Lio/agora/base/JavaI010Buffer;->strideY:I

    .line 37
    iput p6, p0, Lio/agora/base/JavaI010Buffer;->strideU:I

    .line 38
    iput p8, p0, Lio/agora/base/JavaI010Buffer;->strideV:I

    .line 39
    iput-object p3, p0, Lio/agora/base/JavaI010Buffer;->dataY:Ljava/nio/ByteBuffer;

    .line 40
    iput-object p5, p0, Lio/agora/base/JavaI010Buffer;->dataU:Ljava/nio/ByteBuffer;

    .line 41
    iput-object p7, p0, Lio/agora/base/JavaI010Buffer;->dataV:Ljava/nio/ByteBuffer;

    .line 42
    new-instance p1, Lio/agora/base/internal/RefCountDelegate;

    invoke-direct {p1, p9}, Lio/agora/base/internal/RefCountDelegate;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lio/agora/base/JavaI010Buffer;->refCountDelegate:Lio/agora/base/internal/RefCountDelegate;

    return-void
.end method

.method public static allocate(II)Lio/agora/base/JavaI010Buffer;
    .locals 13

    add-int/lit8 v0, p1, 0x1

    .line 87
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, p0, 0x1

    .line 88
    div-int/lit8 v10, v1, 0x2

    mul-int v1, p0, p1

    mul-int/lit8 v2, v1, 0x2

    const/4 v3, 0x0

    add-int/2addr v2, v3

    mul-int v4, v10, v0

    mul-int/lit8 v4, v4, 0x2

    add-int v5, v2, v4

    mul-int/lit8 v6, v10, 0x2

    mul-int v6, v6, v0

    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x2

    .line 93
    invoke-static {v1}, Lio/agora/base/internal/JniCommon;->nativeAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 97
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 98
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 101
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 102
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 104
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v5, v4

    .line 105
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 106
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 108
    new-instance v12, Lio/agora/base/JavaI010Buffer;

    new-instance v11, Lio/agora/base/JavaI010Buffer$1;

    invoke-direct {v11, v0}, Lio/agora/base/JavaI010Buffer$1;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v2, v12

    move v3, p0

    move v4, p1

    move-object v5, v1

    move v6, p0

    move v8, v10

    invoke-direct/range {v2 .. v11}, Lio/agora/base/JavaI010Buffer;-><init>(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)V

    return-object v12
.end method

.method private static checkCapacity(Ljava/nio/ByteBuffer;III)V
    .locals 1

    add-int/lit8 p2, p2, -0x1

    mul-int p3, p3, p2

    add-int/2addr p3, p1

    mul-int/lit8 p3, p3, 0x2

    .line 48
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    if-lt p1, p3, :cond_0

    return-void

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "I010 Buffer must be at least "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes, but was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "in i010"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static i010BufferToI420(Lio/agora/base/JavaI010Buffer;)Lio/agora/base/VideoFrame$I420Buffer;
    .locals 18

    move-object/from16 v0, p0

    .line 203
    iget v1, v0, Lio/agora/base/JavaI010Buffer;->width:I

    iget v2, v0, Lio/agora/base/JavaI010Buffer;->height:I

    invoke-static {v1, v2}, Lio/agora/base/JavaI420Buffer;->allocate(II)Lio/agora/base/JavaI420Buffer;

    move-result-object v1

    .line 204
    invoke-virtual/range {p0 .. p0}, Lio/agora/base/JavaI010Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lio/agora/base/JavaI010Buffer;->getStrideY()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lio/agora/base/JavaI010Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lio/agora/base/JavaI010Buffer;->getStrideU()I

    move-result v5

    .line 205
    invoke-virtual/range {p0 .. p0}, Lio/agora/base/JavaI010Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lio/agora/base/JavaI010Buffer;->getStrideV()I

    move-result v7

    iget v8, v0, Lio/agora/base/JavaI010Buffer;->width:I

    iget v9, v0, Lio/agora/base/JavaI010Buffer;->height:I

    invoke-interface {v1}, Lio/agora/base/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 206
    invoke-interface {v1}, Lio/agora/base/VideoFrame$I420Buffer;->getStrideY()I

    move-result v11

    invoke-interface {v1}, Lio/agora/base/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-interface {v1}, Lio/agora/base/VideoFrame$I420Buffer;->getStrideU()I

    move-result v13

    invoke-interface {v1}, Lio/agora/base/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 207
    invoke-interface {v1}, Lio/agora/base/VideoFrame$I420Buffer;->getStrideV()I

    move-result v15

    invoke-interface {v1}, Lio/agora/base/VideoFrame$I420Buffer;->getWidth()I

    move-result v16

    invoke-interface {v1}, Lio/agora/base/VideoFrame$I420Buffer;->getHeight()I

    move-result v17

    .line 204
    invoke-static/range {v2 .. v17}, Lio/agora/base/JavaI010Buffer;->nativeI010toI420(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    return-object v1
.end method

.method private static native nativeI010toI420(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V
.end method

.method public static wrap(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)Lio/agora/base/JavaI010Buffer;
    .locals 11

    move v1, p0

    move v2, p1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    if-eqz p6, :cond_1

    .line 60
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    .line 64
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v2, 0x1

    .line 65
    div-int/lit8 v3, v3, 0x2

    .line 68
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 69
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 70
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    move v6, p3

    .line 71
    invoke-static {v4, p0, p1, p3}, Lio/agora/base/JavaI010Buffer;->checkCapacity(Ljava/nio/ByteBuffer;III)V

    move/from16 v8, p5

    .line 72
    invoke-static {v5, v0, v3, v8}, Lio/agora/base/JavaI010Buffer;->checkCapacity(Ljava/nio/ByteBuffer;III)V

    move/from16 v9, p7

    .line 73
    invoke-static {v7, v0, v3, v9}, Lio/agora/base/JavaI010Buffer;->checkCapacity(Ljava/nio/ByteBuffer;III)V

    .line 75
    new-instance v10, Lio/agora/base/JavaI010Buffer;

    move-object v0, v10

    move v1, p0

    move v2, p1

    move-object v3, v4

    move v4, p3

    move/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lio/agora/base/JavaI010Buffer;-><init>(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)V

    return-object v10

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data i010 buffers must be direct byte buffers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data i010 buffers cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cropAndScale(IIIIII)Lio/agora/base/VideoFrame$Buffer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDataU()Ljava/nio/ByteBuffer;
    .locals 1

    .line 129
    iget-object v0, p0, Lio/agora/base/JavaI010Buffer;->dataU:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getDataV()Ljava/nio/ByteBuffer;
    .locals 1

    .line 124
    iget-object v0, p0, Lio/agora/base/JavaI010Buffer;->dataV:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getDataY()Ljava/nio/ByteBuffer;
    .locals 1

    .line 119
    iget-object v0, p0, Lio/agora/base/JavaI010Buffer;->dataY:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 134
    iget v0, p0, Lio/agora/base/JavaI010Buffer;->height:I

    return v0
.end method

.method public getStrideU()I
    .locals 1

    .line 154
    iget v0, p0, Lio/agora/base/JavaI010Buffer;->strideU:I

    return v0
.end method

.method public getStrideV()I
    .locals 1

    .line 144
    iget v0, p0, Lio/agora/base/JavaI010Buffer;->strideV:I

    return v0
.end method

.method public getStrideY()I
    .locals 1

    .line 149
    iget v0, p0, Lio/agora/base/JavaI010Buffer;->strideY:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 139
    iget v0, p0, Lio/agora/base/JavaI010Buffer;->width:I

    return v0
.end method

.method public mirror(I)Lio/agora/base/VideoFrame$Buffer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public release()V
    .locals 1

    .line 159
    iget-object v0, p0, Lio/agora/base/JavaI010Buffer;->refCountDelegate:Lio/agora/base/internal/RefCountDelegate;

    invoke-virtual {v0}, Lio/agora/base/internal/RefCountDelegate;->release()V

    return-void
.end method

.method public retain()V
    .locals 1

    .line 169
    iget-object v0, p0, Lio/agora/base/JavaI010Buffer;->refCountDelegate:Lio/agora/base/internal/RefCountDelegate;

    invoke-virtual {v0}, Lio/agora/base/internal/RefCountDelegate;->retain()V

    return-void
.end method

.method public rotate(I)Lio/agora/base/VideoFrame$Buffer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public toI420()Lio/agora/base/VideoFrame$I420Buffer;
    .locals 1

    .line 164
    invoke-static {p0}, Lio/agora/base/JavaI010Buffer;->i010BufferToI420(Lio/agora/base/JavaI010Buffer;)Lio/agora/base/VideoFrame$I420Buffer;

    move-result-object v0

    return-object v0
.end method

.method public transform(IIIIIII)Lio/agora/base/VideoFrame$Buffer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
