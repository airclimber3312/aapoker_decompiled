.class Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback;
.super Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
.source "MediaBrowser2ImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaBrowser2ImplLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetLibraryRootCallback"
.end annotation


# instance fields
.field final mExtras:Landroid/os/Bundle;

.field final synthetic this$0:Landroidx/media2/MediaBrowser2ImplLegacy;


# direct methods
.method constructor <init>(Landroidx/media2/MediaBrowser2ImplLegacy;Landroid/os/Bundle;)V
    .locals 0

    .line 302
    iput-object p1, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    .line 303
    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;-><init>()V

    .line 304
    iput-object p2, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    .line 309
    iget-object v0, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    invoke-virtual {v0}, Landroidx/media2/MediaBrowser2ImplLegacy;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback$1;

    invoke-direct {v1, p0}, Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback$1;-><init>(Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConnectionFailed()V
    .locals 1

    .line 333
    iget-object v0, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    invoke-virtual {v0}, Landroidx/media2/MediaBrowser2ImplLegacy;->close()V

    return-void
.end method

.method public onConnectionSuspended()V
    .locals 1

    .line 328
    iget-object v0, p0, Landroidx/media2/MediaBrowser2ImplLegacy$GetLibraryRootCallback;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    invoke-virtual {v0}, Landroidx/media2/MediaBrowser2ImplLegacy;->close()V

    return-void
.end method
