.class Landroidx/media2/MediaSession2ImplBase$14;
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

.field final synthetic val$currentTimeMs:J

.field final synthetic val$playerState:I

.field final synthetic val$positionMs:J


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2ImplBase;JJI)V
    .locals 0

    .line 1110
    iput-object p1, p0, Landroidx/media2/MediaSession2ImplBase$14;->this$0:Landroidx/media2/MediaSession2ImplBase;

    iput-wide p2, p0, Landroidx/media2/MediaSession2ImplBase$14;->val$currentTimeMs:J

    iput-wide p4, p0, Landroidx/media2/MediaSession2ImplBase$14;->val$positionMs:J

    iput p6, p0, Landroidx/media2/MediaSession2ImplBase$14;->val$playerState:I

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

    .line 1113
    iget-wide v1, p0, Landroidx/media2/MediaSession2ImplBase$14;->val$currentTimeMs:J

    iget-wide v3, p0, Landroidx/media2/MediaSession2ImplBase$14;->val$positionMs:J

    iget v5, p0, Landroidx/media2/MediaSession2ImplBase$14;->val$playerState:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/MediaSession2$ControllerCb;->onPlayerStateChanged(JJI)V

    return-void
.end method
