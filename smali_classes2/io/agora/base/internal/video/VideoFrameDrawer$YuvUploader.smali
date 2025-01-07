.class Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;
.super Ljava/lang/Object;
.source "VideoFrameDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/video/VideoFrameDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YuvUploader"
.end annotation


# instance fields
.field private alphaTexture:I

.field private copyAlphaBuffer:Ljava/nio/ByteBuffer;

.field private copyBuffer:Ljava/nio/ByteBuffer;

.field private enableNegativeAlphaData:Z

.field private yuvTextures:[I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->alphaTexture:I

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->enableNegativeAlphaData:Z

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/base/internal/video/VideoFrameDrawer$1;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;-><init>()V

    return-void
.end method


# virtual methods
.method public disableNegativeAlphaData()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->enableNegativeAlphaData:Z

    return-void
.end method

.method public getAlphaTexture()I
    .locals 1

    .line 73
    iget v0, p0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->alphaTexture:I

    return v0
.end method

.method public getYuvTextures()[I
    .locals 1

    .line 164
    iget-object v0, p0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    return-object v0
.end method

.method public release()V
    .locals 4

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    .line 173
    iput-object v0, p0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->copyAlphaBuffer:Ljava/nio/ByteBuffer;

    .line 174
    iget-object v1, p0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x3

    .line 175
    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 176
    iput-object v0, p0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    .line 178
    :cond_0
    iget v0, p0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->alphaTexture:I

    if-lez v0, :cond_1

    const/4 v1, 0x1

    new-array v3, v1, [I

    aput v0, v3, v2

    .line 179
    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 180
    iput v2, p0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->alphaTexture:I

    :cond_1
    return-void
.end method

.method public uploadAlphaData(IILjava/nio/ByteBuffer;Z)I
    .locals 11

    .line 126
    iget v0, p0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->alphaTexture:I

    const/16 v1, 0xde1

    if-nez v0, :cond_0

    .line 127
    invoke-static {v1}, Lio/agora/base/internal/video/GlUtil;->generateTexture(I)I

    move-result v0

    iput v0, p0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->alphaTexture:I

    :cond_0
    const/4 v0, 0x0

    if-lez p1, :cond_7

    if-gtz p2, :cond_1

    goto :goto_0

    :cond_1
    mul-int v2, p1, p2

    if-eqz p4, :cond_2

    .line 134
    iget-boolean p4, p0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->enableNegativeAlphaData:Z

    if-eqz p4, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_5

    .line 136
    iget-object p4, p0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->copyAlphaBuffer:Ljava/nio/ByteBuffer;

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p4

    if-ge p4, v2, :cond_4

    .line 137
    :cond_3
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    iput-object p4, p0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->copyAlphaBuffer:Ljava/nio/ByteBuffer;

    .line 140
    :cond_4
    iget-object v4, p0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->copyAlphaBuffer:Ljava/nio/ByteBuffer;

    neg-int v7, p2

    move-object v2, p3

    move v3, p1

    move v5, p1

    move v6, p1

    invoke-static/range {v2 .. v7}, Lio/agora/base/internal/video/YuvHelper;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    :cond_5
    const p4, 0x84c3

    .line 142
    invoke-static {p4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 143
    iget p4, p0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->alphaTexture:I

    invoke-static {v1, p4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1906

    const/4 v7, 0x0

    const/16 v8, 0x1906

    const/16 v9, 0x1401

    if-eqz v0, :cond_6

    .line 151
    iget-object p3, p0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->copyAlphaBuffer:Ljava/nio/ByteBuffer;

    :cond_6
    move-object v10, p3

    move v5, p1

    move v6, p2

    .line 149
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 152
    iget p1, p0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->alphaTexture:I

    return p1

    :cond_7
    :goto_0
    return v0
.end method

.method public uploadFromBuffer(Lio/agora/base/VideoFrame$I420Buffer;)[I
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 157
    invoke-interface {p1}, Lio/agora/base/VideoFrame$I420Buffer;->getStrideY()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-interface {p1}, Lio/agora/base/VideoFrame$I420Buffer;->getStrideU()I

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-interface {p1}, Lio/agora/base/VideoFrame$I420Buffer;->getStrideV()I

    move-result v2

    const/4 v5, 0x2

    aput v2, v1, v5

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    .line 158
    invoke-interface {p1}, Lio/agora/base/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-interface {p1}, Lio/agora/base/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-interface {p1}, Lio/agora/base/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v0, v5

    .line 159
    invoke-interface {p1}, Lio/agora/base/VideoFrame$I420Buffer;->getWidth()I

    move-result v2

    invoke-interface {p1}, Lio/agora/base/VideoFrame$I420Buffer;->getHeight()I

    move-result p1

    invoke-virtual {p0, v2, p1, v1, v0}, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->uploadYuvData(II[I[Ljava/nio/ByteBuffer;)[I

    move-result-object p1

    return-object p1
.end method

.method public uploadYuvData(II[I[Ljava/nio/ByteBuffer;)[I
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x3

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v4, 0x2

    .line 83
    div-int/lit8 v5, p1, 0x2

    const/4 v6, 0x1

    aput v5, v2, v6

    aput v5, v2, v4

    new-array v5, v1, [I

    aput p2, v5, v3

    .line 84
    div-int/lit8 v7, p2, 0x2

    aput v7, v5, v6

    aput v7, v5, v4

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 88
    aget v7, p3, v4

    aget v8, v2, v4

    if-le v7, v8, :cond_0

    .line 89
    aget v7, v5, v4

    mul-int v8, v8, v7

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-lez v6, :cond_3

    .line 93
    iget-object v4, v0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_2

    .line 94
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-ge v4, v6, :cond_3

    .line 95
    :cond_2
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, v0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    .line 98
    :cond_3
    iget-object v4, v0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    const/16 v6, 0xde1

    if-nez v4, :cond_4

    new-array v4, v1, [I

    .line 99
    iput-object v4, v0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_4

    .line 101
    iget-object v7, v0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    invoke-static {v6}, Lio/agora/base/internal/video/GlUtil;->generateTexture(I)I

    move-result v8

    aput v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-ge v3, v1, :cond_6

    const v4, 0x84c0

    add-int/2addr v4, v3

    .line 106
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 107
    iget-object v4, v0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    aget v4, v4, v3

    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 110
    aget v8, p3, v3

    aget v11, v2, v3

    if-ne v8, v11, :cond_5

    .line 112
    aget-object v4, p4, v3

    goto :goto_3

    .line 114
    :cond_5
    aget-object v7, p4, v3

    iget-object v9, v0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    aget v12, v5, v3

    move v10, v11

    invoke-static/range {v7 .. v12}, Lio/agora/base/internal/video/YuvHelper;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    .line 116
    iget-object v4, v0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    :goto_3
    move-object v15, v4

    const/16 v7, 0xde1

    const/4 v8, 0x0

    const/16 v9, 0x1909

    .line 118
    aget v10, v2, v3

    aget v11, v5, v3

    const/4 v12, 0x0

    const/16 v13, 0x1909

    const/16 v14, 0x1401

    invoke-static/range {v7 .. v15}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 121
    :cond_6
    iget-object v1, v0, Lio/agora/base/internal/video/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    return-object v1
.end method
