.class Landroidx/media2/MediaBrowser2ImplLegacy$1;
.super Ljava/lang/Object;
.source "MediaBrowser2ImplLegacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaBrowser2ImplLegacy;->getLibraryRoot(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

.field final synthetic val$browser:Landroid/support/v4/media/MediaBrowserCompat;

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroidx/media2/MediaBrowser2ImplLegacy;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat;)V
    .locals 0

    .line 75
    iput-object p1, p0, Landroidx/media2/MediaBrowser2ImplLegacy$1;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    iput-object p2, p0, Landroidx/media2/MediaBrowser2ImplLegacy$1;->val$extras:Landroid/os/Bundle;

    iput-object p3, p0, Landroidx/media2/MediaBrowser2ImplLegacy$1;->val$browser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 78
    iget-object v0, p0, Landroidx/media2/MediaBrowser2ImplLegacy$1;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    invoke-virtual {v0}, Landroidx/media2/MediaBrowser2ImplLegacy;->getCallback()Landroidx/media2/MediaBrowser2$BrowserCallback;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/MediaBrowser2ImplLegacy$1;->this$0:Landroidx/media2/MediaBrowser2ImplLegacy;

    invoke-virtual {v1}, Landroidx/media2/MediaBrowser2ImplLegacy;->getInstance()Landroidx/media2/MediaBrowser2;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/MediaBrowser2ImplLegacy$1;->val$extras:Landroid/os/Bundle;

    iget-object v3, p0, Landroidx/media2/MediaBrowser2ImplLegacy$1;->val$browser:Landroid/support/v4/media/MediaBrowserCompat;

    .line 79
    invoke-virtual {v3}, Landroid/support/v4/media/MediaBrowserCompat;->getRoot()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroidx/media2/MediaBrowser2ImplLegacy$1;->val$browser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v4}, Landroid/support/v4/media/MediaBrowserCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 78
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media2/MediaBrowser2$BrowserCallback;->onGetLibraryRootDone(Landroidx/media2/MediaBrowser2;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
