.class public Landroidx/core/app/NotificationCompat$BigPictureStyle;
.super Landroidx/core/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigPictureStyle"
.end annotation


# instance fields
.field private mBigLargeIcon:Landroid/graphics/Bitmap;

.field private mBigLargeIconSet:Z

.field private mPicture:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1994
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 0

    .line 1997
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 1998
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V

    return-void
.end method


# virtual methods
.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 1

    .line 2043
    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    .line 2044
    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 2045
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    .line 2046
    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    .line 2047
    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z

    if-eqz v0, :cond_0

    .line 2048
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 2050
    :cond_0
    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mSummaryTextSet:Z

    if-eqz v0, :cond_1

    .line 2051
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    :cond_1
    return-void
.end method

.method public bigLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .locals 0

    .line 2031
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 2032
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z

    return-object p0
.end method

.method public bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .locals 0

    .line 2023
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .locals 0

    .line 2006
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .locals 0

    .line 2014
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    .line 2015
    iput-boolean p1, p0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->mSummaryTextSet:Z

    return-object p0
.end method
