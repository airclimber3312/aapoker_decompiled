.class Landroidx/media2/MediaBrowser2ImplLegacy$5;
.super Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;
.source "MediaBrowser2ImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaBrowser2ImplLegacy;->getSearchResult(Ljava/lang/String;IILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

.field final synthetic val$page:I

.field final synthetic val$pageSize:I


# direct methods
.method constructor <init>(Landroidx/media2/MediaBrowser2ImplLegacy;II)V
    .locals 0

    .line 248
    iput-object p1, p0, Landroidx/media2/MediaBrowser2ImplLegacy$5;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    iput p2, p0, Landroidx/media2/MediaBrowser2ImplLegacy$5;->val$page:I

    iput p3, p0, Landroidx/media2/MediaBrowser2ImplLegacy$5;->val$pageSize:I

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 269
    iget-object p2, p0, Landroidx/media2/MediaBrowser2ImplLegacy$5;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    invoke-virtual {p2}, Landroidx/media2/MediaBrowser2ImplLegacy;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Landroidx/media2/MediaBrowser2ImplLegacy$5$2;

    invoke-direct {v0, p0, p1}, Landroidx/media2/MediaBrowser2ImplLegacy$5$2;-><init>(Landroidx/media2/MediaBrowser2ImplLegacy$5;Ljava/lang/String;)V

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

    .line 252
    iget-object p2, p0, Landroidx/media2/MediaBrowser2ImplLegacy$5;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    invoke-virtual {p2}, Landroidx/media2/MediaBrowser2ImplLegacy;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Landroidx/media2/MediaBrowser2ImplLegacy$5$1;

    invoke-direct {v0, p0, p3, p1}, Landroidx/media2/MediaBrowser2ImplLegacy$5$1;-><init>(Landroidx/media2/MediaBrowser2ImplLegacy$5;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
