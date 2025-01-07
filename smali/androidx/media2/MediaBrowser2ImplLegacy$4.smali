.class Landroidx/media2/MediaBrowser2ImplLegacy$4;
.super Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;
.source "MediaBrowser2ImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaBrowser2ImplLegacy;->search(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaBrowser2ImplLegacy;


# direct methods
.method constructor <init>(Landroidx/media2/MediaBrowser2ImplLegacy;)V
    .locals 0

    .line 203
    iput-object p1, p0, Landroidx/media2/MediaBrowser2ImplLegacy$4;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 223
    iget-object p2, p0, Landroidx/media2/MediaBrowser2ImplLegacy$4;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    invoke-virtual {p2}, Landroidx/media2/MediaBrowser2ImplLegacy;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Landroidx/media2/MediaBrowser2ImplLegacy$4$2;

    invoke-direct {v0, p0, p1}, Landroidx/media2/MediaBrowser2ImplLegacy$4$2;-><init>(Landroidx/media2/MediaBrowser2ImplLegacy$4;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSearchResult(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 207
    iget-object p2, p0, Landroidx/media2/MediaBrowser2ImplLegacy$4;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    invoke-virtual {p2}, Landroidx/media2/MediaBrowser2ImplLegacy;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Landroidx/media2/MediaBrowser2ImplLegacy$4$1;

    invoke-direct {v0, p0, p1, p3}, Landroidx/media2/MediaBrowser2ImplLegacy$4$1;-><init>(Landroidx/media2/MediaBrowser2ImplLegacy$4;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
