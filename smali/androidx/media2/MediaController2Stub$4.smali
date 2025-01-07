.class Landroidx/media2/MediaController2Stub$4;
.super Ljava/lang/Object;
.source "MediaController2Stub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaController2Stub;->onSearchResultChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaController2Stub;

.field final synthetic val$browser:Landroidx/media2/MediaBrowser2;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$itemCount:I

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/media2/MediaController2Stub;Landroidx/media2/MediaBrowser2;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 417
    iput-object p1, p0, Landroidx/media2/MediaController2Stub$4;->this$0:Landroidx/media2/MediaController2Stub;

    iput-object p2, p0, Landroidx/media2/MediaController2Stub$4;->val$browser:Landroidx/media2/MediaBrowser2;

    iput-object p3, p0, Landroidx/media2/MediaController2Stub$4;->val$query:Ljava/lang/String;

    iput p4, p0, Landroidx/media2/MediaController2Stub$4;->val$itemCount:I

    iput-object p5, p0, Landroidx/media2/MediaController2Stub$4;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 420
    iget-object v0, p0, Landroidx/media2/MediaController2Stub$4;->val$browser:Landroidx/media2/MediaBrowser2;

    invoke-virtual {v0}, Landroidx/media2/MediaBrowser2;->getCallback()Landroidx/media2/MediaBrowser2$BrowserCallback;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/MediaController2Stub$4;->val$browser:Landroidx/media2/MediaBrowser2;

    iget-object v2, p0, Landroidx/media2/MediaController2Stub$4;->val$query:Ljava/lang/String;

    iget v3, p0, Landroidx/media2/MediaController2Stub$4;->val$itemCount:I

    iget-object v4, p0, Landroidx/media2/MediaController2Stub$4;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media2/MediaBrowser2$BrowserCallback;->onSearchResultChanged(Landroidx/media2/MediaBrowser2;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method
