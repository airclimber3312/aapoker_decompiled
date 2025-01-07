.class public Lio/agora/base/internal/video/VideoFrameBlender;
.super Ljava/lang/Object;


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_INVOKE_TIME_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "AndroidVideoFrameBlender"


# instance fields
.field private final drawMatrix:Landroid/graphics/Matrix;

.field private isBlenderRelased:Z

.field private mBlenderHandler:Landroid/os/Handler;

.field private mCanvasHeight:I

.field private mCanvasId:Ljava/lang/String;

.field private mCanvasWidth:I

.field private mDrawer:Lio/agora/base/internal/video/RendererCommon$GlDrawer;

.field private mEglBase:Lio/agora/base/internal/video/EglBase;

.field private final mFrameDrawer:Lio/agora/base/internal/video/VideoFrameDrawer;

.field private mFramebuffer:I

.field private final mSourceLock:Ljava/lang/Object;

.field private mVideoBufferId:I

.field private mVideoSourceLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/agora/base/internal/video/VideoSourceLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoSources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/agora/base/VideoFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final yuvConverter:Lio/agora/base/internal/video/YuvConverter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/agora/base/internal/video/YuvConverter;

    invoke-direct {v0}, Lio/agora/base/internal/video/YuvConverter;-><init>()V

    iput-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->yuvConverter:Lio/agora/base/internal/video/YuvConverter;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mBlenderHandler:Landroid/os/Handler;

    iput-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mEglBase:Lio/agora/base/internal/video/EglBase;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mVideoSourceLayouts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mVideoSources:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mSourceLock:Ljava/lang/Object;

    new-instance v0, Lio/agora/base/internal/video/VideoFrameDrawer;

    invoke-direct {v0}, Lio/agora/base/internal/video/VideoFrameDrawer;-><init>()V

    iput-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mFrameDrawer:Lio/agora/base/internal/video/VideoFrameDrawer;

    new-instance v0, Lio/agora/base/internal/video/GlRectDrawer;

    invoke-direct {v0}, Lio/agora/base/internal/video/GlRectDrawer;-><init>()V

    iput-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mDrawer:Lio/agora/base/internal/video/RendererCommon$GlDrawer;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->drawMatrix:Landroid/graphics/Matrix;

    const-string v0, "_agora_canvas_"

    iput-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mCanvasId:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mVideoBufferId:I

    iput v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mFramebuffer:I

    iput v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mCanvasWidth:I

    iput v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mCanvasHeight:I

    iput-boolean v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->isBlenderRelased:Z

    return-void
.end method

.method static synthetic access$000(Lio/agora/base/internal/video/VideoFrameBlender;)Lio/agora/base/internal/video/EglBase;
    .locals 0

    iget-object p0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mEglBase:Lio/agora/base/internal/video/EglBase;

    return-object p0
.end method

.method static synthetic access$002(Lio/agora/base/internal/video/VideoFrameBlender;Lio/agora/base/internal/video/EglBase;)Lio/agora/base/internal/video/EglBase;
    .locals 0

    iput-object p1, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mEglBase:Lio/agora/base/internal/video/EglBase;

    return-object p1
.end method

.method static synthetic access$1000(Lio/agora/base/internal/video/VideoFrameBlender;)I
    .locals 0

    iget p0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mCanvasWidth:I

    return p0
.end method

