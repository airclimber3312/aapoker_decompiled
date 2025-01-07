.class Landroidx/media2/MediaLibraryService2LegacyStub$2;
.super Ljava/lang/Object;
.source "MediaLibraryService2LegacyStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaLibraryService2LegacyStub;->onUnsubscribe(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

.field final synthetic val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/media2/MediaLibraryService2LegacyStub;Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Landroidx/media2/MediaLibraryService2LegacyStub$2;->this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

    iput-object p2, p0, Landroidx/media2/MediaLibraryService2LegacyStub$2;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    iput-object p3, p0, Landroidx/media2/MediaLibraryService2LegacyStub$2;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 132
    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub$2;->this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

    invoke-virtual {v0}, Landroidx/media2/MediaLibraryService2LegacyStub;->getConnectedControllersManager()Landroidx/media2/ConnectedControllersManager;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/MediaLibraryService2LegacyStub$2;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroidx/media2/ConnectedControllersManager;->isAllowedCommand(Landroidx/media2/MediaSession2$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub$2;->this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

    iget-object v0, v0, Landroidx/media2/MediaLibraryService2LegacyStub;->mLibrarySessionImpl:Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    invoke-interface {v0}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->getCallback()Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/MediaLibraryService2LegacyStub$2;->this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

    iget-object v1, v1, Landroidx/media2/MediaLibraryService2LegacyStub;->mLibrarySessionImpl:Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    invoke-interface {v1}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->getInstance()Landroidx/media2/MediaLibraryService2$MediaLibrarySession;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/MediaLibraryService2LegacyStub$2;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    iget-object v3, p0, Landroidx/media2/MediaLibraryService2LegacyStub$2;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;->onUnsubscribe(Landroidx/media2/MediaLibraryService2$MediaLibrarySession;Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;)V

    return-void
.end method
