.class Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;
.super Landroidx/media2/MediaPlayerConnector;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaPlayer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayerConnectorImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaPlayer2Impl;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl;)V
    .locals 0

    .line 2593
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-direct {p0}, Landroidx/media2/MediaPlayerConnector;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2736
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl;->close()V

    return-void
.end method

.method public getAudioAttributes()Landroidx/media/AudioAttributesCompat;
    .locals 1

    .line 2670
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl;->getAudioAttributes()Landroidx/media/AudioAttributesCompat;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 2647
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl;->getBufferedPosition()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getBufferingState()I
    .locals 1

    .line 2660
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl;->getBufferingState()I

    move-result v0

    return v0
.end method

.method public getCurrentDataSource()Landroidx/media2/DataSourceDesc2;
    .locals 1

    .line 2690
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl;->getCurrentDataSource()Landroidx/media2/DataSourceDesc2;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 2629
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl;->getCurrentPosition()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 2638
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl;->getDuration()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getPlaybackSpeed()F
    .locals 1

    .line 2708
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl;->getPlaybackParams()Landroidx/media2/PlaybackParams2;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/PlaybackParams2;->getSpeed()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2710
    :catch_0
    invoke-super {p0}, Landroidx/media2/MediaPlayerConnector;->getPlaybackSpeed()F

    move-result v0

    return v0
.end method

.method public getPlayerState()I
    .locals 1

    .line 2655
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl;->getPlayerState()I

    move-result v0

    return v0
.end method

.method public getPlayerVolume()F
    .locals 1

    .line 2721
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl;->getPlayerVolume()F

    move-result v0

    return v0
.end method

.method public loopCurrent(Z)V
    .locals 1

    .line 2695
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0, p1}, Landroidx/media2/MediaPlayer2Impl;->loopCurrent(Z)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 2608
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl;->pause()V

    return-void
.end method

.method public play()V
    .locals 1

    .line 2598
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl;->play()V

    return-void
.end method

.method public prepare()V
    .locals 1

    .line 2603
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl;->prepare()V

    return-void
.end method

.method public registerPlayerEventCallback(Ljava/util/concurrent/Executor;Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;)V
    .locals 1

    .line 2726
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/MediaPlayer2Impl;->registerPlayerEventCallback(Ljava/util/concurrent/Executor;Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 2613
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl;->reset()V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 2623
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/MediaPlayer2Impl;->seekTo(J)V

    return-void
.end method

.method public setAudioAttributes(Landroidx/media/AudioAttributesCompat;)V
    .locals 1

    .line 2665
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0, p1}, Landroidx/media2/MediaPlayer2Impl;->setAudioAttributes(Landroidx/media/AudioAttributesCompat;)V

    return-void
.end method

.method public setDataSource(Landroidx/media2/DataSourceDesc2;)V
    .locals 1

    .line 2675
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0, p1}, Landroidx/media2/MediaPlayer2Impl;->setDataSource(Landroidx/media2/DataSourceDesc2;)V

    return-void
.end method

.method public setNextDataSource(Landroidx/media2/DataSourceDesc2;)V
    .locals 1

    .line 2680
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0, p1}, Landroidx/media2/MediaPlayer2Impl;->setNextDataSource(Landroidx/media2/DataSourceDesc2;)V

    return-void
.end method

.method public setNextDataSources(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/DataSourceDesc2;",
            ">;)V"
        }
    .end annotation

    .line 2685
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0, p1}, Landroidx/media2/MediaPlayer2Impl;->setNextDataSources(Ljava/util/List;)V

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 3

    .line 2700
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;->this$0:Landroidx/media2/MediaPlayer2Impl;

    new-instance v1, Landroidx/media2/PlaybackParams2$Builder;

    .line 2702
    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl;->getPlaybackParams()Landroidx/media2/PlaybackParams2;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media2/PlaybackParams2;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media2/PlaybackParams2$Builder;-><init>(Landroid/media/PlaybackParams;)V

    invoke-virtual {v1, p1}, Landroidx/media2/PlaybackParams2$Builder;->setSpeed(F)Landroidx/media2/PlaybackParams2$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media2/PlaybackParams2$Builder;->build()Landroidx/media2/PlaybackParams2;

    move-result-object p1

    .line 2700
    invoke-virtual {v0, p1}, Landroidx/media2/MediaPlayer2Impl;->setPlaybackParams(Landroidx/media2/PlaybackParams2;)V

    return-void
.end method

.method public setPlayerVolume(F)V
    .locals 1

    .line 2716
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0, p1}, Landroidx/media2/MediaPlayer2Impl;->setPlayerVolume(F)V

    return-void
.end method

.method public skipToNext()V
    .locals 1

    .line 2618
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl;->skipToNext()V

    return-void
.end method

.method public unregisterPlayerEventCallback(Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;)V
    .locals 1

    .line 2731
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-virtual {v0, p1}, Landroidx/media2/MediaPlayer2Impl;->unregisterPlayerEventCallback(Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;)V

    return-void
.end method
