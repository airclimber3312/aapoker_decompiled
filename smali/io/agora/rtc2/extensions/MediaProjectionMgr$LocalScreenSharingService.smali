.class public Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenSharingService;
.super Landroid/app/Service;
.source "MediaProjectionMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/extensions/MediaProjectionMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalScreenSharingService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenSharingService$ConfigurationCallbacks;
    }
.end annotation


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "dummy_channel_id"

.field private static final NOTIFICATION_ID:I = 0xbc614e


# instance fields
.field private componentCallbacks:Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenSharingService$ConfigurationCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 291
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private getDefaultNotification()Landroid/app/Notification;
    .locals 7

    const-string v0, "Couldn\'t load icon from icon of applicationInfo, use android default"

    const-string v1, "MediaProjectionMgr"

    .line 353
    invoke-virtual {p0}, Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenSharingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 355
    invoke-virtual {p0}, Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenSharingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 356
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    const/high16 v4, 0x10d0000

    .line 359
    :try_start_0
    invoke-virtual {p0}, Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenSharingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 360
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 361
    :cond_0
    invoke-static {v1, v0}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logW(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v2, 0x10d0000

    :cond_1
    move v4, v2

    goto :goto_0

    .line 365
    :catch_0
    invoke-static {v1, v0}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "dummy_channel_id"

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_2

    .line 372
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v5, 0x3

    invoke-direct {v0, v1, v3, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v5, "notification"

    .line 377
    invoke-virtual {p0, v5}, Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenSharingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 378
    invoke-virtual {v5, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 383
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    const/4 v6, 0x0

    if-lt v0, v5, :cond_3

    .line 384
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0xc000000

    invoke-static {p0, v6, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_1

    .line 387
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x8000000

    .line 388
    invoke-static {p0, v6, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 391
    :goto_1
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 392
    invoke-virtual {v5, v4, v3, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 393
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v5, 0x1

    .line 394
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 395
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 396
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 397
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 401
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_4

    .line 402
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 404
    :cond_4
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private getNotification()Landroid/app/Notification;
    .locals 1

    .line 345
    invoke-static {}, Lio/agora/rtc2/extensions/MediaProjectionMgr;->access$500()Lio/agora/rtc2/extensions/MediaProjectionMgr$ScreenCaptureConfigFactory;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 348
    :cond_0
    invoke-static {}, Lio/agora/rtc2/extensions/MediaProjectionMgr;->access$500()Lio/agora/rtc2/extensions/MediaProjectionMgr$ScreenCaptureConfigFactory;

    move-result-object v0

    invoke-interface {v0}, Lio/agora/rtc2/extensions/MediaProjectionMgr$ScreenCaptureConfigFactory;->createNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    const-string p1, "onBind()"

    const-string v0, "MediaProjectionMgr"

    .line 321
    invoke-static {v0, p1}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-direct {p0}, Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenSharingService;->getNotification()Landroid/app/Notification;

    move-result-object p1

    if-nez p1, :cond_0

    .line 324
    invoke-direct {p0}, Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenSharingService;->getDefaultNotification()Landroid/app/Notification;

    move-result-object p1

    .line 327
    :cond_0
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const v3, 0xbc614e    # 1.729998E-38f

    if-lt v1, v2, :cond_1

    const/16 v1, 0x20

    .line 328
    invoke-virtual {p0, v3, p1, v1}, Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenSharingService;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_0

    .line 331
    :cond_1
    invoke-virtual {p0, v3, p1}, Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenSharingService;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startForeground error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :goto_0
    iget-object p1, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenSharingService;->componentCallbacks:Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenSharingService$ConfigurationCallbacks;

    if-nez p1, :cond_2

    .line 337
    new-instance p1, Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenSharingService$ConfigurationCallbacks;

    invoke-direct {p1}, Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenSharingService$ConfigurationCallbacks;-><init>()V

    iput-object p1, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenSharingService;->componentCallbacks:Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenSharingService$ConfigurationCallbacks;

    .line 338
    invoke-virtual {p0, p1}, Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenSharingService;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 340
    :cond_2
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 418
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 419
    invoke-static {}, Lio/agora/rtc2/extensions/MediaProjectionMgr;->access$000()Lio/agora/rtc2/extensions/MediaProjectionMgr;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 422
    :cond_0
    invoke-static {}, Lio/agora/rtc2/extensions/MediaProjectionMgr;->access$000()Lio/agora/rtc2/extensions/MediaProjectionMgr;

    move-result-object v0

    invoke-static {v0}, Lio/agora/rtc2/extensions/MediaProjectionMgr;->access$300(Lio/agora/rtc2/extensions/MediaProjectionMgr;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtc2/extensions/MediaProjectionMgr$ConfigurationChangedListener;

    if-nez v0, :cond_1

    return-void

    .line 426
    :cond_1
    invoke-interface {v0, p1}, Lio/agora/rtc2/extensions/MediaProjectionMgr$ConfigurationChangedListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/16 p1, 0xc8

    .line 427
    invoke-static {p1}, Lio/agora/rtc2/extensions/MediaProjectionMgr;->access$400(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 409
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 410
    iget-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenSharingService;->componentCallbacks:Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenSharingService$ConfigurationCallbacks;

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p0, v0}, Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenSharingService;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const/4 v0, 0x0

    .line 412
    iput-object v0, p0, Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenSharingService;->componentCallbacks:Lio/agora/rtc2/extensions/MediaProjectionMgr$LocalScreenSharingService$ConfigurationCallbacks;

    :cond_0
    return-void
.end method
