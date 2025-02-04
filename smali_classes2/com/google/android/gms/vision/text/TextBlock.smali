.class public Lcom/google/android/gms/vision/text/TextBlock;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/vision/text/Text;


# instance fields
.field private cornerPoints:[Landroid/graphics/Point;

.field private zzlhz:[Lcom/google/android/gms/internal/zzdll;

.field private zzlia:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/vision/text/Line;",
            ">;"
        }
    .end annotation
.end field

.field private zzlib:Ljava/lang/String;

.field private zzlic:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/zzdll;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzdll;

    iput-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzlhz:[Lcom/google/android/gms/internal/zzdll;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzlhz:[Lcom/google/android/gms/internal/zzdll;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzdll;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static zza(IIIILcom/google/android/gms/internal/zzdlf;)[Landroid/graphics/Point;
    .locals 11

    iget v0, p4, Lcom/google/android/gms/internal/zzdlf;->left:I

    iget v1, p4, Lcom/google/android/gms/internal/zzdlf;->top:I

    iget v2, p4, Lcom/google/android/gms/internal/zzdlf;->zzlif:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget p4, p4, Lcom/google/android/gms/internal/zzdlf;->zzlif:F

    float-to-double v4, p4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    const/4 p4, 0x4

    new-array v6, p4, [Landroid/graphics/Point;

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, p2, p1}, Landroid/graphics/Point;-><init>(II)V

    const/4 p1, 0x1

    aput-object v7, v6, p1

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    const/4 p2, 0x2

    aput-object p1, v6, p2

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p0, p3}, Landroid/graphics/Point;-><init>(II)V

    const/4 p0, 0x3

    aput-object p1, v6, p0

    :goto_0
    if-ge v8, p4, :cond_0

    aget-object p0, v6, v8

    iget p0, p0, Landroid/graphics/Point;->x:I

    int-to-double p0, p0

    mul-double p0, p0, v4

    aget-object p2, v6, v8

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-double p2, p2

    mul-double p2, p2, v2

    sub-double/2addr p0, p2

    double-to-int p0, p0

    aget-object p1, v6, v8

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-double p1, p1

    mul-double p1, p1, v2

    aget-object p3, v6, v8

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-double v9, p3

    mul-double v9, v9, v4

    add-double/2addr p1, v9

    double-to-int p1, p1

    aget-object p2, v6, v8

    iput p0, p2, Landroid/graphics/Point;->x:I

    aget-object p0, v6, v8

    iput p1, p0, Landroid/graphics/Point;->y:I

    aget-object p0, v6, v8

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Point;->offset(II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    return-object v6
.end method


# virtual methods
.method public getBoundingBox()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzlic:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/vision/text/zzc;->zza(Lcom/google/android/gms/vision/text/Text;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzlic:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzlic:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/vision/text/Text;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzlhz:[Lcom/google/android/gms/internal/zzdll;

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzlia:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzlhz:[Lcom/google/android/gms/internal/zzdll;

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzlia:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzlhz:[Lcom/google/android/gms/internal/zzdll;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzlia:Ljava/util/List;

    new-instance v5, Lcom/google/android/gms/vision/text/Line;

    invoke-direct {v5, v3}, Lcom/google/android/gms/vision/text/Line;-><init>(Lcom/google/android/gms/internal/zzdll;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzlia:Ljava/util/List;

    return-object v0
.end method

.method public getCornerPoints()[Landroid/graphics/Point;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/vision/text/TextBlock;->cornerPoints:[Landroid/graphics/Point;

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/google/android/gms/vision/text/TextBlock;->zzlhz:[Lcom/google/android/gms/internal/zzdll;

    array-length v1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array v1, v2, [Landroid/graphics/Point;

    iput-object v1, v0, Lcom/google/android/gms/vision/text/TextBlock;->cornerPoints:[Landroid/graphics/Point;

    goto/16 :goto_2

    :cond_0
    const/high16 v1, -0x80000000

    const v3, 0x7fffffff

    const/high16 v3, -0x80000000

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    const/4 v6, 0x0

    :goto_0
    iget-object v7, v0, Lcom/google/android/gms/vision/text/TextBlock;->zzlhz:[Lcom/google/android/gms/internal/zzdll;

    array-length v8, v7

    if-ge v6, v8, :cond_2

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/google/android/gms/internal/zzdll;->zzlih:Lcom/google/android/gms/internal/zzdlf;

    iget-object v8, v0, Lcom/google/android/gms/vision/text/TextBlock;->zzlhz:[Lcom/google/android/gms/internal/zzdll;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/google/android/gms/internal/zzdll;->zzlih:Lcom/google/android/gms/internal/zzdlf;

    iget v9, v8, Lcom/google/android/gms/internal/zzdlf;->left:I

    neg-int v9, v9

    iget v10, v8, Lcom/google/android/gms/internal/zzdlf;->top:I

    neg-int v10, v10

    iget v11, v8, Lcom/google/android/gms/internal/zzdlf;->zzlif:F

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    iget v8, v8, Lcom/google/android/gms/internal/zzdlf;->zzlif:F

    float-to-double v13, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    const/4 v8, 0x4

    new-array v15, v8, [Landroid/graphics/Point;

    new-instance v8, Landroid/graphics/Point;

    iget v2, v7, Lcom/google/android/gms/internal/zzdlf;->left:I

    iget v0, v7, Lcom/google/android/gms/internal/zzdlf;->top:I

    invoke-direct {v8, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    const/4 v0, 0x0

    aput-object v8, v15, v0

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->offset(II)V

    aget-object v2, v15, v0

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-double v8, v2

    mul-double v8, v8, v13

    aget-object v2, v15, v0

    iget v2, v2, Landroid/graphics/Point;->y:I

    move v10, v1

    int-to-double v0, v2

    mul-double v0, v0, v11

    add-double/2addr v8, v0

    double-to-int v0, v8

    const/4 v1, 0x0

    aget-object v2, v15, v1

    iget v2, v2, Landroid/graphics/Point;->x:I

    neg-int v2, v2

    int-to-double v8, v2

    mul-double v8, v8, v11

    aget-object v2, v15, v1

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-double v11, v2

    mul-double v11, v11, v13

    add-double/2addr v8, v11

    double-to-int v2, v8

    aget-object v8, v15, v1

    iput v0, v8, Landroid/graphics/Point;->x:I

    aget-object v8, v15, v1

    iput v2, v8, Landroid/graphics/Point;->y:I

    new-instance v1, Landroid/graphics/Point;

    iget v8, v7, Lcom/google/android/gms/internal/zzdlf;->width:I

    add-int/2addr v8, v0

    invoke-direct {v1, v8, v2}, Landroid/graphics/Point;-><init>(II)V

    const/4 v8, 0x1

    aput-object v1, v15, v8

    new-instance v1, Landroid/graphics/Point;

    iget v8, v7, Lcom/google/android/gms/internal/zzdlf;->width:I

    add-int/2addr v8, v0

    iget v9, v7, Lcom/google/android/gms/internal/zzdlf;->height:I

    add-int/2addr v9, v2

    invoke-direct {v1, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    const/4 v8, 0x2

    aput-object v1, v15, v8

    new-instance v1, Landroid/graphics/Point;

    iget v7, v7, Lcom/google/android/gms/internal/zzdlf;->height:I

    add-int/2addr v2, v7

    invoke-direct {v1, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    const/4 v0, 0x3

    aput-object v1, v15, v0

    move v1, v10

    const/4 v0, 0x0

    const/4 v2, 0x4

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v7, v15, v0

    iget v8, v7, Landroid/graphics/Point;->x:I

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v8, v7, Landroid/graphics/Point;->x:I

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v8, v7, Landroid/graphics/Point;->y:I

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_2
    move v10, v1

    const/4 v0, 0x0

    aget-object v0, v7, v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdll;->zzlih:Lcom/google/android/gms/internal/zzdlf;

    invoke-static {v4, v5, v10, v3, v0}, Lcom/google/android/gms/vision/text/TextBlock;->zza(IIIILcom/google/android/gms/internal/zzdlf;)[Landroid/graphics/Point;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/vision/text/TextBlock;->cornerPoints:[Landroid/graphics/Point;

    goto :goto_3

    :cond_3
    :goto_2
    move-object v1, v0

    :goto_3
    iget-object v0, v1, Lcom/google/android/gms/vision/text/TextBlock;->cornerPoints:[Landroid/graphics/Point;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzlib:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzlhz:[Lcom/google/android/gms/internal/zzdll;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    iget-object v6, v5, Lcom/google/android/gms/internal/zzdll;->zzlib:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v5, Lcom/google/android/gms/internal/zzdll;->zzlib:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    iget-object v5, v5, Lcom/google/android/gms/internal/zzdll;->zzlib:Ljava/lang/String;

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/vision/text/zza;

    invoke-direct {v1, p0}, Lcom/google/android/gms/vision/text/zza;-><init>(Lcom/google/android/gms/vision/text/TextBlock;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzlib:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "und"

    iput-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzlib:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzlib:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzlhz:[Lcom/google/android/gms/internal/zzdll;

    array-length v1, v0

    if-nez v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdll;->zzlik:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzlhz:[Lcom/google/android/gms/internal/zzdll;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/vision/text/TextBlock;->zzlhz:[Lcom/google/android/gms/internal/zzdll;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/google/android/gms/internal/zzdll;->zzlik:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
