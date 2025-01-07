.class Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$6$1;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$6;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$6;)V
    .locals 0

    .line 1464
    iput-object p1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$6$1;->this$1:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/MediaSession2$ControllerCb;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1467
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$6$1;->this$1:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$6;

    iget-object v0, v0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$6;->val$session:Landroidx/media2/MediaSession2ImplBase;

    .line 1468
    invoke-virtual {v0}, Landroidx/media2/MediaSession2ImplBase;->getCurrentPosition()J

    move-result-wide v3

    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$6$1;->this$1:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$6;

    iget-wide v5, v0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$6;->val$position:J

    move-object v0, p1

    .line 1467
    invoke-virtual/range {v0 .. v6}, Landroidx/media2/MediaSession2$ControllerCb;->onSeekCompleted(JJJ)V

    return-void
.end method
