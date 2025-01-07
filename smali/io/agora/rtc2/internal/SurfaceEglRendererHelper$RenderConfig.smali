.class Lio/agora/rtc2/internal/SurfaceEglRendererHelper$RenderConfig;
.super Ljava/lang/Object;
.source "SurfaceEglRendererHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/internal/SurfaceEglRendererHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderConfig"
.end annotation


# instance fields
.field private volatile enableAlphaMask:Z

.field private volatile mirror:Z

.field private volatile rect:Landroid/graphics/Rect;

.field private volatile renderMode:I

.field final synthetic this$0:Lio/agora/rtc2/internal/SurfaceEglRendererHelper;

.field private volatile useVsync:Z


# direct methods
.method public constructor <init>(Lio/agora/rtc2/internal/SurfaceEglRendererHelper;)V
    .locals 0

    .line 721
    iput-object p1, p0, Lio/agora/rtc2/internal/SurfaceEglRendererHelper$RenderConfig;->this$0:Lio/agora/rtc2/internal/SurfaceEglRendererHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 722
    iput-boolean p1, p0, Lio/agora/rtc2/internal/SurfaceEglRendererHelper$RenderConfig;->mirror:Z

    const/4 p1, 0x2

    .line 723
    iput p1, p0, Lio/agora/rtc2/internal/SurfaceEglRendererHelper$RenderConfig;->renderMode:I

    const/4 p1, 0x0

    .line 724
    iput-boolean p1, p0, Lio/agora/rtc2/internal/SurfaceEglRendererHelper$RenderConfig;->useVsync:Z

    .line 725
    iput-boolean p1, p0, Lio/agora/rtc2/internal/SurfaceEglRendererHelper$RenderConfig;->enableAlphaMask:Z

    return-void
.end method

.method public constructor <init>(Lio/agora/rtc2/internal/SurfaceEglRendererHelper;ZIZ)V
    .locals 0

    .line 728
    iput-object p1, p0, Lio/agora/rtc2/internal/SurfaceEglRendererHelper$RenderConfig;->this$0:Lio/agora/rtc2/internal/SurfaceEglRendererHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    iput-boolean p2, p0, Lio/agora/rtc2/internal/SurfaceEglRendererHelper$RenderConfig;->mirror:Z

    .line 730
    iput p3, p0, Lio/agora/rtc2/internal/SurfaceEglRendererHelper$RenderConfig;->renderMode:I

    .line 731
    iput-boolean p4, p0, Lio/agora/rtc2/internal/SurfaceEglRendererHelper$RenderConfig;->useVsync:Z

    return-void
.end method

.method public constructor <init>(Lio/agora/rtc2/internal/SurfaceEglRendererHelper;ZIZLandroid/graphics/Rect;)V
    .locals 0

    .line 734
    iput-object p1, p0, Lio/agora/rtc2/internal/SurfaceEglRendererHelper$RenderConfig;->this$0:Lio/agora/rtc2/internal/SurfaceEglRendererHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 735
    iput-boolean p2, p0, Lio/agora/rtc2/internal/SurfaceEglRendererHelper$RenderConfig;->mirror:Z

    .line 736
    iput p3, p0, Lio/agora/rtc2/internal/SurfaceEglRendererHelper$RenderConfig;->renderMode:I

    .line 737
    iput-boolean p4, p0, Lio/agora/rtc2/internal/SurfaceEglRendererHelper$RenderConfig;->useVsync:Z

    .line 738
    iput-object p5, p0, Lio/agora/rtc2/internal/SurfaceEglRendererHelper$RenderConfig;->rect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public enableAlphaMask(Z)V
    .locals 0

    .line 778
    iput-boolean p1, p0, Lio/agora/rtc2/internal/SurfaceEglRendererHelper$RenderConfig;->enableAlphaMask:Z

    return-void
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    .line 766
    iget-object v0, p0, Lio/agora/rtc2/internal/SurfaceEglRendererHelper$RenderConfig;->rect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getRenderMode()I
    .locals 1

    .line 750
    iget v0, p0, Lio/agora/rtc2/internal/SurfaceEglRendererHelper$RenderConfig;->renderMode:I

    return v0
.end method

.method public isEnableAlphaMask()Z
    .locals 1

    .line 774
    iget-boolean v0, p0, Lio/agora/rtc2/internal/SurfaceEglRendererHelper$RenderConfig;->enableAlphaMask:Z

    return v0
.end method

.method public isMirror()Z
    .locals 1

    .line 742
    iget-boolean v0, p0, Lio/agora/rtc2/internal/SurfaceEglRendererHelper$RenderConfig;->mirror:Z

    return v0
.end method

.method public isUseVsync()Z
    .locals 1

    .line 758
    iget-boolean v0, p0, Lio/agora/rtc2/internal/SurfaceEglRendererHelper$RenderConfig;->useVsync:Z

    return v0
.end method

.method public setMirror(Z)V
    .locals 0

    .line 746
    iput-boolean p1, p0, Lio/agora/rtc2/internal/SurfaceEglRendererHelper$RenderConfig;->mirror:Z

    return-void
.end method

.method public setRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 770
    iput-object p1, p0, Lio/agora/rtc2/internal/SurfaceEglRendererHelper$RenderConfig;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method public setRenderMode(I)V
    .locals 0

    .line 754
    iput p1, p0, Lio/agora/rtc2/internal/SurfaceEglRendererHelper$RenderConfig;->renderMode:I

    return-void
.end method

.method public setUseVsync(Z)V
    .locals 0

    .line 762
    iput-boolean p1, p0, Lio/agora/rtc2/internal/SurfaceEglRendererHelper$RenderConfig;->useVsync:Z

    return-void
.end method
