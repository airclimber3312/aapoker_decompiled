.class abstract Landroidx/media2/subtitle/ClosedCaptionWidget;
.super Landroid/view/ViewGroup;
.source "ClosedCaptionWidget.java"

# interfaces
.implements Landroidx/media2/subtitle/SubtitleTrack$RenderingWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/subtitle/ClosedCaptionWidget$ClosedCaptionLayout;
    }
.end annotation


# instance fields
.field protected mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private final mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field protected mClosedCaptionLayout:Landroidx/media2/subtitle/ClosedCaptionWidget$ClosedCaptionLayout;

.field private mHasChangeListener:Z

.field protected mListener:Landroidx/media2/subtitle/SubtitleTrack$RenderingWidget$OnChangedListener;

.field private final mManager:Landroid/view/accessibility/CaptioningManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Landroidx/media2/subtitle/ClosedCaptionWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/subtitle/ClosedCaptionWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media2/subtitle/ClosedCaptionWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 141
    new-instance p2, Landroidx/media2/subtitle/ClosedCaptionWidget$1;

    invoke-direct {p2, p0}, Landroidx/media2/subtitle/ClosedCaptionWidget$1;-><init>(Landroidx/media2/subtitle/ClosedCaptionWidget;)V

    iput-object p2, p0, Landroidx/media2/subtitle/ClosedCaptionWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 72
    invoke-virtual {p0, p2, p3}, Landroidx/media2/subtitle/ClosedCaptionWidget;->setLayerType(ILandroid/graphics/Paint;)V

    const-string p2, "captioning"

    .line 74
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/CaptioningManager;

    iput-object p2, p0, Landroidx/media2/subtitle/ClosedCaptionWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    .line 75
    invoke-virtual {p2}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p3

    iput-object p3, p0, Landroidx/media2/subtitle/ClosedCaptionWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 77
    invoke-virtual {p0, p1}, Landroidx/media2/subtitle/ClosedCaptionWidget;->createCaptionLayout(Landroid/content/Context;)Landroidx/media2/subtitle/ClosedCaptionWidget$ClosedCaptionLayout;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/subtitle/ClosedCaptionWidget;->mClosedCaptionLayout:Landroidx/media2/subtitle/ClosedCaptionWidget$ClosedCaptionLayout;

    .line 78
    iget-object p3, p0, Landroidx/media2/subtitle/ClosedCaptionWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-interface {p1, p3}, Landroidx/media2/subtitle/ClosedCaptionWidget$ClosedCaptionLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    .line 79
    iget-object p1, p0, Landroidx/media2/subtitle/ClosedCaptionWidget;->mClosedCaptionLayout:Landroidx/media2/subtitle/ClosedCaptionWidget$ClosedCaptionLayout;

    invoke-virtual {p2}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result p2

    invoke-interface {p1, p2}, Landroidx/media2/subtitle/ClosedCaptionWidget$ClosedCaptionLayout;->setFontScale(F)V

    .line 80
    iget-object p1, p0, Landroidx/media2/subtitle/ClosedCaptionWidget;->mClosedCaptionLayout:Landroidx/media2/subtitle/ClosedCaptionWidget$ClosedCaptionLayout;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2, p2}, Landroidx/media2/subtitle/ClosedCaptionWidget;->addView(Landroid/view/View;II)V

    .line 83
    invoke-virtual {p0}, Landroidx/media2/subtitle/ClosedCaptionWidget;->requestLayout()V

    return-void
.end method

.method private manageChangeListener()V
    .locals 2

    .line 155
    invoke-virtual {p0}, Landroidx/media2/subtitle/ClosedCaptionWidget;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media2/subtitle/ClosedCaptionWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 156
    :goto_0
    iget-boolean v1, p0, Landroidx/media2/subtitle/ClosedCaptionWidget;->mHasChangeListener:Z

    if-eq v1, v0, :cond_2

    .line 157
    iput-boolean v0, p0, Landroidx/media2/subtitle/ClosedCaptionWidget;->mHasChangeListener:Z

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Landroidx/media2/subtitle/ClosedCaptionWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroidx/media2/subtitle/ClosedCaptionWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    goto :goto_1

    .line 162
    :cond_1
    iget-object v0, p0, Landroidx/media2/subtitle/ClosedCaptionWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroidx/media2/subtitle/ClosedCaptionWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public abstract createCaptionLayout(Landroid/content/Context;)Landroidx/media2/subtitle/ClosedCaptionWidget$ClosedCaptionLayout;
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 115
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 117
    invoke-direct {p0}, Landroidx/media2/subtitle/ClosedCaptionWidget;->manageChangeListener()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 122
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 124
    invoke-direct {p0}, Landroidx/media2/subtitle/ClosedCaptionWidget;->manageChangeListener()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 135
    iget-object p1, p0, Landroidx/media2/subtitle/ClosedCaptionWidget;->mClosedCaptionLayout:Landroidx/media2/subtitle/ClosedCaptionWidget$ClosedCaptionLayout;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 129
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 130
    iget-object v0, p0, Landroidx/media2/subtitle/ClosedCaptionWidget;->mClosedCaptionLayout:Landroidx/media2/subtitle/ClosedCaptionWidget$ClosedCaptionLayout;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->measure(II)V

    return-void
.end method

.method public setOnChangedListener(Landroidx/media2/subtitle/SubtitleTrack$RenderingWidget$OnChangedListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Landroidx/media2/subtitle/ClosedCaptionWidget;->mListener:Landroidx/media2/subtitle/SubtitleTrack$RenderingWidget$OnChangedListener;

    return-void
.end method

.method public setSize(II)V
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    .line 95
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 96
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 98
    invoke-virtual {p0, v1, v0}, Landroidx/media2/subtitle/ClosedCaptionWidget;->measure(II)V

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, v0, v0, p1, p2}, Landroidx/media2/subtitle/ClosedCaptionWidget;->layout(IIII)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 105
    invoke-virtual {p0, p1}, Landroidx/media2/subtitle/ClosedCaptionWidget;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 107
    invoke-virtual {p0, p1}, Landroidx/media2/subtitle/ClosedCaptionWidget;->setVisibility(I)V

    .line 110
    :goto_0
    invoke-direct {p0}, Landroidx/media2/subtitle/ClosedCaptionWidget;->manageChangeListener()V

    return-void
.end method
