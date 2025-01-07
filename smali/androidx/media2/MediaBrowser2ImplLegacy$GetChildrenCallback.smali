.class Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;
.super Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
.source "MediaBrowser2ImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaBrowser2ImplLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetChildrenCallback"
.end annotation


# instance fields
.field final mPage:I

.field final mPageSize:I

.field final mParentId:Ljava/lang/String;

.field final synthetic this$0:Landroidx/media2/MediaBrowser2ImplLegacy;


# direct methods
.method constructor <init>(Landroidx/media2/MediaBrowser2ImplLegacy;Ljava/lang/String;II)V
    .locals 0

    .line 389
    iput-object p1, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    .line 390
    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 391
    iput-object p2, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;->mParentId:Ljava/lang/String;

    .line 392
    iput p3, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;->mPage:I

    .line 393
    iput p4, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;->mPageSize:I

    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 408
    invoke-virtual {p0, p1, p2, v0}, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    .line 418
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 419
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 420
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-static {v1}, Landroidx/media2/MediaUtils2;->convertToMediaItem2(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)Landroidx/media2/MediaItem2;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object p2, p3

    .line 423
    :goto_1
    iget-object p3, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    invoke-virtual {p3}, Landroidx/media2/MediaBrowser2ImplLegacy;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object p3

    new-instance v0, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback$1;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback$1;-><init>(Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 398
    invoke-virtual {p0, p1, v0, v0}, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 403
    invoke-virtual {p0, p1, v0, p2}, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method
