.class public Lio/agora/mediaplayer/gl/PlayerTextureHelper;
.super Ljava/lang/Object;

# interfaces
.implements Lio/agora/mediaplayer/IPlayerTextureHelper;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field public static final IDENTITY_MATRIX:[F

.field protected static final MAX_BUFFER_CNT:I = 0xc

.field private static final TAG:Ljava/lang/String; = "PlayerTextureHelper"


# instance fields
.field private final decodedTextureBuffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/agora/base/VideoFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final eglBase:Lio/agora/base/internal/video/EglBase;

.field private final handler:Landroid/os/Handler;

.field private hasPendingTexture:Z

.field private isQuitting:Z

.field private final newFrameLock:Ljava/lang/Object;

.field private final oesTextureId:I

.field private renderSurface:Landroid/view/Surface;

.field final setListenerRunnable:Ljava/lang/Runnable;

.field private final sharedContext:Lio/agora/base/internal/video/EglBase$Context;

.field private final surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final textureBufferPool:Lio/agora/base/internal/video/TextureBufferPool;

.field private textureHeight:I

.field private textureWidth:I

.field private final yuvConverter:Lio/agora/base/internal/video/YuvConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->IDENTITY_MATRIX:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method private constructor <init>(Lio/agora/base/internal/video/EglBase$Context;Landroid/os/Handler;)V
    .locals 8
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

    const/4 v0, 0x0

    iput-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->renderSurface:Landroid/view/Surface;

    new-instance v7, Lio/agora/base/internal/video/YuvConverter;

    invoke-direct {v7}, Lio/agora/base/internal/video/YuvConverter;-><init>()V

    iput-object v7, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->yuvConverter:Lio/agora/base/internal/video/YuvConverter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->hasPendingTexture:Z

    iput-boolean v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->isQuitting:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->newFrameLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->decodedTextureBuffers:Ljava/util/Queue;

    new-instance v0, Lio/agora/mediaplayer/gl/PlayerTextureHelper$2;

    invoke-direct {v0, p0}, Lio/agora/mediaplayer/gl/PlayerTextureHelper$2;-><init>(Lio/agora/mediaplayer/gl/PlayerTextureHelper;)V

    iput-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlayerTextureHelper new "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerTextureHelper"

    invoke-static {v1, v0}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->handler:Landroid/os/Handler;

    new-instance v0, Lio/agora/base/internal/video/EglBase14;

    move-object v1, p1

    check-cast v1, Lio/agora/base/internal/video/EglBase14$Context;

    sget-object v2, Lio/agora/base/internal/video/EglBase;->CONFIG_PIXEL_BUFFER:[I

    invoke-direct {v0, v1, v2}, Lio/agora/base/internal/video/EglBase14;-><init>(Lio/agora/base/internal/video/EglBase14$Context;[I)V

    iput-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->eglBase:Lio/agora/base/internal/video/EglBase;

    :try_start_0
    invoke-interface {v0}, Lio/agora/base/internal/video/EglBase;->createDummyPbufferSurface()V

    invoke-interface {v0}, Lio/agora/base/internal/video/EglBase;->makeCurrent()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "PlayerTextureBufferPool"

    const/16 v2, 0xc

    const/16 v3, 0x1907

    move-object v4, p2

    move-object v5, v0

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Lio/agora/base/internal/video/TextureBufferPool;->createWithinGlThread(Ljava/lang/String;IILandroid/os/Handler;Lio/agora/base/internal/video/EglBase;Lio/agora/base/internal/video/EglBase$Context;Lio/agora/base/internal/video/YuvConverter;)Lio/agora/base/internal/video/TextureBufferPool;

    move-result-object v1

    iput-object v1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->textureBufferPool:Lio/agora/base/internal/video/TextureBufferPool;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lio/agora/base/internal/video/EglBase;->getEglBaseContext()Lio/agora/base/internal/video/EglBase$Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->sharedContext:Lio/agora/base/internal/video/EglBase$Context;

    const p1, 0x8d65

    invoke-static {p1}, Lio/agora/base/internal/video/GlUtil;->generateTexture(I)I

    move-result p1

    iput p1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->oesTextureId:I

    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-static {v0, p0, p2}, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    const/16 p1, 0x280

    const/16 p2, 0x168

    invoke-direct {p0, p1, p2}, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->setDefaultTextureSize(II)V

    invoke-direct {p0}, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->startListening()V

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->eglBase:Lio/agora/base/internal/video/EglBase;

    invoke-interface {v0}, Lio/agora/base/internal/video/EglBase;->release()V

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->quit()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SurfaceTextureHelperTest must be created on the handler thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lio/agora/base/internal/video/EglBase$Context;Landroid/os/Handler;Lio/agora/mediaplayer/gl/PlayerTextureHelper$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/agora/mediaplayer/gl/PlayerTextureHelper;-><init>(Lio/agora/base/internal/video/EglBase$Context;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$100(Lio/agora/mediaplayer/gl/PlayerTextureHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->hasPendingTexture:Z

    return p0
.end method

.method static synthetic access$102(Lio/agora/mediaplayer/gl/PlayerTextureHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->hasPendingTexture:Z

    return p1
.end method

.method static synthetic access$200(Lio/agora/mediaplayer/gl/PlayerTextureHelper;)V
    .locals 0

    invoke-direct {p0}, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->updateTexImage()V

    return-void
.end method

.method static synthetic access$302(Lio/agora/mediaplayer/gl/PlayerTextureHelper;I)I
    .locals 0

    iput p1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->textureWidth:I

    return p1
.end method

.method static synthetic access$402(Lio/agora/mediaplayer/gl/PlayerTextureHelper;I)I
    .locals 0

    iput p1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->textureHeight:I

    return p1
.end method

.method static synthetic access$502(Lio/agora/mediaplayer/gl/PlayerTextureHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->isQuitting:Z

    return p1
.end method

.method static synthetic access$600(Lio/agora/mediaplayer/gl/PlayerTextureHelper;)V
    .locals 0

    invoke-direct {p0}, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->release()V

    return-void
.end method

.method static synthetic access$700(Lio/agora/mediaplayer/gl/PlayerTextureHelper;)Lio/agora/base/internal/video/TextureBufferPool;
    .locals 0

    iget-object p0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->textureBufferPool:Lio/agora/base/internal/video/TextureBufferPool;

    return-object p0
.end method

.method public static create()Lio/agora/mediaplayer/gl/PlayerTextureHelper;
    .locals 5

    invoke-static {}, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->isEgl14Supported()Z

    move-result v0

    const-string v1, "PlayerTextureHelper"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "device not support Egl14"

    invoke-static {v1, v0}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "player-texture-thread"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PlayerTextureHelper create "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/os/HandlerThread;

    invoke-direct {v3, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :try_start_0
    new-instance v3, Lio/agora/mediaplayer/gl/PlayerTextureHelper$1;

    invoke-direct {v3, v2, v4, v0}, Lio/agora/mediaplayer/gl/PlayerTextureHelper$1;-><init>(Lio/agora/base/internal/video/EglBase$Context;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lio/agora/base/internal/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/agora/mediaplayer/gl/PlayerTextureHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " create failure"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method private static isEgl14Supported()Z
    .locals 1

    invoke-static {}, Lio/agora/base/internal/video/EglBase14;->isEGL14SupportedImpl()Z

    move-result v0

    return v0
.end method

.method private release()V
    .locals 4

    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->isQuitting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->yuvConverter:Lio/agora/base/internal/video/YuvConverter;

    invoke-virtual {v0}, Lio/agora/base/internal/video/YuvConverter;->release()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    iget v2, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->oesTextureId:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->textureBufferPool:Lio/agora/base/internal/video/TextureBufferPool;

    invoke-virtual {v0}, Lio/agora/base/internal/video/TextureBufferPool;->dispose()V

    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->eglBase:Lio/agora/base/internal/video/EglBase;

    invoke-interface {v0}, Lio/agora/base/internal/video/EglBase;->release()V

    invoke-virtual {p0}, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->resetTextureBufferQueue()V

    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "release player texture helper "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerTextureHelper"

    invoke-static {v1, v0}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected release."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setDefaultTextureSize(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    if-lez p1, :cond_1

    if-lez p2, :cond_0

    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lio/agora/mediaplayer/gl/PlayerTextureHelper$4;

    invoke-direct {v1, p0, p1, p2}, Lio/agora/mediaplayer/gl/PlayerTextureHelper$4;-><init>(Lio/agora/mediaplayer/gl/PlayerTextureHelper;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Texture height must be positive, but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Texture width must be positive, but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "surfaceTexture",
            "listener",
            "handler"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private startListening()V
    .locals 2

    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private stopListening()V
    .locals 2

    const-string v0, "PlayerTextureHelper"

    const-string v1, "stopListening()"

    invoke-static {v0, v1}, Lio/agora/utils2/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private tryDeliverTextureFrame()V
    .locals 13

    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->isQuitting:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->hasPendingTexture:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->hasPendingTexture:Z

    invoke-direct {p0}, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->updateTexImage()V

    iget v1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->textureWidth:I

    if-eqz v1, :cond_3

    iget v1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->textureHeight:I

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    new-array v1, v1, [F

    iget-object v2, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    new-instance v2, Lio/agora/base/TextureBuffer;

    iget-object v4, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->sharedContext:Lio/agora/base/internal/video/EglBase$Context;

    iget v5, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->textureWidth:I

    iget v6, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->textureHeight:I

    sget-object v7, Lio/agora/base/VideoFrame$TextureBuffer$Type;->OES:Lio/agora/base/VideoFrame$TextureBuffer$Type;

    iget v8, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->oesTextureId:I

    invoke-static {v1}, Lio/agora/base/internal/video/RendererCommon;->convertMatrixToAndroidGraphicsMatrix([F)Landroid/graphics/Matrix;

    move-result-object v9

    iget-object v10, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->handler:Landroid/os/Handler;

    iget-object v11, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->yuvConverter:Lio/agora/base/internal/video/YuvConverter;

    const/4 v12, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v12}, Lio/agora/base/TextureBuffer;-><init>(Lio/agora/base/internal/video/EglBase$Context;IILio/agora/base/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lio/agora/base/internal/video/YuvConverter;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v2}, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->textureCopy(Lio/agora/base/VideoFrame$TextureBuffer;)Lio/agora/base/VideoFrame$TextureBuffer;

    move-result-object v1

    invoke-interface {v2}, Lio/agora/base/VideoFrame$TextureBuffer;->release()V

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "java oesTextureId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->oesTextureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->sharedContext:Lio/agora/base/internal/video/EglBase$Context;

    invoke-interface {v1}, Lio/agora/base/internal/video/EglBase$Context;->getNativeEglContext()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " java pts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v2, Lio/agora/base/VideoFrame;

    iget-object v3, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v3

    invoke-direct {v2, v1, v0, v3, v4}, Lio/agora/base/VideoFrame;-><init>(Lio/agora/base/VideoFrame$Buffer;IJ)V

    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->newFrameLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->decodedTextureBuffers:Ljava/util/Queue;

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->newFrameLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_1
    const-string v0, "Texture size has not been set."

    goto :goto_0

    :cond_4
    :goto_2
    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateTexImage()V
    .locals 4

    :try_start_0
    sget-object v0, Lio/agora/base/internal/video/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "PlayerTextureHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to updateTexImage. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    invoke-direct {p0}, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->stopListening()V

    :try_start_0
    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lio/agora/mediaplayer/gl/PlayerTextureHelper$5;

    invoke-direct {v1, p0}, Lio/agora/mediaplayer/gl/PlayerTextureHelper$5;-><init>(Lio/agora/mediaplayer/gl/PlayerTextureHelper;)V

    invoke-static {v0, v1}, Lio/agora/base/internal/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PlayerTextureHelper"

    const-string v2, "dispose faile: "

    invoke-static {v1, v2, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getAvailableTextureInfo(I)Lio/agora/base/VideoFrame;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "waitTime"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->newFrameLock:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->decodedTextureBuffers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->newFrameLock:Ljava/lang/Object;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    :goto_1
    iget-object p1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->decodedTextureBuffers:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/base/VideoFrame;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getEglContextHandler()J
    .locals 2

    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->sharedContext:Lio/agora/base/internal/video/EglBase$Context;

    invoke-interface {v0}, Lio/agora/base/internal/video/EglBase$Context;->getNativeEglContext()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFakeTextureInfo()Lio/agora/base/VideoFrame;
    .locals 11

    const-string v0, "getFakeTextureInfo"

    invoke-static {v0}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;)V

    new-instance v0, Lio/agora/base/TextureBuffer;

    iget-object v2, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->sharedContext:Lio/agora/base/internal/video/EglBase$Context;

    const/16 v3, 0x280

    const/16 v4, 0x168

    sget-object v5, Lio/agora/base/VideoFrame$TextureBuffer$Type;->RGB:Lio/agora/base/VideoFrame$TextureBuffer$Type;

    const/4 v6, 0x0

    sget-object v1, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->IDENTITY_MATRIX:[F

    invoke-static {v1}, Lio/agora/base/internal/video/RendererCommon;->convertMatrixToAndroidGraphicsMatrix([F)Landroid/graphics/Matrix;

    move-result-object v7

    iget-object v8, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->handler:Landroid/os/Handler;

    iget-object v9, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->yuvConverter:Lio/agora/base/internal/video/YuvConverter;

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lio/agora/base/TextureBuffer;-><init>(Lio/agora/base/internal/video/EglBase$Context;IILio/agora/base/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lio/agora/base/internal/video/YuvConverter;Ljava/lang/Runnable;)V

    new-instance v1, Lio/agora/base/VideoFrame;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lio/agora/base/VideoFrame;-><init>(Lio/agora/base/VideoFrame$Buffer;IJ)V

    return-object v1
.end method

.method public getRenderGlSurface()Landroid/view/Surface;
    .locals 2

    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->renderSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/Surface;

    invoke-direct {p0}, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->renderSurface:Landroid/view/Surface;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getRenderGlSurface "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " renderSurface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->renderSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerTextureHelper"

    invoke-static {v1, v0}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->renderSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surfaceTexture"
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->hasPendingTexture:Z

    invoke-direct {p0}, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->tryDeliverTextureFrame()V

    return-void
.end method

.method public releaseRenderedTextureInfo(Lio/agora/base/VideoFrame;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->release()V

    :cond_0
    return-void
.end method

.method public resetTextureBufferQueue()V
    .locals 4

    const-string v0, "resetTextureBufferQueue "

    iget-object v1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->newFrameLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "PlayerTextureHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->decodedTextureBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->decodedTextureBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/agora/base/VideoFrame;

    invoke-virtual {v2}, Lio/agora/base/VideoFrame;->release()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->decodedTextureBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTextureSize(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lio/agora/mediaplayer/gl/PlayerTextureHelper$3;

    invoke-direct {v1, p0, p1, p2}, Lio/agora/mediaplayer/gl/PlayerTextureHelper$3;-><init>(Lio/agora/mediaplayer/gl/PlayerTextureHelper;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public textureCopy(Lio/agora/base/VideoFrame$TextureBuffer;)Lio/agora/base/VideoFrame$TextureBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "textureBuffer"
        }
    .end annotation

    invoke-interface {p1}, Lio/agora/base/VideoFrame$TextureBuffer;->getTextureId()I

    move-result v0

    iget v1, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->oesTextureId:I

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/agora/mediaplayer/gl/PlayerTextureHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lio/agora/mediaplayer/gl/PlayerTextureHelper$6;

    invoke-direct {v1, p0, p1}, Lio/agora/mediaplayer/gl/PlayerTextureHelper$6;-><init>(Lio/agora/mediaplayer/gl/PlayerTextureHelper;Lio/agora/base/VideoFrame$TextureBuffer;)V

    invoke-static {v0, v1}, Lio/agora/base/internal/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/base/VideoFrame$TextureBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "textureBufferPool release faile: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayerTextureHelper"

    invoke-static {v0, p1}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "textureCopy called with unexpected textureId"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
