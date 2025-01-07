.class Landroidx/media2/MediaBrowser2ImplLegacy;
.super Landroidx/media2/MediaController2ImplLegacy;
.source "MediaBrowser2ImplLegacy.java"

# interfaces
.implements Landroidx/media2/MediaBrowser2$MediaBrowser2Impl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;,
        Landroidx/media2/MediaBrowser2ImplLegacy$SubscribeCallback;,
        Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback;
    }
.end annotation


# instance fields
.field final mBrowserCompats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/media/MediaBrowserCompat;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscribeCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/media2/MediaBrowser2ImplLegacy$SubscribeCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media2/MediaBrowser2;Landroidx/media2/SessionToken2;Ljava/util/concurrent/Executor;Landroidx/media2/MediaBrowser2$BrowserCallback;)V
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p5}, Landroidx/media2/MediaController2ImplLegacy;-><init>(Landroid/content/Context;Landroidx/media2/MediaController2;Landroidx/media2/SessionToken2;Ljava/util/concurrent/Executor;Landroidx/media2/MediaController2$ControllerCallback;)V

    .line 41
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media2/MediaBrowser2ImplLegacy;->mBrowserCompats:Ljava/util/HashMap;

    .line 44
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media2/MediaBrowser2ImplLegacy;->mSubscribeCallbacks:Ljava/util/HashMap;

    return-void
.end method

