.class Landroidx/media2/MediaSession2Stub$34;
.super Ljava/lang/Object;
.source "MediaSession2Stub.java"

# interfaces
.implements Landroidx/media2/MediaSession2Stub$SessionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2Stub;->getLibraryRoot(Landroidx/media2/IMediaController2;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2Stub;

.field final synthetic val$rootHints:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2Stub;Landroid/os/Bundle;)V
    .locals 0

    .line 745
    iput-object p1, p0, Landroidx/media2/MediaSession2Stub$34;->this$0:Landroidx/media2/MediaSession2Stub;

    iput-object p2, p0, Landroidx/media2/MediaSession2Stub$34;->val$rootHints:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/MediaSession2$ControllerInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 748
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$34;->this$0:Landroidx/media2/MediaSession2Stub;

    invoke-virtual {v0}, Landroidx/media2/MediaSession2Stub;->getLibrarySession()Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/MediaSession2Stub$34;->val$rootHints:Landroid/os/Bundle;

    invoke-interface {v0, p1, v1}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->onGetLibraryRootOnExecutor(Landroidx/media2/MediaSession2$ControllerInfo;Landroid/os/Bundle;)V

    return-void
.end method
