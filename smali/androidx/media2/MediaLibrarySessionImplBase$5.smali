.class Landroidx/media2/MediaLibrarySessionImplBase$5;
.super Ljava/lang/Object;
.source "MediaLibrarySessionImplBase.java"

# interfaces
.implements Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaLibrarySessionImplBase;->onGetItemOnExecutor(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaLibrarySessionImplBase;

.field final synthetic val$mediaId:Ljava/lang/String;

.field final synthetic val$result:Landroidx/media2/MediaItem2;


# direct methods
.method constructor <init>(Landroidx/media2/MediaLibrarySessionImplBase;Ljava/lang/String;Landroidx/media2/MediaItem2;)V
    .locals 0

    .line 180
    iput-object p1, p0, Landroidx/media2/MediaLibrarySessionImplBase$5;->this$0:Landroidx/media2/MediaLibrarySessionImplBase;

    iput-object p2, p0, Landroidx/media2/MediaLibrarySessionImplBase$5;->val$mediaId:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media2/MediaLibrarySessionImplBase$5;->val$result:Landroidx/media2/MediaItem2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/MediaSession2$ControllerCb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Landroidx/media2/MediaLibrarySessionImplBase$5;->val$mediaId:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media2/MediaLibrarySessionImplBase$5;->val$result:Landroidx/media2/MediaItem2;

    invoke-virtual {p1, v0, v1}, Landroidx/media2/MediaSession2$ControllerCb;->onGetItemDone(Ljava/lang/String;Landroidx/media2/MediaItem2;)V

    return-void
.end method