.method static synthetic access$102(Lio/agora/base/internal/video/VideoFrameBlender;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/agora/base/internal/video/VideoFrameBlender;->isBlenderRelased:Z

    return p1
.end method

.method static synthetic access$1100(Lio/agora/base/internal/video/VideoFrameBlender;)I
    .locals 0

    iget p0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mCanvasHeight:I

    return p0
.end method

.method static synthetic access$1200(Lio/agora/base/internal/video/VideoFrameBlender;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mBlenderHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lio/agora/base/internal/video/VideoFrameBlender;)Lio/agora/base/internal/video/YuvConverter;
    .locals 0

    iget-object p0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->yuvConverter:Lio/agora/base/internal/video/YuvConverter;

    return-object p0
.end method

.method static synthetic access$200(Lio/agora/base/internal/video/VideoFrameBlender;)V
    .locals 0

    invoke-direct {p0}, Lio/agora/base/internal/video/VideoFrameBlender;->releaseTextureBuffer()V

    return-void
.end method

.method static synthetic access$300(Lio/agora/base/internal/video/VideoFrameBlender;)I
    .locals 0

    iget p0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mVideoBufferId:I

    return p0
.end method

.method static synthetic access$302(Lio/agora/base/internal/video/VideoFrameBlender;I)I
    .locals 0

    iput p1, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mVideoBufferId:I

    return p1
.end method

.method static synthetic access$400(Lio/agora/base/internal/video/VideoFrameBlender;)I
    .locals 0

    iget p0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mFramebuffer:I

    return p0
.end method

.method static synthetic access$402(Lio/agora/base/internal/video/VideoFrameBlender;I)I
    .locals 0

    iput p1, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mFramebuffer:I

    return p1
.end method

.method static synthetic access$500(Lio/agora/base/internal/video/VideoFrameBlender;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mSourceLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$600(Lio/agora/base/internal/video/VideoFrameBlender;)Z
    .locals 0

    invoke-direct {p0}, Lio/agora/base/internal/video/VideoFrameBlender;->checkIfNeedAlphaRender()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lio/agora/base/internal/video/VideoFrameBlender;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mVideoSourceLayouts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lio/agora/base/internal/video/VideoFrameBlender;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mVideoSources:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$900(Lio/agora/base/internal/video/VideoFrameBlender;Lio/agora/base/internal/video/VideoSourceLayout;Lio/agora/base/VideoFrame;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/agora/base/internal/video/VideoFrameBlender;->doBlenderSource(Lio/agora/base/internal/video/VideoSourceLayout;Lio/agora/base/VideoFrame;Z)V

    return-void
.end method

.method private checkIfNeedAlphaRender()Z
    .locals 3

    iget-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mVideoSourceLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/agora/base/internal/video/VideoSourceLayout;

    iget-object v2, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mVideoSources:Ljava/util/HashMap;

    invoke-virtual {v1}, Lio/agora/base/internal/video/VideoSourceLayout;->getSourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/agora/base/VideoFrame;

    invoke-virtual {v1}, Lio/agora/base/VideoFrame;->getAlphaBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private createAndBindTextureBuffer(II)Z
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

    iget-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mBlenderHandler:Landroid/os/Handler;

    new-instance v1, Lio/agora/base/internal/video/VideoFrameBlender$2;

    invoke-direct {v1, p0, p1, p2}, Lio/agora/base/internal/video/VideoFrameBlender$2;-><init>(Lio/agora/base/internal/video/VideoFrameBlender;II)V

    const-wide/16 p1, 0x7d0

    invoke-static {v0, p1, p2, v1}, Lio/agora/base/internal/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;JLjava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public static createImageTexture(Ljava/nio/ByteBuffer;III)I
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "width",
            "height",
            "format"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    const-string v1, "glGenTextures"

    invoke-static {v1}, Lio/agora/base/internal/video/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2802

    const v3, 0x47012f00    # 33071.0f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2803

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2801

    const/16 v3, 0x2601

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v1, "loadImageTexture"

    invoke-static {v1}, Lio/agora/base/internal/video/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x1401

    move v4, p3

    move v5, p1

    move v6, p2

    move v8, p3

    move-object v10, p0

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static {v1}, Lio/agora/base/internal/video/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    return v0
.end method

.method private doBlenderSource(Lio/agora/base/internal/video/VideoSourceLayout;Lio/agora/base/VideoFrame;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "layout",
            "videoFrame",
            "isNeedAlpha"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lio/agora/base/internal/video/VideoSourceLayout;->getCroppedX()I

    move-result v1

    invoke-virtual {p1}, Lio/agora/base/internal/video/VideoSourceLayout;->getCroppedY()I

    move-result v2

    invoke-virtual {p1}, Lio/agora/base/internal/video/VideoSourceLayout;->getCroppedX()I

    move-result v3

    invoke-virtual {p1}, Lio/agora/base/internal/video/VideoSourceLayout;->getCroppedWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Lio/agora/base/internal/video/VideoSourceLayout;->getCroppedY()I

    move-result v4

    invoke-virtual {p1}, Lio/agora/base/internal/video/VideoSourceLayout;->getCroppedHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1}, Lio/agora/base/internal/video/VideoSourceLayout;->isMirrorY()Z

    move-result v1

    invoke-static {v0, p2, v1}, Lio/agora/base/internal/video/EglRenderer;->DoConvertRectFromAndroidGraphicsRect(Landroid/graphics/Rect;Lio/agora/base/VideoFrame;Z)[F

    move-result-object v0

    iget-object v1, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mDrawer:Lio/agora/base/internal/video/RendererCommon$GlDrawer;

    invoke-static {v0}, Lio/agora/base/internal/video/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/agora/base/internal/video/RendererCommon$GlDrawer;->setTextureCropCoord(Ljava/nio/FloatBuffer;)V

    iget-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->drawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->drawMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {p1}, Lio/agora/base/internal/video/VideoSourceLayout;->isMirrorY()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->drawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_0
    invoke-virtual {p1}, Lio/agora/base/internal/video/VideoSourceLayout;->getVideoSourceType()Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

    move-result-object v0

    sget-object v3, Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;->STREAM:Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->drawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_1
    iget-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->drawMatrix:Landroid/graphics/Matrix;

    const/high16 v1, -0x41000000    # -0.5f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {p1}, Lio/agora/base/internal/video/VideoSourceLayout;->getPositionX()I

    move-result v0

    invoke-virtual {p1}, Lio/agora/base/internal/video/VideoSourceLayout;->getPositionY()I

    move-result v1

    invoke-virtual {p1}, Lio/agora/base/internal/video/VideoSourceLayout;->getSourceId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mCanvasId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lio/agora/base/internal/video/VideoSourceLayout;->getPositionX()I

    move-result v0

    iget v1, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mCanvasHeight:I

    invoke-virtual {p1}, Lio/agora/base/internal/video/VideoSourceLayout;->getPositionY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Lio/agora/base/internal/video/VideoSourceLayout;->getDestHeight()I

    move-result v2

    sub-int/2addr v1, v2

    :cond_2
    move v6, v0

    move v7, v1

    iget-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mFrameDrawer:Lio/agora/base/internal/video/VideoFrameDrawer;

    invoke-virtual {v0}, Lio/agora/base/internal/video/VideoFrameDrawer;->disableNegativeAlphaData()V

    iget-object v2, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mFrameDrawer:Lio/agora/base/internal/video/VideoFrameDrawer;

    iget-object v4, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mDrawer:Lio/agora/base/internal/video/RendererCommon$GlDrawer;

    iget-object v5, p0, Lio/agora/base/internal/video/VideoFrameBlender;->drawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Lio/agora/base/internal/video/VideoSourceLayout;->getDestWidth()I

    move-result v8

    invoke-virtual {p1}, Lio/agora/base/internal/video/VideoSourceLayout;->getDestHeight()I

    move-result v9

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lio/agora/base/VideoFrame;->getAlphaBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    const/4 v10, 0x0

    :goto_0
    move-object v3, p2

    invoke-virtual/range {v2 .. v10}, Lio/agora/base/internal/video/VideoFrameDrawer;->drawFrame(Lio/agora/base/VideoFrame;Lio/agora/base/internal/video/RendererCommon$GlDrawer;Landroid/graphics/Matrix;IIIIZ)V

    return-void
.end method

.method public static getTexture2DImage(III)Landroid/graphics/Bitmap;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureID",
            "width",
            "height"
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v8, p2

    const-string v9, "AndroidVideoFrameBlender"

    const/4 v10, 0x1

    :try_start_0
    new-array v11, v10, [I

    invoke-static {v11}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v1

    const v2, 0x8ca6

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    new-array v12, v10, [I

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    aget v14, v12, v13

    const v15, 0x8d40

    invoke-static {v15, v14}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    new-array v1, v10, [I

    invoke-static {v10, v1, v13}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    aget v1, v1, v13

    const v2, 0x8d41

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    const v3, 0x81a5

    invoke-static {v2, v3, v0, v8}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    const v3, 0x8ce0

    const/16 v4, 0xde1

    move/from16 v5, p0

    invoke-static {v15, v3, v4, v5, v13}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const v3, 0x8d00

    invoke-static {v15, v3, v2, v1}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    invoke-static {v15}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v1

    const v2, 0x8cd5

    if-eq v1, v2, :cond_0

    const-string v1, "Framebuffer error"

    invoke-static {v9, v1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    mul-int v1, v0, v8

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 p0, v7

    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-static {v12}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(ILjava/nio/IntBuffer;)V

    invoke-static {v14}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(ILjava/nio/IntBuffer;)V

    aget v1, v11, v13

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private releaseTextureBuffer()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    iget v2, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mVideoBufferId:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    aput v2, v1, v4

    invoke-static {v0, v1, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v3, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mVideoBufferId:I

    :cond_0
    iget v2, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mFramebuffer:I

    if-lez v2, :cond_1

    aput v2, v1, v4

    invoke-static {v0, v1, v4}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    iput v3, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mFramebuffer:I

    :cond_1
    return-void
.end method

.method private removeSourceLayoutIfNeed(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceId"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mVideoSourceLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mVideoSourceLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/agora/base/internal/video/VideoSourceLayout;

    invoke-virtual {v1}, Lio/agora/base/internal/video/VideoSourceLayout;->getSourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mVideoSourceLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private uploadImageSourceToTexture(Lio/agora/base/VideoFrame;)Lio/agora/base/VideoFrame$TextureBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "inputFrame"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mBlenderHandler:Landroid/os/Handler;

    new-instance v1, Lio/agora/base/internal/video/VideoFrameBlender$5;

    invoke-direct {v1, p0, p1}, Lio/agora/base/internal/video/VideoFrameBlender$5;-><init>(Lio/agora/base/internal/video/VideoFrameBlender;Lio/agora/base/VideoFrame;)V

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3, v1}, Lio/agora/base/internal/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;JLjava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/base/VideoFrame$TextureBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uploadImageSourceToTexture faild for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AndroidVideoFrameBlender"

    invoke-static {v0, p1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public blenderSourceList()Lio/agora/base/VideoFrame$Buffer;
    .locals 5

    iget-boolean v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->isBlenderRelased:Z

    const-string v1, "AndroidVideoFrameBlender"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "blenderSourceList failed for BlenderRelased"

    :goto_0
    invoke-static {v1, v0}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    iget v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mCanvasWidth:I

    if-eqz v0, :cond_2

    iget v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mCanvasHeight:I

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mBlenderHandler:Landroid/os/Handler;

    new-instance v1, Lio/agora/base/internal/video/VideoFrameBlender$3;

    invoke-direct {v1, p0}, Lio/agora/base/internal/video/VideoFrameBlender$3;-><init>(Lio/agora/base/internal/video/VideoFrameBlender;)V

    const-wide/16 v3, 0x7d0

    invoke-static {v0, v3, v4, v1}, Lio/agora/base/internal/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;JLjava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/base/VideoFrame$Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v2

    :cond_2
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "blenderSourceList failed for mCanvasWidth:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mCanvasWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mCanvasHeight:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mCanvasHeight:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public initBlender(Ljava/lang/String;Lio/agora/base/internal/video/EglBase$Context;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "name",
            "sharedContext"
        }
    .end annotation

    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "VideoFameBlender"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mBlenderHandler:Landroid/os/Handler;

    :try_start_0
    new-instance v0, Lio/agora/base/internal/video/VideoFrameBlender$1;

    invoke-direct {v0, p0, p2}, Lio/agora/base/internal/video/VideoFrameBlender$1;-><init>(Lio/agora/base/internal/video/VideoFrameBlender;Lio/agora/base/internal/video/EglBase$Context;)V

    const-wide/16 v1, 0x7d0

    invoke-static {p1, v1, v2, v0}, Lio/agora/base/internal/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;JLjava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "AndroidVideoFrameBlender"

    const-string p2, "initBlender faild for EglBaseFactory failed"

    invoke-static {p1, p2}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public releaseBlender()V
    .locals 4

    iget-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mBlenderHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->isBlenderRelased:Z

    invoke-virtual {p0}, Lio/agora/base/internal/video/VideoFrameBlender;->releaseBlenderResource()V

    :try_start_0
    iget-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mBlenderHandler:Landroid/os/Handler;

    new-instance v1, Lio/agora/base/internal/video/VideoFrameBlender$6;

    invoke-direct {v1, p0}, Lio/agora/base/internal/video/VideoFrameBlender$6;-><init>(Lio/agora/base/internal/video/VideoFrameBlender;)V

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3, v1}, Lio/agora/base/internal/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;JLjava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "releaseBlender faild for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidVideoFrameBlender"

    invoke-static {v1, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mBlenderHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    return-void
.end method

.method public releaseBlenderResource()V
    .locals 3

    iget-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mSourceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mVideoSourceLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mVideoSources:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/agora/base/VideoFrame;

    invoke-virtual {v2}, Lio/agora/base/VideoFrame;->release()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mVideoSources:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateSourceContent(Ljava/lang/String;Lio/agora/base/VideoFrame;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceId",
            "frame"
        }
    .end annotation

    iget-boolean v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->isBlenderRelased:Z

    if-eqz v0, :cond_0

    const-string p1, "AndroidVideoFrameBlender"

    const-string p2, "updateSourceContent failed for BlenderRelased"

    invoke-static {p1, p2}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mSourceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mVideoSources:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mVideoSources:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/agora/base/VideoFrame;

    invoke-virtual {v1}, Lio/agora/base/VideoFrame;->release()V

    iget-object v1, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mVideoSources:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p2}, Lio/agora/base/VideoFrame;->getBuffer()Lio/agora/base/VideoFrame$Buffer;

    move-result-object v1

    instance-of v1, v1, Lio/agora/base/VideoFrame$RgbaBuffer;

    if-eqz v1, :cond_4

    invoke-direct {p0, p2}, Lio/agora/base/internal/video/VideoFrameBlender;->uploadImageSourceToTexture(Lio/agora/base/VideoFrame;)Lio/agora/base/VideoFrame$TextureBuffer;

    move-result-object v1

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    new-instance v2, Lio/agora/base/VideoFrame;

    invoke-virtual {p2}, Lio/agora/base/VideoFrame;->getRotation()I

    move-result v3

    invoke-virtual {p2}, Lio/agora/base/VideoFrame;->getTimestampNs()J

    move-result-wide v4

    invoke-direct {v2, v1, v3, v4, v5}, Lio/agora/base/VideoFrame;-><init>(Lio/agora/base/VideoFrame$Buffer;IJ)V

    invoke-virtual {p2}, Lio/agora/base/VideoFrame;->getAlphaBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lio/agora/base/VideoFrame;->getAlphaBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {v2, p2}, Lio/agora/base/VideoFrame;->fillAlphaData(Ljava/nio/ByteBuffer;)V

    :cond_3
    iget-object p2, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mVideoSources:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lio/agora/base/VideoFrame;->retain()V

    iget-object v1, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mVideoSources:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateVideoSourceLayout(Lio/agora/base/internal/video/VideoSourceLayout;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoSourceLayout"
        }
    .end annotation

    iget-boolean v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->isBlenderRelased:Z

    if-eqz v0, :cond_0

    const-string p1, "AndroidVideoFrameBlender"

    const-string v0, "updateSourceLayout failed for BlenderRelased"

    invoke-static {p1, v0}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mSourceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lio/agora/base/internal/video/VideoSourceLayout;->getSourceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/agora/base/internal/video/VideoFrameBlender;->removeSourceLayoutIfNeed(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/agora/base/internal/video/VideoSourceLayout;->getSourceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mCanvasId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lio/agora/base/internal/video/VideoSourceLayout;->getDestWidth()I

    move-result v1

    iput v1, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mCanvasWidth:I

    invoke-virtual {p1}, Lio/agora/base/internal/video/VideoSourceLayout;->getDestHeight()I

    move-result v1

    iput v1, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mCanvasHeight:I

    iget v2, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mCanvasWidth:I

    invoke-direct {p0, v2, v1}, Lio/agora/base/internal/video/VideoFrameBlender;->createAndBindTextureBuffer(II)Z

    :cond_1
    iget-object v1, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mVideoSourceLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lio/agora/base/internal/video/VideoFrameBlender;->mVideoSourceLayouts:Ljava/util/ArrayList;

    new-instance v1, Lio/agora/base/internal/video/VideoFrameBlender$4;

    invoke-direct {v1, p0}, Lio/agora/base/internal/video/VideoFrameBlender$4;-><init>(Lio/agora/base/internal/video/VideoFrameBlender;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
