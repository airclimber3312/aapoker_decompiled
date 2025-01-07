.class public final Lcom/google/android/gms/vision/text/TextRecognizer;
.super Lcom/google/android/gms/vision/Detector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/vision/text/TextRecognizer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/vision/Detector<",
        "Lcom/google/android/gms/vision/text/TextBlock;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzlid:Lcom/google/android/gms/internal/zzdlr;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/vision/Detector;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default constructor called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzdlr;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/vision/Detector;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/vision/text/TextRecognizer;->zzlid:Lcom/google/android/gms/internal/zzdlr;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzdlr;Lcom/google/android/gms/vision/text/zzb;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/vision/text/TextRecognizer;-><init>(Lcom/google/android/gms/internal/zzdlr;)V

    return-void
.end method

.method private static zza([Lcom/google/android/gms/internal/zzdll;)Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/internal/zzdll;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/vision/text/TextBlock;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    iget v5, v4, Lcom/google/android/gms/internal/zzdll;->zzlio:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    if-nez v5, :cond_0

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iget v6, v4, Lcom/google/android/gms/internal/zzdll;->zzlio:I

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    iget v6, v4, Lcom/google/android/gms/internal/zzdll;->zzlip:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/util/SparseArray;-><init>(I)V

    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    new-instance v3, Lcom/google/android/gms/vision/text/TextBlock;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    invoke-direct {v3, v4}, Lcom/google/android/gms/vision/text/TextBlock;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {p0, v1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method


# virtual methods
.method public final detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Frame;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/vision/text/TextBlock;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzdln;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdln;-><init>(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_d

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzdld;->zzc(Lcom/google/android/gms/vision/Frame;)Lcom/google/android/gms/internal/zzdld;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/vision/Frame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/vision/Frame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_0
    move-object v4, v2

    goto :goto_2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/vision/Frame;->getGrayscaleImageData()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/vision/Frame$Metadata;->getFormat()I

    move-result v7

    iget v2, v1, Lcom/google/android/gms/internal/zzdld;->width:I

    iget v11, v1, Lcom/google/android/gms/internal/zzdld;->height:I

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    move-object v6, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    new-array v5, v5, [B

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v6, v5

    :goto_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v12, Landroid/graphics/YuvImage;

    const/4 v10, 0x0

    move-object v5, v12

    move v8, v2

    move v9, v11

    invoke-direct/range {v5 .. v10}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v3, v3, v2, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v2, 0x64

    invoke-virtual {v12, v5, v2, v4}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v4, v2

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :goto_2
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    iget v5, v1, Lcom/google/android/gms/internal/zzdld;->rotation:I

    const/4 v12, 0x2

    const/4 v13, 0x3

    const/4 v14, 0x1

    if-eqz v5, :cond_6

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iget v5, v1, Lcom/google/android/gms/internal/zzdld;->rotation:I

    if-eqz v5, :cond_5

    if-eq v5, v14, :cond_4

    if-eq v5, v12, :cond_3

    if-ne v5, v13, :cond_2

    const/16 v5, 0x10e

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported rotation degree."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/16 v5, 0xb4

    goto :goto_3

    :cond_4
    const/16 v5, 0x5a

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    int-to-float v5, v5

    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    move v7, v2

    move v8, v11

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_6
    iget v5, v1, Lcom/google/android/gms/internal/zzdld;->rotation:I

    if-eq v5, v14, :cond_7

    iget v5, v1, Lcom/google/android/gms/internal/zzdld;->rotation:I

    if-ne v5, v13, :cond_8

    :cond_7
    iput v11, v1, Lcom/google/android/gms/internal/zzdld;->width:I

    iput v2, v1, Lcom/google/android/gms/internal/zzdld;->height:I

    :cond_8
    iget-object v2, v0, Lcom/google/android/gms/internal/zzdln;->zzliq:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v0, Lcom/google/android/gms/internal/zzdln;->zzliq:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/vision/Frame$Metadata;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/vision/Frame$Metadata;->getHeight()I

    move-result v6

    iget v7, v1, Lcom/google/android/gms/internal/zzdld;->rotation:I

    if-eq v7, v14, :cond_b

    if-eq v7, v12, :cond_a

    if-eq v7, v13, :cond_9

    goto :goto_4

    :cond_9
    new-instance v6, Landroid/graphics/Rect;

    iget v7, v2, Landroid/graphics/Rect;->top:I

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int v8, v5, v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v2

    invoke-direct {v6, v7, v8, v9, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v6

    goto :goto_4

    :cond_a
    new-instance v7, Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int v8, v5, v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v6, v9

    iget v10, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v10

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v2

    invoke-direct {v7, v8, v9, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v7

    goto :goto_4

    :cond_b
    new-instance v5, Landroid/graphics/Rect;

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v6, v7

    iget v8, v2, Landroid/graphics/Rect;->left:I

    iget v9, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v9

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v5, v7, v8, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v5

    :goto_4
    iget-object v5, v0, Lcom/google/android/gms/internal/zzdln;->zzliq:Landroid/graphics/Rect;

    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_c
    iput v3, v1, Lcom/google/android/gms/internal/zzdld;->rotation:I

    move-object v2, p0

    iget-object v3, v2, Lcom/google/android/gms/vision/text/TextRecognizer;->zzlid:Lcom/google/android/gms/internal/zzdlr;

    invoke-virtual {v3, v4, v1, v0}, Lcom/google/android/gms/internal/zzdlr;->zza(Landroid/graphics/Bitmap;Lcom/google/android/gms/internal/zzdld;Lcom/google/android/gms/internal/zzdln;)[Lcom/google/android/gms/internal/zzdll;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/vision/text/TextRecognizer;->zza([Lcom/google/android/gms/internal/zzdll;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0

    :cond_d
    move-object v2, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No frame supplied."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isOperational()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextRecognizer;->zzlid:Lcom/google/android/gms/internal/zzdlr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdlc;->isOperational()Z

    move-result v0

    return v0
.end method

.method public final release()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/vision/Detector;->release()V

    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextRecognizer;->zzlid:Lcom/google/android/gms/internal/zzdlr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdlc;->zzbln()V

    return-void
.end method
