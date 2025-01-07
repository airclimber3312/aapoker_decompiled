.class public Lio/agora/base/TextureBuffer;
.super Ljava/lang/Object;
.source "TextureBuffer.java"

# interfaces
.implements Lio/agora/base/VideoFrame$TextureBuffer;
.implements Lio/agora/base/internal/video/IHandlerReplaceable;


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureBuffer"


# instance fields
.field private final eglContext:Lio/agora/base/internal/video/EglBase$Context;

.field private final height:I

.field private final id:I

.field private final refCountDelegate:Lio/agora/base/internal/RefCountDelegate;

.field private sequence:I

.field private final sourceTexturePool:Lio/agora/base/internal/video/TextureBufferPool;

.field private final toI420Handler:Landroid/os/Handler;

.field private final transformMatrix:Landroid/graphics/Matrix;

.field private final type:Lio/agora/base/VideoFrame$TextureBuffer$Type;

.field private final width:I

.field private final yuvConverter:Lio/agora/base/internal/video/YuvConverter;


# direct methods
.method public constructor <init>(Landroid/opengl/EGLContext;IILio/agora/base/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lio/agora/base/internal/video/YuvConverter;Ljava/lang/Runnable;)V
    .locals 12

    .line 91
    invoke-static {p1}, Lio/agora/base/internal/video/EglBaseFactory;->createEgl14Context(Landroid/opengl/EGLContext;)Lio/agora/base/internal/video/EglBase$Context;

    move-result-object v1

    const/4 v10, 0x0

    const/4 v11, -0x1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Lio/agora/base/TextureBuffer;-><init>(Lio/agora/base/internal/video/EglBase$Context;IILio/agora/base/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lio/agora/base/internal/video/YuvConverter;Ljava/lang/Runnable;Lio/agora/base/internal/video/TextureBufferPool;I)V

    return-void
.end method

.method public constructor <init>(Lio/agora/base/internal/video/EglBase$Context;IILio/agora/base/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lio/agora/base/internal/video/YuvConverter;Ljava/lang/Runnable;)V
    .locals 12

    const/4 v10, 0x0

    const/4 v11, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 98
    invoke-direct/range {v0 .. v11}, Lio/agora/base/TextureBuffer;-><init>(Lio/agora/base/internal/video/EglBase$Context;IILio/agora/base/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lio/agora/base/internal/video/YuvConverter;Ljava/lang/Runnable;Lio/agora/base/internal/video/TextureBufferPool;I)V

    return-void
.end method

.method public constructor <init>(Lio/agora/base/internal/video/EglBase$Context;IILio/agora/base/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lio/agora/base/internal/video/YuvConverter;Ljava/lang/Runnable;Lio/agora/base/internal/video/TextureBufferPool;I)V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lio/agora/base/TextureBuffer;->sequence:I

    .line 123
    iput-object p1, p0, Lio/agora/base/TextureBuffer;->eglContext:Lio/agora/base/internal/video/EglBase$Context;

    .line 124
    iput p2, p0, Lio/agora/base/TextureBuffer;->width:I

    .line 125
    iput p3, p0, Lio/agora/base/TextureBuffer;->height:I

    .line 126
    iput-object p4, p0, Lio/agora/base/TextureBuffer;->type:Lio/agora/base/VideoFrame$TextureBuffer$Type;

    .line 127
    iput p5, p0, Lio/agora/base/TextureBuffer;->id:I

    .line 128
    iput-object p6, p0, Lio/agora/base/TextureBuffer;->transformMatrix:Landroid/graphics/Matrix;

    .line 129
    iput-object p7, p0, Lio/agora/base/TextureBuffer;->toI420Handler:Landroid/os/Handler;

    .line 130
    iput-object p8, p0, Lio/agora/base/TextureBuffer;->yuvConverter:Lio/agora/base/internal/video/YuvConverter;

    .line 131
    iput-object p10, p0, Lio/agora/base/TextureBuffer;->sourceTexturePool:Lio/agora/base/internal/video/TextureBufferPool;

    .line 132
    new-instance p1, Lio/agora/base/internal/RefCountDelegate;

    invoke-direct {p1, p9}, Lio/agora/base/internal/RefCountDelegate;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lio/agora/base/TextureBuffer;->refCountDelegate:Lio/agora/base/internal/RefCountDelegate;

    .line 133
    iput p11, p0, Lio/agora/base/TextureBuffer;->sequence:I

    return-void
