.class Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;
.super Landroid/widget/TextView;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CCLineBox"
.end annotation


# static fields
.field private static final EDGE_OUTLINE_RATIO:F = 0.1f

.field private static final EDGE_SHADOW_RATIO:F = 0.05f

.field private static final FONT_PADDING_RATIO:F = 0.75f


# instance fields
.field private mBgColor:I

.field private mEdgeColor:I

.field private mEdgeType:I

.field private mOutlineWidth:F

.field private mShadowOffset:F

.field private mShadowRadius:F

.field private mTextColor:I

.field final synthetic this$1:Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget;


# direct methods
.method constructor <init>(Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget;Landroid/content/Context;)V
    .locals 1

    .line 163
    iput-object p1, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->this$1:Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget;

    .line 164
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 158
    iput p1, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mTextColor:I

    const/high16 p2, -0x1000000

    .line 159
    iput p2, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mBgColor:I

    const/4 p2, 0x0

    .line 160
    iput p2, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mEdgeType:I

    .line 161
    iput p2, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mEdgeColor:I

    const/16 v0, 0x11

    .line 165
    invoke-virtual {p0, v0}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->setGravity(I)V

    .line 166
    invoke-virtual {p0, p2}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->setBackgroundColor(I)V

    .line 167
    invoke-virtual {p0, p1}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->setTextColor(I)V

    .line 168
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p1, 0x4

    .line 169
    invoke-virtual {p0, p1}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->setVisibility(I)V

    .line 171
    invoke-virtual {p0}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 174
    sget p2, Landroidx/media2/R$dimen;->subtitle_outline_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mOutlineWidth:F

    .line 176
    sget p2, Landroidx/media2/R$dimen;->subtitle_shadow_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mShadowRadius:F

    .line 178
    sget p2, Landroidx/media2/R$dimen;->subtitle_shadow_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mShadowOffset:F

    return-void
.end method

.method private drawEdgeOutline(Landroid/graphics/Canvas;)V
    .locals 5

    .line 236
    invoke-virtual {p0}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    .line 239
    invoke-virtual {v0}, Landroid/text/TextPaint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v2

    .line 240
    invoke-virtual {v0}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v3

    .line 242
    iget v4, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mEdgeColor:I

    invoke-virtual {p0, v4}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->setTextColor(I)V

    .line 243
    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 244
    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 245
    iget v4, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mOutlineWidth:F

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 248
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 251
    iget v4, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mTextColor:I

    invoke-virtual {p0, v4}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->setTextColor(I)V

    .line 252
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 253
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 254
    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    const/4 v0, 0x0

    .line 257
    invoke-direct {p0, v0}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 259
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 261
    iget p1, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mBgColor:I

    invoke-direct {p0, p1}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    return-void
.end method

.method private drawEdgeRaisedOrDepressed(Landroid/graphics/Canvas;)V
    .locals 8

    .line 266
    invoke-virtual {p0}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    .line 269
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 271
    iget v2, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eqz v2, :cond_1

    const/4 v5, -0x1

    goto :goto_1

    .line 272
    :cond_1
    iget v5, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mEdgeColor:I

    :goto_1
    if-eqz v2, :cond_2

    .line 273
    iget v3, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mEdgeColor:I

    .line 274
    :cond_2
    iget v2, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mShadowRadius:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v2, v6

    neg-float v7, v6

    .line 277
    invoke-virtual {p0, v2, v7, v7, v5}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->setShadowLayer(FFFI)V

    .line 278
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 281
    invoke-direct {p0, v4}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 284
    iget v2, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mShadowRadius:F

    invoke-virtual {p0, v2, v6, v6, v3}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->setShadowLayer(FFFI)V

    .line 285
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 288
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 291
    iget p1, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mBgColor:I

    invoke-direct {p0, p1}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->setBackgroundSpans(I)V

    return-void
.end method

.method private setBackgroundSpans(I)V
    .locals 4

    .line 295
    invoke-virtual {p0}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 296
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    .line 297
    check-cast v0, Landroid/text/Spannable;

    .line 299
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroidx/media2/subtitle/Cea608CCParser$MutableBackgroundColorSpan;

    const/4 v3, 0x0

    .line 298
    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/subtitle/Cea608CCParser$MutableBackgroundColorSpan;

    .line 300
    :goto_0
    array-length v1, v0

    if-ge v3, v1, :cond_0

    .line 301
    aget-object v1, v0, v3

    invoke-virtual {v1, p1}, Landroidx/media2/subtitle/Cea608CCParser$MutableBackgroundColorSpan;->setBackgroundColor(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 218
    iget v0, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 227
    invoke-direct {p0, p1}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->drawEdgeOutline(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 230
    :cond_1
    invoke-direct {p0, p1}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->drawEdgeRaisedOrDepressed(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    .line 222
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 199
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v0, v0, v1

    const/4 v1, 0x0

    .line 200
    invoke-virtual {p0, v1, v0}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->setTextSize(IF)V

    const v2, 0x3dcccccd    # 0.1f

    mul-float v2, v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    .line 202
    iput v2, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mOutlineWidth:F

    const v2, 0x3d4ccccd    # 0.05f

    mul-float v0, v0, v2

    add-float/2addr v0, v3

    .line 203
    iput v0, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mShadowRadius:F

    .line 204
    iput v0, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mShadowOffset:F

    .line 207
    invoke-virtual {p0, v3}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->setScaleX(F)V

    .line 208
    invoke-virtual {p0}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v2, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->this$1:Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget;

    iget-object v2, v2, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget;->mTextBounds:Landroid/graphics/Rect;

    const-string v3, "1234567890123456789012345678901234"

    const/16 v4, 0x22

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 209
    iget-object v0, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->this$1:Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget;

    iget-object v0, v0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 210
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 211
    invoke-virtual {p0, v1}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->setScaleX(F)V

    .line 213
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 2

    .line 183
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    iput v0, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mTextColor:I

    .line 184
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    iput v0, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mBgColor:I

    .line 185
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    iput v0, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mEdgeType:I

    .line 186
    iget p1, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    iput p1, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mEdgeColor:I

    .line 188
    iget p1, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mTextColor:I

    invoke-virtual {p0, p1}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->setTextColor(I)V

    .line 189
    iget p1, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mEdgeType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 190
    iget p1, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mShadowRadius:F

    iget v0, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mShadowOffset:F

    iget v1, p0, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->mEdgeColor:I

    invoke-virtual {p0, p1, v0, v0, v1}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->setShadowLayer(FFFI)V

    .line 194
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->invalidate()V

    return-void
.end method
