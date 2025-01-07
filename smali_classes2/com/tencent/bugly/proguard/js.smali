.class public final Lcom/tencent/bugly/proguard/js;
.super Ljava/lang/Object;


# direct methods
.method public static getAllocationByteCount(Landroid/graphics/Bitmap;)I
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p0

    return p0
.end method
