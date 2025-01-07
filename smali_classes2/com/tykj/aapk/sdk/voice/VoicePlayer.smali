.class public Lcom/tykj/aapk/sdk/voice/VoicePlayer;
.super Ljava/lang/Object;
.source "VoicePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "GameIMVoicePlayer"

.field private static sInstance:Lcom/tykj/aapk/sdk/voice/VoicePlayer;


# instance fields
.field mediaPlayer:Landroid/media/MediaPlayer;

.field volume:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    iput v0, p0, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->volume:F

    return-void
.end method

.method public static getInstance()Lcom/tykj/aapk/sdk/voice/VoicePlayer;
    .locals 2

    .line 17
    sget-object v0, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->sInstance:Lcom/tykj/aapk/sdk/voice/VoicePlayer;

    if-nez v0, :cond_1

    .line 18
    const-class v0, Lcom/tykj/aapk/sdk/voice/VoiceRecorder;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->sInstance:Lcom/tykj/aapk/sdk/voice/VoicePlayer;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/tykj/aapk/sdk/voice/VoicePlayer;

    invoke-direct {v1}, Lcom/tykj/aapk/sdk/voice/VoicePlayer;-><init>()V

    sput-object v1, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->sInstance:Lcom/tykj/aapk/sdk/voice/VoicePlayer;

    .line 22
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->sInstance:Lcom/tykj/aapk/sdk/voice/VoicePlayer;

    return-object v0
.end method

.method private stopMediaPlayerSafety()V
    .locals 1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public isPlaying()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "GameIMVoicePlayer"

    const-string v0, "onCompletion ------"

    .line 136
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const-string p1, "GameIMVoicePlayer"

    const-string p2, "onError ------"

    .line 142
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0}, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->stopMediaPlayerSafety()V

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "GameIMVoicePlayer"

    const-string v0, "onPrepared ------"

    .line 130
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public pause()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_1
    return-void
.end method

.method public restart()Z
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 75
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public setVolume(F)V
    .locals 3

    .line 29
    iput p1, p0, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->volume:F

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 30
    :goto_0
    iput v0, p0, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->volume:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    :cond_1
    iput v0, p0, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->volume:F

    .line 32
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_2
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "play voice : path = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameIMVoicePlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 40
    invoke-direct {p0}, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->stopMediaPlayerSafety()V

    .line 42
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 43
    iget v2, p0, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->volume:F

    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 44
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 45
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 46
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    iget-object p1, p0, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error VoicePlayer::start e:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-direct {p0}, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->stopMediaPlayerSafety()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/tykj/aapk/sdk/voice/VoicePlayer;->stopMediaPlayerSafety()V

    return-void
.end method
