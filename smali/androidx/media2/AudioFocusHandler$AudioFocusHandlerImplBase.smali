.class Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;
.super Ljava/lang/Object;
.source "AudioFocusHandler.java"

# interfaces
.implements Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/AudioFocusHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFocusHandlerImplBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;,
        Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;
    }
.end annotation


# static fields
.field private static final VOLUME_DUCK_FACTOR:F = 0.2f


# instance fields
.field mAudioAttributes:Landroidx/media/AudioAttributesCompat;

.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mBecomingNoisyIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentFocusGainType:I

.field mHasRegisteredReceiver:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field final mLock:Ljava/lang/Object;

.field mResumeWhenAudioFocusGain:Z

.field final mSession:Landroidx/media2/MediaSession2;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media2/MediaSession2;)V
    .locals 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;

    invoke-direct {v0, p0}, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;-><init>(Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;)V

    iput-object v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mBecomingNoisyIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mIntentFilter:Landroid/content/IntentFilter;

    .line 127
    new-instance v0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;

    invoke-direct {v0, p0}, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;-><init>(Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;)V

    iput-object v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    .line 143
    iput-object p1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mContext:Landroid/content/Context;

    .line 144
    iput-object p2, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mSession:Landroidx/media2/MediaSession2;

    const-string p2, "audio"

    .line 148
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private abandonAudioFocusLocked()V
    .locals 2

    .line 330
    iget v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mCurrentFocusGainType:I

    if-nez v0, :cond_0

    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, 0x0

    .line 337
    iput v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mCurrentFocusGainType:I

    .line 338
    iput-boolean v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mResumeWhenAudioFocusGain:Z

    return-void
.end method

