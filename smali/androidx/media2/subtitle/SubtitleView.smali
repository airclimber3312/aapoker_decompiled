.class Landroidx/media2/subtitle/SubtitleView;
.super Landroid/view/View;
.source "SubtitleView.java"


# static fields
.field private static final COLOR_BEVEL_DARK:I = -0x80000000

.field private static final COLOR_BEVEL_LIGHT:I = -0x7f000001

.field private static final INNER_PADDING_RATIO:F = 0.125f


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mBackgroundColor:I

.field private final mCornerRadius:F

.field private mEdgeColor:I

.field private mEdgeType:I

.field private mForegroundColor:I

.field private mHasMeasurements:Z

.field private mInnerPaddingX:I

.field private mLastMeasuredWidth:I

.field private mLayout:Landroid/text/StaticLayout;

.field private final mLineBounds:Landroid/graphics/RectF;

.field private final mOutlineWidth:F

.field private mPaint:Landroid/graphics/Paint;

.field private final mShadowOffsetX:F

.field private final mShadowOffsetY:F

.field private final mShadowRadius:F

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private final mText:Landroid/text/SpannableStringBuilder;

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0}, Landroidx/media2/subtitle/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/subtitle/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media2/subtitle/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/media2/subtitle/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    .line 62
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Landroidx/media2/subtitle/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 77
    iput p1, p0, Landroidx/media2/subtitle/SubtitleView;->mSpacingMult:F

    const/4 p1, 0x0

    .line 78
    iput p1, p0, Landroidx/media2/subtitle/SubtitleView;->mSpacingAdd:F

    const/4 p1, 0x0

    .line 79
    iput p1, p0, Landroidx/media2/subtitle/SubtitleView;->mInnerPaddingX:I

    .line 98
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 99
    sget p2, Landroidx/media2/R$dimen;->subtitle_corner_radius:I

    .line 100
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/media2/subtitle/SubtitleView;->mCornerRadius:F

    .line 101
    sget p2, Landroidx/media2/R$dimen;->subtitle_outline_width:I

    .line 102
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/media2/subtitle/SubtitleView;->mOutlineWidth:F

    .line 103
    sget p2, Landroidx/media2/R$dimen;->subtitle_shadow_radius:I

    .line 104
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/media2/subtitle/SubtitleView;->mShadowRadius:F

    .line 105
    sget p2, Landroidx/media2/R$dimen;->subtitle_shadow_offset:I

    .line 106
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/media2/subtitle/SubtitleView;->mShadowOffsetX:F

    .line 107
    iput p1, p0, Landroidx/media2/subtitle/SubtitleView;->mShadowOffsetY:F

    .line 109
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Landroidx/media2/subtitle/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    const/4 p2, 0x1

    .line 110
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 111
    iget-object p1, p0, Landroidx/media2/subtitle/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 113
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroidx/media2/subtitle/SubtitleView;->mPaint:Landroid/graphics/Paint;

    .line 114
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private computeMeasurements(I)Z
    .locals 5

    .line 221
    iget-boolean v0, p0, Landroidx/media2/subtitle/SubtitleView;->mHasMeasurements:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media2/subtitle/SubtitleView;->mLastMeasuredWidth:I

    if-ne p1, v0, :cond_0

    return v1

    .line 226
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleView;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Landroidx/media2/subtitle/SubtitleView;->mInnerPaddingX:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    if-gtz p1, :cond_1

    return v0

    .line 235
    :cond_1
    iput-boolean v1, p0, Landroidx/media2/subtitle/SubtitleView;->mHasMeasurements:Z

    .line 236
    iput p1, p0, Landroidx/media2/subtitle/SubtitleView;->mLastMeasuredWidth:I

    .line 237
    iget-object v2, p0, Landroidx/media2/subtitle/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    iget-object v4, p0, Landroidx/media2/subtitle/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v0, v3, v4, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    .line 238
    invoke-virtual {p1, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget v0, p0, Landroidx/media2/subtitle/SubtitleView;->mSpacingAdd:F

    iget v2, p0, Landroidx/media2/subtitle/SubtitleView;->mSpacingMult:F

    .line 239
    invoke-virtual {p1, v0, v2}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 240
    invoke-virtual {p1, v1}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 241
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/subtitle/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    return v1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 248
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 254
    iget v2, p0, Landroidx/media2/subtitle/SubtitleView;->mInnerPaddingX:I

    .line 255
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 257
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    .line 258
    iget-object v4, p0, Landroidx/media2/subtitle/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    .line 259
    iget-object v5, p0, Landroidx/media2/subtitle/SubtitleView;->mPaint:Landroid/graphics/Paint;

    .line 260
    iget-object v6, p0, Landroidx/media2/subtitle/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    .line 262
    iget v7, p0, Landroidx/media2/subtitle/SubtitleView;->mBackgroundColor:I

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    const/4 v8, 0x0

    if-lez v7, :cond_1

    .line 263
    iget v7, p0, Landroidx/media2/subtitle/SubtitleView;->mCornerRadius:F

    .line 264
    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v9

    int-to-float v9, v9

    .line 266
    iget v10, p0, Landroidx/media2/subtitle/SubtitleView;->mBackgroundColor:I

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 267
    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v3, :cond_1

    .line 270
    invoke-virtual {v0, v10}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v2

    sub-float/2addr v11, v12

    iput v11, v6, Landroid/graphics/RectF;->left:F

    .line 271
    invoke-virtual {v0, v10}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v11

    add-float/2addr v11, v12

    iput v11, v6, Landroid/graphics/RectF;->right:F

    .line 272
    iput v9, v6, Landroid/graphics/RectF;->top:F

    .line 273
    invoke-virtual {v0, v10}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v9

    int-to-float v9, v9

    iput v9, v6, Landroid/graphics/RectF;->bottom:F

    .line 274
    iget v9, v6, Landroid/graphics/RectF;->bottom:F

    .line 276
    invoke-virtual {p1, v6, v7, v7, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 280
    :cond_1
    iget v2, p0, Landroidx/media2/subtitle/SubtitleView;->mEdgeType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 282
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 283
    iget v2, p0, Landroidx/media2/subtitle/SubtitleView;->mOutlineWidth:F

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 284
    iget v2, p0, Landroidx/media2/subtitle/SubtitleView;->mEdgeColor:I

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 285
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 287
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_2
    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 290
    iget v2, p0, Landroidx/media2/subtitle/SubtitleView;->mShadowRadius:F

    iget v3, p0, Landroidx/media2/subtitle/SubtitleView;->mShadowOffsetX:F

    iget v5, p0, Landroidx/media2/subtitle/SubtitleView;->mShadowOffsetY:F

    iget v6, p0, Landroidx/media2/subtitle/SubtitleView;->mEdgeColor:I

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_3

    :cond_3
    const/4 v5, 0x3

    if-eq v2, v5, :cond_4

    const/4 v6, 0x4

    if-ne v2, v6, :cond_8

    :cond_4
    if-ne v2, v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    const/4 v2, -0x1

    if-eqz v3, :cond_6

    const/4 v5, -0x1

    goto :goto_2

    .line 294
    :cond_6
    iget v5, p0, Landroidx/media2/subtitle/SubtitleView;->mEdgeColor:I

    :goto_2
    if-eqz v3, :cond_7

    .line 295
    iget v2, p0, Landroidx/media2/subtitle/SubtitleView;->mEdgeColor:I

    .line 296
    :cond_7
    iget v3, p0, Landroidx/media2/subtitle/SubtitleView;->mShadowRadius:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    .line 298
    iget v6, p0, Landroidx/media2/subtitle/SubtitleView;->mForegroundColor:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 299
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 300
    iget v6, p0, Landroidx/media2/subtitle/SubtitleView;->mShadowRadius:F

    neg-float v7, v3

    invoke-virtual {v4, v6, v7, v7, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 302
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 304
    iget v5, p0, Landroidx/media2/subtitle/SubtitleView;->mShadowRadius:F

    invoke-virtual {v4, v5, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 307
    :cond_8
    :goto_3
    iget v2, p0, Landroidx/media2/subtitle/SubtitleView;->mForegroundColor:I

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 308
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 310
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    .line 312
    invoke-virtual {v4, v0, v0, v0, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 313
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    .line 217
    invoke-direct {p0, p4}, Landroidx/media2/subtitle/SubtitleView;->computeMeasurements(I)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 198
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 200
    invoke-direct {p0, p1}, Landroidx/media2/subtitle/SubtitleView;->computeMeasurements(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Landroidx/media2/subtitle/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .line 204
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleView;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleView;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    iget v0, p0, Landroidx/media2/subtitle/SubtitleView;->mInnerPaddingX:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 205
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    .line 206
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleView;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleView;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    .line 207
    invoke-virtual {p0, v0, p1}, Landroidx/media2/subtitle/SubtitleView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x1000000

    .line 209
    invoke-virtual {p0, p1, p1}, Landroidx/media2/subtitle/SubtitleView;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .locals 1

    .line 186
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    if-eq v0, p1, :cond_0

    .line 187
    iput-object p1, p0, Landroidx/media2/subtitle/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    const/4 p1, 0x0

    .line 189
    iput-boolean p1, p0, Landroidx/media2/subtitle/SubtitleView;->mHasMeasurements:Z

    .line 191
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleView;->requestLayout()V

    .line 192
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 140
    iput p1, p0, Landroidx/media2/subtitle/SubtitleView;->mBackgroundColor:I

    .line 142
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleView;->invalidate()V

    return-void
.end method

.method public setEdgeColor(I)V
    .locals 0

    .line 152
    iput p1, p0, Landroidx/media2/subtitle/SubtitleView;->mEdgeColor:I

    .line 154
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleView;->invalidate()V

    return-void
.end method

.method public setEdgeType(I)V
    .locals 0

    .line 146
    iput p1, p0, Landroidx/media2/subtitle/SubtitleView;->mEdgeType:I

    .line 148
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleView;->invalidate()V

    return-void
.end method

.method public setForegroundColor(I)V
    .locals 0

    .line 133
    iput p1, p0, Landroidx/media2/subtitle/SubtitleView;->mForegroundColor:I

    .line 135
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleView;->invalidate()V

    return-void
.end method

.method public setText(I)V
    .locals 1

    .line 118
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 119
    invoke-virtual {p0, p1}, Landroidx/media2/subtitle/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 123
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 124
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 p1, 0x0

    .line 126
    iput-boolean p1, p0, Landroidx/media2/subtitle/SubtitleView;->mHasMeasurements:Z

    .line 128
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleView;->requestLayout()V

    .line 129
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleView;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 163
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/high16 v0, 0x3e000000    # 0.125f

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 165
    iput p1, p0, Landroidx/media2/subtitle/SubtitleView;->mInnerPaddingX:I

    const/4 p1, 0x0

    .line 167
    iput-boolean p1, p0, Landroidx/media2/subtitle/SubtitleView;->mHasMeasurements:Z

    .line 169
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleView;->requestLayout()V

    .line 170
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 175
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Landroidx/media2/subtitle/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 p1, 0x0

    .line 178
    iput-boolean p1, p0, Landroidx/media2/subtitle/SubtitleView;->mHasMeasurements:Z

    .line 180
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleView;->requestLayout()V

    .line 181
    invoke-virtual {p0}, Landroidx/media2/subtitle/SubtitleView;->invalidate()V

    :cond_0
    return-void
.end method
