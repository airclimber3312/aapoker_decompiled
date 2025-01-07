.class public final Lcom/onevcat/uniwebview/AndroidBug5497Workaround;
.super Ljava/lang/Object;
.source "AndroidBug5497Workaround.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onevcat/uniwebview/AndroidBug5497Workaround$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0010\u001a\u00020\nH\u0002J\u0008\u0010\u0011\u001a\u00020\u000eH\u0002J\u0008\u0010\u0012\u001a\u00020\u000eH\u0002J\u0008\u0010\u0013\u001a\u00020\u000eH\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0002J\u0008\u0010\u0016\u001a\u00020\u000eH\u0002J\u000e\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u000eR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onevcat/uniwebview/AndroidBug5497Workaround;",
        "",
        "mContent",
        "Landroid/widget/FrameLayout;",
        "mActivity",
        "Landroid/app/Activity;",
        "(Landroid/widget/FrameLayout;Landroid/app/Activity;)V",
        "frameLayoutParams",
        "Landroid/widget/FrameLayout$LayoutParams;",
        "lastOrientation",
        "",
        "mChildOfContent",
        "Landroid/view/View;",
        "mTargetHeight",
        "",
        "usableHeightPrevious",
        "computeUsableHeight",
        "contentMaxY",
        "keyboardHeight",
        "overlapHeight",
        "possiblyResizeChildOfContent",
        "",
        "screenHeight",
        "setTargetHeight",
        "targetHeight",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/onevcat/uniwebview/AndroidBug5497Workaround$Companion;


# instance fields
.field private final frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private lastOrientation:I

.field private final mActivity:Landroid/app/Activity;

.field private final mChildOfContent:Landroid/view/View;

.field private final mContent:Landroid/widget/FrameLayout;

.field private mTargetHeight:F

.field private usableHeightPrevious:I


# direct methods
.method public static synthetic $r8$lambda$dX-cDjBPd93j6Gc3H7pSfa1HSoQ(Lcom/onevcat/uniwebview/AndroidBug5497Workaround;)V
    .locals 0

    invoke-static {p0}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->_init_$lambda-0(Lcom/onevcat/uniwebview/AndroidBug5497Workaround;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->Companion:Lcom/onevcat/uniwebview/AndroidBug5497Workaround$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/app/Activity;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->mContent:Landroid/widget/FrameLayout;

    .line 10
    iput-object p2, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->mActivity:Landroid/app/Activity;

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "mContent.getChildAt(0)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 30
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    .line 31
    new-instance v0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround$$ExternalSyntheticLambda0;-><init>(Lcom/onevcat/uniwebview/AndroidBug5497Workaround;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 32
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 34
    invoke-direct {p0}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->screenHeight()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->setTargetHeight(F)V

    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/widget/FrameLayout;Landroid/app/Activity;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;-><init>(Landroid/widget/FrameLayout;Landroid/app/Activity;)V

    return-void
.end method

.method private static final _init_$lambda-0(Lcom/onevcat/uniwebview/AndroidBug5497Workaround;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->possiblyResizeChildOfContent()V

    return-void
.end method

.method private final computeUsableHeight()I
    .locals 2

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 52
    iget-object v1, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 53
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    return v1
.end method

.method private final contentMaxY()F
    .locals 2

    .line 57
    iget v0, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->mTargetHeight:F

    iget-object v1, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method private final keyboardHeight()F
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->computeUsableHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private final overlapHeight()F
    .locals 2

    .line 69
    invoke-direct {p0}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->contentMaxY()F

    move-result v0

    invoke-direct {p0}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->keyboardHeight()F

    move-result v1

    add-float/2addr v0, v1

    invoke-direct {p0}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->screenHeight()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private final possiblyResizeChildOfContent()V
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 39
    invoke-direct {p0}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->computeUsableHeight()I

    move-result v1

    .line 40
    iget v2, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->lastOrientation:I

    if-eq v0, v2, :cond_0

    .line 41
    iput v0, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->lastOrientation:I

    .line 42
    iput v1, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->usableHeightPrevious:I

    goto :goto_0

    .line 43
    :cond_0
    iget v0, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->usableHeightPrevious:I

    if-eq v1, v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->mTargetHeight:F

    invoke-direct {p0}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->overlapHeight()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 45
    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 46
    iput v1, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->usableHeightPrevious:I

    :cond_1
    :goto_0
    return-void
.end method

.method private final screenHeight()F
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method


# virtual methods
.method public final setTargetHeight(F)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->mTargetHeight:F

    return-void
.end method
