.class Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$5$1;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$5;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$5;)V
    .locals 0

    .line 1443
    iput-object p1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$5$1;->this$1:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$5;

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

    .line 1446
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$5$1;->this$1:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$5;

    iget-object v0, v0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$5;->val$session:Landroidx/media2/MediaSession2ImplBase;

    .line 1447
    invoke-virtual {v0}, Landroidx/media2/MediaSession2ImplBase;->getCurrentPosition()J

    move-result-wide v3

    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$5$1;->this$1:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$5;

    iget v5, v0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$5;->val$speed:F

    move-object v0, p1

    .line 1446
    invoke-virtual/range {v0 .. v5}, Landroidx/media2/MediaSession2$ControllerCb;->onPlaybackSpeedChanged(JJF)V

    return-void
.end method