.end method

.method public constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;IILio/agora/base/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lio/agora/base/internal/video/YuvConverter;Ljava/lang/Runnable;)V
    .locals 12

    .line 67
    invoke-static {p1}, Lio/agora/base/internal/video/EglBaseFactory;->createEgl10Context(Ljavax/microedition/khronos/egl/EGLContext;)Lio/agora/base/internal/video/EglBase$Context;

    move-result-object v1

    const/4 v10, 0x0

    const/4 v11, -0x1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Lio/agora/base/TextureBuffer;-><init>(Lio/agora/base/internal/video/EglBase$Context;IILio/agora/base/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lio/agora/base/internal/video/YuvConverter;Ljava/lang/Runnable;Lio/agora/base/internal/video/TextureBufferPool;I)V

    return-void
.end method

.method static synthetic access$000(Lio/agora/base/TextureBuffer;)Lio/agora/base/internal/video/YuvConverter;
    .locals 0

    .line 33
    iget-object p0, p0, Lio/agora/base/TextureBuffer;->yuvConverter:Lio/agora/base/internal/video/YuvConverter;

    return-object p0
.end method


# virtual methods
.method public applyNewI420Handler(Landroid/os/Handler;Lio/agora/base/internal/video/YuvConverter;)Lio/agora/base/VideoFrame$Buffer;
    .locals 13

    .line 217
    invoke-virtual {p0}, Lio/agora/base/TextureBuffer;->retain()V

    .line 218
    new-instance v12, Lio/agora/base/TextureBuffer;

    iget-object v1, p0, Lio/agora/base/TextureBuffer;->eglContext:Lio/agora/base/internal/video/EglBase$Context;

    iget v2, p0, Lio/agora/base/TextureBuffer;->width:I

    iget v3, p0, Lio/agora/base/TextureBuffer;->height:I

    iget-object v4, p0, Lio/agora/base/TextureBuffer;->type:Lio/agora/base/VideoFrame$TextureBuffer$Type;

    iget v5, p0, Lio/agora/base/TextureBuffer;->id:I

    iget-object v6, p0, Lio/agora/base/TextureBuffer;->transformMatrix:Landroid/graphics/Matrix;

    new-instance v9, Lio/agora/base/TextureBuffer$1;

    invoke-direct {v9, p0}, Lio/agora/base/TextureBuffer$1;-><init>(Lio/agora/base/TextureBuffer;)V

    iget-object v10, p0, Lio/agora/base/TextureBuffer;->sourceTexturePool:Lio/agora/base/internal/video/TextureBufferPool;

    const/4 v11, -0x1

    move-object v0, v12

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v11}, Lio/agora/base/TextureBuffer;-><init>(Lio/agora/base/internal/video/EglBase$Context;IILio/agora/base/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lio/agora/base/internal/video/YuvConverter;Ljava/lang/Runnable;Lio/agora/base/internal/video/TextureBufferPool;I)V

    return-object v12
.end method

.method public applyNewTextureInfo(Lio/agora/base/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;II)Lio/agora/base/TextureBuffer;
    .locals 14

    move-object v0, p0

    .line 359
    invoke-virtual {p0}, Lio/agora/base/TextureBuffer;->retain()V

    .line 360
    new-instance v13, Lio/agora/base/TextureBuffer;

    iget-object v2, v0, Lio/agora/base/TextureBuffer;->eglContext:Lio/agora/base/internal/video/EglBase$Context;

    iget-object v8, v0, Lio/agora/base/TextureBuffer;->toI420Handler:Landroid/os/Handler;

    iget-object v9, v0, Lio/agora/base/TextureBuffer;->yuvConverter:Lio/agora/base/internal/video/YuvConverter;

    new-instance v10, Lio/agora/base/TextureBuffer$4;

    invoke-direct {v10, p0}, Lio/agora/base/TextureBuffer$4;-><init>(Lio/agora/base/TextureBuffer;)V

    iget-object v11, v0, Lio/agora/base/TextureBuffer;->sourceTexturePool:Lio/agora/base/internal/video/TextureBufferPool;

    iget v12, v0, Lio/agora/base/TextureBuffer;->sequence:I

    move-object v1, v13

    move/from16 v3, p4

    move/from16 v4, p5

    move-object v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v12}, Lio/agora/base/TextureBuffer;-><init>(Lio/agora/base/internal/video/EglBase$Context;IILio/agora/base/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lio/agora/base/internal/video/YuvConverter;Ljava/lang/Runnable;Lio/agora/base/internal/video/TextureBufferPool;I)V

    return-object v13
