.class Landroidx/media2/MediaSession2ImplBase$15;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2ImplBase;->notifyPlayerUpdatedNotLocked(Landroidx/media2/MediaPlayerConnector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2ImplBase;

.field final synthetic val$bufferedPositionMs:J

.field final synthetic val$bufferingState:I

.field final synthetic val$item:Landroidx/media2/MediaItem2;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/MediaItem2;IJ)V
    .locals 0

    .line 1120
    iput-object p1, p0, Landroidx/media2/MediaSession2ImplBase$15;->this$0:Landroidx/media2/MediaSession2ImplBase;

    iput-object p2, p0, Landroidx/media2/MediaSession2ImplBase$15;->val$item:Landroidx/media2/MediaItem2;

    iput p3, p0, Landroidx/media2/MediaSession2ImplBase$15;->val$bufferingState:I

    iput-wide p4, p0, Landroidx/media2/MediaSession2ImplBase$15;->val$bufferedPositionMs:J

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

    .line 1123
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$15;->val$item:Landroidx/media2/MediaItem2;

    iget v1, p0, Landroidx/media2/MediaSession2ImplBase$15;->val$bufferingState:I

    iget-wide v2, p0, Landroidx/media2/MediaSession2ImplBase$15;->val$bufferedPositionMs:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/media2/MediaSession2$ControllerCb;->onBufferingStateChanged(Landroidx/media2/MediaItem2;IJ)V

    return-void
.end method
