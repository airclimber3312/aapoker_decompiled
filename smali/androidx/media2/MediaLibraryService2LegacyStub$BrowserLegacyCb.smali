.class Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;
.super Landroidx/media2/MediaLibraryService2LegacyStub$BaseBrowserLegacyCb;
.source "MediaLibraryService2LegacyStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaLibraryService2LegacyStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrowserLegacyCb"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

.field private final mSearchRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/MediaLibraryService2LegacyStub$SearchRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/media2/MediaLibraryService2LegacyStub;


# direct methods
.method constructor <init>(Landroidx/media2/MediaLibraryService2LegacyStub;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V
    .locals 0

    .line 488
    iput-object p1, p0, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;->this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/media2/MediaLibraryService2LegacyStub$BaseBrowserLegacyCb;-><init>(Landroidx/media2/MediaLibraryService2LegacyStub$1;)V

    .line 482
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;->mLock:Ljava/lang/Object;

    .line 485
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;->mSearchRequests:Ljava/util/List;

    .line 489
    iput-object p2, p0, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    return-void
.end method


# virtual methods
.method onChildrenChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 495
    iget-object p2, p0, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;->this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {p2, v0, p1, p3}, Landroidx/media2/MediaLibraryService2LegacyStub;->notifyChildrenChanged(Landroidx/media/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method onSearchResultChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 505
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 506
    iget-object p3, p0, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 507
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;->mSearchRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 508
    iget-object v1, p0, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;->mSearchRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/MediaLibraryService2LegacyStub$SearchRequest;

    .line 509
    iget-object v2, p0, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    iget-object v3, v1, Landroidx/media2/MediaLibraryService2LegacyStub$SearchRequest;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-static {v2, v3}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroidx/media2/MediaLibraryService2LegacyStub$SearchRequest;->mQuery:Ljava/lang/String;

    .line 510
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v1, p0, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;->mSearchRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 515
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 520
    monitor-exit p3

    return-void

    .line 522
    :cond_2
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    iget-object p1, p0, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;->this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

    iget-object p1, p1, Landroidx/media2/MediaLibraryService2LegacyStub;->mLibrarySessionImpl:Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    invoke-interface {p1}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p3, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb$1;

    invoke-direct {p3, p0, p2}, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb$1;-><init>(Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;Ljava/util/List;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 522
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method registerSearchRequest(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/MediaSession2$ControllerInfo;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 564
    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 565
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;->mSearchRequests:Ljava/util/List;

    new-instance v8, Landroidx/media2/MediaLibraryService2LegacyStub$SearchRequest;

    invoke-virtual {p1}, Landroidx/media2/MediaSession2$ControllerInfo;->getRemoteUserInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object v4

    move-object v2, v8

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Landroidx/media2/MediaLibraryService2LegacyStub$SearchRequest;-><init>(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$Result;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
