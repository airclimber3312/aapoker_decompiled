.class Landroidx/media2/MediaBrowser2ImplLegacy$5$2;
.super Ljava/lang/Object;
.source "MediaBrowser2ImplLegacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaBrowser2ImplLegacy$5;->onError(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaBrowser2ImplLegacy$5;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/media2/MediaBrowser2ImplLegacy$5;Ljava/lang/String;)V
    .locals 0

    .line 269
    iput-object p1, p0, Landroidx/media2/MediaBrowser2ImplLegacy$5$2;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$5;

    iput-object p2, p0, Landroidx/media2/MediaBrowser2ImplLegacy$5$2;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 276
    iget-object v0, p0, Landroidx/media2/MediaBrowser2ImplLegacy$5$2;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$5;

    iget-object v0, v0, Landroidx/media2/MediaBrowser2ImplLegacy$5;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    invoke-virtual {v0}, Landroidx/media2/MediaBrowser2ImplLegacy;->getCallback()Landroidx/media2/MediaBrowser2$BrowserCallback;

    move-result-object v1

    iget-object v0, p0, Landroidx/media2/MediaBrowser2ImplLegacy$5$2;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$5;

    iget-object v0, v0, Landroidx/media2/MediaBrowser2ImplLegacy$5;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    .line 277
    invoke-virtual {v0}, Landroidx/media2/MediaBrowser2ImplLegacy;->getInstance()Landroidx/media2/MediaBrowser2;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/MediaBrowser2ImplLegacy$5$2;->val$query:Ljava/lang/String;

    iget-object v0, p0, Landroidx/media2/MediaBrowser2ImplLegacy$5$2;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$5;

    iget v4, v0, Landroidx/media2/MediaBrowser2ImplLegacy$5;->val$page:I

    iget-object v0, p0, Landroidx/media2/MediaBrowser2ImplLegacy$5$2;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$5;

    iget v5, v0, Landroidx/media2/MediaBrowser2ImplLegacy$5;->val$pageSize:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 276
    invoke-virtual/range {v1 .. v7}, Landroidx/media2/MediaBrowser2$BrowserCallback;->onGetSearchResultDone(Landroidx/media2/MediaBrowser2;Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V

    return-void
.end method
