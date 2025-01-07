.class public Lio/agora/base/internal/SurfaceViewRenderer;
.super Landroid/view/SurfaceView;
.source "SurfaceViewRenderer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lio/agora/base/internal/video/VideoSink;
.implements Lio/agora/base/internal/video/RendererCommon$RendererEvents;


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceViewRenderer"


# instance fields
.field private final eglRenderer:Lio/agora/base/internal/SurfaceEglRenderer;

.field private enableFixedSize:Z

.field private rendererEvents:Lio/agora/base/internal/video/RendererCommon$RendererEvents;

.field private final resourceName:Ljava/lang/String;

.field private rotatedFrameHeight:I

.field private rotatedFrameWidth:I

.field private surfaceHeight:I

.field private surfaceWidth:I

.field private final videoLayoutMeasure:Lio/agora/base/internal/video/RendererCommon$VideoLayoutMeasure;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance p1, Lio/agora/base/internal/video/RendererCommon$VideoLayoutMeasure;

    invoke-direct {p1}, Lio/agora/base/internal/video/RendererCommon$VideoLayoutMeasure;-><init>()V

    iput-object p1, p0, Lio/agora/base/internal/SurfaceViewRenderer;->videoLayoutMeasure:Lio/agora/base/internal/video/RendererCommon$VideoLayoutMeasure;

    .line 55
    invoke-direct {p0}, Lio/agora/base/internal/SurfaceViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/agora/base/internal/SurfaceViewRenderer;->resourceName:Ljava/lang/String;

    .line 56
    new-instance v0, Lio/agora/base/internal/SurfaceEglRenderer;

    invoke-direct {v0, p1}, Lio/agora/base/internal/SurfaceEglRenderer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/agora/base/internal/SurfaceViewRenderer;->eglRenderer:Lio/agora/base/internal/SurfaceEglRenderer;

    .line 57
    invoke-virtual {p0}, Lio/agora/base/internal/SurfaceViewRenderer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 58
    invoke-virtual {p0}, Lio/agora/base/internal/SurfaceViewRenderer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance p1, Lio/agora/base/internal/video/RendererCommon$VideoLayoutMeasure;

    invoke-direct {p1}, Lio/agora/base/internal/video/RendererCommon$VideoLayoutMeasure;-><init>()V

    iput-object p1, p0, Lio/agora/base/internal/SurfaceViewRenderer;->videoLayoutMeasure:Lio/agora/base/internal/video/RendererCommon$VideoLayoutMeasure;

    .line 66
    invoke-direct {p0}, Lio/agora/base/internal/SurfaceViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/agora/base/internal/SurfaceViewRenderer;->resourceName:Ljava/lang/String;

    .line 67
    new-instance p2, Lio/agora/base/internal/SurfaceEglRenderer;

    invoke-direct {p2, p1}, Lio/agora/base/internal/SurfaceEglRenderer;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lio/agora/base/internal/SurfaceViewRenderer;->eglRenderer:Lio/agora/base/internal/SurfaceEglRenderer;

    .line 68
    invoke-virtual {p0}, Lio/agora/base/internal/SurfaceViewRenderer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 69
    invoke-virtual {p0}, Lio/agora/base/internal/SurfaceViewRenderer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method static synthetic access$002(Lio/agora/base/internal/SurfaceViewRenderer;I)I
    .locals 0

    .line 30
    iput p1, p0, Lio/agora/base/internal/SurfaceViewRenderer;->rotatedFrameWidth:I

    return p1
.end method

.method static synthetic access$102(Lio/agora/base/internal/SurfaceViewRenderer;I)I
    .locals 0

    .line 30
    iput p1, p0, Lio/agora/base/internal/SurfaceViewRenderer;->rotatedFrameHeight:I

    return p1
.end method

