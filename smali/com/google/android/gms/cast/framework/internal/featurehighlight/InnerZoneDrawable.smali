.class Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field private centerX:F

.field private centerY:F

.field private final zzfby:Landroid/graphics/Paint;

.field private zzfbz:F

.field private final zzfcd:Landroid/graphics/Rect;

.field private final zzfcy:Landroid/graphics/Paint;

.field private final zzfcz:I

.field private final zzfda:I

.field private zzfdb:F

.field private zzfdc:F

.field private zzfdd:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzfby:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzfcy:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzfcd:Landroid/graphics/Rect;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzfdb:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/google/android/gms/R$dimen;->cast_libraries_material_featurehighlight_inner_radius:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzfcz:I

    sget v2, Lcom/google/android/gms/R$integer;->cast_libraries_material_featurehighlight_pulse_base_alpha:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzfda:I

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzfdd:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzfbz:F

    iget v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzfdc:F

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzfcy:Landroid/graphics/Paint;

    iget v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzfda:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v0, v3

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->centerX:F

    iget v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->centerY:F

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzfcy:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->centerX:F

    iget v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->centerY:F

    iget v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzfbz:F

    iget v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzfdb:F

    mul-float v2, v2, v3

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzfby:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzfby:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzfby:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->invalidateSelf()V

    return-void
.end method

.method public setPulseAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzfdd:F

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->invalidateSelf()V

    return-void
.end method

.method public setPulseScale(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzfdc:F

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->invalidateSelf()V

    return-void
.end method

.method public setScale(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzfdb:F

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->invalidateSelf()V

    return-void
.end method

.method public final zzaff()Landroid/animation/Animator;
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const-string v4, "scale"

    invoke-static {v4, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v4, v0, [I

    aput v2, v4, v2

    const-string v5, "alpha"

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, v0, [F

    aput v3, v5, v2

    const-string v6, "pulseScale"

    invoke-static {v6, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    new-array v6, v0, [F

    aput v3, v6, v2

    const-string v3, "pulseAlpha"

    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v6, v2

    aput-object v4, v6, v0

    const/4 v0, 0x2

    aput-object v5, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    invoke-static {p0, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzdny;->zzbmj()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzfcd:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzfcd:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->centerX:F

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzfcd:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->centerY:F

    iget p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzfcz:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzfcd:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzfcd:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzfbz:F

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->invalidateSelf()V

    return-void
.end method