.end method

.method public applyTransformMatrix(Landroid/graphics/Matrix;II)Lio/agora/base/TextureBuffer;
    .locals 12

    .line 341
    new-instance v6, Landroid/graphics/Matrix;

    iget-object v0, p0, Lio/agora/base/TextureBuffer;->transformMatrix:Landroid/graphics/Matrix;

    invoke-direct {v6, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 342
    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 343
    invoke-virtual {p0}, Lio/agora/base/TextureBuffer;->retain()V

    .line 344
    new-instance p1, Lio/agora/base/TextureBuffer;

    iget-object v1, p0, Lio/agora/base/TextureBuffer;->eglContext:Lio/agora/base/internal/video/EglBase$Context;

    iget-object v4, p0, Lio/agora/base/TextureBuffer;->type:Lio/agora/base/VideoFrame$TextureBuffer$Type;

    iget v5, p0, Lio/agora/base/TextureBuffer;->id:I

    iget-object v7, p0, Lio/agora/base/TextureBuffer;->toI420Handler:Landroid/os/Handler;

    iget-object v8, p0, Lio/agora/base/TextureBuffer;->yuvConverter:Lio/agora/base/internal/video/YuvConverter;

    new-instance v9, Lio/agora/base/TextureBuffer$3;

    invoke-direct {v9, p0}, Lio/agora/base/TextureBuffer$3;-><init>(Lio/agora/base/TextureBuffer;)V

    iget-object v10, p0, Lio/agora/base/TextureBuffer;->sourceTexturePool:Lio/agora/base/internal/video/TextureBufferPool;

    iget v11, p0, Lio/agora/base/TextureBuffer;->sequence:I

    move-object v0, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v11}, Lio/agora/base/TextureBuffer;-><init>(Lio/agora/base/internal/video/EglBase$Context;IILio/agora/base/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lio/agora/base/internal/video/YuvConverter;Ljava/lang/Runnable;Lio/agora/base/internal/video/TextureBufferPool;I)V

    return-object p1
.end method

.method public cropAndScale(IIIIII)Lio/agora/base/VideoFrame$Buffer;
    .locals 3

    .line 262
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 265
    iget v1, p0, Lio/agora/base/TextureBuffer;->height:I

    add-int/2addr p2, p4

    sub-int p2, v1, p2

    int-to-float p1, p1

    .line 266
    iget v2, p0, Lio/agora/base/TextureBuffer;->width:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    int-to-float p2, p2

    int-to-float v1, v1

    div-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    int-to-float p1, p3

    .line 267
    iget p2, p0, Lio/agora/base/TextureBuffer;->width:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    int-to-float p2, p4

    iget p3, p0, Lio/agora/base/TextureBuffer;->height:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 269
    invoke-virtual {p0, v0, p5, p6}, Lio/agora/base/TextureBuffer;->applyTransformMatrix(Landroid/graphics/Matrix;II)Lio/agora/base/TextureBuffer;

    move-result-object p1

    return-object p1
.end method

.method public getEglBaseContext()Lio/agora/base/internal/video/EglBase$Context;
    .locals 1

    .line 159
    iget-object v0, p0, Lio/agora/base/TextureBuffer;->eglContext:Lio/agora/base/internal/video/EglBase$Context;

    return-object v0
.end method

