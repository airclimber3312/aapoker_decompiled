.class Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4$1;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4;

.field final synthetic val$item:Landroidx/media2/MediaItem2;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4;Landroidx/media2/MediaItem2;)V
    .locals 0

    .line 1422
    iput-object p1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4$1;->this$1:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4;

    iput-object p2, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4$1;->val$item:Landroidx/media2/MediaItem2;

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

    .line 1425
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4$1;->val$item:Landroidx/media2/MediaItem2;

    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4$1;->this$1:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4;

    iget v1, v1, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4;->val$state:I

    iget-object v2, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4$1;->this$1:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4;

    iget-object v2, v2, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$4;->val$mpb:Landroidx/media2/MediaPlayerConnector;

    .line 1426
    invoke-virtual {v2}, Landroidx/media2/MediaPlayerConnector;->getBufferedPosition()J

    move-result-wide v2

    .line 1425
    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/media2/MediaSession2$ControllerCb;->onBufferingStateChanged(Landroidx/media2/MediaItem2;IJ)V

    return-void
.end method