.method private static convertAudioAttributesToFocusGain(Landroidx/media/AudioAttributesCompat;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 380
    :cond_0
    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat;->getUsage()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "AudioFocusHandler"

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    .line 433
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unidentified AudioAttribute "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_1
    const/4 p0, 0x4

    return p0

    .line 426
    :pswitch_2
    invoke-virtual {p0}, Landroidx/media/AudioAttributesCompat;->getContentType()I

    move-result p0

    if-ne p0, v5, :cond_1

    return v3

    :cond_1
    :pswitch_3
    return v2

    :pswitch_4
    return v0

    :pswitch_5
    return v3

    :pswitch_6
    return v5

    :pswitch_7
    const-string p0, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default."

    .line 396
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getAudioAttributesNotLocked()Landroidx/media/AudioAttributesCompat;
    .locals 2

    .line 152
    iget-object v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mSession:Landroidx/media2/MediaSession2;

    invoke-virtual {v0}, Landroidx/media2/MediaSession2;->getPlayerConnector()Landroidx/media2/MediaPlayerConnector;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    instance-of v1, v0, Landroidx/media2/BaseRemoteMediaPlayerConnector;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {v0}, Landroidx/media2/MediaPlayerConnector;->getAudioAttributes()Landroidx/media/AudioAttributesCompat;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private onPlayingNotLocked()V
    .locals 7

    const-string v0, ". Use MediaSession2#play() for starting playback."

    const-string v1, "Expected "

    .line 200
    invoke-direct {p0}, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->getAudioAttributesNotLocked()Landroidx/media/AudioAttributesCompat;

    move-result-object v2

    .line 203
    iget-object v3, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 204
    :try_start_0
    invoke-static {v2}, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->convertAudioAttributesToFocusGain(Landroidx/media/AudioAttributesCompat;)I

    move-result v4

    .line 205
    iget-object v5, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioAttributes:Landroidx/media/AudioAttributesCompat;

    invoke-static {v5, v2}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mCurrentFocusGainType:I

    if-ne v4, v5, :cond_1

    if-eqz v2, :cond_0

    .line 210
    invoke-direct {p0}, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->registerReceiverLocked()V

    .line 212
    :cond_0
    monitor-exit v3

    return-void

    :cond_1
    const-string v5, "AudioFocusHandler"

    .line 214
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioAttributes:Landroidx/media/AudioAttributesCompat;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and audioFocusGainType="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mCurrentFocusGainType:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " when playback is started, but actually "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and audioFocusGainType="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mCurrentFocusGainType:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iput-object v2, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioAttributes:Landroidx/media/AudioAttributesCompat;

    .line 220
    iget v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mCurrentFocusGainType:I

    if-eq v0, v4, :cond_4

    if-nez v4, :cond_2

    .line 225
    invoke-direct {p0}, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->abandonAudioFocusLocked()V

    goto :goto_0

    .line 227
    :cond_2
    invoke-direct {p0}, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->requestAudioFocusLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    invoke-direct {p0}, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->registerReceiverLocked()V

    goto :goto_0

    :cond_3
    const-string v0, "AudioFocusHandler"

    const-string v1, "Playback is started without audio focus, and requesting audio focus is failed. Forcefully pausing playback"

    .line 230
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    .line 236
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_5

    .line 239
    iget-object v1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mSession:Landroidx/media2/MediaSession2;

    invoke-virtual {v1}, Landroidx/media2/MediaSession2;->getPlayerConnector()Landroidx/media2/MediaPlayerConnector;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    .line 241
    invoke-virtual {v1, v2}, Landroidx/media2/MediaPlayerConnector;->setPlayerVolume(F)V

    :cond_5
    if-eqz v0, :cond_6

    .line 245
    iget-object v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mSession:Landroidx/media2/MediaSession2;

    invoke-virtual {v0}, Landroidx/media2/MediaSession2;->pause()V

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    .line 236
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private registerReceiverLocked()V
    .locals 3

    .line 343
    iget-boolean v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mHasRegisteredReceiver:Z

    if-eqz v0, :cond_0

    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mBecomingNoisyIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 352
    iput-boolean v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mHasRegisteredReceiver:Z

    return-void
.end method

.method private requestAudioFocusLocked()Z
    .locals 6

    .line 296
    iget-object v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioAttributes:Landroidx/media/AudioAttributesCompat;

    invoke-static {v0}, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->convertAudioAttributesToFocusGain(Landroidx/media/AudioAttributesCompat;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 308
    :cond_0
    iget-object v2, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget-object v4, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioAttributes:Landroidx/media/AudioAttributesCompat;

    .line 309
    invoke-virtual {v4}, Landroidx/media/AudioAttributesCompat;->getVolumeControlStream()I

    move-result v4

    .line 308
    invoke-virtual {v2, v3, v4, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    .line 311
    iput v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mCurrentFocusGainType:I

    goto :goto_0

    .line 313
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "requestAudioFocus("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") failed (return="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") playback wouldn\'t start."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AudioFocusHandler"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iput v3, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mCurrentFocusGainType:I

    .line 321
    :goto_0
    iput-boolean v3, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mResumeWhenAudioFocusGain:Z

    .line 322
    iget v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mCurrentFocusGainType:I

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private unregisterReceiverLocked()V
    .locals 2

    .line 357
    iget-boolean v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mHasRegisteredReceiver:Z

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mBecomingNoisyIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 364
    iput-boolean v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mHasRegisteredReceiver:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 277
    iget-object v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_0
    invoke-direct {p0}, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->unregisterReceiverLocked()V

    .line 279
    invoke-direct {p0}, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->abandonAudioFocusLocked()V

    .line 280
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPauseRequested()V
    .locals 2

    .line 184
    iget-object v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 185
    :try_start_0
    iput-boolean v1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mResumeWhenAudioFocusGain:Z

    .line 186
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPlayRequested()Z
    .locals 3

    .line 159
    invoke-direct {p0}, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->getAudioAttributesNotLocked()Landroidx/media/AudioAttributesCompat;

    move-result-object v0

    .line 161
    iget-object v1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 163
    :try_start_0
    iput-object v2, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioAttributes:Landroidx/media/AudioAttributesCompat;

    .line 164
    invoke-direct {p0}, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->abandonAudioFocusLocked()V

    const/4 v2, 0x1

    goto :goto_0

    .line 169
    :cond_0
    iput-object v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mAudioAttributes:Landroidx/media/AudioAttributesCompat;

    .line 170
    invoke-direct {p0}, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->requestAudioFocusLocked()Z

    move-result v2

    .line 172
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mSession:Landroidx/media2/MediaSession2;

    invoke-virtual {v0}, Landroidx/media2/MediaSession2;->getPlayerConnector()Landroidx/media2/MediaPlayerConnector;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 176
    invoke-virtual {v0, v1}, Landroidx/media2/MediaPlayerConnector;->setPlayerVolume(F)V

    :cond_1
    return v2

    :catchall_0
    move-exception v0

    .line 172
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPlayerStateChanged(I)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->close()V

    goto :goto_0

    .line 265
    :cond_1
    invoke-direct {p0}, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->onPlayingNotLocked()V

    goto :goto_0

    .line 259
    :cond_2
    iget-object p1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 260
    :try_start_0
    invoke-direct {p0}, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->unregisterReceiverLocked()V

    .line 261
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 253
    :cond_3
    iget-object p1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 254
    :try_start_1
    invoke-direct {p0}, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->abandonAudioFocusLocked()V

    .line 255
    monitor-exit p1

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public sendIntent(Landroid/content/Intent;)V
    .locals 2

    .line 285
    iget-object v0, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mBecomingNoisyIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Landroidx/media2/AudioFocusHandler$AudioFocusHandlerImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