.method static synthetic access$200(Lio/agora/base/internal/SurfaceViewRenderer;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lio/agora/base/internal/SurfaceViewRenderer;->updateSurfaceSize()V

    return-void
.end method

.method private getResourceName()Ljava/lang/String;
    .locals 2

    .line 259
    :try_start_0
    invoke-virtual {p0}, Lio/agora/base/internal/SurfaceViewRenderer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lio/agora/base/internal/SurfaceViewRenderer;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method private logD(Ljava/lang/String;)V
    .locals 2

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/agora/base/internal/SurfaceViewRenderer;->resourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SurfaceViewRenderer"

    invoke-static {v0, p1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private postOrRun(Ljava/lang/Runnable;)V
    .locals 2

    .line 309
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 310
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {p0, p1}, Lio/agora/base/internal/SurfaceViewRenderer;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private updateSurfaceSize()V
    .locals 5

    .line 212
    invoke-static {}, Lio/agora/base/internal/ThreadUtils;->checkIsOnMainThread()V

    .line 213
    iget-boolean v0, p0, Lio/agora/base/internal/SurfaceViewRenderer;->enableFixedSize:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lio/agora/base/internal/SurfaceViewRenderer;->rotatedFrameWidth:I

    if-eqz v0, :cond_2

    iget v0, p0, Lio/agora/base/internal/SurfaceViewRenderer;->rotatedFrameHeight:I

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lio/agora/base/internal/SurfaceViewRenderer;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    invoke-virtual {p0}, Lio/agora/base/internal/SurfaceViewRenderer;->getHeight()I

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    invoke-virtual {p0}, Lio/agora/base/internal/SurfaceViewRenderer;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lio/agora/base/internal/SurfaceViewRenderer;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 216
    iget v1, p0, Lio/agora/base/internal/SurfaceViewRenderer;->rotatedFrameWidth:I

    int-to-float v2, v1

    iget v3, p0, Lio/agora/base/internal/SurfaceViewRenderer;->rotatedFrameHeight:I

    int-to-float v4, v3

    div-float/2addr v2, v4

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    int-to-float v1, v3

    mul-float v1, v1, v0

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    int-to-float v2, v1

    div-float/2addr v2, v0

    float-to-int v3, v2

    .line 227
    :goto_0
    invoke-virtual {p0}, Lio/agora/base/internal/SurfaceViewRenderer;->getWidth()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 228
    invoke-virtual {p0}, Lio/agora/base/internal/SurfaceViewRenderer;->getHeight()I

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateSurfaceSize. Layout size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/agora/base/internal/SurfaceViewRenderer;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/agora/base/internal/SurfaceViewRenderer;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", frame size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lio/agora/base/internal/SurfaceViewRenderer;->rotatedFrameWidth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lio/agora/base/internal/SurfaceViewRenderer;->rotatedFrameHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", requested surface size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", old surface size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lio/agora/base/internal/SurfaceViewRenderer;->surfaceWidth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/agora/base/internal/SurfaceViewRenderer;->surfaceHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/agora/base/internal/SurfaceViewRenderer;->logD(Ljava/lang/String;)V

    .line 232
    iget v2, p0, Lio/agora/base/internal/SurfaceViewRenderer;->surfaceWidth:I

    if-ne v0, v2, :cond_1

    iget v2, p0, Lio/agora/base/internal/SurfaceViewRenderer;->surfaceHeight:I

    if-eq v1, v2, :cond_3

    .line 233
    :cond_1
    iput v0, p0, Lio/agora/base/internal/SurfaceViewRenderer;->surfaceWidth:I

    .line 234
    iput v1, p0, Lio/agora/base/internal/SurfaceViewRenderer;->surfaceHeight:I

    .line 235
    invoke-virtual {p0}, Lio/agora/base/internal/SurfaceViewRenderer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 238
    iput v0, p0, Lio/agora/base/internal/SurfaceViewRenderer;->surfaceHeight:I

    iput v0, p0, Lio/agora/base/internal/SurfaceViewRenderer;->surfaceWidth:I

    .line 239
    invoke-virtual {p0}, Lio/agora/base/internal/SurfaceViewRenderer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public addFrameListener(Lio/agora/base/internal/video/EglRenderer$FrameListener;F)V
    .locals 1

    .line 130
    iget-object v0, p0, Lio/agora/base/internal/SurfaceViewRenderer;->eglRenderer:Lio/agora/base/internal/SurfaceEglRenderer;

    invoke-virtual {v0, p1, p2}, Lio/agora/base/internal/SurfaceEglRenderer;->addFrameListener(Lio/agora/base/internal/video/EglRenderer$FrameListener;F)V

    return-void
.end method

.method public addFrameListener(Lio/agora/base/internal/video/EglRenderer$FrameListener;FLio/agora/base/internal/video/RendererCommon$GlDrawer;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lio/agora/base/internal/SurfaceViewRenderer;->eglRenderer:Lio/agora/base/internal/SurfaceEglRenderer;

    invoke-virtual {v0, p1, p2, p3}, Lio/agora/base/internal/SurfaceEglRenderer;->addFrameListener(Lio/agora/base/internal/video/EglRenderer$FrameListener;FLio/agora/base/internal/video/RendererCommon$GlDrawer;)V

    return-void
.end method

.method public clearImage()V
    .locals 1

    .line 269
    iget-object v0, p0, Lio/agora/base/internal/SurfaceViewRenderer;->eglRenderer:Lio/agora/base/internal/SurfaceEglRenderer;

    invoke-virtual {v0}, Lio/agora/base/internal/SurfaceEglRenderer;->clearImage()V

    return-void
.end method

.method public disableFpsReduction()V
    .locals 1

    .line 181
    iget-object v0, p0, Lio/agora/base/internal/SurfaceViewRenderer;->eglRenderer:Lio/agora/base/internal/SurfaceEglRenderer;

    invoke-virtual {v0}, Lio/agora/base/internal/SurfaceEglRenderer;->disableFpsReduction()V

    return-void
.end method

.method public init(Lio/agora/base/internal/video/EglBase$Context;Lio/agora/base/internal/video/RendererCommon$RendererEvents;)V
    .locals 6

    .line 77
    sget-object v3, Lio/agora/base/internal/video/EglBase;->CONFIG_PLAIN:[I

    new-instance v4, Lio/agora/base/internal/video/GlRectDrawer;

    invoke-direct {v4}, Lio/agora/base/internal/video/GlRectDrawer;-><init>()V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lio/agora/base/internal/SurfaceViewRenderer;->init(Lio/agora/base/internal/video/EglBase$Context;Lio/agora/base/internal/video/RendererCommon$RendererEvents;[ILio/agora/base/internal/video/RendererCommon$GlDrawer;Z)V

    return-void
.end method

.method public init(Lio/agora/base/internal/video/EglBase$Context;Lio/agora/base/internal/video/RendererCommon$RendererEvents;[ILio/agora/base/internal/video/RendererCommon$GlDrawer;Z)V
    .locals 6

    .line 89
    invoke-static {}, Lio/agora/base/internal/ThreadUtils;->checkIsOnMainThread()V

    .line 90
    iput-object p2, p0, Lio/agora/base/internal/SurfaceViewRenderer;->rendererEvents:Lio/agora/base/internal/video/RendererCommon$RendererEvents;

    const/4 p2, 0x0

    .line 91
    iput p2, p0, Lio/agora/base/internal/SurfaceViewRenderer;->rotatedFrameWidth:I

    .line 92
    iput p2, p0, Lio/agora/base/internal/SurfaceViewRenderer;->rotatedFrameHeight:I

    .line 93
    iget-object v0, p0, Lio/agora/base/internal/SurfaceViewRenderer;->eglRenderer:Lio/agora/base/internal/SurfaceEglRenderer;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/agora/base/internal/SurfaceEglRenderer;->init(Lio/agora/base/internal/video/EglBase$Context;Lio/agora/base/internal/video/RendererCommon$RendererEvents;[ILio/agora/base/internal/video/RendererCommon$GlDrawer;Z)V

    return-void
.end method

.method public onFirstFrameRendered(III)V
    .locals 1

    .line 274
    iget-object v0, p0, Lio/agora/base/internal/SurfaceViewRenderer;->rendererEvents:Lio/agora/base/internal/video/RendererCommon$RendererEvents;

    if-eqz v0, :cond_0

    .line 275
    invoke-interface {v0, p1, p2, p3}, Lio/agora/base/internal/video/RendererCommon$RendererEvents;->onFirstFrameRendered(III)V

    :cond_0
    return-void
.end method

.method public onFrame(Lio/agora/base/VideoFrame;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lio/agora/base/internal/SurfaceViewRenderer;->eglRenderer:Lio/agora/base/internal/SurfaceEglRenderer;

    invoke-virtual {v0, p1}, Lio/agora/base/internal/SurfaceEglRenderer;->onFrame(Lio/agora/base/VideoFrame;)V

    return-void
.end method

.method public onFrameDrawn(J)V
    .locals 0

    return-void
.end method

.method public onFrameDropped()V
    .locals 0

    return-void
.end method

.method public onFrameResolutionChanged(III)V
    .locals 2

    .line 281
    iget-object v0, p0, Lio/agora/base/internal/SurfaceViewRenderer;->rendererEvents:Lio/agora/base/internal/video/RendererCommon$RendererEvents;

    if-eqz v0, :cond_0

    .line 282
    invoke-interface {v0, p1, p2, p3}, Lio/agora/base/internal/video/RendererCommon$RendererEvents;->onFrameResolutionChanged(III)V

    :cond_0
    const/16 v0, 0xb4

    if-eqz p3, :cond_2

    if-ne p3, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, p2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, p1

    :goto_1
    if-eqz p3, :cond_3

    if-ne p3, v0, :cond_4

    :cond_3
    move p1, p2

    .line 287
    :cond_4
    new-instance p2, Lio/agora/base/internal/SurfaceViewRenderer$1;

    invoke-direct {p2, p0, v1, p1}, Lio/agora/base/internal/SurfaceViewRenderer$1;-><init>(Lio/agora/base/internal/SurfaceViewRenderer;II)V

    invoke-direct {p0, p2}, Lio/agora/base/internal/SurfaceViewRenderer;->postOrRun(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 206
    invoke-static {}, Lio/agora/base/internal/ThreadUtils;->checkIsOnMainThread()V

    .line 207
    iget-object p1, p0, Lio/agora/base/internal/SurfaceViewRenderer;->eglRenderer:Lio/agora/base/internal/SurfaceEglRenderer;

    sub-int/2addr p4, p2

    int-to-float p2, p4

    sub-int/2addr p5, p3

    int-to-float p3, p5

    invoke-virtual {p1, p2, p3}, Lio/agora/base/internal/SurfaceEglRenderer;->setViewSize(FF)V

    .line 208
    invoke-direct {p0}, Lio/agora/base/internal/SurfaceViewRenderer;->updateSurfaceSize()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 197
    invoke-static {}, Lio/agora/base/internal/ThreadUtils;->checkIsOnMainThread()V

    .line 198
    iget-object v0, p0, Lio/agora/base/internal/SurfaceViewRenderer;->videoLayoutMeasure:Lio/agora/base/internal/video/RendererCommon$VideoLayoutMeasure;

    iget v1, p0, Lio/agora/base/internal/SurfaceViewRenderer;->rotatedFrameWidth:I

    iget v2, p0, Lio/agora/base/internal/SurfaceViewRenderer;->rotatedFrameHeight:I

    .line 199
    invoke-virtual {v0, p1, p2, v1, v2}, Lio/agora/base/internal/video/RendererCommon$VideoLayoutMeasure;->measure(IIII)Landroid/graphics/Point;

    move-result-object p1

    .line 200
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p2, v0}, Lio/agora/base/internal/SurfaceViewRenderer;->setMeasuredDimension(II)V

    .line 201
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onMeasure(). New size: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/agora/base/internal/SurfaceViewRenderer;->logD(Ljava/lang/String;)V

    return-void
.end method

.method public pauseVideo()V
    .locals 1

    .line 185
    iget-object v0, p0, Lio/agora/base/internal/SurfaceViewRenderer;->eglRenderer:Lio/agora/base/internal/SurfaceEglRenderer;

    invoke-virtual {v0}, Lio/agora/base/internal/SurfaceEglRenderer;->pauseVideo()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 103
    iget-object v0, p0, Lio/agora/base/internal/SurfaceViewRenderer;->eglRenderer:Lio/agora/base/internal/SurfaceEglRenderer;

    invoke-virtual {v0}, Lio/agora/base/internal/SurfaceEglRenderer;->release()V

    return-void
.end method

.method public removeFrameListener(Lio/agora/base/internal/video/EglRenderer$FrameListener;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lio/agora/base/internal/SurfaceViewRenderer;->eglRenderer:Lio/agora/base/internal/SurfaceEglRenderer;

    invoke-virtual {v0, p1}, Lio/agora/base/internal/SurfaceEglRenderer;->removeFrameListener(Lio/agora/base/internal/video/EglRenderer$FrameListener;)V

    return-void
.end method

.method public setEnableHardwareScaler(Z)V
    .locals 0

    .line 142
    invoke-static {}, Lio/agora/base/internal/ThreadUtils;->checkIsOnMainThread()V

    .line 143
    iput-boolean p1, p0, Lio/agora/base/internal/SurfaceViewRenderer;->enableFixedSize:Z

    .line 144
    invoke-direct {p0}, Lio/agora/base/internal/SurfaceViewRenderer;->updateSurfaceSize()V

    return-void
.end method

.method public setFpsReduction(F)V
    .locals 1

    .line 177
    iget-object v0, p0, Lio/agora/base/internal/SurfaceViewRenderer;->eglRenderer:Lio/agora/base/internal/SurfaceEglRenderer;

    invoke-virtual {v0, p1}, Lio/agora/base/internal/SurfaceEglRenderer;->setFpsReduction(F)V

    return-void
.end method

.method public setMirror(Z)V
    .locals 1

    .line 151
    iget-object v0, p0, Lio/agora/base/internal/SurfaceViewRenderer;->eglRenderer:Lio/agora/base/internal/SurfaceEglRenderer;

    invoke-virtual {v0, p1}, Lio/agora/base/internal/SurfaceEglRenderer;->setMirror(Z)V

    return-void
.end method

.method public setScalingType(Lio/agora/base/internal/video/RendererCommon$ScalingType;)V
    .locals 1

    .line 158
    invoke-static {}, Lio/agora/base/internal/ThreadUtils;->checkIsOnMainThread()V

    .line 159
    iget-object v0, p0, Lio/agora/base/internal/SurfaceViewRenderer;->videoLayoutMeasure:Lio/agora/base/internal/video/RendererCommon$VideoLayoutMeasure;

    invoke-virtual {v0, p1}, Lio/agora/base/internal/video/RendererCommon$VideoLayoutMeasure;->setScalingType(Lio/agora/base/internal/video/RendererCommon$ScalingType;)V

    .line 160
    invoke-virtual {p0}, Lio/agora/base/internal/SurfaceViewRenderer;->requestLayout()V

    return-void
.end method

.method public setScalingType(Lio/agora/base/internal/video/RendererCommon$ScalingType;Lio/agora/base/internal/video/RendererCommon$ScalingType;)V
    .locals 1

    .line 165
    invoke-static {}, Lio/agora/base/internal/ThreadUtils;->checkIsOnMainThread()V

    .line 166
    iget-object v0, p0, Lio/agora/base/internal/SurfaceViewRenderer;->videoLayoutMeasure:Lio/agora/base/internal/video/RendererCommon$VideoLayoutMeasure;

    invoke-virtual {v0, p1, p2}, Lio/agora/base/internal/video/RendererCommon$VideoLayoutMeasure;->setScalingType(Lio/agora/base/internal/video/RendererCommon$ScalingType;Lio/agora/base/internal/video/RendererCommon$ScalingType;)V

    .line 167
    invoke-virtual {p0}, Lio/agora/base/internal/SurfaceViewRenderer;->requestLayout()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 246
    invoke-static {}, Lio/agora/base/internal/ThreadUtils;->checkIsOnMainThread()V

    const/4 p1, 0x0

    .line 247
    iput p1, p0, Lio/agora/base/internal/SurfaceViewRenderer;->surfaceHeight:I

    iput p1, p0, Lio/agora/base/internal/SurfaceViewRenderer;->surfaceWidth:I

    .line 248
    invoke-direct {p0}, Lio/agora/base/internal/SurfaceViewRenderer;->updateSurfaceSize()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
