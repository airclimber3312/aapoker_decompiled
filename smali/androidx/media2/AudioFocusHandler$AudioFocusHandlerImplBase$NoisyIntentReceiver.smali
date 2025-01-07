.class Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioFocusHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoisyIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;


# direct methods
.method constructor <init>(Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;)V
    .locals 0

    .line 438
    iput-object p1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;->this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 447
    iget-object p1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;->this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p1, p1, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 448
    :try_start_0
    iget-object v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;->this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-boolean v0, v0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mHasRegisteredReceiver:Z

    if-nez v0, :cond_0

    .line 449
    monitor-exit p1

    return-void

    .line 451
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string p1, "android.media.AUDIO_BECOMING_NOISY"

    .line 452
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 454
    iget-object p1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;->this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p1, p1, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 455
    :try_start_1
    iget-object p2, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;->this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p2, p2, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioAttributes:Landroidx/media/AudioAttributesCompat;

    if-nez p2, :cond_1

    .line 456
    monitor-exit p1

    return-void

    .line 458
    :cond_1
    iget-object p2, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;->this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p2, p2, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioAttributes:Landroidx/media/AudioAttributesCompat;

    invoke-virtual {p2}, Landroidx/media/AudioAttributesCompat;->getUsage()I

    move-result p2

    .line 459
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/16 p1, 0xe

    if-eq p2, p1, :cond_2

    goto :goto_0

    .line 469
    :cond_2
    iget-object p1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;->this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p1, p1, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mSession:Landroidx/media2/MediaSession2;

    invoke-virtual {p1}, Landroidx/media2/MediaSession2;->getPlayerConnector()Landroidx/media2/MediaPlayerConnector;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 471
    invoke-virtual {p1}, Landroidx/media2/MediaPlayerConnector;->getPlayerVolume()F

    move-result p2

    const v0, 0x3e4ccccd    # 0.2f

    mul-float p2, p2, v0

    invoke-virtual {p1, p2}, Landroidx/media2/MediaPlayerConnector;->setPlayerVolume(F)V

    goto :goto_0

    .line 464
    :cond_3
    iget-object p1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;->this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p1, p1, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mSession:Landroidx/media2/MediaSession2;

    invoke-virtual {p1}, Landroidx/media2/MediaSession2;->pause()V

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 459
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :cond_4
    :goto_0
    return-void

    :catchall_1
    move-exception p2

    .line 451
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p2
.end method