.method private createBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    if-nez p1, :cond_0

    .line 296
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private getBrowserCompat(Landroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserCompat;
    .locals 2

    .line 290
    iget-object v0, p0, Landroidx/media2/MediaBrowser2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaBrowser2ImplLegacy;->mBrowserCompats:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 292
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 60
    iget-object v0, p0, Landroidx/media2/MediaBrowser2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaBrowser2ImplLegacy;->mBrowserCompats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaBrowserCompat;

    .line 62
    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowserCompat;->disconnect()V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaBrowser2ImplLegacy;->mBrowserCompats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 66
    invoke-super {p0}, Landroidx/media2/MediaController2ImplLegacy;->close()V

    .line 67
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallback()Landroidx/media2/MediaBrowser2$BrowserCallback;
    .locals 1

    .line 286
    invoke-super {p0}, Landroidx/media2/MediaController2ImplLegacy;->getCallback()Landroidx/media2/MediaController2$ControllerCallback;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaBrowser2$BrowserCallback;

    return-object v0
.end method

.method public bridge synthetic getCallback()Landroidx/media2/MediaController2$ControllerCallback;
    .locals 1

    .line 40
    invoke-virtual {p0}, Landroidx/media2/MediaBrowser2ImplLegacy;->getCallback()Landroidx/media2/MediaBrowser2$BrowserCallback;

    move-result-object v0

    return-object v0
.end method

.method public getChildren(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_3

    if-ltz p2, :cond_2

    const/4 v0, 0x1

    if-lt p3, v0, :cond_1

    .line 156
    invoke-virtual {p0}, Landroidx/media2/MediaBrowser2ImplLegacy;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-direct {p0, p4}, Landroidx/media2/MediaBrowser2ImplLegacy;->createBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p4

    const-string v1, "android.media.browse.extra.PAGE"

    .line 162
    invoke-virtual {p4, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "android.media.browse.extra.PAGE_SIZE"

    .line 163
    invoke-virtual {p4, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    new-instance v1, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;-><init>(Landroidx/media2/MediaBrowser2ImplLegacy;Ljava/lang/String;II)V

    invoke-virtual {v0, p1, p4, v1}, Landroid/support/v4/media/MediaBrowserCompat;->subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    return-void

    .line 154
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pageSize shouldn\'t be less than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "page shouldn\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "parentId shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInstance()Landroidx/media2/MediaBrowser2;
    .locals 1

    .line 55
    invoke-super {p0}, Landroidx/media2/MediaController2ImplLegacy;->getInstance()Landroidx/media2/MediaController2;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaBrowser2;

    return-object v0
.end method

.method public bridge synthetic getInstance()Landroidx/media2/MediaController2;
    .locals 1

    .line 40
    invoke-virtual {p0}, Landroidx/media2/MediaBrowser2ImplLegacy;->getInstance()Landroidx/media2/MediaBrowser2;

    move-result-object v0

    return-object v0
.end method

.method public getItem(Ljava/lang/String;)V
    .locals 2

    .line 169
    invoke-virtual {p0}, Landroidx/media2/MediaBrowser2ImplLegacy;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    new-instance v1, Landroidx/media2/MediaBrowser2ImplLegacy$3;

    invoke-direct {v1, p0, p1}, Landroidx/media2/MediaBrowser2ImplLegacy$3;-><init>(Landroidx/media2/MediaBrowser2ImplLegacy;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat;->getItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V

    return-void
.end method

.method public getLibraryRoot(Landroid/os/Bundle;)V
    .locals 3

    .line 72
    invoke-direct {p0, p1}, Landroidx/media2/MediaBrowser2ImplLegacy;->getBrowserCompat(Landroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Landroidx/media2/MediaBrowser2ImplLegacy;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/media2/MediaBrowser2ImplLegacy$1;

    invoke-direct {v2, p0, p1, v0}, Landroidx/media2/MediaBrowser2ImplLegacy$1;-><init>(Landroidx/media2/MediaBrowser2ImplLegacy;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/MediaBrowser2ImplLegacy;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/media2/MediaBrowser2ImplLegacy$2;

    invoke-direct {v1, p0, p1}, Landroidx/media2/MediaBrowser2ImplLegacy$2;-><init>(Landroidx/media2/MediaBrowser2ImplLegacy;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public getSearchResult(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 2

    .line 241
    invoke-virtual {p0}, Landroidx/media2/MediaBrowser2ImplLegacy;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    invoke-direct {p0, p4}, Landroidx/media2/MediaBrowser2ImplLegacy;->createBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p4

    const-string v1, "android.media.browse.extra.PAGE"

    .line 246
    invoke-virtual {p4, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "android.media.browse.extra.PAGE_SIZE"

    .line 247
    invoke-virtual {p4, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 248
    new-instance v1, Landroidx/media2/MediaBrowser2ImplLegacy$5;

    invoke-direct {v1, p0, p2, p3}, Landroidx/media2/MediaBrowser2ImplLegacy$5;-><init>(Landroidx/media2/MediaBrowser2ImplLegacy;II)V

    invoke-virtual {v0, p1, p4, v1}, Landroid/support/v4/media/MediaBrowserCompat;->search(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;)V

    return-void
.end method

.method public search(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 199
    invoke-virtual {p0}, Landroidx/media2/MediaBrowser2ImplLegacy;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    new-instance v1, Landroidx/media2/MediaBrowser2ImplLegacy$4;

    invoke-direct {v1, p0}, Landroidx/media2/MediaBrowser2ImplLegacy$4;-><init>(Landroidx/media2/MediaBrowser2ImplLegacy;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/media/MediaBrowserCompat;->search(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;)V

    return-void
.end method

.method public subscribe(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 105
    invoke-virtual {p0}, Landroidx/media2/MediaBrowser2ImplLegacy;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    new-instance v1, Landroidx/media2/MediaBrowser2ImplLegacy$SubscribeCallback;

    invoke-direct {v1, p0}, Landroidx/media2/MediaBrowser2ImplLegacy$SubscribeCallback;-><init>(Landroidx/media2/MediaBrowser2ImplLegacy;)V

    .line 110
    iget-object v2, p0, Landroidx/media2/MediaBrowser2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 111
    :try_start_0
    iget-object v3, p0, Landroidx/media2/MediaBrowser2ImplLegacy;->mSubscribeCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_1

    .line 113
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 114
    iget-object v4, p0, Landroidx/media2/MediaBrowser2ImplLegacy;->mSubscribeCallbacks:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/media/MediaBrowserCompat;->subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    return-void

    :catchall_0
    move-exception p1

    .line 117
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 103
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "parentId shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 127
    invoke-virtual {p0}, Landroidx/media2/MediaBrowser2ImplLegacy;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaBrowser2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v2, p0, Landroidx/media2/MediaBrowser2ImplLegacy;->mSubscribeCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    .line 136
    monitor-exit v1

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 138
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 139
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-virtual {v0, p1, v4}, Landroid/support/v4/media/MediaBrowserCompat;->unsubscribe(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 125
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "parentId shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
