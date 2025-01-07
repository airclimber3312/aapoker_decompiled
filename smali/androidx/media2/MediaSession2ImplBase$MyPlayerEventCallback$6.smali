.class Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$6;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;->onSeekCompleted(Landroidx/media2/MediaPlayerConnector;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;

.field final synthetic val$mpb:Landroidx/media2/MediaPlayerConnector;

.field final synthetic val$position:J

.field final synthetic val$session:Landroidx/media2/MediaSession2ImplBase;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/MediaPlayerConnector;J)V
    .locals 0

    .line 1460
    iput-object p1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$6;->this$0:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;

    iput-object p2, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$6;->val$session:Landroidx/media2/MediaSession2ImplBase;

    iput-object p3, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$6;->val$mpb:Landroidx/media2/MediaPlayerConnector;

    iput-wide p4, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$6;->val$position:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1463
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$6;->val$session:Landroidx/media2/MediaSession2ImplBase;

    invoke-virtual {v0}, Landroidx/media2/MediaSession2ImplBase;->getCallback()Landroidx/media2/MediaSession2$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$6;->val$session:Landroidx/media2/MediaSession2ImplBase;

    invoke-virtual {v1}, Landroidx/media2/MediaSession2ImplBase;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$6;->val$mpb:Landroidx/media2/MediaPlayerConnector;

    iget-wide v3, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$6;->val$position:J

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media2/MediaSession2$SessionCallback;->onSeekCompleted(Landroidx/media2/MediaSession2;Landroidx/media2/MediaPlayerConnector;J)V

    .line 1464
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$6;->val$session:Landroidx/media2/MediaSession2ImplBase;

    new-instance v1, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$6$1;

    invoke-direct {v1, p0}, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$6$1;-><init>(Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$6;)V

    invoke-virtual {v0, v1}, Landroidx/media2/MediaSession2ImplBase;->notifyToAllControllers(Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    return-void
.end method
