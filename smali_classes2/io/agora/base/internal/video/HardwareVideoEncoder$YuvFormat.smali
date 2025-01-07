.class abstract enum Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;
.super Ljava/lang/Enum;
.source "HardwareVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/video/HardwareVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "YuvFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;

.field public static final enum I420:Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;

.field public static final enum NV12:Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;

.field public static final enum NV21:Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1324
    new-instance v0, Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat$1;

    const-string v1, "I420"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;->I420:Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;

    .line 1355
    new-instance v1, Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat$2;

    const-string v3, "NV12"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;->NV12:Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;

    .line 1362
    new-instance v3, Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat$3;

    const-string v5, "NV21"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;->NV21:Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 1323
    sput-object v5, Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;->$VALUES:[Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1323
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILio/agora/base/internal/video/HardwareVideoEncoder$1;)V
    .locals 0

    .line 1323
    invoke-direct {p0, p1, p2}, Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static fillNV12Buffer(Ljava/nio/ByteBuffer;IILio/agora/base/VideoFrame$Buffer;Z)V
    .locals 13

    move-object v0, p0

    .line 1375
    invoke-interface/range {p3 .. p3}, Lio/agora/base/VideoFrame$Buffer;->toI420()Lio/agora/base/VideoFrame$I420Buffer;

    move-result-object v12

    add-int/lit8 v1, p1, 0x1

    .line 1376
    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, p2, 0x1

    .line 1377
    div-int/lit8 v2, v2, 0x2

    mul-int v3, p1, p2

    mul-int v2, v2, v1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    .line 1380
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-lt v4, v2, :cond_4

    const/4 v2, 0x0

    .line 1388
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1389
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1390
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1391
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    if-eqz p4, :cond_0

    .line 1393
    invoke-interface {v12}, Lio/agora/base/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v12}, Lio/agora/base/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    move-object v2, v0

    if-eqz p4, :cond_1

    .line 1394
    invoke-interface {v12}, Lio/agora/base/VideoFrame$I420Buffer;->getStrideV()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-interface {v12}, Lio/agora/base/VideoFrame$I420Buffer;->getStrideU()I

    move-result v0

    :goto_1
    move v3, v0

    if-eqz p4, :cond_2

    .line 1395
    invoke-interface {v12}, Lio/agora/base/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-interface {v12}, Lio/agora/base/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_2
    move-object v4, v0

    if-eqz p4, :cond_3

    .line 1396
    invoke-interface {v12}, Lio/agora/base/VideoFrame$I420Buffer;->getStrideU()I

    move-result v0

    goto :goto_3

    :cond_3
    invoke-interface {v12}, Lio/agora/base/VideoFrame$I420Buffer;->getStrideV()I

    move-result v0

    :goto_3
    move v5, v0

    .line 1398
    invoke-interface {v12}, Lio/agora/base/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v12}, Lio/agora/base/VideoFrame$I420Buffer;->getStrideY()I

    move-result v7

    mul-int/lit8 v9, v1, 0x2

    .line 1399
    invoke-interface {v12}, Lio/agora/base/VideoFrame$I420Buffer;->getWidth()I

    move-result v10

    .line 1400
    invoke-interface {v12}, Lio/agora/base/VideoFrame$I420Buffer;->getHeight()I

    move-result v11

    move v1, v7

    move v7, p1

    .line 1398
    invoke-static/range {v0 .. v11}, Lio/agora/base/internal/video/YuvHelper;->I420ToNV12(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    .line 1401
    invoke-interface {v12}, Lio/agora/base/VideoFrame$I420Buffer;->release()V

    return-void

    .line 1381
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected destination buffer capacity to be at least "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static valueOf(IZ)Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;
    .locals 2

    const/16 v0, 0x13

    if-eq p0, v0, :cond_3

    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const v0, 0x7fa30c00

    if-eq p0, v0, :cond_1

    const v0, 0x7fa30c04

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1413
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported colorFormat: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 1411
    sget-object p0, Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;->NV21:Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;

    goto :goto_1

    :cond_2
    sget-object p0, Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;->NV12:Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;

    :goto_1
    return-object p0

    .line 1407
    :cond_3
    sget-object p0, Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;->I420:Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;
    .locals 1

    .line 1323
    const-class v0, Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;

    return-object p0
.end method

.method public static values()[Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;
    .locals 1

    .line 1323
    sget-object v0, Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;->$VALUES:[Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;

    invoke-virtual {v0}, [Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/base/internal/video/HardwareVideoEncoder$YuvFormat;

    return-object v0
.end method


# virtual methods
.method abstract fillBuffer(Ljava/nio/ByteBuffer;IILio/agora/base/VideoFrame$Buffer;)V
.end method
