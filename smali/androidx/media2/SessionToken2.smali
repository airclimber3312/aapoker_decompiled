.class public final Landroidx/media2/SessionToken2;
.super Ljava/lang/Object;
.source "SessionToken2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/SessionToken2$SessionToken2Impl;,
        Landroidx/media2/SessionToken2$OnSessionToken2CreatedListener;,
        Landroidx/media2/SessionToken2$TokenType;
    }
.end annotation


# static fields
.field static final KEY_PACKAGE_NAME:Ljava/lang/String; = "android.media.token.package_name"

.field static final KEY_SERVICE_NAME:Ljava/lang/String; = "android.media.token.service_name"

.field static final KEY_SESSION_BINDER:Ljava/lang/String; = "android.media.token.session_binder"

.field static final KEY_SESSION_ID:Ljava/lang/String; = "android.media.token.session_id"

.field static final KEY_TOKEN_LEGACY:Ljava/lang/String; = "android.media.token.LEGACY"

.field static final KEY_TYPE:Ljava/lang/String; = "android.media.token.type"

.field static final KEY_UID:Ljava/lang/String; = "android.media.token.uid"

.field private static final MSG_SEND_TOKEN2_FOR_LEGACY_SESSION:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "SessionToken2"

.field static final TYPE_BROWSER_SERVICE_LEGACY:I = 0x65

.field public static final TYPE_LIBRARY_SERVICE:I = 0x2

.field public static final TYPE_SESSION:I = 0x0

.field static final TYPE_SESSION_LEGACY:I = 0x64

.field public static final TYPE_SESSION_SERVICE:I = 0x1

.field static final UID_UNKNOWN:I = -0x1

.field private static final WAIT_TIME_MS_FOR_SESSION_READY:J = 0x12cL


