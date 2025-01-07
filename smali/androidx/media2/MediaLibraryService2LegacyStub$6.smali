.class Landroidx/media2/MediaLibraryService2LegacyStub$6;
.super Ljava/lang/Object;
.source "MediaLibraryService2LegacyStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaLibraryService2LegacyStub;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$result:Landroidx/media/MediaBrowserServiceCompat$Result;


# direct methods
.method constructor <init>(Landroidx/media2/MediaLibraryService2LegacyStub;Ljava/lang/String;Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V
    .locals 0

    .line 264
    iput-object p1, p0, Landroidx/media2/MediaLibraryService2LegacyStub$6;->this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

    iput-object p2, p0, Landroidx/media2/MediaLibraryService2LegacyStub$6;->val$action:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media2/MediaLibraryService2LegacyStub$6;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    iput-object p4, p0, Landroidx/media2/MediaLibraryService2LegacyStub$6;->val$result:Landroidx/media/MediaBrowserServiceCompat$Result;

    iput-object p5, p0, Landroidx/media2/MediaLibraryService2LegacyStub$6;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 267
    new-instance v3, Landroidx/media2/SessionCommand2;

    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub$6;->val$action:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v3, v0, v1}, Landroidx/media2/SessionCommand2;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 268
    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub$6;->this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

    invoke-virtual {v0}, Landroidx/media2/MediaLibraryService2LegacyStub;->getConnectedControllersManager()Landroidx/media2/ConnectedControllersManager;

    move-result-object v0

    iget-object v2, p0, Landroidx/media2/MediaLibraryService2LegacyStub$6;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    invoke-virtual {v0, v2, v3}, Landroidx/media2/ConnectedControllersManager;->isAllowedCommand(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommand2;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub$6;->val$result:Landroidx/media/MediaBrowserServiceCompat$Result;

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0, v1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendError(Landroid/os/Bundle;)V

    :cond_0
    return-void

    .line 278
    :cond_1
    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub$6;->val$result:Landroidx/media/MediaBrowserServiceCompat$Result;

    if-nez v0, :cond_2

    move-object v5, v1

    goto :goto_0

    :cond_2
    new-instance v0, Landroidx/media2/MediaLibraryService2LegacyStub$CustomActionResultReceiver;

    iget-object v1, p0, Landroidx/media2/MediaLibraryService2LegacyStub$6;->val$result:Landroidx/media/MediaBrowserServiceCompat$Result;

    invoke-direct {v0, v1}, Landroidx/media2/MediaLibraryService2LegacyStub$CustomActionResultReceiver;-><init>(Landroidx/media/MediaBrowserServiceCompat$Result;)V

    move-object v5, v0

    .line 280
    :goto_0
    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub$6;->this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

    iget-object v0, v0, Landroidx/media2/MediaLibraryService2LegacyStub;->mLibrarySessionImpl:Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    invoke-interface {v0}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->getCallback()Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/MediaLibraryService2LegacyStub$6;->this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

    iget-object v1, v1, Landroidx/media2/MediaLibraryService2LegacyStub;->mLibrarySessionImpl:Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    invoke-interface {v1}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->getInstance()Landroidx/media2/MediaLibraryService2$MediaLibrarySession;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/MediaLibraryService2LegacyStub$6;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    iget-object v4, p0, Landroidx/media2/MediaLibraryService2LegacyStub$6;->val$extras:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;->onCustomCommand(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method