.method public getEglContextType()I
    .locals 1

    .line 174
    iget-object v0, p0, Lio/agora/base/TextureBuffer;->eglContext:Lio/agora/base/internal/video/EglBase$Context;

    invoke-static {v0}, Lio/agora/base/internal/video/EglBaseFactory;->isEglBase14(Lio/agora/base/internal/video/EglBase$Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/agora/base/VideoFrame$TextureBuffer$ContextType;->EGL_CONTEXT_14:Lio/agora/base/VideoFrame$TextureBuffer$ContextType;

    invoke-virtual {v0}, Lio/agora/base/VideoFrame$TextureBuffer$ContextType;->ordinal()I

    move-result v0

    goto :goto_0

    .line 175
    :cond_0
    sget-object v0, Lio/agora/base/VideoFrame$TextureBuffer$ContextType;->EGL_CONTEXT_10:Lio/agora/base/VideoFrame$TextureBuffer$ContextType;

    invoke-virtual {v0}, Lio/agora/base/VideoFrame$TextureBuffer$ContextType;->ordinal()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 195
    iget v0, p0, Lio/agora/base/TextureBuffer;->height:I

    return v0
.end method

.method public getNativeEglContext()J
    .locals 2

    .line 169
    iget-object v0, p0, Lio/agora/base/TextureBuffer;->eglContext:Lio/agora/base/internal/video/EglBase$Context;

    invoke-interface {v0}, Lio/agora/base/internal/video/EglBase$Context;->getNativeEglContext()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSequence()I
    .locals 1

    .line 185
    iget v0, p0, Lio/agora/base/TextureBuffer;->sequence:I

    return v0
.end method

.method public getSourceTexturePool()Ljava/lang/Object;
    .locals 1

    .line 164
    iget-object v0, p0, Lio/agora/base/TextureBuffer;->sourceTexturePool:Lio/agora/base/internal/video/TextureBufferPool;

    return-object v0
.end method

.method public getTextureId()I
    .locals 1

    .line 148
    iget v0, p0, Lio/agora/base/TextureBuffer;->id:I

    return v0
.end method

.method public getToI420Handler()Landroid/os/Handler;
    .locals 1

    .line 207
    iget-object v0, p0, Lio/agora/base/TextureBuffer;->toI420Handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getTransformMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 153
    iget-object v0, p0, Lio/agora/base/TextureBuffer;->transformMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getTransformMatrixArray()[F
    .locals 1

    .line 180
    iget-object v0, p0, Lio/agora/base/TextureBuffer;->transformMatrix:Landroid/graphics/Matrix;

    invoke-static {v0}, Lio/agora/base/internal/video/RendererCommon;->convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v0

    return-object v0
.end method

.method public getType()Lio/agora/base/VideoFrame$TextureBuffer$Type;
    .locals 1

    .line 143
    iget-object v0, p0, Lio/agora/base/TextureBuffer;->type:Lio/agora/base/VideoFrame$TextureBuffer$Type;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 190
    iget v0, p0, Lio/agora/base/TextureBuffer;->width:I

    return v0
.end method

.method public getYuvConverter()Lio/agora/base/internal/video/YuvConverter;
    .locals 1

    .line 201
    iget-object v0, p0, Lio/agora/base/TextureBuffer;->yuvConverter:Lio/agora/base/internal/video/YuvConverter;

    return-object v0
.end method

.method public mirror(I)Lio/agora/base/VideoFrame$Buffer;
    .locals 4

    .line 274
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 276
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    const/16 v1, 0x5a

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq p1, v1, :cond_1

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1

    .line 278
    :cond_1
    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :goto_1
    const/high16 p1, -0x41000000    # -0.5f

    .line 282
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 283
    invoke-virtual {p0}, Lio/agora/base/TextureBuffer;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lio/agora/base/TextureBuffer;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Lio/agora/base/TextureBuffer;->applyTransformMatrix(Landroid/graphics/Matrix;II)Lio/agora/base/TextureBuffer;

    move-result-object p1

    return-object p1
.end method

.method public release()V
    .locals 1

    .line 256
    iget-object v0, p0, Lio/agora/base/TextureBuffer;->refCountDelegate:Lio/agora/base/internal/RefCountDelegate;

    invoke-virtual {v0}, Lio/agora/base/internal/RefCountDelegate;->release()V

    return-void
.end method

.method public retain()V
    .locals 1

    .line 252
    iget-object v0, p0, Lio/agora/base/TextureBuffer;->refCountDelegate:Lio/agora/base/internal/RefCountDelegate;

    invoke-virtual {v0}, Lio/agora/base/internal/RefCountDelegate;->retain()V

    return-void
.end method

.method public rotate(I)Lio/agora/base/VideoFrame$Buffer;
    .locals 4

    .line 288
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/16 v1, 0x10e

    const/16 v2, 0x5a

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p0}, Lio/agora/base/TextureBuffer;->getWidth()I

    move-result v3

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/agora/base/TextureBuffer;->getHeight()I

    move-result v3

    :goto_1
    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    goto :goto_2

    .line 290
    :cond_2
    invoke-virtual {p0}, Lio/agora/base/TextureBuffer;->getHeight()I

    move-result v1

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lio/agora/base/TextureBuffer;->getWidth()I

    move-result v1

    :goto_3
    const/high16 v2, 0x3f000000    # 0.5f

    .line 291
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    int-to-float p1, p1

    .line 292
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preRotate(F)Z

    const/high16 p1, -0x41000000    # -0.5f

    .line 293
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 294
    invoke-virtual {p0, v0, v3, v1}, Lio/agora/base/TextureBuffer;->applyTransformMatrix(Landroid/graphics/Matrix;II)Lio/agora/base/TextureBuffer;

    move-result-object p1

    return-object p1
.end method

.method public toI420()Lio/agora/base/VideoFrame$I420Buffer;
    .locals 6

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "toI420 texture id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/agora/base/TextureBuffer;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", seq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/base/TextureBuffer;->sequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", egl base context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/base/TextureBuffer;->eglContext:Lio/agora/base/internal/video/EglBase$Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextureBuffer"

    invoke-static {v1, v0}, Lio/agora/base/internal/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lio/agora/base/TextureBuffer;->toI420Handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lio/agora/base/TextureBuffer;->yuvConverter:Lio/agora/base/internal/video/YuvConverter;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Lio/agora/base/VideoFrame$I420Buffer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 236
    :try_start_0
    new-instance v5, Lio/agora/base/TextureBuffer$2;

    invoke-direct {v5, p0, v2}, Lio/agora/base/TextureBuffer$2;-><init>(Lio/agora/base/TextureBuffer;[Lio/agora/base/VideoFrame$I420Buffer;)V

    invoke-static {v0, v5}, Lio/agora/base/internal/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    aget-object v0, v2, v3

    return-object v0

    :catch_0
    move-exception v0

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "toI420 failure:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "toI420Handler or yuvConverter is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public transform(IIIIIII)Lio/agora/base/VideoFrame$Buffer;
    .locals 4

    .line 301
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 304
    iget v1, p0, Lio/agora/base/TextureBuffer;->height:I

    add-int/2addr p2, p4

    sub-int p2, v1, p2

    int-to-float p1, p1

    .line 305
    iget v2, p0, Lio/agora/base/TextureBuffer;->width:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    int-to-float p2, p2

    int-to-float v1, v1

    div-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    int-to-float p1, p3

    .line 306
    iget p2, p0, Lio/agora/base/TextureBuffer;->width:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    int-to-float p2, p4

    iget p3, p0, Lio/agora/base/TextureBuffer;->height:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    if-lez p5, :cond_0

    if-lez p6, :cond_0

    if-nez p7, :cond_0

    .line 309
    invoke-virtual {p0, v0, p5, p6}, Lio/agora/base/TextureBuffer;->applyTransformMatrix(Landroid/graphics/Matrix;II)Lio/agora/base/TextureBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    .line 312
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 p2, -0x40800000    # -1.0f

    if-gez p5, :cond_1

    .line 314
    invoke-virtual {v0, p2, p1}, Landroid/graphics/Matrix;->preScale(FF)Z

    neg-int p5, p5

    :cond_1
    if-gez p6, :cond_2

    .line 318
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    neg-int p6, p6

    :cond_2
    const/16 p1, 0x5a

    if-eq p7, p1, :cond_3

    const/16 p1, 0x10e

    if-ne p7, p1, :cond_4

    :cond_3
    move v3, p6

    move p6, p5

    move p5, v3

    :cond_4
    if-eqz p7, :cond_5

    int-to-float p1, p7

    .line 329
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_5
    const/high16 p1, -0x41000000    # -0.5f

    .line 331
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 332
    invoke-virtual {p0, v0, p5, p6}, Lio/agora/base/TextureBuffer;->applyTransformMatrix(Landroid/graphics/Matrix;II)Lio/agora/base/TextureBuffer;

    move-result-object p1

    return-object p1
.end method

.method public withSequence(I)Lio/agora/base/TextureBuffer;
    .locals 0

    .line 137
    iput p1, p0, Lio/agora/base/TextureBuffer;->sequence:I

    return-object p0
.end method
