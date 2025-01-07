.class public Lio/agora/base/internal/video/EglRenderer;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Lio/agora/base/internal/video/VideoSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;,
        Lio/agora/base/internal/video/EglRenderer$VideoFrameInternal;,
        Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;,
        Lio/agora/base/internal/video/EglRenderer$VsyncStats;,
        Lio/agora/base/internal/video/EglRenderer$EglSurfaceCreation;,
        Lio/agora/base/internal/video/EglRenderer$FrameListenerAndParams;,
        Lio/agora/base/internal/video/EglRenderer$FrameListener;,
        Lio/agora/base/internal/video/EglRenderer$Color;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static DEFAULT_FRAME_INTERVAL_NANOS:J = 0xfe502aL

.field private static ENABLE_LAST_FRAME:Z = false

.field private static final LOG_INTERVAL_SEC:J = 0x4L

.field private static final MAX_INVOKE_TIME_MS:I = 0x3e8

.field private static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field private static final TAG:Ljava/lang/String; = "EglRenderer"


# instance fields
.field protected backgroudColor:Lio/agora/base/internal/video/EglRenderer$Color;

.field private final bitmapTextureFramebuffer:Lio/agora/base/internal/video/GlTextureFrameBuffer;

.field private final drawMatrix:Landroid/graphics/Matrix;

.field private drawer:Lio/agora/base/internal/video/RendererCommon$GlDrawer;

.field private eglBase:Lio/agora/base/internal/video/EglBase;

.field private eglContextAttached:Z

.field private final eglSurfaceCreationRunnable:Lio/agora/base/internal/video/EglRenderer$EglSurfaceCreation;

.field private enableAlphaMask:Z

.field private final fpsReductionLock:Ljava/lang/Object;

.field private final frameDrawer:Lio/agora/base/internal/video/VideoFrameDrawer;

.field private frameIntervalNanos:J

.field private final frameListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/agora/base/internal/video/EglRenderer$FrameListenerAndParams;",
            ">;"
        }
    .end annotation
.end field

.field private final handlerLock:Ljava/lang/Object;

.field protected isFirstFrameRendered:Z

.field private volatile isReleasing:Z

.field private isRenderOnSurfaceView:Z

.field private isVsyncCallbackStared:Z

.field private lastFrame:Lio/agora/base/VideoFrame;

.field private final layoutLock:Ljava/lang/Object;

.field private final logStatisticsRunnable:Ljava/lang/Runnable;

.field private minRenderPeriodNs:J

.field private mirror:Z

.field protected final name:Ljava/lang/String;

.field private nextFrameTimeNs:J

.field private rect:Landroid/graphics/Rect;

.field private renderMode:I

.field private renderThreadHandler:Landroid/os/Handler;

.field protected rendererEvents:Lio/agora/base/internal/video/RendererCommon$RendererEvents;

.field private statisticsInfo:Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;

.field private final surfaceLock:Ljava/lang/Object;

.field private surfaceValid:Z

.field private switchToStartVsync:Z

.field private volatile textureCoordUpdate:Z

.field private viewHeight:F

.field private viewWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->surfaceLock:Ljava/lang/Object;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lio/agora/base/internal/video/EglRenderer;->eglContextAttached:Z

    .line 143
    new-instance v1, Lio/agora/base/internal/video/VideoFrameDrawer;

    invoke-direct {v1}, Lio/agora/base/internal/video/VideoFrameDrawer;-><init>()V

    iput-object v1, p0, Lio/agora/base/internal/video/EglRenderer;->frameDrawer:Lio/agora/base/internal/video/VideoFrameDrawer;

    .line 145
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lio/agora/base/internal/video/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    .line 147
    iput-object v1, p0, Lio/agora/base/internal/video/EglRenderer;->lastFrame:Lio/agora/base/VideoFrame;

    .line 150
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lio/agora/base/internal/video/EglRenderer;->layoutLock:Ljava/lang/Object;

    .line 160
    iput-boolean v0, p0, Lio/agora/base/internal/video/EglRenderer;->enableAlphaMask:Z

    .line 162
    new-instance v2, Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;

    invoke-direct {v2, p0}, Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;-><init>(Lio/agora/base/internal/video/EglRenderer;)V

    iput-object v2, p0, Lio/agora/base/internal/video/EglRenderer;->statisticsInfo:Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;

    const-wide/16 v2, 0x0

    .line 164
    iput-wide v2, p0, Lio/agora/base/internal/video/EglRenderer;->frameIntervalNanos:J

    .line 167
    iput-boolean v0, p0, Lio/agora/base/internal/video/EglRenderer;->switchToStartVsync:Z

    .line 168
    iput-boolean v0, p0, Lio/agora/base/internal/video/EglRenderer;->isVsyncCallbackStared:Z

    .line 170
    iput-boolean v0, p0, Lio/agora/base/internal/video/EglRenderer;->isRenderOnSurfaceView:Z

    const/4 v2, 0x1

    .line 172
    iput-boolean v2, p0, Lio/agora/base/internal/video/EglRenderer;->surfaceValid:Z

    .line 174
    iput-boolean v0, p0, Lio/agora/base/internal/video/EglRenderer;->isReleasing:Z

    .line 176
    iput-boolean v0, p0, Lio/agora/base/internal/video/EglRenderer;->textureCoordUpdate:Z

    .line 178
    new-instance v2, Lio/agora/base/internal/video/GlTextureFrameBuffer;

    const/16 v3, 0x1908

    invoke-direct {v2, v3}, Lio/agora/base/internal/video/GlTextureFrameBuffer;-><init>(I)V

    iput-object v2, p0, Lio/agora/base/internal/video/EglRenderer;->bitmapTextureFramebuffer:Lio/agora/base/internal/video/GlTextureFrameBuffer;

    .line 181
    new-instance v2, Lio/agora/base/internal/video/EglRenderer$1;

    invoke-direct {v2, p0}, Lio/agora/base/internal/video/EglRenderer$1;-><init>(Lio/agora/base/internal/video/EglRenderer;)V

    iput-object v2, p0, Lio/agora/base/internal/video/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    .line 195
    new-instance v2, Lio/agora/base/internal/video/EglRenderer$EglSurfaceCreation;

    invoke-direct {v2, p0, v1}, Lio/agora/base/internal/video/EglRenderer$EglSurfaceCreation;-><init>(Lio/agora/base/internal/video/EglRenderer;Lio/agora/base/internal/video/EglRenderer$1;)V

    iput-object v2, p0, Lio/agora/base/internal/video/EglRenderer;->eglSurfaceCreationRunnable:Lio/agora/base/internal/video/EglRenderer$EglSurfaceCreation;

    .line 202
    iput-object p1, p0, Lio/agora/base/internal/video/EglRenderer;->name:Ljava/lang/String;

    .line 203
    new-instance p1, Lio/agora/base/internal/video/EglRenderer$Color;

    invoke-direct {p1, p0, v0}, Lio/agora/base/internal/video/EglRenderer$Color;-><init>(Lio/agora/base/internal/video/EglRenderer;I)V

    iput-object p1, p0, Lio/agora/base/internal/video/EglRenderer;->backgroudColor:Lio/agora/base/internal/video/EglRenderer$Color;

    return-void
.end method

