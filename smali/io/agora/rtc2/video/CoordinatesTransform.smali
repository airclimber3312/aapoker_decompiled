.class public Lio/agora/rtc2/video/CoordinatesTransform;
.super Ljava/lang/Object;
.source "CoordinatesTransform.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateFocusArea(FFF)Landroid/graphics/Rect;
    .locals 5

    const/high16 v0, 0x43960000    # 300.0f

    mul-float p2, p2, v0

    .line 390
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p2

    const/high16 v0, 0x44fa0000    # 2000.0f

    mul-float p0, p0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    sub-float/2addr p0, v1

    float-to-int p0, p0

    mul-float p1, p1, v0

    sub-float/2addr p1, v1

    float-to-int p1, p1

    .line 394
    div-int/lit8 p2, p2, 0x2

    .line 395
    new-instance v0, Landroid/graphics/RectF;

    sub-int v1, p0, p2

    const/16 v2, -0x3e8

    const/16 v3, 0x3e8

    invoke-static {v1, v2, v3}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(III)I

    move-result v1

    int-to-float v1, v1

    sub-int v4, p1, p2

    .line 396
    invoke-static {v4, v2, v3}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(III)I

    move-result v4

    int-to-float v4, v4

    add-int/2addr p0, p2

    invoke-static {p0, v2, v3}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(III)I

    move-result p0

    int-to-float p0, p0

    add-int/2addr p1, p2

    .line 397
    invoke-static {p1, v2, v3}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(III)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {v0, v1, v4, p0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 398
    new-instance p0, Landroid/graphics/Rect;

    iget p1, v0, Landroid/graphics/RectF;->left:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p2, v0, Landroid/graphics/RectF;->top:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 399
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static calculateMeteringArea(FFIIF)Landroid/graphics/Rect;
    .locals 4

    const/high16 v0, 0x43960000    # 300.0f

    mul-float p4, p4, v0

    .line 371
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Float;->intValue()I

    move-result p4

    int-to-float v0, p2

    mul-float p0, p0, v0

    .line 372
    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    sub-float/2addr p0, v0

    float-to-int p0, p0

    int-to-float v0, p3

    mul-float p1, p1, v0

    .line 373
    div-int/lit8 v0, p3, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 375
    div-int/lit8 p4, p4, 0x2

    .line 376
    new-instance v0, Landroid/graphics/RectF;

    sub-int v1, p0, p4

    const/4 v2, 0x0

    invoke-static {v1, v2, p2}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(III)I

    move-result v1

    int-to-float v1, v1

    sub-int v3, p1, p4

    .line 377
    invoke-static {v3, v2, p3}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(III)I

    move-result v3

    int-to-float v3, v3

    add-int/2addr p0, p4

    .line 378
    invoke-static {p0, v2, p2}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(III)I

    move-result p0

    int-to-float p0, p0

    add-int/2addr p1, p4

    .line 379
    invoke-static {p1, v2, p3}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(III)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {v0, v1, v3, p0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 380
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 381
    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 382
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-nez p1, :cond_1

    .line 383
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_1
    return-object p0
.end method

.method public static cameraToNormalized(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 188
    :cond_0
    iget v1, p0, Landroid/graphics/RectF;->left:F

    const/high16 v2, -0x3b860000    # -1000.0f

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_2

    iget v1, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_2

    iget v1, p0, Landroid/graphics/RectF;->right:F

    const/high16 v2, 0x447a0000    # 1000.0f

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_2

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    goto :goto_0

    .line 192
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 193
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    const v1, 0x3a03126f    # 5.0E-4f

    .line 194
    invoke-virtual {p0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v1, 0x3f000000    # 0.5f

    .line 195
    invoke-virtual {p0, v1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 196
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_2
    :goto_0
    return-object v0
.end method

.method static clamp(FFF)F
    .locals 0

    .line 361
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method static clamp(III)I
    .locals 0

    .line 365
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static normalizedFaceRect(Landroid/graphics/Rect;IZ)Landroid/graphics/RectF;
    .locals 1

    .line 14
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 15
    invoke-static {v0, p2, p1}, Lio/agora/rtc2/video/CoordinatesTransform;->prepareMatrix(Landroid/graphics/Matrix;ZI)V

    .line 16
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 17
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object p1
.end method

.method public static normalizedToCamera(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 166
    :cond_0
    iget v1, p0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_2

    iget v1, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 167
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    goto :goto_0

    .line 170
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 171
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x44fa0000    # 2000.0f

    .line 172
    invoke-virtual {p0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v1, -0x3b860000    # -1000.0f

    .line 173
    invoke-virtual {p0, v1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 174
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static normalizedToSensor(Landroid/graphics/RectF;IIIIIZ)Landroid/graphics/RectF;
    .locals 6

    const/4 p5, 0x0

    if-nez p0, :cond_0

    return-object p5

    .line 211
    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_5

    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_5

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_5

    .line 212
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    goto :goto_1

    .line 215
    :cond_1
    new-instance p5, Landroid/graphics/RectF;

    invoke-direct {p5, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 216
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p6, :cond_4

    int-to-float p6, p3

    int-to-float p1, p1

    div-float p1, p6, p1

    int-to-float v0, p4

    int-to-float p2, p2

    div-float p2, v0, p2

    div-float v3, p1, p2

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v5, v3, v2

    if-lez v5, :cond_2

    sub-float/2addr v3, v2

    div-float/2addr v3, v4

    .line 222
    invoke-virtual {p0, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    mul-float p6, p6, p2

    div-float/2addr p6, p1

    float-to-int p1, p6

    move p3, p1

    goto :goto_0

    :cond_2
    cmpg-float p6, v3, v2

    if-gez p6, :cond_3

    div-float p4, p2, p1

    sub-float/2addr p4, v2

    div-float/2addr p4, v4

    .line 225
    invoke-virtual {p0, v1, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    mul-float v0, v0, p1

    div-float/2addr v0, p2

    float-to-int p1, v0

    move p4, p1

    .line 228
    :cond_3
    :goto_0
    invoke-virtual {p0, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_4
    int-to-float p1, p3

    int-to-float p2, p4

    .line 230
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 231
    invoke-virtual {p0, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_5
    :goto_1
    return-object p5
.end method

.method public static normalizedToView(Landroid/graphics/RectF;IIIIZII)Landroid/graphics/RectF;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 287
    :cond_0
    iget v1, p0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_f

    iget v1, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_f

    iget v1, p0, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_f

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_f

    rem-int/lit8 v1, p6, 0x5a

    if-eqz v1, :cond_1

    goto/16 :goto_6

    :cond_1
    if-lez p6, :cond_2

    .line 291
    rem-int/lit16 p6, p6, 0x168

    goto :goto_0

    :cond_2
    rem-int/lit16 p6, p6, 0x168

    add-int/lit16 p6, p6, 0x168

    .line 292
    :goto_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 293
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p5, :cond_3

    .line 296
    iget p5, v0, Landroid/graphics/RectF;->left:F

    .line 297
    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float v1, v3, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    sub-float p5, v3, p5

    .line 298
    iput p5, v0, Landroid/graphics/RectF;->right:F

    :cond_3
    neg-int p5, p6

    int-to-float p5, p5

    .line 301
    invoke-virtual {p0, p5}, Landroid/graphics/Matrix;->setRotate(F)V

    const/16 p5, 0x10e

    const/16 v1, 0x5a

    if-eq p6, v1, :cond_6

    const/16 v4, 0xb4

    if-eq p6, v4, :cond_5

    if-eq p6, p5, :cond_4

    goto :goto_1

    .line 311
    :cond_4
    invoke-virtual {p0, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 308
    :cond_5
    invoke-virtual {p0, v3, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 305
    :cond_6
    invoke-virtual {p0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_1
    int-to-float v4, p1

    int-to-float v5, p2

    .line 317
    invoke-virtual {p0, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 318
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    if-eq p6, v1, :cond_8

    if-ne p6, p5, :cond_7

    goto :goto_2

    :cond_7
    int-to-float v6, p3

    goto :goto_3

    :cond_8
    :goto_2
    int-to-float v6, p4

    :goto_3
    if-eq p6, v1, :cond_a

    if-ne p6, p5, :cond_9

    goto :goto_4

    :cond_9
    int-to-float p3, p4

    goto :goto_5

    :cond_a
    :goto_4
    int-to-float p3, p3

    :goto_5
    div-float p4, v4, v6

    div-float p3, v5, p3

    const/4 p5, 0x1

    const/4 p6, 0x2

    if-eq p7, p5, :cond_d

    if-eq p7, p6, :cond_b

    goto/16 :goto_6

    :cond_b
    cmpl-float p5, p4, p3

    if-lez p5, :cond_c

    div-float/2addr p3, p4

    .line 342
    div-int/2addr p1, p6

    int-to-float p1, p1

    div-int/2addr p2, p6

    int-to-float p2, p2

    invoke-virtual {p0, p3, v3, p1, p2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 343
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 344
    iget p0, v0, Landroid/graphics/RectF;->right:F

    invoke-static {p0, v2, v4}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(FFF)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->right:F

    .line 345
    iget p0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {p0, v2, v4}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(FFF)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_6

    :cond_c
    div-float/2addr p4, p3

    .line 347
    div-int/2addr p1, p6

    int-to-float p1, p1

    div-int/2addr p2, p6

    int-to-float p2, p2

    invoke-virtual {p0, v3, p4, p1, p2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 348
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 349
    iget p0, v0, Landroid/graphics/RectF;->top:F

    invoke-static {p0, v2, v5}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(FFF)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->top:F

    .line 350
    iget p0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0, v2, v5}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(FFF)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_6

    :cond_d
    cmpl-float p5, p4, p3

    if-lez p5, :cond_e

    div-float/2addr p4, p3

    .line 329
    div-int/2addr p1, p6

    int-to-float p1, p1

    div-int/2addr p2, p6

    int-to-float p2, p2

    invoke-virtual {p0, v3, p4, p1, p2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 330
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 331
    iget p0, v0, Landroid/graphics/RectF;->top:F

    invoke-static {p0, v2, v5}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(FFF)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->top:F

    .line 332
    iget p0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0, v2, v5}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(FFF)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_6

    :cond_e
    div-float/2addr p3, p4

    .line 334
    div-int/2addr p1, p6

    int-to-float p1, p1

    div-int/2addr p2, p6

    int-to-float p2, p2

    invoke-virtual {p0, p3, v3, p1, p2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 335
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 336
    iget p0, v0, Landroid/graphics/RectF;->right:F

    invoke-static {p0, v2, v4}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(FFF)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->right:F

    .line 337
    iget p0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {p0, v2, v4}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(FFF)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->left:F

    :cond_f
    :goto_6
    return-object v0
.end method

.method private static prepareMatrix(Landroid/graphics/Matrix;ZI)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 23
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float p1, p2

    .line 25
    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const p1, 0x3a03126f    # 5.0E-4f

    .line 28
    invoke-virtual {p0, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 p1, 0x3f000000    # 0.5f

    .line 29
    invoke-virtual {p0, p1, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public static sensorToNormalized(Landroid/graphics/RectF;IIIIZ)Landroid/graphics/RectF;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 247
    :cond_0
    iget v1, p0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_5

    iget v1, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_5

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    int-to-float v3, p1

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_5

    .line 248
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    int-to-float v4, p2

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    goto :goto_1

    .line 252
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 253
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p5, :cond_4

    int-to-float p3, p3

    div-float p3, v3, p3

    int-to-float p4, p4

    div-float p4, v4, p4

    div-float p5, p3, p4

    const/high16 v5, 0x40000000    # 2.0f

    cmpl-float v6, p5, v1

    if-lez v6, :cond_2

    div-float p1, p4, p3

    sub-float/2addr p1, v1

    mul-float p1, p1, v3

    div-float/2addr p1, v5

    .line 259
    invoke-virtual {p0, p1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    mul-float v3, v3, p4

    div-float/2addr v3, p3

    float-to-int p1, v3

    goto :goto_0

    :cond_2
    cmpg-float v3, p5, v1

    if-gez v3, :cond_3

    sub-float/2addr p5, v1

    mul-float p5, p5, v4

    div-float/2addr p5, v5

    .line 262
    invoke-virtual {p0, v2, p5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    mul-float v4, v4, p3

    div-float/2addr v4, p4

    float-to-int p2, v4

    .line 265
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_4
    int-to-float p1, p1

    div-float p1, v1, p1

    int-to-float p2, p2

    div-float p2, v1, p2

    .line 267
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 268
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 269
    iget p0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {p0, v2, v1}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(FFF)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->left:F

    .line 270
    iget p0, v0, Landroid/graphics/RectF;->right:F

    invoke-static {p0, v2, v1}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(FFF)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->right:F

    .line 271
    iget p0, v0, Landroid/graphics/RectF;->top:F

    invoke-static {p0, v2, v1}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(FFF)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->top:F

    .line 272
    iget p0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0, v2, v1}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(FFF)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    :cond_5
    :goto_1
    return-object v0
.end method

.method public static sensorToNormalizedPreview(Landroid/graphics/Rect;IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    if-le p1, p2, :cond_0

    int-to-double v0, p1

    int-to-double p1, p2

    goto :goto_0

    :cond_0
    int-to-double v0, p2

    int-to-double p1, p1

    :goto_0
    div-double/2addr v0, p1

    .line 45
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-double p1, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr p1, v2

    .line 46
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 47
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    cmpl-double v4, v0, p1

    if-lez v4, :cond_1

    int-to-double p1, v2

    div-double/2addr p1, v0

    double-to-int v3, p1

    goto :goto_1

    :cond_1
    int-to-double p1, v3

    mul-double p1, p1, v0

    double-to-int v2, p1

    .line 54
    :goto_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int p1, v2, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 55
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    sub-int p2, v3, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 57
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 58
    iget v1, p3, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v1, p1

    int-to-float p1, v1

    iget p3, p3, Landroid/graphics/Rect;->top:I

    neg-int p3, p3

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p2

    int-to-float p2, p3

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    neg-int p1, v2

    .line 59
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    neg-int p2, v3

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    int-to-float p1, v2

    const/high16 p2, 0x44fa0000    # 2000.0f

    div-float p1, p2, p1

    int-to-float p3, v3

    div-float/2addr p2, p3

    .line 60
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 61
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 62
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 63
    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public static viewToNormalized(Landroid/graphics/RectF;IIIIZII)Landroid/graphics/RectF;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-lez p1, :cond_f

    if-gtz p2, :cond_1

    goto/16 :goto_6

    .line 82
    :cond_1
    iget v1, p0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_f

    iget v1, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_f

    iget v1, p0, Landroid/graphics/RectF;->right:F

    int-to-float p1, p1

    cmpl-float v1, v1, p1

    if-gtz v1, :cond_f

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float p2, p2

    cmpl-float v1, v1, p2

    if-gtz v1, :cond_f

    rem-int/lit8 v1, p6, 0x5a

    if-eqz v1, :cond_2

    goto/16 :goto_6

    :cond_2
    if-lez p6, :cond_3

    .line 86
    rem-int/lit16 p6, p6, 0x168

    goto :goto_0

    :cond_3
    rem-int/lit16 p6, p6, 0x168

    add-int/lit16 p6, p6, 0x168

    .line 87
    :goto_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 88
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, p6

    .line 90
    invoke-virtual {p0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/16 v1, 0x10e

    const/16 v3, 0x5a

    if-eq p6, v3, :cond_5

    if-ne p6, v1, :cond_4

    goto :goto_1

    :cond_4
    move v4, p1

    goto :goto_2

    :cond_5
    :goto_1
    move v4, p2

    :goto_2
    if-eq p6, v3, :cond_7

    if-ne p6, v1, :cond_6

    goto :goto_3

    :cond_6
    move p1, p2

    :cond_7
    :goto_3
    int-to-float p2, p3

    div-float p2, v4, p2

    int-to-float p3, p4

    div-float p3, p1, p3

    const/high16 p4, 0x3f800000    # 1.0f

    div-float v4, p4, v4

    div-float p1, p4, p1

    .line 100
    invoke-virtual {p0, v4, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    if-eq p6, v3, :cond_a

    const/16 p1, 0xb4

    if-eq p6, p1, :cond_9

    if-eq p6, v1, :cond_8

    goto :goto_4

    .line 109
    :cond_8
    invoke-virtual {p0, v2, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4

    .line 106
    :cond_9
    invoke-virtual {p0, p4, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4

    .line 103
    :cond_a
    invoke-virtual {p0, p4, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_4
    const/4 p1, 0x1

    const/high16 p6, 0x3f000000    # 0.5f

    if-eq p7, p1, :cond_d

    const/4 p1, 0x2

    if-eq p7, p1, :cond_b

    goto :goto_5

    :cond_b
    cmpl-float p1, p2, p3

    if-lez p1, :cond_c

    div-float/2addr p2, p3

    .line 132
    invoke-virtual {p0, p2, p4, p6, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 133
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 134
    iget p0, v0, Landroid/graphics/RectF;->right:F

    invoke-static {p0, v2, p4}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(FFF)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->right:F

    .line 135
    iget p0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {p0, v2, p4}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(FFF)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_5

    :cond_c
    div-float/2addr p3, p2

    .line 137
    invoke-virtual {p0, p4, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 138
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 139
    iget p0, v0, Landroid/graphics/RectF;->top:F

    invoke-static {p0, v2, p4}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(FFF)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->top:F

    .line 140
    iget p0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0, v2, p4}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(FFF)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_5

    :cond_d
    cmpl-float p1, p2, p3

    if-lez p1, :cond_e

    div-float/2addr p3, p2

    .line 119
    invoke-virtual {p0, p4, p3, v2, p6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 120
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 121
    iget p0, v0, Landroid/graphics/RectF;->top:F

    invoke-static {p0, v2, p4}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(FFF)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->top:F

    .line 122
    iget p0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0, v2, p4}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(FFF)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_5

    :cond_e
    div-float/2addr p2, p3

    .line 124
    invoke-virtual {p0, p2, p4, p6, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 125
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 126
    iget p0, v0, Landroid/graphics/RectF;->right:F

    invoke-static {p0, v2, p4}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(FFF)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->right:F

    .line 127
    iget p0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {p0, v2, p4}, Lio/agora/rtc2/video/CoordinatesTransform;->clamp(FFF)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->left:F

    :goto_5
    if-eqz p5, :cond_f

    .line 149
    iget p0, v0, Landroid/graphics/RectF;->left:F

    .line 150
    iget p1, v0, Landroid/graphics/RectF;->right:F

    sub-float p1, p4, p1

    iput p1, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p4, p0

    .line 151
    iput p4, v0, Landroid/graphics/RectF;->right:F

    :cond_f
    :goto_6
    return-object v0
.end method
