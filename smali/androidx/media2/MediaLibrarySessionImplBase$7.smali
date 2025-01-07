.class Landroidx/media2/MediaLibrarySessionImplBase$7;
.super Ljava/lang/Object;
.source "MediaLibrarySessionImplBase.java"

# interfaces
.implements Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaLibrarySessionImplBase;->onGetSearchResultOnExecutor(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;IILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaLibrarySessionImplBase;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$page:I

.field final synthetic val$pageSize:I

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Landroidx/media2/MediaLibrarySessionImplBase;Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V
    .locals 0

    .line 244
    iput-object p1, p0, Landroidx/media2/MediaLibrarySessionImplBase$7;->this$0:Landroidx/media2/MediaLibrarySessionImplBase;

    iput-object p2, p0, Landroidx/media2/MediaLibrarySessionImplBase$7;->val$query:Ljava/lang/String;

    iput p3, p0, Landroidx/media2/MediaLibrarySessionImplBase$7;->val$page:I

    iput p4, p0, Landroidx/media2/MediaLibrarySessionImplBase$7;->val$pageSize:I

    iput-object p5, p0, Landroidx/media2/MediaLibrarySessionImplBase$7;->val$result:Ljava/util/List;

    iput-object p6, p0, Landroidx/media2/MediaLibrarySessionImplBase$7;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/MediaSession2$ControllerCb;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    iget-object v1, p0, Landroidx/media2/MediaLibrarySessionImplBase$7;->val$query:Ljava/lang/String;

    iget v2, p0, Landroidx/media2/MediaLibrarySessionImplBase$7;->val$page:I

    iget v3, p0, Landroidx/media2/MediaLibrarySessionImplBase$7;->val$pageSize:I

    iget-object v4, p0, Landroidx/media2/MediaLibrarySessionImplBase$7;->val$result:Ljava/util/List;

    iget-object v5, p0, Landroidx/media2/MediaLibrarySessionImplBase$7;->val$extras:Landroid/os/Bundle;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/MediaSession2$ControllerCb;->onGetSearchResultDone(Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V

    return-void
.end method
