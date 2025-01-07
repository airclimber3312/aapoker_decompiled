.class Landroidx/media2/MediaLibrarySessionImplBase;
.super Landroidx/media2/MediaSession2ImplBase;
.source "MediaLibrarySessionImplBase.java"

# interfaces
.implements Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;


# instance fields
.field private final mSubscriptions:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroidx/media2/MediaSession2$ControllerCb;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2;Landroid/content/Context;Ljava/lang/String;Landroidx/media2/MediaPlayerConnector;Landroidx/media2/MediaPlaylistAgent;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroidx/media2/MediaSession2$SessionCallback;)V
    .locals 0

    .line 53
    invoke-direct/range {p0 .. p8}, Landroidx/media2/MediaSession2ImplBase;-><init>(Landroidx/media2/MediaSession2;Landroid/content/Context;Ljava/lang/String;Landroidx/media2/MediaPlayerConnector;Landroidx/media2/MediaPlaylistAgent;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroidx/media2/MediaSession2$SessionCallback;)V

    .line 47
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Landroidx/media2/MediaLibrarySessionImplBase;->mSubscriptions:Landroidx/collection/ArrayMap;

    return-void
.end method


# virtual methods
.method createLegacyBrowserService(Landroid/content/Context;Landroidx/media2/SessionToken2;Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroidx/media/MediaBrowserServiceCompat;
    .locals 0

    .line 60
    new-instance p2, Landroidx/media2/MediaLibraryService2LegacyStub;

    invoke-direct {p2, p1, p0, p3}, Landroidx/media2/MediaLibraryService2LegacyStub;-><init>(Landroid/content/Context;Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-object p2
.end method

.method dumpSubscription()V
    .locals 7

    const-string v0, "Dumping subscription, controller sz="

    .line 272
    sget-boolean v1, Landroidx/media2/MediaLibrarySessionImplBase;->DEBUG:Z

    if-nez v1, :cond_0

    return-void

    .line 275
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaLibrarySessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "MS2ImplBase"

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/media2/MediaLibrarySessionImplBase;->mSubscriptions:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 277
    :goto_0
    iget-object v2, p0, Landroidx/media2/MediaLibrarySessionImplBase;->mSubscriptions:Landroidx/collection/ArrayMap;

    invoke-virtual {v2}, Landroidx/collection/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    const-string v2, "MS2ImplBase"

    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  controller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/media2/MediaLibrarySessionImplBase;->mSubscriptions:Landroidx/collection/ArrayMap;

    invoke-virtual {v4, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v2, p0, Landroidx/media2/MediaLibrarySessionImplBase;->mSubscriptions:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "MS2ImplBase"

    .line 280
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCallback()Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;
    .locals 1

    .line 70
    invoke-super {p0}, Landroidx/media2/MediaSession2ImplBase;->getCallback()Landroidx/media2/MediaSession2$SessionCallback;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    return-object v0
.end method

.method public bridge synthetic getCallback()Landroidx/media2/MediaSession2$SessionCallback;
    .locals 1

    .line 45
    invoke-virtual {p0}, Landroidx/media2/MediaLibrarySessionImplBase;->getCallback()Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    return-object v0
.end method

.method public getConnectedControllers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/MediaSession2$ControllerInfo;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-super {p0}, Landroidx/media2/MediaSession2ImplBase;->getConnectedControllers()Ljava/util/List;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Landroidx/media2/MediaLibrarySessionImplBase;->getLegacyBrowserService()Landroidx/media2/MediaLibraryService2LegacyStub;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/MediaLibraryService2LegacyStub;->getConnectedControllersManager()Landroidx/media2/ConnectedControllersManager;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroidx/media2/ConnectedControllersManager;->getConnectedControllers()Ljava/util/List;

    move-result-object v1

    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getInstance()Landroidx/media2/MediaLibraryService2$MediaLibrarySession;
    .locals 1

    .line 65
    invoke-super {p0}, Landroidx/media2/MediaSession2ImplBase;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaLibraryService2$MediaLibrarySession;

    return-object v0
.end method

.method public bridge synthetic getInstance()Landroidx/media2/MediaSession2;
    .locals 1

    .line 45
    invoke-virtual {p0}, Landroidx/media2/MediaLibrarySessionImplBase;->getInstance()Landroidx/media2/MediaLibraryService2$MediaLibrarySession;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getLegacyBrowserService()Landroidx/media/MediaBrowserServiceCompat;
    .locals 1

    .line 45
    invoke-virtual {p0}, Landroidx/media2/MediaLibrarySessionImplBase;->getLegacyBrowserService()Landroidx/media2/MediaLibraryService2LegacyStub;

    move-result-object v0

    return-object v0
.end method

.method getLegacyBrowserService()Landroidx/media2/MediaLibraryService2LegacyStub;
    .locals 1

    .line 75
    invoke-super {p0}, Landroidx/media2/MediaSession2ImplBase;->getLegacyBrowserService()Landroidx/media/MediaBrowserServiceCompat;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaLibraryService2LegacyStub;

    return-object v0
.end method

.method isSubscribed(Landroidx/media2/MediaSession2$ControllerCb;Ljava/lang/String;)Z
    .locals 2

    .line 260
    iget-object v0, p0, Landroidx/media2/MediaLibrarySessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaLibrarySessionImplBase;->mSubscriptions:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_1

    .line 262
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 263
    :cond_1
    :goto_0
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 265
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public notifyChildrenChanged(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 7

    if-eqz p1, :cond_2

    .line 112
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p3, :cond_0

    .line 118
    new-instance v0, Landroidx/media2/MediaLibrarySessionImplBase$2;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media2/MediaLibrarySessionImplBase$2;-><init>(Landroidx/media2/MediaLibrarySessionImplBase;Ljava/lang/String;Landroidx/media2/MediaSession2$ControllerInfo;ILandroid/os/Bundle;)V

    invoke-virtual {p0, p1, v0}, Landroidx/media2/MediaLibrarySessionImplBase;->notifyToController(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    return-void

    .line 116
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemCount shouldn\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query shouldn\'t be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "controller shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notifyChildrenChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p2, :cond_0

    .line 96
    new-instance v0, Landroidx/media2/MediaLibrarySessionImplBase$1;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media2/MediaLibrarySessionImplBase$1;-><init>(Landroidx/media2/MediaLibrarySessionImplBase;Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroidx/media2/MediaLibrarySessionImplBase;->notifyToAllControllers(Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    return-void

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemCount shouldn\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query shouldn\'t be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notifySearchResultChanged(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 140
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Landroidx/media2/MediaLibrarySessionImplBase$3;

    invoke-direct {v0, p0, p2, p3, p4}, Landroidx/media2/MediaLibrarySessionImplBase$3;-><init>(Landroidx/media2/MediaLibrarySessionImplBase;Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-virtual {p0, p1, v0}, Landroidx/media2/MediaLibrarySessionImplBase;->notifyToController(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    return-void

    .line 141
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query shouldn\'t be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "controller shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method notifyToAllControllers(Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V
    .locals 1

    .line 254
    invoke-super {p0, p1}, Landroidx/media2/MediaSession2ImplBase;->notifyToAllControllers(Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    .line 255
    invoke-virtual {p0}, Landroidx/media2/MediaLibrarySessionImplBase;->getLegacyBrowserService()Landroidx/media2/MediaLibraryService2LegacyStub;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/MediaLibraryService2LegacyStub;->getControllersForAll()Landroidx/media2/MediaSession2$ControllerInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/media2/MediaLibrarySessionImplBase;->notifyToController(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    return-void
.end method

.method public onGetChildrenOnExecutor(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 9

    .line 191
    invoke-virtual {p0}, Landroidx/media2/MediaLibrarySessionImplBase;->getCallback()Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media2/MediaLibrarySessionImplBase;->getInstance()Landroidx/media2/MediaLibraryService2$MediaLibrarySession;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;->onGetChildren(Landroidx/media2/MediaLibraryService2$MediaLibrarySession;Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;IILandroid/os/Bundle;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 193
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p4, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onGetChildren() shouldn\'t return media items more than pageSize. result.size()="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " pageSize="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 198
    :cond_1
    :goto_0
    new-instance v0, Landroidx/media2/MediaLibrarySessionImplBase$6;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Landroidx/media2/MediaLibrarySessionImplBase$6;-><init>(Landroidx/media2/MediaLibrarySessionImplBase;Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, v0}, Landroidx/media2/MediaLibrarySessionImplBase;->notifyToController(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    return-void
.end method

.method public onGetItemOnExecutor(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;)V
    .locals 2

    .line 179
    invoke-virtual {p0}, Landroidx/media2/MediaLibrarySessionImplBase;->getCallback()Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media2/MediaLibrarySessionImplBase;->getInstance()Landroidx/media2/MediaLibraryService2$MediaLibrarySession;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;->onGetItem(Landroidx/media2/MediaLibraryService2$MediaLibrarySession;Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;)Landroidx/media2/MediaItem2;

    move-result-object v0

    .line 180
    new-instance v1, Landroidx/media2/MediaLibrarySessionImplBase$5;

    invoke-direct {v1, p0, p2, v0}, Landroidx/media2/MediaLibrarySessionImplBase$5;-><init>(Landroidx/media2/MediaLibrarySessionImplBase;Ljava/lang/String;Landroidx/media2/MediaItem2;)V

    invoke-virtual {p0, p1, v1}, Landroidx/media2/MediaLibrarySessionImplBase;->notifyToController(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    return-void
.end method

.method public onGetLibraryRootOnExecutor(Landroidx/media2/MediaSession2$ControllerInfo;Landroid/os/Bundle;)V
    .locals 2

    .line 159
    invoke-virtual {p0}, Landroidx/media2/MediaLibrarySessionImplBase;->getCallback()Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Landroidx/media2/MediaLibrarySessionImplBase;->getInstance()Landroidx/media2/MediaLibraryService2$MediaLibrarySession;

    move-result-object v1

    .line 159
    invoke-virtual {v0, v1, p1, p2}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;->onGetLibraryRoot(Landroidx/media2/MediaLibraryService2$MediaLibrarySession;Landroidx/media2/MediaSession2$ControllerInfo;Landroid/os/Bundle;)Landroidx/media2/MediaLibraryService2$LibraryRoot;

    move-result-object v0

    .line 161
    new-instance v1, Landroidx/media2/MediaLibrarySessionImplBase$4;

    invoke-direct {v1, p0, p2, v0}, Landroidx/media2/MediaLibrarySessionImplBase$4;-><init>(Landroidx/media2/MediaLibrarySessionImplBase;Landroid/os/Bundle;Landroidx/media2/MediaLibraryService2$LibraryRoot;)V

    invoke-virtual {p0, p1, v1}, Landroidx/media2/MediaLibrarySessionImplBase;->notifyToController(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    return-void
.end method

.method public onGetSearchResultOnExecutor(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 9

    .line 237
    invoke-virtual {p0}, Landroidx/media2/MediaLibrarySessionImplBase;->getCallback()Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media2/MediaLibrarySessionImplBase;->getInstance()Landroidx/media2/MediaLibraryService2$MediaLibrarySession;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;->onGetSearchResult(Landroidx/media2/MediaLibraryService2$MediaLibrarySession;Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;IILandroid/os/Bundle;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 239
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p4, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onGetSearchResult() shouldn\'t return media items more than pageSize. result.size()="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " pageSize="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 244
    :cond_1
    :goto_0
    new-instance v0, Landroidx/media2/MediaLibrarySessionImplBase$7;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Landroidx/media2/MediaLibrarySessionImplBase$7;-><init>(Landroidx/media2/MediaLibrarySessionImplBase;Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, v0}, Landroidx/media2/MediaLibrarySessionImplBase;->notifyToController(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    return-void
.end method

.method public onSearchOnExecutor(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 231
    invoke-virtual {p0}, Landroidx/media2/MediaLibrarySessionImplBase;->getCallback()Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media2/MediaLibrarySessionImplBase;->getInstance()Landroidx/media2/MediaLibraryService2$MediaLibrarySession;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;->onSearch(Landroidx/media2/MediaLibraryService2$MediaLibrarySession;Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSubscribeOnExecutor(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 208
    iget-object v0, p0, Landroidx/media2/MediaLibrarySessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaLibrarySessionImplBase;->mSubscriptions:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Landroidx/media2/MediaSession2$ControllerInfo;->getControllerCb()Landroidx/media2/MediaSession2$ControllerCb;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_0

    .line 211
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 212
    iget-object v2, p0, Landroidx/media2/MediaLibrarySessionImplBase;->mSubscriptions:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Landroidx/media2/MediaSession2$ControllerInfo;->getControllerCb()Landroidx/media2/MediaSession2$ControllerCb;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-virtual {p0}, Landroidx/media2/MediaLibrarySessionImplBase;->getCallback()Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media2/MediaLibrarySessionImplBase;->getInstance()Landroidx/media2/MediaLibraryService2$MediaLibrarySession;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;->onSubscribe(Landroidx/media2/MediaLibraryService2$MediaLibrarySession;Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception p1

    .line 215
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onUnsubscribeOnExecutor(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;)V
    .locals 2

    .line 223
    invoke-virtual {p0}, Landroidx/media2/MediaLibrarySessionImplBase;->getCallback()Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media2/MediaLibrarySessionImplBase;->getInstance()Landroidx/media2/MediaLibraryService2$MediaLibrarySession;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;->onUnsubscribe(Landroidx/media2/MediaLibraryService2$MediaLibrarySession;Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;)V

    .line 224
    iget-object p2, p0, Landroidx/media2/MediaLibrarySessionImplBase;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 225
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaLibrarySessionImplBase;->mSubscriptions:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Landroidx/media2/MediaSession2$ControllerInfo;->getControllerCb()Landroidx/media2/MediaSession2$ControllerCb;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
