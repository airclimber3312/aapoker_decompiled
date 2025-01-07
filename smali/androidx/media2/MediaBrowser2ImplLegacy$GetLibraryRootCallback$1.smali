.class Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback$1;
.super Ljava/lang/Object;
.source "MediaBrowser2ImplLegacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback;->onConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback;


# direct methods
.method constructor <init>(Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback;)V
    .locals 0

    .line 309
    iput-object p1, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback$1;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 313
    iget-object v0, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback$1;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback;

    iget-object v0, v0, Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    iget-object v0, v0, Landroidx/media2/MediaBrowser2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback$1;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback;

    iget-object v1, v1, Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    iget-object v1, v1, Landroidx/media2/MediaBrowser2ImplLegacy;->mBrowserCompats:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback$1;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback;

    iget-object v2, v2, Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaBrowserCompat;

    .line 315
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback$1;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback;

    iget-object v0, v0, Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    invoke-virtual {v0}, Landroidx/media2/MediaBrowser2ImplLegacy;->getCallback()Landroidx/media2/MediaBrowser2$BrowserCallback;

    move-result-object v0

    iget-object v2, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback$1;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback;

    iget-object v2, v2, Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    invoke-virtual {v2}, Landroidx/media2/MediaBrowser2ImplLegacy;->getInstance()Landroidx/media2/MediaBrowser2;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback$1;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback;

    iget-object v3, v3, Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback;->mExtras:Landroid/os/Bundle;

    .line 321
    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat;->getRoot()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 320
    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/media2/MediaBrowser2$BrowserCallback;->onGetLibraryRootDone(Landroidx/media2/MediaBrowser2;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception v1

    .line 315
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
