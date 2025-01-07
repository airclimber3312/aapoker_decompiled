.class Landroidx/media2/MediaBrowser2ImplLegacy$5$1;
.super Ljava/lang/Object;
.source "MediaBrowser2ImplLegacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaBrowser2ImplLegacy$5;->onSearchResult(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaBrowser2ImplLegacy$5;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/media2/MediaBrowser2ImplLegacy$5;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 252
    iput-object p1, p0, Landroidx/media2/MediaBrowser2ImplLegacy$5$1;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$5;

    iput-object p2, p0, Landroidx/media2/MediaBrowser2ImplLegacy$5$1;->val$items:Ljava/util/List;

    iput-object p3, p0, Landroidx/media2/MediaBrowser2ImplLegacy$5$1;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 255
    iget-object v0, p0, Landroidx/media2/MediaBrowser2ImplLegacy$5$1;->val$items:Ljava/util/List;

    .line 256
    invoke-static {v0}, Landroidx/media2/MediaUtils2;->convertMediaItemListToMediaItem2List(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 261
    iget-object v0, p0, Landroidx/media2/MediaBrowser2ImplLegacy$5$1;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$5;

    iget-object v0, v0, Landroidx/media2/MediaBrowser2ImplLegacy$5;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    invoke-virtual {v0}, Landroidx/media2/MediaBrowser2ImplLegacy;->getCallback()Landroidx/media2/MediaBrowser2$BrowserCallback;

    move-result-object v1

    iget-object v0, p0, Landroidx/media2/MediaBrowser2ImplLegacy$5$1;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$5;

    iget-object v0, v0, Landroidx/media2/MediaBrowser2ImplLegacy$5;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    .line 262
    invoke-virtual {v0}, Landroidx/media2/MediaBrowser2ImplLegacy;->getInstance()Landroidx/media2/MediaBrowser2;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/MediaBrowser2ImplLegacy$5$1;->val$query:Ljava/lang/String;

    iget-object v0, p0, Landroidx/media2/MediaBrowser2ImplLegacy$5$1;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$5;

    iget v4, v0, Landroidx/media2/MediaBrowser2ImplLegacy$5;->val$page:I

    iget-object v0, p0, Landroidx/media2/MediaBrowser2ImplLegacy$5$1;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$5;

    iget v5, v0, Landroidx/media2/MediaBrowser2ImplLegacy$5;->val$pageSize:I

    const/4 v7, 0x0

    .line 261
    invoke-virtual/range {v1 .. v7}, Landroidx/media2/MediaBrowser2$BrowserCallback;->onGetSearchResultDone(Landroidx/media2/MediaBrowser2;Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V

    return-void
.end method
