.class Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback$1;
.super Ljava/lang/Object;
.source "MediaBrowser2ImplLegacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 423
    iput-object p1, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback$1;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;

    iput-object p2, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback$1;->val$parentId:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback$1;->val$items:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 426
    iget-object v0, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback$1;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;

    iget-object v0, v0, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    invoke-virtual {v0}, Landroidx/media2/MediaBrowser2ImplLegacy;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 434
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback$1;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;

    iget-object v1, v1, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    invoke-virtual {v1}, Landroidx/media2/MediaBrowser2ImplLegacy;->getCallback()Landroidx/media2/MediaBrowser2$BrowserCallback;

    move-result-object v2

    iget-object v1, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback$1;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;

    iget-object v1, v1, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    invoke-virtual {v1}, Landroidx/media2/MediaBrowser2ImplLegacy;->getInstance()Landroidx/media2/MediaBrowser2;

    move-result-object v3

    iget-object v4, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback$1;->val$parentId:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback$1;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;

    iget v5, v1, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;->mPage:I

    iget-object v1, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback$1;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;

    iget v6, v1, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;->mPageSize:I

    iget-object v7, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback$1;->val$items:Ljava/util/List;

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroidx/media2/MediaBrowser2$BrowserCallback;->onGetChildrenDone(Landroidx/media2/MediaBrowser2;Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V

    .line 436
    iget-object v1, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback$1;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;

    iget-object v1, v1, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;->mParentId:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback$1;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$GetChildrenCallback;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat;->unsubscribe(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    return-void
.end method
