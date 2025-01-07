.class public final Lcom/tencent/bugly/proguard/kb;
.super Lcom/tencent/bugly/proguard/jy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/jy;-><init>()V

    return-void
.end method

.method private static a(Landroid/graphics/drawable/Drawable;I)Lcom/tencent/bugly/proguard/jw;
    .locals 7

    instance-of v0, p0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v6, Lcom/tencent/bugly/proguard/jw;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {p0}, Lcom/tencent/bugly/proguard/js;->getAllocationByteCount(Landroid/graphics/Bitmap;)I

    move-result p0

    int-to-long v4, p0

    move-object v0, v6

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/jw;-><init>(IIIJ)V

    return-object v6

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)Lcom/tencent/bugly/proguard/jw;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/kb;->a(Landroid/graphics/drawable/Drawable;I)Lcom/tencent/bugly/proguard/jw;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)Lcom/tencent/bugly/proguard/jw;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/kb;->a(Landroid/graphics/drawable/Drawable;I)Lcom/tencent/bugly/proguard/jw;

    move-result-object p1

    return-object p1
.end method
