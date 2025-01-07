.class public Lcom/hyphenate/notification/EMNotificationBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;,
        Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigTextStyle;,
        Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigPicStyle;
    }
.end annotation


# instance fields
.field private appContext:Landroid/content/Context;

.field private autoCancel:Z

.field private badgeNum:I

.field private channelId:Ljava/lang/String;

.field private channelLevel:I

.field private channelName:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private fullScreenIntent:Landroid/app/PendingIntent;

.field private iconBitmapRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private pendingIntent:Landroid/app/PendingIntent;

.field private smallIcon:I

.field private sound:Z

.field private style:Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;

.field private ticker:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private vibrate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->autoCancel:Z

    new-instance v0, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;

    invoke-direct {v0}, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;-><init>()V

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->style:Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;

    const v0, 0x1080093

    iput v0, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->smallIcon:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->appContext:Landroid/content/Context;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context cannot is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createNotificationChannel(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    const/4 v0, 0x5

    if-ltz p5, :cond_0

    if-gt p5, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p5, 0x3

    :goto_0
    new-instance v1, Landroid/app/NotificationChannel;

    invoke-direct {v1, p3, p4, p5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-boolean p3, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->sound:Z

    if-nez p3, :cond_1

    const/4 p3, 0x0

    invoke-virtual {v1, p3, p3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    :cond_1
    if-eqz p2, :cond_2

    const/4 p2, 0x1

    invoke-virtual {v1, p2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    new-array p2, v0, [J

    fill-array-data p2, :array_0

    invoke-virtual {v1, p2}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    invoke-virtual {v1, p2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    :goto_1
    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 8
        0x64
        0xc8
        0x12c
        0x190
        0x1f4
    .end array-data
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 8

    iget-object v0, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->channelId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "chat"

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->channelId:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->channelName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, "\u6d88\u606f"

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->channelName:Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->appContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->vibrate:Z

    iget-object v4, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->channelId:Ljava/lang/String;

    iget-object v5, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->channelName:Ljava/lang/String;

    iget v6, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->channelLevel:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/hyphenate/notification/EMNotificationBuilder;->createNotificationChannel(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->sound:Z

    iget-boolean v1, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->vibrate:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const/4 v2, -0x1

    :cond_3
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    :try_start_0
    const-class v3, Landroidx/core/app/NotificationCompat$Builder;

    const-string v4, "setChannelId"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->channelId:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :goto_1
    iget v3, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->smallIcon:I

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    iget-boolean v3, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->sound:Z

    const/4 v4, 0x0

    if-nez v3, :cond_4

    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    :cond_5
    iget-object v2, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->iconBitmapRef:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->iconBitmapRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_6
    iget v2, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->badgeNum:I

    if-lez v2, :cond_7

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    :cond_7
    iget-object v2, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->ticker:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget v3, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->channelLevel:I

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->autoCancel:Z

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->style:Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;

    instance-of v3, v2, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigTextStyle;

    if-eqz v3, :cond_8

    check-cast v2, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigTextStyle;

    invoke-virtual {v2}, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigTextStyle;->getBigTxt()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_3

    :cond_8
    instance-of v3, v2, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigPicStyle;

    if-eqz v3, :cond_9

    check-cast v2, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigPicStyle;

    invoke-virtual {v2}, Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationBigPicStyle;->getBigPic()Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object v2

    goto :goto_2

    :cond_9
    :goto_3
    iget-object v2, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_a

    invoke-virtual {v0, v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroidx/core/app/NotificationCompat$Builder;

    :cond_a
    iget-boolean v1, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->vibrate:Z

    if-eqz v1, :cond_b

    const/4 v1, 0x5

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_4

    :cond_b
    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    :goto_4
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setPublicVersion(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$Builder;

    return-object v1

    :array_0
    .array-data 8
        0x64
        0xc8
        0x12c
        0x190
        0x1f4
    .end array-data
.end method

.method public setAutoCancel(Z)Lcom/hyphenate/notification/EMNotificationBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->autoCancel:Z

    return-object p0
.end method

.method public setBadgeNum(I)Lcom/hyphenate/notification/EMNotificationBuilder;
    .locals 0

    iput p1, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->badgeNum:I

    return-object p0
.end method

.method public setChannelId(Ljava/lang/String;)Lcom/hyphenate/notification/EMNotificationBuilder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->channelId:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setChannelName(Ljava/lang/String;)Lcom/hyphenate/notification/EMNotificationBuilder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->channelName:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/hyphenate/notification/EMNotificationBuilder;
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->content:Ljava/lang/String;

    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;)Lcom/hyphenate/notification/EMNotificationBuilder;
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->fullScreenIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setIcon(I)Lcom/hyphenate/notification/EMNotificationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->iconBitmapRef:Ljava/lang/ref/SoftReference;

    :cond_0
    return-object p0
.end method

.method public setIcon(Landroid/graphics/Bitmap;)Lcom/hyphenate/notification/EMNotificationBuilder;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->iconBitmapRef:Ljava/lang/ref/SoftReference;

    :cond_0
    return-object p0
.end method

.method public setLevel(I)Lcom/hyphenate/notification/EMNotificationBuilder;
    .locals 0

    iput p1, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->channelLevel:I

    return-object p0
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)Lcom/hyphenate/notification/EMNotificationBuilder;
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->pendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setSmallIcon(I)Lcom/hyphenate/notification/EMNotificationBuilder;
    .locals 0

    iput p1, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->smallIcon:I

    return-object p0
.end method

.method public setSound(Z)Lcom/hyphenate/notification/EMNotificationBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->sound:Z

    return-object p0
.end method

.method public setStyle(Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;)Lcom/hyphenate/notification/EMNotificationBuilder;
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->style:Lcom/hyphenate/notification/EMNotificationBuilder$EMNotificationDefaultStyle;

    return-object p0
.end method

.method public setTicker(Ljava/lang/String;)Lcom/hyphenate/notification/EMNotificationBuilder;
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->ticker:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/hyphenate/notification/EMNotificationBuilder;
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setVibrate(Z)Lcom/hyphenate/notification/EMNotificationBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/hyphenate/notification/EMNotificationBuilder;->vibrate:Z

    return-object p0
.end method
