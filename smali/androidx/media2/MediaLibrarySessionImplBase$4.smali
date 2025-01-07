.class Landroidx/media2/MediaLibrarySessionImplBase$4;
.super Ljava/lang/Object;
.source "MediaLibrarySessionImplBase.java"

# interfaces
.implements Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaLibrarySessionImplBase;->onGetLibraryRootOnExecutor(Landroidx/media2/MediaSession2$ControllerInfo;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaLibrarySessionImplBase;

.field final synthetic val$root:Landroidx/media2/MediaLibraryService2$LibraryRoot;

.field final synthetic val$rootHints:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroidx/media2/MediaLibrarySessionImplBase;Landroid/os/Bundle;Landroidx/media2/MediaLibraryService2$LibraryRoot;)V
    .locals 0

    .line 161
    iput-object p1, p0, Landroidx/media2/MediaLibrarySessionImplBase$4;->this$0:Landroidx/media2/MediaLibrarySessionImplBase;

    iput-object p2, p0, Landroidx/media2/MediaLibrarySessionImplBase$4;->val$rootHints:Landroid/os/Bundle;

    iput-object p3, p0, Landroidx/media2/MediaLibrarySessionImplBase$4;->val$root:Landroidx/media2/MediaLibraryService2$LibraryRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/MediaSession2$ControllerCb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Landroidx/media2/MediaLibrarySessionImplBase$4;->val$rootHints:Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/media2/MediaLibrarySessionImplBase$4;->val$root:Landroidx/media2/MediaLibraryService2$LibraryRoot;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {v1}, Landroidx/media2/MediaLibraryService2$LibraryRoot;->getRootId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v3, p0, Landroidx/media2/MediaLibrarySessionImplBase$4;->val$root:Landroidx/media2/MediaLibraryService2$LibraryRoot;

    if-nez v3, :cond_1

    goto :goto_1

    .line 166
    :cond_1
    invoke-virtual {v3}, Landroidx/media2/MediaLibraryService2$LibraryRoot;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 164
    :goto_1
    invoke-virtual {p1, v0, v1, v2}, Landroidx/media2/MediaSession2$ControllerCb;->onGetLibraryRootDone(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