# instance fields
.field private final mImpl:Landroidx/media2/SessionToken2$SessionToken2Impl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 3

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 125
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/media2/SessionToken2;->getUid(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v0

    const-string v1, "android.media.MediaLibraryService2"

    .line 129
    invoke-static {p1, v1, p2}, Landroidx/media2/SessionToken2;->getSessionIdFromService(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    if-eqz v1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const-string v1, "android.media.MediaSessionService2"

    .line 136
    invoke-static {p1, v1, p2}, Landroidx/media2/SessionToken2;->getSessionIdFromService(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "android.media.browse.MediaBrowserService"

    .line 143
    invoke-static {p1, v1, p2}, Landroidx/media2/SessionToken2;->getSessionIdFromService(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    const/16 p1, 0x65

    :goto_0
    if-eqz v1, :cond_3

    if-eq p1, v2, :cond_2

    .line 154
    new-instance v2, Landroidx/media2/SessionToken2ImplBase;

    invoke-direct {v2, p2, v0, v1, p1}, Landroidx/media2/SessionToken2ImplBase;-><init>(Landroid/content/ComponentName;ILjava/lang/String;I)V

    iput-object v2, p0, Landroidx/media2/SessionToken2;->mImpl:Landroidx/media2/SessionToken2$SessionToken2Impl;

    goto :goto_1

    .line 156
    :cond_2
    new-instance p1, Landroidx/media2/SessionToken2ImplLegacy;

    invoke-direct {p1, p2, v0, v1}, Landroidx/media2/SessionToken2ImplLegacy;-><init>(Landroid/content/ComponentName;ILjava/lang/String;)V

    iput-object p1, p0, Landroidx/media2/SessionToken2;->mImpl:Landroidx/media2/SessionToken2$SessionToken2Impl;

    :goto_1
    return-void

    .line 149
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " doesn\'t implement none of MediaSessionService2, MediaLibraryService2, MediaBrowserService nor MediaBrowserServiceCompat. Use service\'s full name."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Landroidx/media2/SessionToken2$SessionToken2Impl;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Landroidx/media2/SessionToken2;->mImpl:Landroidx/media2/SessionToken2$SessionToken2Impl;

    return-void
.end method

.method public static createSessionToken2(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;Ljava/util/concurrent/Executor;Landroidx/media2/SessionToken2$OnSessionToken2CreatedListener;)V
    .locals 12

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 302
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getSessionToken2Bundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    invoke-static {v0}, Landroidx/media2/SessionToken2;->fromBundle(Landroid/os/Bundle;)Landroidx/media2/SessionToken2;

    move-result-object p0

    .line 304
    invoke-static {p2, p3, p1, p0}, Landroidx/media2/SessionToken2;->notifySessionToken2Created(Ljava/util/concurrent/Executor;Landroidx/media2/SessionToken2$OnSessionToken2CreatedListener;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/SessionToken2;)V

    return-void

    .line 308
    :cond_0
    new-instance v8, Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-direct {v8, p0, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v8}, Landroid/support/v4/media/session/MediaControllerCompat;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/media2/SessionToken2;->getUid(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result p0

    .line 310
    new-instance v9, Landroidx/media2/SessionToken2;

    new-instance v0, Landroidx/media2/SessionToken2ImplLegacy;

    .line 311
    invoke-virtual {v8}, Landroid/support/v4/media/session/MediaControllerCompat;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Landroidx/media2/SessionToken2ImplLegacy;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;Ljava/lang/String;I)V

    invoke-direct {v9, v0}, Landroidx/media2/SessionToken2;-><init>(Landroidx/media2/SessionToken2$SessionToken2Impl;)V

    .line 313
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "SessionToken2"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 315
    new-instance v10, Landroidx/media2/SessionToken2$1;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v0, v10

    move-object v2, p3

    move-object v3, v8

    move-object v4, p1

    move-object v5, v9

    move-object v6, p2

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Landroidx/media2/SessionToken2$1;-><init>(Landroid/os/Looper;Landroidx/media2/SessionToken2$OnSessionToken2CreatedListener;Landroid/support/v4/media/session/MediaControllerCompat;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/SessionToken2;Ljava/util/concurrent/Executor;Landroid/os/HandlerThread;)V

    .line 334
    new-instance v11, Landroidx/media2/SessionToken2$2;

    move-object v0, v11

    move-object v1, p3

    move-object v2, v10

    move-object v3, v8

    move-object v4, p1

    move-object v5, v9

    move-object v6, p2

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Landroidx/media2/SessionToken2$2;-><init>(Landroidx/media2/SessionToken2$OnSessionToken2CreatedListener;Landroid/os/Handler;Landroid/support/v4/media/session/MediaControllerCompat;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/SessionToken2;Ljava/util/concurrent/Executor;Landroid/os/HandlerThread;)V

    .line 353
    monitor-enter p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :try_start_1
    invoke-virtual {v8, v11, v10}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V

    const/16 p0, 0x3e8

    .line 355
    invoke-virtual {v10, p0, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 p1, 0x12c

    .line 356
    invoke-virtual {v10, p0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 357
    monitor-exit p3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "SessionToken2"

    const-string p2, "Failed to create session token2."

    .line 359
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    .line 298
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 295
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "executor shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 292
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "token shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 289
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media2/SessionToken2;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.media.token.type"

    const/4 v1, -0x1

    .line 269
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 271
    new-instance v0, Landroidx/media2/SessionToken2;

    invoke-static {p0}, Landroidx/media2/SessionToken2ImplLegacy;->fromBundle(Landroid/os/Bundle;)Landroidx/media2/SessionToken2ImplLegacy;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/media2/SessionToken2;-><init>(Landroidx/media2/SessionToken2$SessionToken2Impl;)V

    return-object v0

    .line 273
    :cond_1
    new-instance v0, Landroidx/media2/SessionToken2;

    invoke-static {p0}, Landroidx/media2/SessionToken2ImplBase;->fromBundle(Landroid/os/Bundle;)Landroidx/media2/SessionToken2ImplBase;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/media2/SessionToken2;-><init>(Landroidx/media2/SessionToken2$SessionToken2Impl;)V

    return-object v0
.end method

.method public static getSessionId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    .line 368
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v1, ""

    if-nez v0, :cond_1

    return-object v1

    .line 373
    :cond_1
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "android.media.session2.SESSION_ID"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSessionIdFromService(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 3

    .line 392
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x80

    .line 398
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    .line 401
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 402
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_1

    .line 403
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_0

    goto :goto_1

    .line 406
    :cond_0
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 407
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 406
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    invoke-static {v0}, Landroidx/media2/SessionToken2;->getSessionId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getUid(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 417
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 419
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot find package "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static notifySessionToken2Created(Ljava/util/concurrent/Executor;Landroidx/media2/SessionToken2$OnSessionToken2CreatedListener;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/SessionToken2;)V
    .locals 1

    .line 382
    new-instance v0, Landroidx/media2/SessionToken2$3;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media2/SessionToken2$3;-><init>(Landroidx/media2/SessionToken2$OnSessionToken2CreatedListener;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/SessionToken2;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 175
    instance-of v0, p1, Landroidx/media2/SessionToken2;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 178
    :cond_0
    check-cast p1, Landroidx/media2/SessionToken2;

    .line 179
    iget-object v0, p0, Landroidx/media2/SessionToken2;->mImpl:Landroidx/media2/SessionToken2$SessionToken2Impl;

    iget-object p1, p1, Landroidx/media2/SessionToken2;->mImpl:Landroidx/media2/SessionToken2$SessionToken2Impl;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBinder()Ljava/lang/Object;
    .locals 1

    .line 247
    iget-object v0, p0, Landroidx/media2/SessionToken2;->mImpl:Landroidx/media2/SessionToken2$SessionToken2Impl;

    invoke-interface {v0}, Landroidx/media2/SessionToken2$SessionToken2Impl;->getBinder()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 214
    iget-object v0, p0, Landroidx/media2/SessionToken2;->mImpl:Landroidx/media2/SessionToken2$SessionToken2Impl;

    invoke-interface {v0}, Landroidx/media2/SessionToken2$SessionToken2Impl;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Landroidx/media2/SessionToken2;->mImpl:Landroidx/media2/SessionToken2$SessionToken2Impl;

    invoke-interface {v0}, Landroidx/media2/SessionToken2$SessionToken2Impl;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Landroidx/media2/SessionToken2;->mImpl:Landroidx/media2/SessionToken2$SessionToken2Impl;

    invoke-interface {v0}, Landroidx/media2/SessionToken2$SessionToken2Impl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Landroidx/media2/SessionToken2;->mImpl:Landroidx/media2/SessionToken2$SessionToken2Impl;

    invoke-interface {v0}, Landroidx/media2/SessionToken2$SessionToken2Impl;->getServiceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 231
    iget-object v0, p0, Landroidx/media2/SessionToken2;->mImpl:Landroidx/media2/SessionToken2$SessionToken2Impl;

    invoke-interface {v0}, Landroidx/media2/SessionToken2$SessionToken2Impl;->getType()I

    move-result v0

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 191
    iget-object v0, p0, Landroidx/media2/SessionToken2;->mImpl:Landroidx/media2/SessionToken2$SessionToken2Impl;

    invoke-interface {v0}, Landroidx/media2/SessionToken2$SessionToken2Impl;->getUid()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 170
    iget-object v0, p0, Landroidx/media2/SessionToken2;->mImpl:Landroidx/media2/SessionToken2$SessionToken2Impl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isLegacySession()Z
    .locals 1

    .line 239
    iget-object v0, p0, Landroidx/media2/SessionToken2;->mImpl:Landroidx/media2/SessionToken2$SessionToken2Impl;

    invoke-interface {v0}, Landroidx/media2/SessionToken2$SessionToken2Impl;->isLegacySession()Z

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .line 255
    iget-object v0, p0, Landroidx/media2/SessionToken2;->mImpl:Landroidx/media2/SessionToken2$SessionToken2Impl;

    invoke-interface {v0}, Landroidx/media2/SessionToken2$SessionToken2Impl;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Landroidx/media2/SessionToken2;->mImpl:Landroidx/media2/SessionToken2$SessionToken2Impl;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
