.class Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget;
.super Landroidx/media2/subtitle/ClosedCaptionWidget;
.source "Cea708CaptionRenderer.java"

# interfaces
.implements Landroidx/media2/subtitle/Cea708CCParser$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/subtitle/Cea708CaptionRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Cea708CCWidget"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;,
        Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;,
        Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;,
        Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;,
        Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;
    }
.end annotation


# instance fields
.field private final mCCHandler:Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;

.field final synthetic this$0:Landroidx/media2/subtitle/Cea708CaptionRenderer;


# direct methods
.method constructor <init>(Landroidx/media2/subtitle/Cea708CaptionRenderer;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget;-><init>(Landroidx/media2/subtitle/Cea708CaptionRenderer;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroidx/media2/subtitle/Cea708CaptionRenderer;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget;-><init>(Landroidx/media2/subtitle/Cea708CaptionRenderer;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroidx/media2/subtitle/Cea708CaptionRenderer;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 133
    invoke-direct/range {v0 .. v5}, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget;-><init>(Landroidx/media2/subtitle/Cea708CaptionRenderer;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method constructor <init>(Landroidx/media2/subtitle/Cea708CaptionRenderer;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 137
    iput-object p1, p0, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget;->this$0:Landroidx/media2/subtitle/Cea708CaptionRenderer;

    .line 138
    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/media2/subtitle/ClosedCaptionWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 140
    new-instance p1, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;

    iget-object p2, p0, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget;->mClosedCaptionLayout:Landroidx/media2/subtitle/ClosedCaptionWidget$ClosedCaptionLayout;

    check-cast p2, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    invoke-direct {p1, p0, p2}, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;-><init>(Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget;Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;)V

    iput-object p1, p0, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget;->mCCHandler:Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;

    return-void
.end method


# virtual methods
.method public createCaptionLayout(Landroid/content/Context;)Landroidx/media2/subtitle/ClosedCaptionWidget$ClosedCaptionLayout;
    .locals 1

    .line 145
    new-instance v0, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    invoke-direct {v0, p0, p1}, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;-><init>(Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;)V

    return-object v0
.end method

.method public emitEvent(Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;)V
    .locals 1

    .line 150
    iget-object v0, p0, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget;->mCCHandler:Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;

    invoke-virtual {v0, p1}, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->processCaptionEvent(Landroidx/media2/subtitle/Cea708CCParser$CaptionEvent;)V

    .line 152
    invoke-virtual {p0}, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget;->setSize(II)V

    .line 154
    iget-object p1, p0, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget;->mListener:Landroidx/media2/subtitle/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget;->mListener:Landroidx/media2/subtitle/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {p1, p0}, Landroidx/media2/subtitle/SubtitleTrack$RenderingWidget$OnChangedListener;->onChanged(Landroidx/media2/subtitle/SubtitleTrack$RenderingWidget;)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 161
    invoke-super {p0, p1}, Landroidx/media2/subtitle/ClosedCaptionWidget;->onDraw(Landroid/graphics/Canvas;)V

    .line 162
    iget-object v0, p0, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget;->mClosedCaptionLayout:Landroidx/media2/subtitle/ClosedCaptionWidget$ClosedCaptionLayout;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
