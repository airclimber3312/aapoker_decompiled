.class Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;
.super Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;
.source "MediaSession2ImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaSession2ImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyPlayerEventCallback"
.end annotation


# instance fields
.field private final mSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media2/MediaSession2ImplBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2ImplBase;)V
    .locals 1

    .line 1266
    invoke-direct {p0}, Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;-><init>()V

    .line 1267
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;->mSession:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getSession()Landroidx/media2/MediaSession2ImplBase;
    .locals 4

    .line 1476
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaSession2ImplBase;

    if-nez v0, :cond_0

    .line 1477
    sget-boolean v1, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1478
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v2, "MS2ImplBase"

    const-string v3, "Session is closed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v0
.end method


# virtual methods
.method getMediaItem(Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/DataSourceDesc2;)Landroidx/media2/MediaItem2;
    .locals 3

    .line 1484
    invoke-virtual {p1}, Landroidx/media2/MediaSession2ImplBase;->getPlaylistAgent()Landroidx/media2/MediaPlaylistAgent;

    move-result-object p1

    const-string v0, "MS2ImplBase"

    if-nez p1, :cond_1

    .line 1486
    sget-boolean p1, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 1487
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    const-string p2, "Session is closed"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 1491
    :cond_1
    invoke-virtual {p1, p2}, Landroidx/media2/MediaPlaylistAgent;->getMediaItem(Landroidx/media2/DataSourceDesc2;)Landroidx/media2/MediaItem2;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1493
    sget-boolean v1, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 1494
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find matching item for dsd="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-static {v0, p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object p1
.end method

.method public onBufferingStateChanged(Landroidx/media2/MediaPlayerConnector;Landroidx/media2/DataSourceDesc2;I)V
    .locals 8

    .line 1409
    invoke-direct {p0}, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;->getSession()Landroidx/media2/MediaSession2ImplBase;

    move-result-object v2

    if-eqz v2, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1413
    :cond_0
    invoke-virtual {v2}, Landroidx/media2/MediaSession2ImplBase;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4;-><init>(Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/DataSourceDesc2;Landroidx/media2/MediaPlayerConnector;I)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCurrentDataSourceChanged(Landroidx/media2/MediaPlayerConnector;Landroidx/media2/DataSourceDesc2;)V
    .locals 3

    .line 1273
    invoke-direct {p0}, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;->getSession()Landroidx/media2/MediaSession2ImplBase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1277
    :cond_0
    invoke-virtual {v0}, Landroidx/media2/MediaSession2ImplBase;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$1;

    invoke-direct {v2, p0, p2, v0, p1}, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$1;-><init>(Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;Landroidx/media2/DataSourceDesc2;Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/MediaPlayerConnector;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMediaPrepared(Landroidx/media2/MediaPlayerConnector;Landroidx/media2/DataSourceDesc2;)V
    .locals 3

    .line 1306
    invoke-direct {p0}, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;->getSession()Landroidx/media2/MediaSession2ImplBase;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1310
    :cond_0
    invoke-virtual {v0}, Landroidx/media2/MediaSession2ImplBase;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2;

    invoke-direct {v2, p0, v0, p2, p1}, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$2;-><init>(Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/DataSourceDesc2;Landroidx/media2/MediaPlayerConnector;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPlaybackSpeedChanged(Landroidx/media2/MediaPlayerConnector;F)V
    .locals 3

    .line 1435
    invoke-direct {p0}, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;->getSession()Landroidx/media2/MediaSession2ImplBase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1439
    :cond_0
    invoke-virtual {v0}, Landroidx/media2/MediaSession2ImplBase;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$5;

    invoke-direct {v2, p0, v0, p1, p2}, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$5;-><init>(Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/MediaPlayerConnector;F)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPlayerStateChanged(Landroidx/media2/MediaPlayerConnector;I)V
    .locals 3

    .line 1369
    invoke-direct {p0}, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;->getSession()Landroidx/media2/MediaSession2ImplBase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1373
    :cond_0
    invoke-virtual {v0}, Landroidx/media2/MediaSession2ImplBase;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$3;

    invoke-direct {v2, p0, v0, p2, p1}, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$3;-><init>(Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;Landroidx/media2/MediaSession2ImplBase;ILandroidx/media2/MediaPlayerConnector;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSeekCompleted(Landroidx/media2/MediaPlayerConnector;J)V
    .locals 8

    .line 1456
    invoke-direct {p0}, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;->getSession()Landroidx/media2/MediaSession2ImplBase;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 1460
    :cond_0
    invoke-virtual {v2}, Landroidx/media2/MediaSession2ImplBase;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$6;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$6;-><init>(Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/MediaPlayerConnector;J)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
