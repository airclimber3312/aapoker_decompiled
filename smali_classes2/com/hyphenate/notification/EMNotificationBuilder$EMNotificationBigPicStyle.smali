.class public Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigPicStyle;
.super Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/notification/EMNotificationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EMNotificationBigPicStyle"
.end annotation


# instance fields
.field private bitmapRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public getBigPic()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigPicStyle;->bitmapRef:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigPicStyle;->bitmapRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBigPic(Landroid/graphics/Bitmap;)Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigPicStyle;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigPicStyle;->bitmapRef:Ljava/lang/ref/SoftReference;

    :cond_0
    return-object p0
.end method
