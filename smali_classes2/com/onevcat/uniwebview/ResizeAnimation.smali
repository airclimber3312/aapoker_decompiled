.class public final Lcom/onevcat/uniwebview/ResizeAnimation;
.super Landroid/view/animation/Animation;
.source "ResizeAnimation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tJ\u001a\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onevcat/uniwebview/ResizeAnimation;",
        "Landroid/view/animation/Animation;",
        "view",
        "Landroid/view/View;",
        "startWidth",
        "",
        "endWidth",
        "startHeight",
        "endHeight",
        "(Landroid/view/View;IIII)V",
        "deltaHeight",
        "deltaWidth",
        "originalHeight",
        "originalWidth",
        "applyTransformation",
        "",
        "interpolatedTime",
        "",
        "t",
        "Landroid/view/animation/Transformation;",
        "uniwebview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final deltaHeight:I

.field private final deltaWidth:I

.field private final originalHeight:I

.field private final originalWidth:I

.field private final startHeight:I

.field private final startWidth:I

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IIII)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->view:Landroid/view/View;

    .line 9
    iput p2, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->startWidth:I

    .line 11
    iput p4, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->startHeight:I

    sub-int/2addr p3, p2

    .line 15
    iput p3, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->deltaWidth:I

    sub-int/2addr p5, p4

    .line 16
    iput p5, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->deltaHeight:I

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->originalWidth:I

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->originalHeight:I

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p1, p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 22
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/ResizeAnimation;->isFillEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    .line 23
    iget-object p1, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p2, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->originalHeight:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    iget-object p1, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p2, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->originalWidth:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 26
    :cond_1
    iget p2, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->deltaHeight:I

    if-eqz p2, :cond_2

    .line 27
    iget-object p2, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v0, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->startHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->deltaHeight:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 29
    :cond_2
    iget p2, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->deltaWidth:I

    if-eqz p2, :cond_3

    .line 30
    iget-object p2, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v0, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->startWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->deltaWidth:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 33
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/onevcat/uniwebview/ResizeAnimation;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
