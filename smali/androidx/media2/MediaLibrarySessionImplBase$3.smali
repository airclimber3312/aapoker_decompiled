.class Landroidx/media2/MediaLibrarySessionImplBase$3;
.super Ljava/lang/Object;
.source "MediaLibrarySessionImplBase.java"

# interfaces
.implements Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaLibrarySessionImplBase;->notifySearchResultChanged(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaLibrarySessionImplBase;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$itemCount:I

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/media2/MediaLibrarySessionImplBase;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 143
    iput-object p1, p0, Landroidx/media2/MediaLibrarySessionImplBase$3;->this$0:Landroidx/media2/MediaLibrarySessionImplBase;

    iput-object p2, p0, Landroidx/media2/MediaLibrarySessionImplBase$3;->val$query:Ljava/lang/String;

    iput p3, p0, Landroidx/media2/MediaLibrarySessionImplBase$3;->val$itemCount:I

    iput-object p4, p0, Landroidx/media2/MediaLibrarySessionImplBase$3;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/MediaSession2$ControllerCb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Landroidx/media2/MediaLibrarySessionImplBase$3;->val$query:Ljava/lang/String;

    iget v1, p0, Landroidx/media2/MediaLibrarySessionImplBase$3;->val$itemCount:I

    iget-object v2, p0, Landroidx/media2/MediaLibrarySessionImplBase$3;->val$extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/media2/MediaSession2$ControllerCb;->onSearchResultChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method
