.class Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb$1;
.super Ljava/lang/Object;
.source "MediaLibraryService2LegacyStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;->onSearchResultChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;

.field final synthetic val$searchRequests:Ljava/util/List;


# direct methods
.method constructor <init>(Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;Ljava/util/List;)V
    .locals 0

    .line 524
    iput-object p1, p0, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb$1;->this$1:Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;

    iput-object p2, p0, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb$1;->val$searchRequests:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 527
    :goto_0
    iget-object v2, p0, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb$1;->val$searchRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 528
    iget-object v2, p0, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb$1;->val$searchRequests:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/MediaLibraryService2LegacyStub$SearchRequest;

    .line 531
    iget-object v3, v2, Landroidx/media2/MediaLibraryService2LegacyStub$SearchRequest;->mExtras:Landroid/os/Bundle;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 533
    :try_start_0
    iget-object v3, v2, Landroidx/media2/MediaLibraryService2LegacyStub$SearchRequest;->mExtras:Landroid/os/Bundle;

    iget-object v5, p0, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb$1;->this$1:Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;

    iget-object v5, v5, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;->this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

    iget-object v5, v5, Landroidx/media2/MediaLibraryService2LegacyStub;->mLibrarySessionImpl:Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    .line 534
    invoke-interface {v5}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 533
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 535
    iget-object v3, v2, Landroidx/media2/MediaLibraryService2LegacyStub$SearchRequest;->mExtras:Landroid/os/Bundle;

    const-string v5, "android.media.browse.extra.PAGE"

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 536
    iget-object v5, v2, Landroidx/media2/MediaLibraryService2LegacyStub$SearchRequest;->mExtras:Landroid/os/Bundle;

    const-string v7, "android.media.browse.extra.PAGE_SIZE"

    .line 537
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 539
    :catch_0
    iget-object v0, v2, Landroidx/media2/MediaLibraryService2LegacyStub$SearchRequest;->mResult:Landroidx/media/MediaBrowserServiceCompat$Result;

    invoke-virtual {v0, v4}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ltz v3, :cond_2

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    goto :goto_2

    :cond_1
    move v10, v3

    move v11, v5

    goto :goto_3

    :cond_2
    :goto_2
    const v5, 0x7fffffff

    const/4 v10, 0x0

    const v11, 0x7fffffff

    .line 547
    :goto_3
    iget-object v3, p0, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb$1;->this$1:Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;

    iget-object v3, v3, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;->this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

    iget-object v3, v3, Landroidx/media2/MediaLibraryService2LegacyStub;->mLibrarySessionImpl:Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    invoke-interface {v3}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->getCallback()Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v6

    iget-object v3, p0, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb$1;->this$1:Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;

    iget-object v3, v3, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCb;->this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

    iget-object v3, v3, Landroidx/media2/MediaLibraryService2LegacyStub;->mLibrarySessionImpl:Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    .line 548
    invoke-interface {v3}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->getInstance()Landroidx/media2/MediaLibraryService2$MediaLibrarySession;

    move-result-object v7

    iget-object v8, v2, Landroidx/media2/MediaLibraryService2LegacyStub$SearchRequest;->mController:Landroidx/media2/MediaSession2$ControllerInfo;

    iget-object v9, v2, Landroidx/media2/MediaLibraryService2LegacyStub$SearchRequest;->mQuery:Ljava/lang/String;

    iget-object v12, v2, Landroidx/media2/MediaLibraryService2LegacyStub$SearchRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual/range {v6 .. v12}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;->onGetSearchResult(Landroidx/media2/MediaLibraryService2$MediaLibrarySession;Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;IILandroid/os/Bundle;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    .line 552
    iget-object v0, v2, Landroidx/media2/MediaLibraryService2LegacyStub$SearchRequest;->mResult:Landroidx/media/MediaBrowserServiceCompat$Result;

    invoke-virtual {v0, v4}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    return-void

    .line 555
    :cond_3
    iget-object v2, v2, Landroidx/media2/MediaLibraryService2LegacyStub$SearchRequest;->mResult:Landroidx/media/MediaBrowserServiceCompat$Result;

    .line 556
    invoke-static {v3}, Landroidx/media2/MediaUtils2;->convertToMediaItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method
