.class public Lio/agora/base/TextureBufferHelper;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureBufferHelper"


# instance fields
.field private alphaBuffer:Ljava/nio/ByteBuffer;

.field private final eglBase:Lio/agora/base/internal/video/EglBase;

.field private final handler:Landroid/os/Handler;

.field private isQuitting:Z

.field private numOfTextureInUse:I

.field private textureDrawer:Lio/agora/base/internal/video/GlRectDrawer;

.field private textureFrameBuffer:Lio/agora/base/internal/video/GlTextureFrameBuffer;

.field private final yuvConverter:Lio/agora/base/internal/video/YuvConverter;


# direct methods
.method private constructor <init>(Lio/agora/base/internal/video/EglBase$Context;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sharedContext",
            "handler"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/agora/base/internal/video/YuvConverter;

    invoke-direct {v0}, Lio/agora/base/internal/video/YuvConverter;-><init>()V

    iput-object v0, p0, Lio/agora/base/TextureBufferHelper;->yuvConverter:Lio/agora/base/internal/video/YuvConverter;

    const/4 v0, 0x0

    iput v0, p0, Lio/agora/base/TextureBufferHelper;->numOfTextureInUse:I

    iput-boolean v0, p0, Lio/agora/base/TextureBufferHelper;->isQuitting:Z

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iput-object p2, p0, Lio/agora/base/TextureBufferHelper;->handler:Landroid/os/Handler;

    invoke-static {}, Lio/agora/base/internal/video/EglBase14;->isEGL14Supported()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lio/agora/base/internal/video/EglBase14$Context;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lio/agora/base/internal/video/EglBase14;

    check-cast p1, Lio/agora/base/internal/video/EglBase14$Context;

    sget-object v1, Lio/agora/base/internal/video/EglBase;->CONFIG_PIXEL_BUFFER:[I

    invoke-direct {v0, p1, v1}, Lio/agora/base/internal/video/EglBase14;-><init>(Lio/agora/base/internal/video/EglBase14$Context;[I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lio/agora/base/internal/video/EglBase10;

    check-cast p1, Lio/agora/base/internal/video/EglBase10$Context;

    sget-object v1, Lio/agora/base/internal/video/EglBase;->CONFIG_PIXEL_BUFFER:[I

    invoke-direct {v0, p1, v1}, Lio/agora/base/internal/video/EglBase10;-><init>(Lio/agora/base/internal/video/EglBase10$Context;[I)V

    :goto_0
    iput-object v0, p0, Lio/agora/base/TextureBufferHelper;->eglBase:Lio/agora/base/internal/video/EglBase;

    :try_start_0
    invoke-interface {v0}, Lio/agora/base/internal/video/EglBase;->createDummyPbufferSurface()V

    invoke-interface {v0}, Lio/agora/base/internal/video/EglBase;->makeCurrent()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lio/agora/base/TextureBufferHelper;->eglBase:Lio/agora/base/internal/video/EglBase;

    invoke-interface {v0}, Lio/agora/base/internal/video/EglBase;->release()V

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->quit()V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "TextureBufferHelper must be created on the handler thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lio/agora/base/internal/video/EglBase$Context;Landroid/os/Handler;Lio/agora/base/TextureBufferHelper$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/agora/base/TextureBufferHelper;-><init>(Lio/agora/base/internal/video/EglBase$Context;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$100(Lio/agora/base/TextureBufferHelper;)V
    .locals 0

    invoke-direct {p0}, Lio/agora/base/TextureBufferHelper;->returnTextureFrame()V

    return-void
.end method

.method static synthetic access$210(Lio/agora/base/TextureBufferHelper;)I
    .locals 2

    iget v0, p0, Lio/agora/base/TextureBufferHelper;->numOfTextureInUse:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lio/agora/base/TextureBufferHelper;->numOfTextureInUse:I

    return v0
.end method

.method static synthetic access$300(Lio/agora/base/TextureBufferHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lio/agora/base/TextureBufferHelper;->isQuitting:Z

    return p0
.end method

.method static synthetic access$302(Lio/agora/base/TextureBufferHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/agora/base/TextureBufferHelper;->isQuitting:Z

    return p1
.end method

.method static synthetic access$400(Lio/agora/base/TextureBufferHelper;)V
    .locals 0

    invoke-direct {p0}, Lio/agora/base/TextureBufferHelper;->release()V

    return-void
.end method

.method public static create(Ljava/lang/String;Lio/agora/base/internal/video/EglBase$Context;)Lio/agora/base/TextureBufferHelper;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "threadName",
            "sharedContext"
        }
    .end annotation

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :try_start_0
    new-instance v0, Lio/agora/base/TextureBufferHelper$1;

    invoke-direct {v0, p1, v1, p0}, Lio/agora/base/TextureBufferHelper$1;-><init>(Lio/agora/base/internal/video/EglBase$Context;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lio/agora/base/internal/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/base/TextureBufferHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " create failure"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TextureBufferHelper"

    invoke-static {v0, p0, p1}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private release()V
    .locals 2

    iget-object v0, p0, Lio/agora/base/TextureBufferHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lio/agora/base/TextureBufferHelper;->isTextureInUse()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lio/agora/base/TextureBufferHelper;->isQuitting:Z

    if-eqz v0, :cond_3

    const-string v0, "TextureBufferHelper"

    const-string v1, "release()"

    invoke-static {v0, v1}, Lio/agora/utils2/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/base/TextureBufferHelper;->textureDrawer:Lio/agora/base/internal/video/GlRectDrawer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/agora/base/internal/video/GlRectDrawer;->release()V

    iput-object v1, p0, Lio/agora/base/TextureBufferHelper;->textureDrawer:Lio/agora/base/internal/video/GlRectDrawer;

    :cond_0
    iget-object v0, p0, Lio/agora/base/TextureBufferHelper;->textureFrameBuffer:Lio/agora/base/internal/video/GlTextureFrameBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/agora/base/internal/video/GlTextureFrameBuffer;->release()V

    iput-object v1, p0, Lio/agora/base/TextureBufferHelper;->textureFrameBuffer:Lio/agora/base/internal/video/GlTextureFrameBuffer;

    :cond_1
    iget-object v0, p0, Lio/agora/base/TextureBufferHelper;->alphaBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lio/agora/base/internal/JniCommon;->nativeFreeByteBuffer(Ljava/nio/ByteBuffer;)V

    iput-object v1, p0, Lio/agora/base/TextureBufferHelper;->alphaBuffer:Ljava/nio/ByteBuffer;

    :cond_2
    iget-object v0, p0, Lio/agora/base/TextureBufferHelper;->yuvConverter:Lio/agora/base/internal/video/YuvConverter;

    invoke-virtual {v0}, Lio/agora/base/internal/video/YuvConverter;->release()V

    iget-object v0, p0, Lio/agora/base/TextureBufferHelper;->eglBase:Lio/agora/base/internal/video/EglBase;

    invoke-interface {v0}, Lio/agora/base/internal/video/EglBase;->release()V

    iget-object v0, p0, Lio/agora/base/TextureBufferHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected release."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private returnTextureFrame()V
    .locals 2

    iget-object v0, p0, Lio/agora/base/TextureBufferHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lio/agora/base/TextureBufferHelper$3;

    invoke-direct {v1, p0}, Lio/agora/base/TextureBufferHelper$3;-><init>(Lio/agora/base/TextureBufferHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public convertToRGBA(Lio/agora/base/TextureBuffer;I)I
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "rotation"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lio/agora/base/TextureBufferHelper;->textureDrawer:Lio/agora/base/internal/video/GlRectDrawer;

    if-nez v1, :cond_1

    new-instance v1, Lio/agora/base/internal/video/GlRectDrawer;

    invoke-direct {v1}, Lio/agora/base/internal/video/GlRectDrawer;-><init>()V

    iput-object v1, p0, Lio/agora/base/TextureBufferHelper;->textureDrawer:Lio/agora/base/internal/video/GlRectDrawer;

    :cond_1
    iget-object v1, p0, Lio/agora/base/TextureBufferHelper;->textureFrameBuffer:Lio/agora/base/internal/video/GlTextureFrameBuffer;

    if-nez v1, :cond_2

    new-instance v1, Lio/agora/base/internal/video/GlTextureFrameBuffer;

    const/16 v2, 0x1908

    invoke-direct {v1, v2}, Lio/agora/base/internal/video/GlTextureFrameBuffer;-><init>(I)V

    iput-object v1, p0, Lio/agora/base/TextureBufferHelper;->textureFrameBuffer:Lio/agora/base/internal/video/GlTextureFrameBuffer;

    :cond_2
    rem-int/lit16 v1, p2, 0xb4

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lio/agora/base/TextureBuffer;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lio/agora/base/TextureBuffer;->getHeight()I

    move-result v2

    :goto_0
    move v11, v2

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lio/agora/base/TextureBuffer;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lio/agora/base/TextureBuffer;->getWidth()I

    move-result v1

    :goto_1
    move v12, v1

    iget-object v1, p0, Lio/agora/base/TextureBufferHelper;->textureFrameBuffer:Lio/agora/base/internal/video/GlTextureFrameBuffer;

    invoke-virtual {v1, v11, v12}, Lio/agora/base/internal/video/GlTextureFrameBuffer;->setSize(II)V

    iget-object v1, p0, Lio/agora/base/TextureBufferHelper;->textureFrameBuffer:Lio/agora/base/internal/video/GlTextureFrameBuffer;

    invoke-virtual {v1}, Lio/agora/base/internal/video/GlTextureFrameBuffer;->getFrameBufferId()I

    move-result v1

    const v2, 0x8d40

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    int-to-float p2, p2

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->preRotate(F)Z

    const/high16 p2, -0x41000000    # -0.5f

    invoke-virtual {v1, p2, p2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {p1}, Lio/agora/base/TextureBuffer;->getTransformMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-static {v1}, Lio/agora/base/internal/video/RendererCommon;->convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v6

    invoke-virtual {p1}, Lio/agora/base/TextureBuffer;->getType()Lio/agora/base/VideoFrame$TextureBuffer$Type;

    move-result-object p2

    sget-object v1, Lio/agora/base/VideoFrame$TextureBuffer$Type;->RGB:Lio/agora/base/VideoFrame$TextureBuffer$Type;

    iget-object v3, p0, Lio/agora/base/TextureBufferHelper;->textureDrawer:Lio/agora/base/internal/video/GlRectDrawer;

    invoke-virtual {p1}, Lio/agora/base/TextureBuffer;->getTextureId()I

    move-result v4

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v7, v11

    move v8, v12

    if-ne p2, v1, :cond_5

    invoke-virtual/range {v3 .. v12}, Lio/agora/base/internal/video/GlRectDrawer;->drawRgb(II[FIIIIII)V

    goto :goto_2

    :cond_5
    invoke-virtual/range {v3 .. v12}, Lio/agora/base/internal/video/GlRectDrawer;->drawOes(II[FIIIIII)V

    :goto_2
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object p1, p0, Lio/agora/base/TextureBufferHelper;->textureFrameBuffer:Lio/agora/base/internal/video/GlTextureFrameBuffer;

    invoke-virtual {p1}, Lio/agora/base/internal/video/GlTextureFrameBuffer;->getTextureId()I

    move-result p1

    return p1
.end method

.method public dispose()V
    .locals 4

    const-string v0, "dispose()"

    const-string v1, "TextureBufferHelper"

    invoke-static {v1, v0}, Lio/agora/utils2/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lio/agora/base/TextureBufferHelper;->handler:Landroid/os/Handler;

    new-instance v2, Lio/agora/base/TextureBufferHelper$4;

    invoke-direct {v2, p0}, Lio/agora/base/TextureBufferHelper$4;-><init>(Lio/agora/base/TextureBufferHelper;)V

    invoke-static {v0, v2}, Lio/agora/base/internal/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dispose fail: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/utils2/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getEglBase()Lio/agora/base/internal/video/EglBase;
    .locals 1

    iget-object v0, p0, Lio/agora/base/TextureBufferHelper;->eglBase:Lio/agora/base/internal/video/EglBase;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lio/agora/base/TextureBufferHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public invoke(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/base/TextureBufferHelper;->handler:Landroid/os/Handler;

    invoke-static {v0, p1}, Lio/agora/base/internal/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isTextureInUse()Z
    .locals 1

    iget v0, p0, Lio/agora/base/TextureBufferHelper;->numOfTextureInUse:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parseAlphaData(Lio/agora/base/TextureBuffer;IZ)Ljava/nio/ByteBuffer;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "rotation",
            "mirror"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lio/agora/base/TextureBuffer;->getType()Lio/agora/base/VideoFrame$TextureBuffer$Type;

    move-result-object v2

    sget-object v3, Lio/agora/base/VideoFrame$TextureBuffer$Type;->RGB:Lio/agora/base/VideoFrame$TextureBuffer$Type;

    if-ne v2, v3, :cond_9

    rem-int/lit16 v2, v1, 0xb4

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lio/agora/base/TextureBuffer;->getWidth()I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lio/agora/base/TextureBuffer;->getHeight()I

    move-result v3

    :goto_0
    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lio/agora/base/TextureBuffer;->getHeight()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lio/agora/base/TextureBuffer;->getWidth()I

    move-result v2

    :goto_1
    rem-int/lit8 v4, v3, 0x4

    const/16 v5, 0x1908

    if-nez v4, :cond_2

    div-int/lit8 v6, v3, 0x4

    move v14, v6

    const/16 v15, 0x1908

    goto :goto_2

    :cond_2
    const/16 v6, 0x1906

    move v14, v3

    const/16 v15, 0x1906

    :goto_2
    iget-object v6, v0, Lio/agora/base/TextureBufferHelper;->textureDrawer:Lio/agora/base/internal/video/GlRectDrawer;

    if-nez v6, :cond_3

    new-instance v6, Lio/agora/base/internal/video/GlRectDrawer;

    invoke-direct {v6}, Lio/agora/base/internal/video/GlRectDrawer;-><init>()V

    iput-object v6, v0, Lio/agora/base/TextureBufferHelper;->textureDrawer:Lio/agora/base/internal/video/GlRectDrawer;

    :cond_3
    iget-object v6, v0, Lio/agora/base/TextureBufferHelper;->textureFrameBuffer:Lio/agora/base/internal/video/GlTextureFrameBuffer;

    if-nez v6, :cond_4

    new-instance v6, Lio/agora/base/internal/video/GlTextureFrameBuffer;

    invoke-direct {v6, v5}, Lio/agora/base/internal/video/GlTextureFrameBuffer;-><init>(I)V

    iput-object v6, v0, Lio/agora/base/TextureBufferHelper;->textureFrameBuffer:Lio/agora/base/internal/video/GlTextureFrameBuffer;

    :cond_4
    iget-object v5, v0, Lio/agora/base/TextureBufferHelper;->textureFrameBuffer:Lio/agora/base/internal/video/GlTextureFrameBuffer;

    invoke-virtual {v5, v14, v2}, Lio/agora/base/internal/video/GlTextureFrameBuffer;->setSize(II)V

    iget-object v5, v0, Lio/agora/base/TextureBufferHelper;->textureFrameBuffer:Lio/agora/base/internal/video/GlTextureFrameBuffer;

    invoke-virtual {v5}, Lio/agora/base/internal/video/GlTextureFrameBuffer;->getFrameBufferId()I

    move-result v5

    const v13, 0x8d40

    invoke-static {v13, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v5, 0x0

    invoke-static {v5, v5, v5, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v5, 0x4000

    invoke-static {v5}, Landroid/opengl/GLES20;->glClear(I)V

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v5, v6, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    if-eqz p3, :cond_5

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v1, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_5
    const/high16 v1, -0x41000000    # -0.5f

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual/range {p1 .. p1}, Lio/agora/base/TextureBuffer;->getTransformMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-static {v5}, Lio/agora/base/internal/video/RendererCommon;->convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v7

    if-nez v4, :cond_6

    iget-object v4, v0, Lio/agora/base/TextureBufferHelper;->textureDrawer:Lio/agora/base/internal/video/GlRectDrawer;

    invoke-virtual/range {p1 .. p1}, Lio/agora/base/TextureBuffer;->getTextureId()I

    move-result v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v7

    move v7, v3

    move v8, v2

    move v11, v14

    move v12, v2

    invoke-virtual/range {v4 .. v12}, Lio/agora/base/internal/video/GlRectDrawer;->drawAlpha(I[FIIIIII)V

    const v1, 0x8d40

    goto :goto_3

    :cond_6
    iget-object v4, v0, Lio/agora/base/TextureBufferHelper;->textureDrawer:Lio/agora/base/internal/video/GlRectDrawer;

    invoke-virtual/range {p1 .. p1}, Lio/agora/base/TextureBuffer;->getTextureId()I

    move-result v5

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v8, v3

    move v9, v2

    move v12, v3

    const v1, 0x8d40

    move v13, v2

    invoke-virtual/range {v4 .. v13}, Lio/agora/base/internal/video/GlRectDrawer;->drawRgb(II[FIIIIII)V

    :goto_3
    iget-object v4, v0, Lio/agora/base/TextureBufferHelper;->alphaBuffer:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_7

    mul-int v3, v3, v2

    invoke-static {v3}, Lio/agora/base/internal/JniCommon;->nativeAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    :goto_4
    iput-object v3, v0, Lio/agora/base/TextureBufferHelper;->alphaBuffer:Ljava/nio/ByteBuffer;

    goto :goto_5

    :cond_7
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    mul-int v5, v3, v2

    if-eq v4, v5, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "fillAlphaData size is changed, alphaBuffer.capacity: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lio/agora/base/TextureBufferHelper;->alphaBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  buffer.width: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  buffer.height: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TextureBufferHelper"

    invoke-static {v4, v3}, Lio/agora/utils2/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lio/agora/base/TextureBufferHelper;->alphaBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lio/agora/base/internal/JniCommon;->nativeFreeByteBuffer(Ljava/nio/ByteBuffer;)V

    invoke-static {v5}, Lio/agora/base/internal/JniCommon;->nativeAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_4

    :cond_8
    iget-object v3, v0, Lio/agora/base/TextureBufferHelper;->alphaBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_5
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v9, 0x1401

    iget-object v10, v0, Lio/agora/base/TextureBufferHelper;->alphaBuffer:Ljava/nio/ByteBuffer;

    move v6, v14

    move v7, v2

    move v8, v15

    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v1, v0, Lio/agora/base/TextureBufferHelper;->alphaBuffer:Ljava/nio/ByteBuffer;

    return-object v1

    :cond_9
    const/4 v1, 0x0

    return-object v1
.end method

.method public wrapTextureBuffer(IILio/agora/base/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;)Lio/agora/base/VideoFrame$TextureBuffer;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "type",
            "id",
            "transformMatrix"
        }
    .end annotation

    move-object v0, p0

    iget v1, v0, Lio/agora/base/TextureBufferHelper;->numOfTextureInUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lio/agora/base/TextureBufferHelper;->numOfTextureInUse:I

    new-instance v1, Lio/agora/base/TextureBuffer;

    iget-object v2, v0, Lio/agora/base/TextureBufferHelper;->eglBase:Lio/agora/base/internal/video/EglBase;

    invoke-interface {v2}, Lio/agora/base/internal/video/EglBase;->getEglBaseContext()Lio/agora/base/internal/video/EglBase$Context;

    move-result-object v3

    iget-object v9, v0, Lio/agora/base/TextureBufferHelper;->handler:Landroid/os/Handler;

    iget-object v10, v0, Lio/agora/base/TextureBufferHelper;->yuvConverter:Lio/agora/base/internal/video/YuvConverter;

    new-instance v11, Lio/agora/base/TextureBufferHelper$2;

    invoke-direct {v11, p0}, Lio/agora/base/TextureBufferHelper$2;-><init>(Lio/agora/base/TextureBufferHelper;)V

    move-object v2, v1

    move v4, p1

    move v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v11}, Lio/agora/base/TextureBuffer;-><init>(Lio/agora/base/internal/video/EglBase$Context;IILio/agora/base/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lio/agora/base/internal/video/YuvConverter;Ljava/lang/Runnable;)V

    return-object v1
.end method
