.class Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;
.super Ljava/lang/Object;
.source "AudioFocusHandler.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioFocusListener"
.end annotation


# instance fields
.field private mPlayerDuckingVolume:F

.field private mPlayerVolumeBeforeDucking:F

.field final synthetic this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;


# direct methods
.method constructor <init>(Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;)V
    .locals 0

    .line 487
    iput-object p1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    const/4 v0, -0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, -0x2

    if-eq p1, v0, :cond_5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    .line 497
    :cond_0
    iget-object p1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p1, p1, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mSession:Landroidx/media2/MediaSession2;

    invoke-virtual {p1}, Landroidx/media2/MediaSession2;->getPlayerState()I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 499
    iget-object p1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p1, p1, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 500
    :try_start_0
    iget-object v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-boolean v0, v0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mResumeWhenAudioFocusGain:Z

    if-nez v0, :cond_1

    .line 501
    monitor-exit p1

    goto/16 :goto_0

    .line 503
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    iget-object p1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p1, p1, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mSession:Landroidx/media2/MediaSession2;

    invoke-virtual {p1}, Landroidx/media2/MediaSession2;->play()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 503
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 506
    :cond_2
    iget-object p1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p1, p1, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mSession:Landroidx/media2/MediaSession2;

    invoke-virtual {p1}, Landroidx/media2/MediaSession2;->getPlayerConnector()Landroidx/media2/MediaPlayerConnector;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 509
    invoke-virtual {p1}, Landroidx/media2/MediaPlayerConnector;->getPlayerVolume()F

    move-result v0

    .line 511
    iget-object v1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object v1, v1, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 512
    :try_start_2
    iget v2, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->mPlayerDuckingVolume:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    .line 514
    monitor-exit v1

    goto/16 :goto_0

    .line 516
    :cond_3
    iget v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->mPlayerVolumeBeforeDucking:F

    .line 517
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 518
    invoke-virtual {p1, v0}, Landroidx/media2/MediaPlayerConnector;->setPlayerVolume(F)V

    goto/16 :goto_0

    :catchall_1
    move-exception p1

    .line 517
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 525
    :cond_4
    iget-object p1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p1, p1, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mSession:Landroidx/media2/MediaSession2;

    invoke-virtual {p1}, Landroidx/media2/MediaSession2;->pause()V

    .line 527
    iget-object p1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p1, p1, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 528
    :try_start_4
    iget-object v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    iput-boolean v1, v0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mResumeWhenAudioFocusGain:Z

    .line 529
    monitor-exit p1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 558
    :cond_5
    iget-object p1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p1, p1, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mSession:Landroidx/media2/MediaSession2;

    invoke-virtual {p1}, Landroidx/media2/MediaSession2;->pause()V

    .line 560
    iget-object p1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p1, p1, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 561
    :try_start_5
    iget-object v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    iput-boolean v2, v0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mResumeWhenAudioFocusGain:Z

    .line 562
    monitor-exit p1

    goto :goto_0

    :catchall_3
    move-exception v0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    .line 533
    :cond_6
    iget-object p1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p1, p1, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 534
    :try_start_6
    iget-object v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object v0, v0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioAttributes:Landroidx/media/AudioAttributesCompat;

    if-nez v0, :cond_7

    .line 536
    monitor-exit p1

    goto :goto_0

    .line 538
    :cond_7
    iget-object v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object v0, v0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioAttributes:Landroidx/media/AudioAttributesCompat;

    invoke-virtual {v0}, Landroidx/media/AudioAttributesCompat;->getContentType()I

    move-result v0

    if-ne v0, v2, :cond_8

    const/4 v1, 0x1

    .line 540
    :cond_8
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-eqz v1, :cond_9

    .line 542
    iget-object p1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p1, p1, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mSession:Landroidx/media2/MediaSession2;

    invoke-virtual {p1}, Landroidx/media2/MediaSession2;->pause()V

    goto :goto_0

    .line 544
    :cond_9
    iget-object p1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object p1, p1, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mSession:Landroidx/media2/MediaSession2;

    invoke-virtual {p1}, Landroidx/media2/MediaSession2;->getPlayerConnector()Landroidx/media2/MediaPlayerConnector;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 547
    invoke-virtual {p1}, Landroidx/media2/MediaPlayerConnector;->getPlayerVolume()F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, v0

    .line 549
    iget-object v2, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;

    iget-object v2, v2, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 550
    :try_start_7
    iput v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->mPlayerVolumeBeforeDucking:F

    .line 551
    iput v1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->mPlayerDuckingVolume:F

    .line 552
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 553
    invoke-virtual {p1, v1}, Landroidx/media2/MediaPlayerConnector;->setPlayerVolume(F)V

    goto :goto_0

    :catchall_4
    move-exception p1

    .line 552
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p1

    :cond_a
    :goto_0
    return-void

    :catchall_5
    move-exception v0

    .line 540
    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0
.end method
