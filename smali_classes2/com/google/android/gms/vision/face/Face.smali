.class public Lcom/google/android/gms/vision/face/Face;
.super Ljava/lang/Object;


# static fields
.field public static final UNCOMPUTED_PROBABILITY:F = -1.0f


# instance fields
.field private mId:I

.field private zzlgr:Landroid/graphics/PointF;

.field private zzlgs:F

.field private zzlgt:F

.field private zzlgu:F

.field private zzlgv:F

.field private zzlgw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/vision/face/Landmark;",
            ">;"
        }
    .end annotation
.end field

.field private zzlgx:F

.field private zzlgy:F

.field private zzlgz:F


# direct methods
.method public constructor <init>(ILandroid/graphics/PointF;FFFF[Lcom/google/android/gms/vision/face/Landmark;FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/face/Face;->mId:I

    iput-object p2, p0, Lcom/google/android/gms/vision/face/Face;->zzlgr:Landroid/graphics/PointF;

    iput p3, p0, Lcom/google/android/gms/vision/face/Face;->zzlgs:F

    iput p4, p0, Lcom/google/android/gms/vision/face/Face;->zzlgt:F

    iput p5, p0, Lcom/google/android/gms/vision/face/Face;->zzlgu:F

    iput p6, p0, Lcom/google/android/gms/vision/face/Face;->zzlgv:F

    invoke-static {p7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/vision/face/Face;->zzlgw:Ljava/util/List;

    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 p2, -0x40800000    # -1.0f

    const/4 p3, 0x0

    cmpl-float p4, p8, p3

    if-ltz p4, :cond_0

    cmpg-float p4, p8, p1

    if-gtz p4, :cond_0

    iput p8, p0, Lcom/google/android/gms/vision/face/Face;->zzlgx:F

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/google/android/gms/vision/face/Face;->zzlgx:F

    :goto_0
    cmpl-float p4, p9, p3

    if-ltz p4, :cond_1

    cmpg-float p4, p9, p1

    if-gtz p4, :cond_1

    iput p9, p0, Lcom/google/android/gms/vision/face/Face;->zzlgy:F

    goto :goto_1

    :cond_1
    iput p2, p0, Lcom/google/android/gms/vision/face/Face;->zzlgy:F

    :goto_1
    cmpl-float p3, p10, p3

    if-ltz p3, :cond_2

    cmpg-float p1, p10, p1

    if-gtz p1, :cond_2

    iput p10, p0, Lcom/google/android/gms/vision/face/Face;->zzlgz:F

    return-void

    :cond_2
    iput p2, p0, Lcom/google/android/gms/vision/face/Face;->zzlgz:F

    return-void
.end method


# virtual methods
.method public getEulerY()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/face/Face;->zzlgu:F

    return v0
.end method

.method public getEulerZ()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/face/Face;->zzlgv:F

    return v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/face/Face;->zzlgt:F

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/face/Face;->mId:I

    return v0
.end method

.method public getIsLeftEyeOpenProbability()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/face/Face;->zzlgx:F

    return v0
.end method

.method public getIsRightEyeOpenProbability()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/face/Face;->zzlgy:F

    return v0
.end method

.method public getIsSmilingProbability()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/face/Face;->zzlgz:F

    return v0
.end method

.method public getLandmarks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/vision/face/Landmark;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/vision/face/Face;->zzlgw:Ljava/util/List;

    return-object v0
.end method

.method public getPosition()Landroid/graphics/PointF;
    .locals 5

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/android/gms/vision/face/Face;->zzlgr:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/google/android/gms/vision/face/Face;->zzlgs:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/gms/vision/face/Face;->zzlgr:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/google/android/gms/vision/face/Face;->zzlgt:F

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/vision/face/Face;->zzlgs:F

    return v0
.end method
