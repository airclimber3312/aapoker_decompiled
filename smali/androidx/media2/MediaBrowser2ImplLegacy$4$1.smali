.class Landroidx/media2/MediaBrowser2ImplLegacy$4$1;
.super Ljava/lang/Object;
.source "MediaBrowser2ImplLegacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaBrowser2ImplLegacy$4;->onSearchResult(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaBrowser2ImplLegacy$4;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/media2/MediaBrowser2ImplLegacy$4;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 207
    iput-object p1, p0, Landroidx/media2/MediaBrowser2ImplLegacy$4$1;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$4;

    iput-object p2, p0, Landroidx/media2/MediaBrowser2ImplLegacy$4$1;->val$query:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media2/MediaBrowser2ImplLegacy$4$1;->val$items:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 215
    iget-object v0, p0, Landroidx/media2/MediaBrowser2ImplLegacy$4$1;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$4;

    iget-object v0, v0, Landroidx/media2/MediaBrowser2ImplLegacy$4;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    invoke-virtual {v0}, Landroidx/media2/MediaBrowser2ImplLegacy;->getCallback()Landroidx/media2/MediaBrowser2$BrowserCallback;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/MediaBrowser2ImplLegacy$4$1;->this$1:Landroidx/media2/MediaBrowser2ImplLegacy$4;

    iget-object v1, v1, Landroidx/media2/MediaBrowser2ImplLegacy$4;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    .line 216
    invoke-virtual {v1}, Landroidx/media2/MediaBrowser2ImplLegacy;->getInstance()Landroidx/media2/MediaBrowser2;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/MediaBrowser2ImplLegacy$4$1;->val$query:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media2/MediaBrowser2ImplLegacy$4$1;->val$items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    .line 215
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media2/MediaBrowser2$BrowserCallback;->onSearchResultChanged(Landroidx/media2/MediaBrowser2;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method