.method public static DoConvertRectFromAndroidGraphicsRect(Landroid/graphics/Rect;Lio/agora/base/VideoFrame;Z)[F
    .locals 5

    .line 947
    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getRotation()I

    move-result v0

    rem-int/lit16 v0, v0, 0x168

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_4

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_2

    const/16 v2, 0x10e

    if-eq v0, v2, :cond_0

    const/4 p0, 0x0

    const/high16 p0, 0x3f800000    # 1.0f

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    goto/16 :goto_5

    .line 985
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getRotatedHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    sub-float v0, v1, v0

    .line 986
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getRotatedHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v2, v1, v2

    if-eqz p2, :cond_1

    .line 988
    iget p2, p0, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getRotatedWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p2, v3

    .line 989
    iget p0, p0, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getRotatedWidth()I

    move-result p1

    goto/16 :goto_4

    .line 991
    :cond_1
    iget p2, p0, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getRotatedWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p2, v3

    sub-float p2, v1, p2

    .line 992
    iget p0, p0, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getRotatedWidth()I

    move-result p1

    goto/16 :goto_3

    .line 961
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getRotatedHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    sub-float v0, v1, v0

    .line 962
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getRotatedHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v2, v1, v2

    if-eqz p2, :cond_3

    .line 964
    iget p2, p0, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getRotatedWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p2, v3

    .line 965
    iget p0, p0, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getRotatedWidth()I

    move-result p1

    goto :goto_1

    .line 967
    :cond_3
    iget p2, p0, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getRotatedWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p2, v3

    sub-float p2, v1, p2

    .line 968
    iget p0, p0, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getRotatedWidth()I

    move-result p1

    goto :goto_0

    .line 973
    :cond_4
    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getRotatedHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 974
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getRotatedHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    if-eqz p2, :cond_5

    .line 976
    iget p2, p0, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getRotatedWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p2, v3

    sub-float p2, v1, p2

    .line 977
    iget p0, p0, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getRotatedWidth()I

    move-result p1

    :goto_0
    int-to-float p1, p1

    div-float/2addr p0, p1

    sub-float p0, v1, p0

    goto :goto_2

    .line 979
    :cond_5
    iget p2, p0, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getRotatedWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p2, v3

    .line 980
    iget p0, p0, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getRotatedWidth()I

    move-result p1

    :goto_1
    int-to-float p1, p1

    div-float/2addr p0, p1

    :goto_2
    move v4, p2

    move p2, p0

    move p0, v4

    goto :goto_5

    .line 949
    :cond_6
    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getRotatedHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    sub-float v0, v1, v0

    .line 950
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getRotatedHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v2, v1, v2

    if-eqz p2, :cond_7

    .line 952
    iget p2, p0, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getRotatedWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p2, v3

    sub-float p2, v1, p2

    .line 953
    iget p0, p0, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getRotatedWidth()I

    move-result p1

    :goto_3
    int-to-float p1, p1

    div-float/2addr p0, p1

    sub-float p0, v1, p0

    goto :goto_5

    .line 955
    :cond_7
    iget p2, p0, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getRotatedWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p2, v3

    .line 956
    iget p0, p0, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getRotatedWidth()I

    move-result p1

    :goto_4
    int-to-float p1, p1

    div-float/2addr p0, p1

    :goto_5
    cmpl-float p1, p0, v1

    if-lez p1, :cond_8

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_8
    cmpl-float p1, v2, v1

    if-lez p1, :cond_9

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_9
    cmpl-float p1, v0, v1

    if-lez p1, :cond_a

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_a
    cmpl-float p1, p2, v1

    if-lez p1, :cond_b

    goto :goto_6

    :cond_b
    move v1, p2

    :goto_6
    const/16 p1, 0x8

    new-array p1, p1, [F

    const/4 p2, 0x0

    aput v1, p1, p2

    const/4 p2, 0x1

    aput v2, p1, p2

    const/4 p2, 0x2

    aput p0, p1, p2

    const/4 p2, 0x3

    aput v2, p1, p2

    const/4 p2, 0x4

    aput v1, p1, p2

    const/4 p2, 0x5

    aput v0, p1, p2

    const/4 p2, 0x6

    aput p0, p1, p2

    const/4 p0, 0x7

    aput v0, p1, p0

    return-object p1
.end method

.method static synthetic access$000(Lio/agora/base/internal/video/EglRenderer;)Lio/agora/base/internal/video/EglBase;
    .locals 0

    .line 49
    iget-object p0, p0, Lio/agora/base/internal/video/EglRenderer;->eglBase:Lio/agora/base/internal/video/EglBase;

    return-object p0
.end method

.method static synthetic access$002(Lio/agora/base/internal/video/EglRenderer;Lio/agora/base/internal/video/EglBase;)Lio/agora/base/internal/video/EglBase;
    .locals 0

    .line 49
    iput-object p1, p0, Lio/agora/base/internal/video/EglRenderer;->eglBase:Lio/agora/base/internal/video/EglBase;

    return-object p1
.end method

.method static synthetic access$100(Lio/agora/base/internal/video/EglRenderer;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lio/agora/base/internal/video/EglRenderer;->eglContextAttached:Z

    return p0
.end method

.method static synthetic access$1000(Lio/agora/base/internal/video/EglRenderer;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lio/agora/base/internal/video/EglRenderer;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lio/agora/base/internal/video/EglRenderer;->eglContextAttached:Z

    return p1
.end method

.method static synthetic access$1102(Lio/agora/base/internal/video/EglRenderer;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lio/agora/base/internal/video/EglRenderer;->surfaceValid:Z

    return p1
.end method

.method static synthetic access$1300(Lio/agora/base/internal/video/EglRenderer;)Lio/agora/base/internal/video/RendererCommon$GlDrawer;
    .locals 0

    .line 49
    iget-object p0, p0, Lio/agora/base/internal/video/EglRenderer;->drawer:Lio/agora/base/internal/video/RendererCommon$GlDrawer;

    return-object p0
.end method

.method static synthetic access$1302(Lio/agora/base/internal/video/EglRenderer;Lio/agora/base/internal/video/RendererCommon$GlDrawer;)Lio/agora/base/internal/video/RendererCommon$GlDrawer;
    .locals 0

    .line 49
    iput-object p1, p0, Lio/agora/base/internal/video/EglRenderer;->drawer:Lio/agora/base/internal/video/RendererCommon$GlDrawer;

    return-object p1
.end method

.method static synthetic access$1400(Lio/agora/base/internal/video/EglRenderer;)Lio/agora/base/internal/video/VideoFrameDrawer;
    .locals 0

    .line 49
    iget-object p0, p0, Lio/agora/base/internal/video/EglRenderer;->frameDrawer:Lio/agora/base/internal/video/VideoFrameDrawer;

    return-object p0
.end method

.method static synthetic access$1500(Lio/agora/base/internal/video/EglRenderer;)Lio/agora/base/internal/video/GlTextureFrameBuffer;
    .locals 0

    .line 49
    iget-object p0, p0, Lio/agora/base/internal/video/EglRenderer;->bitmapTextureFramebuffer:Lio/agora/base/internal/video/GlTextureFrameBuffer;

    return-object p0
.end method

.method static synthetic access$1600(Lio/agora/base/internal/video/EglRenderer;)Ljava/util/ArrayList;
    .locals 0

    .line 49
    iget-object p0, p0, Lio/agora/base/internal/video/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1700(Lio/agora/base/internal/video/EglRenderer;)J
    .locals 2

    .line 49
    iget-wide v0, p0, Lio/agora/base/internal/video/EglRenderer;->frameIntervalNanos:J

    return-wide v0
.end method

.method static synthetic access$1702(Lio/agora/base/internal/video/EglRenderer;J)J
    .locals 0

    .line 49
    iput-wide p1, p0, Lio/agora/base/internal/video/EglRenderer;->frameIntervalNanos:J

    return-wide p1
.end method

.method static synthetic access$1900(Lio/agora/base/internal/video/EglRenderer;FFFF)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lio/agora/base/internal/video/EglRenderer;->clearSurfaceOnRenderThread(FFFF)V

    return-void
.end method

.method static synthetic access$200(Lio/agora/base/internal/video/EglRenderer;)Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;
    .locals 0

    .line 49
    iget-object p0, p0, Lio/agora/base/internal/video/EglRenderer;->statisticsInfo:Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;

    return-object p0
.end method

.method static synthetic access$2100()Z
    .locals 1

    .line 49
    sget-boolean v0, Lio/agora/base/internal/video/EglRenderer;->ENABLE_LAST_FRAME:Z

    return v0
.end method

.method static synthetic access$2200(Lio/agora/base/internal/video/EglRenderer;)Lio/agora/base/VideoFrame;
    .locals 0

    .line 49
    iget-object p0, p0, Lio/agora/base/internal/video/EglRenderer;->lastFrame:Lio/agora/base/VideoFrame;

    return-object p0
.end method

.method static synthetic access$2300(Lio/agora/base/internal/video/EglRenderer;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lio/agora/base/internal/video/EglRenderer;->enableAlphaMask:Z

    return p0
.end method

.method static synthetic access$2400(Lio/agora/base/internal/video/EglRenderer;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lio/agora/base/internal/video/EglRenderer;->isVsyncCallbackStared:Z

    return p0
.end method

.method static synthetic access$2402(Lio/agora/base/internal/video/EglRenderer;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lio/agora/base/internal/video/EglRenderer;->isVsyncCallbackStared:Z

    return p1
.end method

.method static synthetic access$2600(Lio/agora/base/internal/video/EglRenderer;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lio/agora/base/internal/video/EglRenderer;->switchToStartVsync:Z

    return p0
.end method

.method static synthetic access$2800(Lio/agora/base/internal/video/EglRenderer;Lio/agora/base/internal/video/EglRenderer$VideoFrameInternal;J)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lio/agora/base/internal/video/EglRenderer;->renderFrameOnRenderThread(Lio/agora/base/internal/video/EglRenderer$VideoFrameInternal;J)V

    return-void
.end method

.method static synthetic access$400(Lio/agora/base/internal/video/EglRenderer;)Ljava/lang/Object;
    .locals 0

    .line 49
    iget-object p0, p0, Lio/agora/base/internal/video/EglRenderer;->handlerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lio/agora/base/internal/video/EglRenderer;)Landroid/os/Handler;
    .locals 0

    .line 49
    iget-object p0, p0, Lio/agora/base/internal/video/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lio/agora/base/internal/video/EglRenderer;)Ljava/lang/Runnable;
    .locals 0

    .line 49
    iget-object p0, p0, Lio/agora/base/internal/video/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lio/agora/base/internal/video/EglRenderer;)Ljava/lang/Object;
    .locals 0

    .line 49
    iget-object p0, p0, Lio/agora/base/internal/video/EglRenderer;->surfaceLock:Ljava/lang/Object;

    return-object p0
.end method

.method private checkHDR()V
    .locals 1

    const/4 v0, 0x2

    .line 216
    invoke-static {v0}, Lio/agora/base/internal/video/VideoRenderUtils;->isSupportedHDRByType(I)Z

    .line 217
    invoke-static {}, Lio/agora/base/internal/video/VideoRenderUtils;->getDesiredMaxAverageLuminance()F

    .line 218
    invoke-static {}, Lio/agora/base/internal/video/VideoRenderUtils;->getDesiredMaxLuminance()F

    .line 219
    invoke-static {}, Lio/agora/base/internal/video/VideoRenderUtils;->getDesiredMinLuminance()F

    .line 220
    invoke-static {}, Lio/agora/base/internal/video/VideoRenderUtils;->isWideColorGamut()Z

    .line 221
    invoke-static {}, Lio/agora/base/internal/video/VideoRenderUtils;->getPreferredWideGamutColorSpaceId()I

    return-void
.end method

.method private clearSurfaceOnRenderThread(FFFF)V
    .locals 1

    .line 815
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->eglBase:Lio/agora/base/internal/video/EglBase;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/agora/base/internal/video/EglBase;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "clearSurface"

    .line 816
    invoke-direct {p0, v0}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    .line 817
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4000

    .line 818
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 819
    iget-object p1, p0, Lio/agora/base/internal/video/EglRenderer;->eglBase:Lio/agora/base/internal/video/EglBase;

    invoke-interface {p1}, Lio/agora/base/internal/video/EglBase;->swapBuffers()V

    :cond_0
    return-void
.end method

.method private convertRectFromAndroidGraphicsRect(Landroid/graphics/Rect;Lio/agora/base/VideoFrame;)[F
    .locals 2

    .line 1025
    iget-boolean v0, p0, Lio/agora/base/internal/video/EglRenderer;->mirror:Z

    invoke-static {p1, p2, v0}, Lio/agora/base/internal/video/EglRenderer;->DoConvertRectFromAndroidGraphicsRect(Landroid/graphics/Rect;Lio/agora/base/VideoFrame;Z)[F

    move-result-object p1

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rotation "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/agora/base/VideoFrame;->getRotation()I

    move-result p2

    rem-int/lit16 p2, p2, 0x168

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mirror "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lio/agora/base/internal/video/EglRenderer;->mirror:Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " left "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    aget p2, p1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " right "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x2

    aget p2, p1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " top "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x5

    aget p2, p1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " bottom "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    aget p2, p1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    return-object p1
.end method

.method private convertRectFromAndroidGraphicsRectForHiddenMode(FFLandroid/graphics/Rect;Lio/agora/base/VideoFrame;)[F
    .locals 5

    .line 855
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    .line 856
    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    cmpl-float p2, p2, p1

    if-lez p2, :cond_0

    int-to-float p2, v0

    mul-float p2, p2, p1

    float-to-int v1, p2

    goto :goto_0

    :cond_0
    int-to-float p2, v1

    div-float/2addr p2, p1

    float-to-int v0, p2

    .line 864
    :goto_0
    iget p1, p3, Landroid/graphics/Rect;->left:I

    iget p2, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p2

    const/4 p2, 0x2

    div-int/2addr p1, p2

    div-int/2addr v1, p2

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float p1, p1, v2

    invoke-virtual {p4}, Lio/agora/base/VideoFrame;->getRotatedWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    .line 865
    iget v3, p3, Landroid/graphics/Rect;->right:I

    iget v4, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    div-int/2addr v3, p2

    add-int/2addr v3, v1

    int-to-float v1, v3

    mul-float v1, v1, v2

    invoke-virtual {p4}, Lio/agora/base/VideoFrame;->getRotatedWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 866
    iget v3, p3, Landroid/graphics/Rect;->top:I

    iget v4, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    div-int/2addr v3, p2

    div-int/2addr v0, p2

    sub-int/2addr v3, v0

    int-to-float v3, v3

    mul-float v3, v3, v2

    invoke-virtual {p4}, Lio/agora/base/VideoFrame;->getRotatedHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 867
    iget v4, p3, Landroid/graphics/Rect;->top:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, p3

    div-int/2addr v4, p2

    add-int/2addr v4, v0

    int-to-float p3, v4

    mul-float p3, p3, v2

    invoke-virtual {p4}, Lio/agora/base/VideoFrame;->getRotatedHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    .line 869
    invoke-virtual {p4}, Lio/agora/base/VideoFrame;->getRotation()I

    move-result v0

    rem-int/lit16 v0, v0, 0x168

    if-eqz v0, :cond_4

    const/16 v4, 0x5a

    if-eq v0, v4, :cond_3

    const/16 v4, 0xb4

    if-eq v0, v4, :cond_2

    const/16 v4, 0x10e

    if-eq v0, v4, :cond_1

    goto :goto_2

    :cond_1
    sub-float v3, v2, v3

    sub-float p3, v2, p3

    .line 904
    iget-boolean v0, p0, Lio/agora/base/internal/video/EglRenderer;->mirror:Z

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_2
    sub-float v3, v2, v3

    sub-float p3, v2, p3

    .line 893
    iget-boolean v0, p0, Lio/agora/base/internal/video/EglRenderer;->mirror:Z

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_3
    sub-float v3, v2, v3

    sub-float p3, v2, p3

    .line 883
    iget-boolean v0, p0, Lio/agora/base/internal/video/EglRenderer;->mirror:Z

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_4
    sub-float v3, v2, v3

    sub-float p3, v2, p3

    .line 873
    iget-boolean v0, p0, Lio/agora/base/internal/video/EglRenderer;->mirror:Z

    if-eqz v0, :cond_5

    :goto_1
    sub-float v0, v2, v1

    sub-float v1, v2, p1

    move p1, v0

    :cond_5
    :goto_2
    cmpl-float v0, v1, v2

    if-lez v0, :cond_6

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_6
    cmpl-float v0, p3, v2

    if-lez v0, :cond_7

    const/high16 p3, 0x3f800000    # 1.0f

    :cond_7
    cmpl-float v0, v3, v2

    if-lez v0, :cond_8

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_8
    cmpl-float v0, p1, v2

    if-lez v0, :cond_9

    goto :goto_3

    :cond_9
    move v2, p1

    .line 924
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "hidden mode: rotation "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lio/agora/base/VideoFrame;->getRotation()I

    move-result v0

    rem-int/lit16 v0, v0, 0x168

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mirror "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lio/agora/base/internal/video/EglRenderer;->mirror:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " left "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " right "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " top "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " bottom "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "frame texture type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    invoke-virtual {p4}, Lio/agora/base/VideoFrame;->getBuffer()Lio/agora/base/VideoFrame$Buffer;

    move-result-object p4

    instance-of p4, p4, Lio/agora/base/VideoFrame$TextureBuffer;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 924
    invoke-direct {p0, p1}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    const/16 p1, 0x8

    new-array p1, p1, [F

    const/4 p4, 0x0

    aput v2, p1, p4

    const/4 p4, 0x1

    aput p3, p1, p4

    aput v1, p1, p2

    const/4 p2, 0x3

    aput p3, p1, p2

    const/4 p2, 0x4

    aput v2, p1, p2

    const/4 p2, 0x5

    aput v3, p1, p2

    const/4 p2, 0x6

    aput v1, p1, p2

    const/4 p2, 0x7

    aput v3, p1, p2

    return-object p1
.end method

.method private createEglSurfaceInternal(Ljava/lang/Object;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->eglSurfaceCreationRunnable:Lio/agora/base/internal/video/EglRenderer$EglSurfaceCreation;

    invoke-virtual {v0, p1}, Lio/agora/base/internal/video/EglRenderer$EglSurfaceCreation;->setSurface(Ljava/lang/Object;)V

    .line 313
    iget-object p1, p0, Lio/agora/base/internal/video/EglRenderer;->surfaceLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 314
    :try_start_0
    iput-boolean v0, p0, Lio/agora/base/internal/video/EglRenderer;->surfaceValid:Z

    .line 315
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    iget-object p1, p0, Lio/agora/base/internal/video/EglRenderer;->eglSurfaceCreationRunnable:Lio/agora/base/internal/video/EglRenderer$EglSurfaceCreation;

    invoke-direct {p0, p1}, Lio/agora/base/internal/video/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    .line 315
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getDefaultDisplayRefreshRateParams()D
    .locals 4

    .line 1549
    invoke-static {}, Lio/agora/base/internal/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 1553
    :cond_0
    invoke-static {}, Lio/agora/base/internal/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_1

    return-wide v1

    .line 1558
    :cond_1
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1560
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    :cond_2
    return-wide v1
.end method

.method private logD(Ljava/lang/String;)V
    .locals 2

    .line 1325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/agora/base/internal/video/EglRenderer;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EglRenderer"

    invoke-static {v0, p1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private notifyCallbacks(Lio/agora/base/VideoFrame;Z)V
    .locals 16

    move-object/from16 v1, p0

    .line 1260
    iget-object v0, v1, Lio/agora/base/internal/video/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1263
    :cond_0
    iget-object v0, v1, Lio/agora/base/internal/video/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1264
    iget-object v0, v1, Lio/agora/base/internal/video/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1265
    iget-boolean v0, v1, Lio/agora/base/internal/video/EglRenderer;->mirror:Z

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 1266
    iget-object v0, v1, Lio/agora/base/internal/video/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1267
    :cond_1
    iget-object v0, v1, Lio/agora/base/internal/video/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1268
    iget-object v0, v1, Lio/agora/base/internal/video/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/high16 v2, -0x41000000    # -0.5f

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1270
    iget-object v0, v1, Lio/agora/base/internal/video/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1271
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1272
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lio/agora/base/internal/video/EglRenderer$FrameListenerAndParams;

    if-nez p2, :cond_2

    .line 1273
    iget-boolean v0, v3, Lio/agora/base/internal/video/EglRenderer$FrameListenerAndParams;->applyFpsReduction:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1276
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1278
    iget v0, v3, Lio/agora/base/internal/video/EglRenderer$FrameListenerAndParams;->scale:F

    invoke-virtual/range {p1 .. p1}, Lio/agora/base/VideoFrame;->getRotatedWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v0, v0, v4

    float-to-int v13, v0

    .line 1279
    iget v0, v3, Lio/agora/base/internal/video/EglRenderer$FrameListenerAndParams;->scale:F

    invoke-virtual/range {p1 .. p1}, Lio/agora/base/VideoFrame;->getRotatedHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v0, v0, v4

    float-to-int v14, v0

    if-eqz v13, :cond_4

    if-nez v14, :cond_3

    goto/16 :goto_2

    .line 1286
    :cond_3
    iget-object v0, v1, Lio/agora/base/internal/video/EglRenderer;->bitmapTextureFramebuffer:Lio/agora/base/internal/video/GlTextureFrameBuffer;

    invoke-virtual {v0, v13, v14}, Lio/agora/base/internal/video/GlTextureFrameBuffer;->setSize(II)V

    .line 1288
    iget-object v0, v1, Lio/agora/base/internal/video/EglRenderer;->bitmapTextureFramebuffer:Lio/agora/base/internal/video/GlTextureFrameBuffer;

    invoke-virtual {v0}, Lio/agora/base/internal/video/GlTextureFrameBuffer;->getFrameBufferId()I

    move-result v0

    const v12, 0x8d40

    invoke-static {v12, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1289
    iget-object v0, v1, Lio/agora/base/internal/video/EglRenderer;->bitmapTextureFramebuffer:Lio/agora/base/internal/video/GlTextureFrameBuffer;

    .line 1290
    invoke-virtual {v0}, Lio/agora/base/internal/video/GlTextureFrameBuffer;->getTextureId()I

    move-result v0

    const v4, 0x8ce0

    const/16 v5, 0xde1

    const/4 v11, 0x0

    .line 1289
    invoke-static {v12, v4, v5, v0, v11}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1292
    iget-object v0, v1, Lio/agora/base/internal/video/EglRenderer;->backgroudColor:Lio/agora/base/internal/video/EglRenderer$Color;

    iget v0, v0, Lio/agora/base/internal/video/EglRenderer$Color;->red:F

    iget-object v4, v1, Lio/agora/base/internal/video/EglRenderer;->backgroudColor:Lio/agora/base/internal/video/EglRenderer$Color;

    iget v4, v4, Lio/agora/base/internal/video/EglRenderer$Color;->green:F

    iget-object v5, v1, Lio/agora/base/internal/video/EglRenderer;->backgroudColor:Lio/agora/base/internal/video/EglRenderer$Color;

    iget v5, v5, Lio/agora/base/internal/video/EglRenderer$Color;->blue:F

    iget-object v6, v1, Lio/agora/base/internal/video/EglRenderer;->backgroudColor:Lio/agora/base/internal/video/EglRenderer$Color;

    iget v6, v6, Lio/agora/base/internal/video/EglRenderer$Color;->alpha:F

    invoke-static {v0, v4, v5, v6}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 1294
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1295
    iget-object v4, v1, Lio/agora/base/internal/video/EglRenderer;->frameDrawer:Lio/agora/base/internal/video/VideoFrameDrawer;

    iget-object v6, v3, Lio/agora/base/internal/video/EglRenderer$FrameListenerAndParams;->drawer:Lio/agora/base/internal/video/RendererCommon$GlDrawer;

    iget-object v7, v1, Lio/agora/base/internal/video/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x0

    move-object/from16 v5, p1

    move v10, v13

    const/4 v15, 0x0

    move v11, v14

    move v12, v0

    invoke-virtual/range {v4 .. v12}, Lio/agora/base/internal/video/VideoFrameDrawer;->drawFrame(Lio/agora/base/VideoFrame;Lio/agora/base/internal/video/RendererCommon$GlDrawer;Landroid/graphics/Matrix;IIIIZ)V

    mul-int v0, v13, v14

    mul-int/lit8 v0, v0, 0x4

    .line 1300
    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 1302
    invoke-static {v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 1304
    :goto_1
    invoke-static {v15, v15, v13, v14}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    move v6, v13

    move v7, v14

    move-object v10, v0

    .line 1305
    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const v4, 0x8d40

    .line 1308
    invoke-static {v4, v15}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string v4, "EglRenderer.notifyCallbacks"

    .line 1309
    invoke-static {v4}, Lio/agora/base/internal/video/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 1312
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1313
    invoke-static {v13, v14, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1314
    invoke-virtual {v4, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 1315
    iget-object v0, v3, Lio/agora/base/internal/video/EglRenderer$FrameListenerAndParams;->listener:Lio/agora/base/internal/video/EglRenderer$FrameListener;

    invoke-interface {v0, v4}, Lio/agora/base/internal/video/EglRenderer$FrameListener;->onFrame(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 1319
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    .line 1317
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1282
    :cond_4
    :goto_2
    iget-object v0, v3, Lio/agora/base/internal/video/EglRenderer$FrameListenerAndParams;->listener:Lio/agora/base/internal/video/EglRenderer$FrameListener;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lio/agora/base/internal/video/EglRenderer$FrameListener;->onFrame(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private postToRenderThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 807
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 808
    :try_start_0
    iget-object v1, p0, Lio/agora/base/internal/video/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 809
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 811
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private renderFrameOnRenderThread(Lio/agora/base/internal/video/EglRenderer$VideoFrameInternal;J)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1040
    iget-object v2, v1, Lio/agora/base/internal/video/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    const-string v0, "renderFrameOnRenderThread failed, Already released"

    .line 1041
    invoke-direct {v1, v0}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    return-void

    .line 1044
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-nez v0, :cond_1

    return-void

    .line 1048
    :cond_1
    iget-object v11, v0, Lio/agora/base/internal/video/EglRenderer$VideoFrameInternal;->frame:Lio/agora/base/VideoFrame;

    .line 1049
    iget-object v2, v1, Lio/agora/base/internal/video/EglRenderer;->eglBase:Lio/agora/base/internal/video/EglBase;

    if-eqz v2, :cond_1c

    invoke-interface {v2}, Lio/agora/base/internal/video/EglBase;->hasSurface()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-boolean v2, v1, Lio/agora/base/internal/video/EglRenderer;->isReleasing:Z

    if-eqz v2, :cond_2

    goto/16 :goto_f

    .line 1055
    :cond_2
    iget-object v2, v1, Lio/agora/base/internal/video/EglRenderer;->surfaceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1056
    :try_start_0
    iget-boolean v3, v1, Lio/agora/base/internal/video/EglRenderer;->surfaceValid:Z

    if-nez v3, :cond_3

    const-string v0, "Dropping frame - surface not valid"

    .line 1057
    invoke-direct {v1, v0}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {v11}, Lio/agora/base/VideoFrame;->release()V

    .line 1059
    monitor-exit v2

    return-void

    .line 1061
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1065
    sget-boolean v2, Lio/agora/base/internal/video/EglRenderer;->ENABLE_LAST_FRAME:Z

    if-eqz v2, :cond_5

    .line 1066
    iget-object v2, v1, Lio/agora/base/internal/video/EglRenderer;->lastFrame:Lio/agora/base/VideoFrame;

    if-eqz v2, :cond_4

    if-eq v2, v11, :cond_4

    .line 1067
    invoke-virtual {v2}, Lio/agora/base/VideoFrame;->release()V

    .line 1069
    :cond_4
    iput-object v11, v1, Lio/agora/base/internal/video/EglRenderer;->lastFrame:Lio/agora/base/VideoFrame;

    .line 1070
    invoke-virtual {v11}, Lio/agora/base/VideoFrame;->retain()V

    .line 1074
    :cond_5
    iget-object v3, v1, Lio/agora/base/internal/video/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1075
    :try_start_1
    iget-wide v4, v1, Lio/agora/base/internal/video/EglRenderer;->minRenderPeriodNs:J

    const-wide v6, 0x7fffffffffffffffL

    const/4 v12, 0x1

    const/4 v2, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_6

    :goto_0
    const/4 v13, 0x0

    goto :goto_2

    :cond_6
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gtz v8, :cond_7

    :goto_1
    const/4 v13, 0x1

    goto :goto_2

    .line 1082
    :cond_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1083
    iget-wide v6, v1, Lio/agora/base/internal/video/EglRenderer;->nextFrameTimeNs:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_8

    const-string v4, "Skipping frame rendering - fps reduction is active."

    .line 1084
    invoke-direct {v1, v4}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 1087
    :cond_8
    iget-wide v8, v1, Lio/agora/base/internal/video/EglRenderer;->minRenderPeriodNs:J

    add-long/2addr v6, v8

    iput-wide v6, v1, Lio/agora/base/internal/video/EglRenderer;->nextFrameTimeNs:J

    .line 1089
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lio/agora/base/internal/video/EglRenderer;->nextFrameTimeNs:J

    goto :goto_1

    .line 1093
    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1094
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v19

    .line 1097
    invoke-virtual {v11}, Lio/agora/base/VideoFrame;->getSampleAspectRatio()F

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v3, v5

    if-eqz v6, :cond_9

    cmpl-float v6, v3, v4

    if-lez v6, :cond_9

    goto :goto_3

    :cond_9
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1103
    :goto_3
    invoke-virtual {v11}, Lio/agora/base/VideoFrame;->getRotatedWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v11}, Lio/agora/base/VideoFrame;->getRotatedHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v6, v6, v3

    .line 1106
    iget-object v3, v1, Lio/agora/base/internal/video/EglRenderer;->rect:Landroid/graphics/Rect;

    if-eqz v3, :cond_a

    .line 1107
    invoke-virtual {v11}, Lio/agora/base/VideoFrame;->getRotation()I

    .line 1109
    iget-object v3, v1, Lio/agora/base/internal/video/EglRenderer;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v7, v1, Lio/agora/base/internal/video/EglRenderer;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v7

    .line 1110
    iget-object v7, v1, Lio/agora/base/internal/video/EglRenderer;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, v1, Lio/agora/base/internal/video/EglRenderer;->rect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    .line 1116
    invoke-virtual {v11}, Lio/agora/base/VideoFrame;->getRotatedWidth()I

    move-result v8

    if-gt v3, v8, :cond_a

    invoke-virtual {v11}, Lio/agora/base/VideoFrame;->getRotatedHeight()I

    move-result v8

    if-gt v7, v8, :cond_a

    int-to-float v3, v3

    int-to-float v6, v7

    div-float v6, v3, v6

    .line 1122
    :cond_a
    iget-object v7, v1, Lio/agora/base/internal/video/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1123
    :try_start_2
    iget v3, v1, Lio/agora/base/internal/video/EglRenderer;->viewHeight:F

    cmpl-float v8, v3, v4

    if-lez v8, :cond_b

    iget v8, v1, Lio/agora/base/internal/video/EglRenderer;->viewWidth:F

    div-float/2addr v8, v3

    goto :goto_4

    :cond_b
    const/4 v8, 0x0

    :goto_4
    cmpl-float v3, v8, v4

    if-eqz v3, :cond_c

    goto :goto_5

    :cond_c
    move v8, v6

    .line 1125
    :goto_5
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1131
    iget-object v3, v1, Lio/agora/base/internal/video/EglRenderer;->eglBase:Lio/agora/base/internal/video/EglBase;

    invoke-interface {v3}, Lio/agora/base/internal/video/EglBase;->surfaceWidth()I

    move-result v3

    .line 1132
    iget-object v7, v1, Lio/agora/base/internal/video/EglRenderer;->eglBase:Lio/agora/base/internal/video/EglBase;

    invoke-interface {v7}, Lio/agora/base/internal/video/EglBase;->surfaceHeight()I

    move-result v7

    .line 1136
    iget v9, v1, Lio/agora/base/internal/video/EglRenderer;->renderMode:I

    const/16 v10, 0xa

    const/4 v14, 0x2

    if-ne v9, v12, :cond_f

    .line 1137
    iget-object v9, v1, Lio/agora/base/internal/video/EglRenderer;->rect:Landroid/graphics/Rect;

    if-nez v9, :cond_e

    cmpl-float v9, v6, v8

    if-lez v9, :cond_d

    div-float v9, v8, v6

    goto :goto_6

    :cond_d
    div-float v9, v6, v8

    move v15, v9

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_e
    const/high16 v9, 0x3f800000    # 1.0f

    :goto_6
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_7
    move v12, v3

    move v3, v9

    move v4, v15

    const/4 v9, 0x0

    move v15, v7

    const/4 v7, 0x0

    goto :goto_b

    :cond_f
    const/high16 v15, 0x40000000    # 2.0f

    if-ne v9, v10, :cond_11

    cmpl-float v9, v6, v8

    if-lez v9, :cond_10

    div-float v9, v8, v6

    sub-float v9, v5, v9

    int-to-float v12, v7

    mul-float v9, v9, v12

    div-float/2addr v9, v15

    float-to-int v9, v9

    move v12, v9

    const/4 v9, 0x0

    goto :goto_8

    :cond_10
    div-float v9, v6, v8

    sub-float v9, v5, v9

    int-to-float v12, v3

    mul-float v9, v9, v12

    div-float/2addr v9, v15

    float-to-int v9, v9

    const/4 v12, 0x0

    :goto_8
    mul-int/lit8 v15, v9, 0x2

    sub-int/2addr v3, v15

    mul-int/lit8 v12, v12, 0x2

    sub-int v12, v7, v12

    sub-int/2addr v7, v12

    move v15, v12

    goto :goto_a

    :cond_11
    cmpl-float v9, v6, v8

    if-lez v9, :cond_12

    div-float v9, v8, v6

    sub-float v9, v5, v9

    int-to-float v12, v7

    mul-float v9, v9, v12

    div-float/2addr v9, v15

    float-to-int v9, v9

    move v12, v9

    const/4 v9, 0x0

    goto :goto_9

    :cond_12
    div-float v9, v6, v8

    sub-float v9, v5, v9

    int-to-float v12, v3

    mul-float v9, v9, v12

    div-float/2addr v9, v15

    float-to-int v9, v9

    const/4 v12, 0x0

    :goto_9
    mul-int/lit8 v15, v9, 0x2

    sub-int/2addr v3, v15

    mul-int/lit8 v15, v12, 0x2

    sub-int/2addr v7, v15

    move v15, v7

    move v7, v12

    :goto_a
    const/high16 v4, 0x3f800000    # 1.0f

    move v12, v3

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1187
    :goto_b
    iget-object v10, v1, Lio/agora/base/internal/video/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 1188
    iget-object v10, v1, Lio/agora/base/internal/video/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-virtual {v10, v14, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1189
    iget-boolean v10, v1, Lio/agora/base/internal/video/EglRenderer;->mirror:Z

    if-eqz v10, :cond_13

    .line 1190
    iget-object v10, v1, Lio/agora/base/internal/video/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/high16 v14, -0x40800000    # -1.0f

    invoke-virtual {v10, v14, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1191
    :cond_13
    iget-object v5, v1, Lio/agora/base/internal/video/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1192
    iget-object v3, v1, Lio/agora/base/internal/video/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/high16 v4, -0x41000000    # -0.5f

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1195
    iget-object v3, v1, Lio/agora/base/internal/video/EglRenderer;->rect:Landroid/graphics/Rect;

    if-eqz v3, :cond_16

    iget-boolean v3, v1, Lio/agora/base/internal/video/EglRenderer;->textureCoordUpdate:Z

    if-eqz v3, :cond_16

    .line 1197
    iput-boolean v2, v1, Lio/agora/base/internal/video/EglRenderer;->textureCoordUpdate:Z

    .line 1198
    iget v2, v1, Lio/agora/base/internal/video/EglRenderer;->renderMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_15

    const/16 v3, 0xa

    if-ne v2, v3, :cond_14

    goto :goto_c

    .line 1202
    :cond_14
    iget-object v2, v1, Lio/agora/base/internal/video/EglRenderer;->rect:Landroid/graphics/Rect;

    invoke-direct {v1, v8, v6, v2, v11}, Lio/agora/base/internal/video/EglRenderer;->convertRectFromAndroidGraphicsRectForHiddenMode(FFLandroid/graphics/Rect;Lio/agora/base/VideoFrame;)[F

    move-result-object v2

    .line 1204
    iget-object v3, v1, Lio/agora/base/internal/video/EglRenderer;->drawer:Lio/agora/base/internal/video/RendererCommon$GlDrawer;

    invoke-static {v2}, Lio/agora/base/internal/video/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-interface {v3, v2}, Lio/agora/base/internal/video/RendererCommon$GlDrawer;->setTextureCropCoord(Ljava/nio/FloatBuffer;)V

    goto :goto_d

    .line 1199
    :cond_15
    :goto_c
    iget-object v2, v1, Lio/agora/base/internal/video/EglRenderer;->rect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v11}, Lio/agora/base/internal/video/EglRenderer;->convertRectFromAndroidGraphicsRect(Landroid/graphics/Rect;Lio/agora/base/VideoFrame;)[F

    move-result-object v2

    .line 1200
    iget-object v3, v1, Lio/agora/base/internal/video/EglRenderer;->drawer:Lio/agora/base/internal/video/RendererCommon$GlDrawer;

    invoke-static {v2}, Lio/agora/base/internal/video/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-interface {v3, v2}, Lio/agora/base/internal/video/RendererCommon$GlDrawer;->setTextureCropCoord(Ljava/nio/FloatBuffer;)V

    :cond_16
    :goto_d
    if-eqz v13, :cond_1b

    const/16 v2, 0x4000

    .line 1208
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1209
    invoke-virtual {v11}, Lio/agora/base/VideoFrame;->getAlphaBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v14, 0xbe2

    if-eqz v2, :cond_17

    iget-boolean v2, v1, Lio/agora/base/internal/video/EglRenderer;->enableAlphaMask:Z

    if-eqz v2, :cond_17

    const/4 v2, 0x0

    .line 1210
    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1211
    invoke-static {v14}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v2, 0x302

    const/16 v3, 0x303

    const/4 v4, 0x1

    .line 1212
    invoke-static {v2, v3, v4, v3}, Landroid/opengl/GLES20;->glBlendFuncSeparate(IIII)V

    goto :goto_e

    .line 1215
    :cond_17
    iget-object v2, v1, Lio/agora/base/internal/video/EglRenderer;->backgroudColor:Lio/agora/base/internal/video/EglRenderer$Color;

    iget v2, v2, Lio/agora/base/internal/video/EglRenderer$Color;->red:F

    iget-object v3, v1, Lio/agora/base/internal/video/EglRenderer;->backgroudColor:Lio/agora/base/internal/video/EglRenderer$Color;

    iget v3, v3, Lio/agora/base/internal/video/EglRenderer$Color;->green:F

    iget-object v4, v1, Lio/agora/base/internal/video/EglRenderer;->backgroudColor:Lio/agora/base/internal/video/EglRenderer$Color;

    iget v4, v4, Lio/agora/base/internal/video/EglRenderer$Color;->blue:F

    iget-object v5, v1, Lio/agora/base/internal/video/EglRenderer;->backgroudColor:Lio/agora/base/internal/video/EglRenderer$Color;

    iget v5, v5, Lio/agora/base/internal/video/EglRenderer$Color;->alpha:F

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1218
    :goto_e
    iget-object v2, v1, Lio/agora/base/internal/video/EglRenderer;->frameDrawer:Lio/agora/base/internal/video/VideoFrameDrawer;

    iget-object v4, v1, Lio/agora/base/internal/video/EglRenderer;->drawer:Lio/agora/base/internal/video/RendererCommon$GlDrawer;

    iget-object v5, v1, Lio/agora/base/internal/video/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    iget-boolean v10, v1, Lio/agora/base/internal/video/EglRenderer;->enableAlphaMask:Z

    move-object v3, v11

    move v6, v9

    move v8, v12

    move v9, v15

    invoke-virtual/range {v2 .. v10}, Lio/agora/base/internal/video/VideoFrameDrawer;->drawFrame(Lio/agora/base/VideoFrame;Lio/agora/base/internal/video/RendererCommon$GlDrawer;Landroid/graphics/Matrix;IIIIZ)V

    .line 1221
    invoke-virtual {v11}, Lio/agora/base/VideoFrame;->getAlphaBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_18

    iget-boolean v2, v1, Lio/agora/base/internal/video/EglRenderer;->enableAlphaMask:Z

    if-eqz v2, :cond_18

    .line 1222
    invoke-static {v14}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 1225
    :cond_18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v21

    .line 1226
    iget-object v2, v1, Lio/agora/base/internal/video/EglRenderer;->eglBase:Lio/agora/base/internal/video/EglBase;

    instance-of v3, v2, Lio/agora/base/internal/video/EglBase14;

    if-eqz v3, :cond_19

    iget-boolean v3, v1, Lio/agora/base/internal/video/EglRenderer;->isVsyncCallbackStared:Z

    if-eqz v3, :cond_19

    .line 1228
    check-cast v2, Lio/agora/base/internal/video/EglBase14;

    iget-wide v3, v1, Lio/agora/base/internal/video/EglRenderer;->frameIntervalNanos:J

    add-long v3, p2, v3

    invoke-virtual {v2, v3, v4}, Lio/agora/base/internal/video/EglBase14;->setPresentationTime(J)V

    .line 1230
    :cond_19
    iget-object v2, v1, Lio/agora/base/internal/video/EglRenderer;->eglBase:Lio/agora/base/internal/video/EglBase;

    invoke-interface {v2}, Lio/agora/base/internal/video/EglBase;->swapBuffers()V

    .line 1231
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1232
    iget-object v14, v1, Lio/agora/base/internal/video/EglRenderer;->statisticsInfo:Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;

    iget-wide v4, v0, Lio/agora/base/internal/video/EglRenderer$VideoFrameInternal;->frameDrawStartTimeNs:J

    move-wide v15, v2

    move-wide/from16 v17, v4

    invoke-static/range {v14 .. v22}, Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;->access$2000(Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;JJJJ)V

    .line 1235
    iget-object v4, v1, Lio/agora/base/internal/video/EglRenderer;->rendererEvents:Lio/agora/base/internal/video/RendererCommon$RendererEvents;

    if-eqz v4, :cond_1a

    .line 1236
    iget-wide v5, v0, Lio/agora/base/internal/video/EglRenderer$VideoFrameInternal;->frameDrawStartTimeNs:J

    sub-long/2addr v2, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v2, v5

    invoke-interface {v4, v2, v3}, Lio/agora/base/internal/video/RendererCommon$RendererEvents;->onFrameDrawn(J)V

    .line 1240
    :cond_1a
    iget-boolean v0, v1, Lio/agora/base/internal/video/EglRenderer;->isFirstFrameRendered:Z

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    .line 1241
    iput-boolean v0, v1, Lio/agora/base/internal/video/EglRenderer;->isFirstFrameRendered:Z

    const-string v0, "Reporting first rendered frame."

    .line 1242
    invoke-direct {v1, v0}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    .line 1243
    iget-object v0, v1, Lio/agora/base/internal/video/EglRenderer;->rendererEvents:Lio/agora/base/internal/video/RendererCommon$RendererEvents;

    if-eqz v0, :cond_1b

    invoke-virtual {v11}, Lio/agora/base/VideoFrame;->getBuffer()Lio/agora/base/VideoFrame$Buffer;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1244
    iget-object v0, v1, Lio/agora/base/internal/video/EglRenderer;->rendererEvents:Lio/agora/base/internal/video/RendererCommon$RendererEvents;

    .line 1245
    invoke-virtual {v11}, Lio/agora/base/VideoFrame;->getBuffer()Lio/agora/base/VideoFrame$Buffer;

    move-result-object v2

    invoke-interface {v2}, Lio/agora/base/VideoFrame$Buffer;->getWidth()I

    move-result v2

    invoke-virtual {v11}, Lio/agora/base/VideoFrame;->getBuffer()Lio/agora/base/VideoFrame$Buffer;

    move-result-object v3

    invoke-interface {v3}, Lio/agora/base/VideoFrame$Buffer;->getHeight()I

    move-result v3

    invoke-virtual {v11}, Lio/agora/base/VideoFrame;->getRotation()I

    move-result v4

    .line 1244
    invoke-interface {v0, v2, v3, v4}, Lio/agora/base/internal/video/RendererCommon$RendererEvents;->onFirstFrameRendered(III)V

    .line 1250
    :cond_1b
    invoke-direct {v1, v11, v13}, Lio/agora/base/internal/video/EglRenderer;->notifyCallbacks(Lio/agora/base/VideoFrame;Z)V

    .line 1251
    invoke-virtual {v11}, Lio/agora/base/VideoFrame;->release()V

    return-void

    :catchall_0
    move-exception v0

    .line 1125
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 1093
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 1061
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_1c
    :goto_f
    const-string v0, "Dropping frame - No Surface"

    .line 1050
    invoke-direct {v1, v0}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {v11}, Lio/agora/base/VideoFrame;->release()V

    return-void
.end method


# virtual methods
.method public addFrameListener(Lio/agora/base/internal/video/EglRenderer$FrameListener;F)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 659
    invoke-virtual {p0, p1, p2, v0, v1}, Lio/agora/base/internal/video/EglRenderer;->addFrameListener(Lio/agora/base/internal/video/EglRenderer$FrameListener;FLio/agora/base/internal/video/RendererCommon$GlDrawer;Z)V

    return-void
.end method

.method public addFrameListener(Lio/agora/base/internal/video/EglRenderer$FrameListener;FLio/agora/base/internal/video/RendererCommon$GlDrawer;)V
    .locals 1

    const/4 v0, 0x0

    .line 672
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/agora/base/internal/video/EglRenderer;->addFrameListener(Lio/agora/base/internal/video/EglRenderer$FrameListener;FLio/agora/base/internal/video/RendererCommon$GlDrawer;Z)V

    return-void
.end method

.method public addFrameListener(Lio/agora/base/internal/video/EglRenderer$FrameListener;FLio/agora/base/internal/video/RendererCommon$GlDrawer;Z)V
    .locals 7

    .line 687
    new-instance v6, Lio/agora/base/internal/video/EglRenderer$7;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/agora/base/internal/video/EglRenderer$7;-><init>(Lio/agora/base/internal/video/EglRenderer;Lio/agora/base/internal/video/RendererCommon$GlDrawer;Lio/agora/base/internal/video/EglRenderer$FrameListener;FZ)V

    invoke-direct {p0, v6}, Lio/agora/base/internal/video/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearImage()V
    .locals 4

    .line 827
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->backgroudColor:Lio/agora/base/internal/video/EglRenderer$Color;

    iget v0, v0, Lio/agora/base/internal/video/EglRenderer$Color;->red:F

    iget-object v1, p0, Lio/agora/base/internal/video/EglRenderer;->backgroudColor:Lio/agora/base/internal/video/EglRenderer$Color;

    iget v1, v1, Lio/agora/base/internal/video/EglRenderer$Color;->green:F

    iget-object v2, p0, Lio/agora/base/internal/video/EglRenderer;->backgroudColor:Lio/agora/base/internal/video/EglRenderer$Color;

    iget v2, v2, Lio/agora/base/internal/video/EglRenderer$Color;->blue:F

    iget-object v3, p0, Lio/agora/base/internal/video/EglRenderer;->backgroudColor:Lio/agora/base/internal/video/EglRenderer$Color;

    iget v3, v3, Lio/agora/base/internal/video/EglRenderer$Color;->alpha:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lio/agora/base/internal/video/EglRenderer;->clearImage(FFFF)V

    return-void
.end method

.method public clearImage(FFFF)V
    .locals 9

    .line 834
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 835
    :try_start_0
    iget-object v1, p0, Lio/agora/base/internal/video/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 836
    monitor-exit v0

    return-void

    .line 838
    :cond_0
    new-instance v8, Lio/agora/base/internal/video/EglRenderer$10;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lio/agora/base/internal/video/EglRenderer$10;-><init>(Lio/agora/base/internal/video/EglRenderer;FFFF)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 844
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createEglSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 308
    invoke-direct {p0, p1}, Lio/agora/base/internal/video/EglRenderer;->createEglSurfaceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public createEglSurface(Landroid/view/Surface;)V
    .locals 0

    .line 304
    invoke-direct {p0, p1}, Lio/agora/base/internal/video/EglRenderer;->createEglSurfaceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public disableFpsReduction()V
    .locals 1

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 642
    invoke-virtual {p0, v0}, Lio/agora/base/internal/video/EglRenderer;->setFpsReduction(F)V

    return-void
.end method

.method public enableAlphaMask(Z)V
    .locals 2

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enableAlphaMask: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    .line 571
    iget-boolean v0, p0, Lio/agora/base/internal/video/EglRenderer;->enableAlphaMask:Z

    if-eq v0, p1, :cond_0

    .line 572
    iput-boolean p1, p0, Lio/agora/base/internal/video/EglRenderer;->enableAlphaMask:Z

    :cond_0
    return-void
.end method

.method public getFrameDrawn()I
    .locals 1

    .line 207
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->statisticsInfo:Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;

    invoke-static {v0}, Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;->access$800(Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;)I

    move-result v0

    return v0
.end method

.method public init(Lio/agora/base/internal/video/EglBase$Context;[ILio/agora/base/internal/video/RendererCommon$GlDrawer;Z)V
    .locals 7

    const-string v0, "renderThreadHandler useVsync:"

    .line 232
    iget-object v1, p0, Lio/agora/base/internal/video/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 233
    :try_start_0
    iget-object v2, p0, Lio/agora/base/internal/video/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v2, :cond_2

    const-string v2, "Initializing EglRenderer"

    .line 236
    invoke-direct {p0, v2}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    .line 237
    iput-object p3, p0, Lio/agora/base/internal/video/EglRenderer;->drawer:Lio/agora/base/internal/video/RendererCommon$GlDrawer;

    const/4 p3, 0x0

    .line 238
    iput-boolean p3, p0, Lio/agora/base/internal/video/EglRenderer;->isReleasing:Z

    .line 239
    new-instance p3, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/agora/base/internal/video/EglRenderer;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "EglRenderer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p3}, Landroid/os/HandlerThread;->start()V

    .line 241
    invoke-static {}, Lio/agora/base/internal/video/EglRenderer;->getDefaultDisplayRefreshRateParams()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_0

    .line 242
    new-instance v2, Ljava/lang/Double;

    .line 243
    invoke-static {}, Lio/agora/base/internal/video/EglRenderer;->getDefaultDisplayRefreshRateParams()D

    move-result-wide v3

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v5, v3

    invoke-direct {v2, v5, v6}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v2}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lio/agora/base/internal/video/EglRenderer;->frameIntervalNanos:J

    goto :goto_0

    .line 245
    :cond_0
    sget-wide v2, Lio/agora/base/internal/video/EglRenderer;->DEFAULT_FRAME_INTERVAL_NANOS:J

    iput-wide v2, p0, Lio/agora/base/internal/video/EglRenderer;->frameIntervalNanos:J

    .line 247
    :goto_0
    new-instance v2, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;

    .line 248
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    new-instance v3, Lio/agora/base/internal/video/EglRenderer$2;

    invoke-direct {v3, p0}, Lio/agora/base/internal/video/EglRenderer$2;-><init>(Lio/agora/base/internal/video/EglRenderer;)V

    invoke-direct {v2, p3, v3, p0}, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;-><init>(Landroid/os/Looper;Ljava/lang/Runnable;Lio/agora/base/internal/video/EglRenderer;)V

    iput-object v2, p0, Lio/agora/base/internal/video/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 262
    new-instance p3, Lio/agora/base/internal/video/EglRenderer$3;

    invoke-direct {p3, p0, p1, p2}, Lio/agora/base/internal/video/EglRenderer$3;-><init>(Lio/agora/base/internal/video/EglRenderer;Lio/agora/base/internal/video/EglBase$Context;[I)V

    invoke-static {v2, p3}, Lio/agora/base/internal/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 277
    iput-boolean p4, p0, Lio/agora/base/internal/video/EglRenderer;->switchToStartVsync:Z

    .line 278
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    .line 279
    iget-boolean p1, p0, Lio/agora/base/internal/video/EglRenderer;->switchToStartVsync:Z

    if-eqz p1, :cond_1

    .line 280
    iget-object p1, p0, Lio/agora/base/internal/video/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance p2, Lio/agora/base/internal/video/EglRenderer$4;

    invoke-direct {p2, p0}, Lio/agora/base/internal/video/EglRenderer$4;-><init>(Lio/agora/base/internal/video/EglRenderer;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    const-string p1, "renderThreadHandler Choreographer disable"

    .line 293
    invoke-direct {p0, p1}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    .line 295
    :goto_1
    iget-object p1, p0, Lio/agora/base/internal/video/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object p2, p0, Lio/agora/base/internal/video/EglRenderer;->eglSurfaceCreationRunnable:Lio/agora/base/internal/video/EglRenderer$EglSurfaceCreation;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 296
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    .line 297
    iget-object p3, p0, Lio/agora/base/internal/video/EglRenderer;->statisticsInfo:Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;

    invoke-static {p3, p1, p2}, Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;->access$1200(Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;J)V

    .line 298
    iget-object p1, p0, Lio/agora/base/internal/video/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object p2, p0, Lio/agora/base/internal/video/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x4

    .line 299
    invoke-virtual {p3, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    .line 298
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 300
    monitor-exit v1

    return-void

    .line 234
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lio/agora/base/internal/video/EglRenderer;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Already initialized"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 300
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isRenderOnSurfaceView(Z)V
    .locals 0

    .line 211
    iput-boolean p1, p0, Lio/agora/base/internal/video/EglRenderer;->isRenderOnSurfaceView:Z

    return-void
.end method

.method protected notifySurfaceSizeChanged()V
    .locals 4

    .line 730
    sget-boolean v0, Lio/agora/base/internal/video/EglRenderer;->ENABLE_LAST_FRAME:Z

    if-nez v0, :cond_0

    return-void

    .line 733
    :cond_0
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 734
    :try_start_0
    iget-object v1, p0, Lio/agora/base/internal/video/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    const-string v1, "notifySurfaceSizeChanged "

    .line 735
    invoke-direct {p0, v1}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    .line 736
    monitor-exit v0

    return-void

    .line 738
    :cond_1
    iget-object v1, p0, Lio/agora/base/internal/video/EglRenderer;->lastFrame:Lio/agora/base/VideoFrame;

    if-eqz v1, :cond_2

    .line 739
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 740
    iget-object v3, p0, Lio/agora/base/internal/video/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    check-cast v3, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;

    .line 741
    invoke-virtual {v3, v1, v2}, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->sendLastFrameToRenderThread(J)V

    .line 743
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onFrame(Lio/agora/base/VideoFrame;)V
    .locals 4

    .line 749
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->statisticsInfo:Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;

    invoke-static {v0}, Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;->access$1800(Lio/agora/base/internal/video/EglRenderer$StatisticsInfo;)V

    .line 752
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 753
    iget-object v2, p0, Lio/agora/base/internal/video/EglRenderer;->surfaceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 754
    :try_start_0
    iget-boolean v3, p0, Lio/agora/base/internal/video/EglRenderer;->surfaceValid:Z

    if-nez v3, :cond_0

    const-string p1, "Dropping frame - Not valid surface."

    .line 755
    invoke-direct {p0, p1}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    .line 756
    monitor-exit v2

    return-void

    .line 758
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 759
    iget-object v3, p0, Lio/agora/base/internal/video/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 760
    :try_start_1
    iget-object v2, p0, Lio/agora/base/internal/video/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v2, :cond_1

    const-string p1, "Dropping frame - Not initialized or already released."

    .line 761
    invoke-direct {p0, p1}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    .line 762
    monitor-exit v3

    return-void

    .line 764
    :cond_1
    check-cast v2, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;

    .line 765
    invoke-virtual {v2, v0, v1, p1}, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->sendFrameToRenderThread(JLio/agora/base/VideoFrame;)V

    .line 766
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 758
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public pauseVideo()V
    .locals 1

    const/4 v0, 0x0

    .line 646
    invoke-virtual {p0, v0}, Lio/agora/base/internal/video/EglRenderer;->setFpsReduction(F)V

    return-void
.end method

.method public printStackTrace()V
    .locals 5

    .line 538
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 540
    :try_start_0
    iget-object v1, p0, Lio/agora/base/internal/video/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 542
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 543
    array-length v2, v1

    if-lez v2, :cond_1

    const-string v2, "EglRenderer stack trace:"

    .line 544
    invoke-direct {p0, v2}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    .line 545
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 546
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 550
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 6

    const-string v0, "failed to make current and detach: "

    const-string v1, "Releasing."

    .line 326
    invoke-direct {p0, v1}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 327
    iput-boolean v1, p0, Lio/agora/base/internal/video/EglRenderer;->isReleasing:Z

    .line 328
    iget-object v1, p0, Lio/agora/base/internal/video/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 329
    :try_start_0
    iget-object v2, p0, Lio/agora/base/internal/video/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    const-string v0, "Already released"

    .line 330
    invoke-direct {p0, v0}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    .line 331
    monitor-exit v1

    return-void

    .line 333
    :cond_0
    iget-object v3, p0, Lio/agora/base/internal/video/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :try_start_1
    iget-object v2, p0, Lio/agora/base/internal/video/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v3, Lio/agora/base/internal/video/EglRenderer$5;

    invoke-direct {v3, p0}, Lio/agora/base/internal/video/EglRenderer$5;-><init>(Lio/agora/base/internal/video/EglRenderer;)V

    const-wide/16 v4, 0x3e8

    invoke-static {v2, v4, v5, v3}, Lio/agora/base/internal/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;JLjava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 374
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    .line 376
    :goto_0
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    check-cast v0, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;

    invoke-virtual {v0}, Lio/agora/base/internal/video/EglRenderer$HandlerWithFrameSyncControl;->sendStopChoreographer()V

    .line 378
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 379
    iput-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 380
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    .line 381
    iput-boolean v1, p0, Lio/agora/base/internal/video/EglRenderer;->isVsyncCallbackStared:Z

    .line 382
    sget-boolean v1, Lio/agora/base/internal/video/EglRenderer;->ENABLE_LAST_FRAME:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/agora/base/internal/video/EglRenderer;->lastFrame:Lio/agora/base/VideoFrame;

    if-eqz v1, :cond_1

    .line 383
    invoke-virtual {v1}, Lio/agora/base/VideoFrame;->release()V

    .line 384
    iput-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->lastFrame:Lio/agora/base/VideoFrame;

    :cond_1
    const-string v0, "Releasing done."

    .line 386
    invoke-direct {p0, v0}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 380
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public releaseEglSurface()V
    .locals 5

    const-string v0, "releaseEglSurface"

    .line 775
    invoke-direct {p0, v0}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    .line 776
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->surfaceLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 777
    :try_start_0
    iput-boolean v1, p0, Lio/agora/base/internal/video/EglRenderer;->surfaceValid:Z

    .line 778
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v0, "release surface"

    .line 779
    invoke-direct {p0, v0}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    .line 780
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->eglSurfaceCreationRunnable:Lio/agora/base/internal/video/EglRenderer$EglSurfaceCreation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/agora/base/internal/video/EglRenderer$EglSurfaceCreation;->setSurface(Ljava/lang/Object;)V

    .line 781
    iget-object v1, p0, Lio/agora/base/internal/video/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 782
    :try_start_1
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 783
    iget-object v2, p0, Lio/agora/base/internal/video/EglRenderer;->eglSurfaceCreationRunnable:Lio/agora/base/internal/video/EglRenderer$EglSurfaceCreation;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "releaseEglSurface call"

    .line 784
    invoke-direct {p0, v0}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v2, Lio/agora/base/internal/video/EglRenderer$9;

    invoke-direct {v2, p0}, Lio/agora/base/internal/video/EglRenderer$9;-><init>(Lio/agora/base/internal/video/EglRenderer;)V

    const-wide/16 v3, 0x3e8

    invoke-static {v0, v3, v4, v2}, Lio/agora/base/internal/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;JLjava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 800
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 778
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public removeFrameListener(Lio/agora/base/internal/video/EglRenderer$FrameListener;)V
    .locals 4

    .line 705
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 706
    iget-object v1, p0, Lio/agora/base/internal/video/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 707
    :try_start_0
    iget-object v2, p0, Lio/agora/base/internal/video/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 708
    monitor-exit v1

    return-void

    .line 710
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lio/agora/base/internal/video/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 713
    new-instance v2, Lio/agora/base/internal/video/EglRenderer$8;

    invoke-direct {v2, p0, v0, p1}, Lio/agora/base/internal/video/EglRenderer$8;-><init>(Lio/agora/base/internal/video/EglRenderer;Ljava/util/concurrent/CountDownLatch;Lio/agora/base/internal/video/EglRenderer$FrameListener;)V

    invoke-direct {p0, v2}, Lio/agora/base/internal/video/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    .line 725
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    invoke-static {v0}, Lio/agora/base/internal/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    return-void

    .line 711
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "removeFrameListener must not be called on the render thread."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 725
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public resetFirstFrameFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 601
    iput-boolean v0, p0, Lio/agora/base/internal/video/EglRenderer;->isFirstFrameRendered:Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setBackgroundColor"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    .line 595
    new-instance v0, Lio/agora/base/internal/video/EglRenderer$Color;

    invoke-direct {v0, p0, p1}, Lio/agora/base/internal/video/EglRenderer$Color;-><init>(Lio/agora/base/internal/video/EglRenderer;I)V

    iput-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->backgroudColor:Lio/agora/base/internal/video/EglRenderer$Color;

    return-void
.end method

.method public setFpsReduction(F)V
    .locals 6

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setFpsReduction: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 628
    :try_start_0
    iget-wide v1, p0, Lio/agora/base/internal/video/EglRenderer;->minRenderPeriodNs:J

    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_0

    const-wide v3, 0x7fffffffffffffffL

    .line 630
    iput-wide v3, p0, Lio/agora/base/internal/video/EglRenderer;->minRenderPeriodNs:J

    goto :goto_0

    .line 632
    :cond_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    long-to-float v3, v3

    div-float/2addr v3, p1

    float-to-long v3, v3

    iput-wide v3, p0, Lio/agora/base/internal/video/EglRenderer;->minRenderPeriodNs:J

    .line 634
    :goto_0
    iget-wide v3, p0, Lio/agora/base/internal/video/EglRenderer;->minRenderPeriodNs:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_1

    .line 636
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lio/agora/base/internal/video/EglRenderer;->nextFrameTimeNs:J

    .line 638
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMirror(Z)V
    .locals 2

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setMirror: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_0
    iget-boolean v1, p0, Lio/agora/base/internal/video/EglRenderer;->mirror:Z

    if-eq v1, p1, :cond_0

    .line 560
    iput-boolean p1, p0, Lio/agora/base/internal/video/EglRenderer;->mirror:Z

    const/4 p1, 0x1

    .line 561
    iput-boolean p1, p0, Lio/agora/base/internal/video/EglRenderer;->textureCoordUpdate:Z

    .line 563
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRenderMode(I)V
    .locals 2

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setRenderMode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v0

    .line 615
    :try_start_0
    iput p1, p0, Lio/agora/base/internal/video/EglRenderer;->renderMode:I

    .line 616
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setViewSize(FF)V
    .locals 2

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setViewSize width: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v0

    .line 607
    :try_start_0
    iput p1, p0, Lio/agora/base/internal/video/EglRenderer;->viewWidth:F

    .line 608
    iput p2, p0, Lio/agora/base/internal/video/EglRenderer;->viewHeight:F

    .line 609
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateCropArea(Landroid/graphics/Rect;)V
    .locals 3

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateCropArea: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/agora/base/internal/video/EglRenderer;->logD(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v0

    .line 583
    :try_start_0
    iget-object v1, p0, Lio/agora/base/internal/video/EglRenderer;->rect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 584
    iput-object p1, p0, Lio/agora/base/internal/video/EglRenderer;->rect:Landroid/graphics/Rect;

    .line 585
    iput-boolean v2, p0, Lio/agora/base/internal/video/EglRenderer;->textureCoordUpdate:Z

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 586
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 587
    iput-object p1, p0, Lio/agora/base/internal/video/EglRenderer;->rect:Landroid/graphics/Rect;

    .line 588
    iput-boolean v2, p0, Lio/agora/base/internal/video/EglRenderer;->textureCoordUpdate:Z

    .line 590
    :cond_1
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

.method public updateVsyncDuration(J)V
    .locals 2

    .line 390
    iget-object v0, p0, Lio/agora/base/internal/video/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 391
    new-instance v1, Lio/agora/base/internal/video/EglRenderer$6;

    invoke-direct {v1, p0, p1, p2}, Lio/agora/base/internal/video/EglRenderer$6;-><init>(Lio/agora/base/internal/video/EglRenderer;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
