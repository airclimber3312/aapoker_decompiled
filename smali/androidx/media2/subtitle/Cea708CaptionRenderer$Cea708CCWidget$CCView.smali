.class Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;
.super Landroidx/media2/subtitle/SubtitleView;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CCView"
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget;


# direct methods
.method constructor <init>(Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1218
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;-><init>(Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1222
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;-><init>(Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1226
    invoke-direct/range {v0 .. v5}, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;-><init>(Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method constructor <init>(Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1230
    iput-object p1, p0, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;->this$1:Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget;

    .line 1231
    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/media2/subtitle/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 1

    .line 1235
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1236
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-virtual {p0, v0}, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;->setForegroundColor(I)V

    .line 1238
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1239
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-virtual {p0, v0}, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;->setBackgroundColor(I)V

    .line 1241
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1242
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-virtual {p0, v0}, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;->setEdgeType(I)V

    .line 1244
    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1245
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-virtual {p0, v0}, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;->setEdgeColor(I)V

    .line 1247
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media2/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
