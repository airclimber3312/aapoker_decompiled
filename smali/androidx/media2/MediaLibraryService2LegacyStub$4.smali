.class Landroidx/media2/MediaLibraryService2LegacyStub$4;
.super Ljava/lang/Object;
.source "MediaLibraryService2LegacyStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaLibraryService2LegacyStub;->onLoadItem(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

.field final synthetic val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

.field final synthetic val$itemId:Ljava/lang/String;

.field final synthetic val$result:Landroidx/media/MediaBrowserServiceCompat$Result;


# direct methods
.method constructor <init>(Landroidx/media2/MediaLibraryService2LegacyStub;Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media/MediaBrowserServiceCompat$Result;Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Landroidx/media2/MediaLibraryService2LegacyStub$4;->this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

    iput-object p2, p0, Landroidx/media2/MediaLibraryService2LegacyStub$4;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    iput-object p3, p0, Landroidx/media2/MediaLibraryService2LegacyStub$4;->val$result:Landroidx/media/MediaBrowserServiceCompat$Result;

    iput-object p4, p0, Landroidx/media2/MediaLibraryService2LegacyStub$4;->val$itemId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 205
    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub$4;->this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

    invoke-virtual {v0}, Landroidx/media2/MediaLibraryService2LegacyStub;->getConnectedControllersManager()Landroidx/media2/ConnectedControllersManager;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/MediaLibraryService2LegacyStub$4;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroidx/media2/ConnectedControllersManager;->isAllowedCommand(Landroidx/media2/MediaSession2$ControllerInfo;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub$4;->val$result:Landroidx/media/MediaBrowserServiceCompat$Result;

    invoke-virtual {v0, v1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendError(Landroid/os/Bundle;)V

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub$4;->this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

    iget-object v0, v0, Landroidx/media2/MediaLibraryService2LegacyStub;->mLibrarySessionImpl:Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    invoke-interface {v0}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->getCallback()Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    iget-object v2, p0, Landroidx/media2/MediaLibraryService2LegacyStub$4;->this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

    iget-object v2, v2, Landroidx/media2/MediaLibraryService2LegacyStub;->mLibrarySessionImpl:Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    .line 215
    invoke-interface {v2}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->getInstance()Landroidx/media2/MediaLibraryService2$MediaLibrarySession;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/MediaLibraryService2LegacyStub$4;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    iget-object v4, p0, Landroidx/media2/MediaLibraryService2LegacyStub$4;->val$itemId:Ljava/lang/String;

    .line 214
    invoke-virtual {v0, v2, v3, v4}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;->onGetItem(Landroidx/media2/MediaLibraryService2$MediaLibrarySession;Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;)Landroidx/media2/MediaItem2;

    move-result-object v0

    if-nez v0, :cond_1

    .line 217
    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub$4;->val$result:Landroidx/media/MediaBrowserServiceCompat$Result;

    invoke-virtual {v0, v1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v1, p0, Landroidx/media2/MediaLibraryService2LegacyStub$4;->val$result:Landroidx/media/MediaBrowserServiceCompat$Result;

    invoke-static {v0}, Landroidx/media2/MediaUtils2;->convertToMediaItem(Landroidx/media2/MediaItem2;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
