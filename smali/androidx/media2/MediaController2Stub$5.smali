.class Landroidx/media2/MediaController2Stub$5;
.super Ljava/lang/Object;
.source "MediaController2Stub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaController2Stub;->onGetSearchResultDone(Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaController2Stub;

.field final synthetic val$browser:Landroidx/media2/MediaBrowser2;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$itemList:Ljava/util/List;

.field final synthetic val$page:I

.field final synthetic val$pageSize:I

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/media2/MediaController2Stub;Landroidx/media2/MediaBrowser2;Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V
    .locals 0

    .line 444
    iput-object p1, p0, Landroidx/media2/MediaController2Stub$5;->this$0:Landroidx/media2/MediaController2Stub;

    iput-object p2, p0, Landroidx/media2/MediaController2Stub$5;->val$browser:Landroidx/media2/MediaBrowser2;

    iput-object p3, p0, Landroidx/media2/MediaController2Stub$5;->val$query:Ljava/lang/String;

    iput p4, p0, Landroidx/media2/MediaController2Stub$5;->val$page:I

    iput p5, p0, Landroidx/media2/MediaController2Stub$5;->val$pageSize:I

    iput-object p6, p0, Landroidx/media2/MediaController2Stub$5;->val$itemList:Ljava/util/List;

    iput-object p7, p0, Landroidx/media2/MediaController2Stub$5;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 447
    iget-object v0, p0, Landroidx/media2/MediaController2Stub$5;->val$browser:Landroidx/media2/MediaBrowser2;

    invoke-virtual {v0}, Landroidx/media2/MediaBrowser2;->getCallback()Landroidx/media2/MediaBrowser2$BrowserCallback;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/MediaController2Stub$5;->val$browser:Landroidx/media2/MediaBrowser2;

    iget-object v3, p0, Landroidx/media2/MediaController2Stub$5;->val$query:Ljava/lang/String;

    iget v4, p0, Landroidx/media2/MediaController2Stub$5;->val$page:I

    iget v5, p0, Landroidx/media2/MediaController2Stub$5;->val$pageSize:I

    iget-object v0, p0, Landroidx/media2/MediaController2Stub$5;->val$itemList:Ljava/util/List;

    .line 448
    invoke-static {v0}, Landroidx/media2/MediaUtils2;->convertParcelImplListToMediaItem2List(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Landroidx/media2/MediaController2Stub$5;->val$extras:Landroid/os/Bundle;

    .line 447
    invoke-virtual/range {v1 .. v7}, Landroidx/media2/MediaBrowser2$BrowserCallback;->onGetSearchResultDone(Landroidx/media2/MediaBrowser2;Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V

    return-void
.end method
