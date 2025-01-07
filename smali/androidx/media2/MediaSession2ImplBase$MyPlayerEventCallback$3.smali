.class Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$3;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;->onPlayerStateChanged(Landroidx/media2/MediaPlayerConnector;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;

.field final synthetic val$player:Landroidx/media2/MediaPlayerConnector;

.field final synthetic val$session:Landroidx/media2/MediaSession2ImplBase;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;Landroidx/media2/MediaSession2ImplBase;ILandroidx/media2/MediaPlayerConnector;)V
    .locals 0

    .line 1373
    iput-object p1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$3;->this$0:Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;

    iput-object p2, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$3;->val$session:Landroidx/media2/MediaSession2ImplBase;

    iput p3, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$3;->val$state:I

    iput-object p4, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$3;->val$player:Landroidx/media2/MediaPlayerConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1378
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$3;->val$session:Landroidx/media2/MediaSession2ImplBase;

    iget-object v0, v0, Landroidx/media2/MediaSession2ImplBase;->mAudioFocusHandler:Landroidx/media2/AudioFocusHandler;

    iget v1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$3;->val$state:I

    invoke-virtual {v0, v1}, Landroidx/media2/AudioFocusHandler;->onPlayerStateChanged(I)V

    .line 1379
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$3;->val$session:Landroidx/media2/MediaSession2ImplBase;

    invoke-virtual {v0}, Landroidx/media2/MediaSession2ImplBase;->getCallback()Landroidx/media2/MediaSession2$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$3;->val$session:Landroidx/media2/MediaSession2ImplBase;

    .line 1380
    invoke-virtual {v1}, Landroidx/media2/MediaSession2ImplBase;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$3;->val$player:Landroidx/media2/MediaPlayerConnector;

    iget v3, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$3;->val$state:I

    .line 1379
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/MediaSession2$SessionCallback;->onPlayerStateChanged(Landroidx/media2/MediaSession2;Landroidx/media2/MediaPlayerConnector;I)V

    .line 1381
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$3;->val$session:Landroidx/media2/MediaSession2ImplBase;

    new-instance v1, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$3$1;

    invoke-direct {v1, p0}, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$3$1;-><init>(Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$3;)V

    invoke-virtual {v0, v1}, Landroidx/media2/MediaSession2ImplBase;->notifyToAllControllers(Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    .line 1392
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$3;->val$session:Landroidx/media2/MediaSession2ImplBase;

    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$3;->val$player:Landroidx/media2/MediaPlayerConnector;

    invoke-virtual {v0, v1}, Landroidx/media2/MediaSession2ImplBase;->createPlaybackInfo(Landroidx/media2/MediaPlayerConnector;)Landroidx/media2/MediaController2$PlaybackInfo;

    move-result-object v0

    .line 1394
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$3;->val$session:Landroidx/media2/MediaSession2ImplBase;

    iget-object v1, v1, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1395
    :try_start_0
    iget-object v2, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$3;->val$session:Landroidx/media2/MediaSession2ImplBase;

    iget-object v2, v2, Landroidx/media2/MediaSession2ImplBase;->mPlaybackInfo:Landroidx/media2/MediaController2$PlaybackInfo;

    .line 1396
    iget-object v3, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$3;->val$session:Landroidx/media2/MediaSession2ImplBase;

    iput-object v0, v3, Landroidx/media2/MediaSession2ImplBase;->mPlaybackInfo:Landroidx/media2/MediaController2$PlaybackInfo;

    .line 1397
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1399
    invoke-virtual {v0}, Landroidx/media2/MediaController2$PlaybackInfo;->getAudioAttributes()Landroidx/media/AudioAttributesCompat;

    move-result-object v1

    invoke-virtual {v2}, Landroidx/media2/MediaController2$PlaybackInfo;->getAudioAttributes()Landroidx/media/AudioAttributesCompat;

    move-result-object v2

    .line 1398
    invoke-static {v1, v2}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1400
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback$3;->val$session:Landroidx/media2/MediaSession2ImplBase;

    invoke-virtual {v1, v0}, Landroidx/media2/MediaSession2ImplBase;->notifyPlaybackInfoChangedNotLocked(Landroidx/media2/MediaController2$PlaybackInfo;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 1397
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
