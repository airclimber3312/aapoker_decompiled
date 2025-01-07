.class public Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;
.super Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;
.source "AVProVideoMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field private m_MediaExtractor:Landroid/media/MediaExtractor;

.field private m_MediaPlayer:Landroid/media/MediaPlayer;

.field private m_aTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;


# direct methods
.method public constructor <init>(IZLjava/util/Random;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;-><init>(IZLjava/util/Random;)V

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_aTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    return-void
.end method

.method private static GetJsonAsMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 135
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 137
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 140
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 141
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 148
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t parse json:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private ResetPlaybackFrameRate()V
    .locals 2

    const/4 v0, 0x0

    .line 492
    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_DisplayRate_FrameRate:F

    const-wide/16 v0, 0x0

    .line 493
    iput-wide v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_DisplayRate_NumberFrames:J

    .line 495
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_DisplayRate_LastSystemTimeMS:J

    return-void
.end method

.method private UpdateGetDuration()V
    .locals 2

    .line 706
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_DurationMs:J

    .line 710
    :cond_0
    iget-wide v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_DurationMs:J

    return-void
.end method

.method private setMediaPlayerDataSourceFromZip(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 658
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 666
    :try_start_0
    new-instance v1, Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    invoke-direct {v1, p1}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;-><init>(Ljava/lang/String;)V

    .line 667
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 668
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 670
    invoke-static {v1, p2}, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->zipFindFile(Lcom/android/vending/expansion/zipfile/ZipResourceFile;Ljava/lang/String;)Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    move-result-object p2

    .line 671
    iget-object v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    iget-wide v4, p2, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mOffset:J

    add-long v5, v4, p3

    iget-wide v7, p2, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mUncompressedLength:J

    sub-long/2addr v7, p3

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 675
    iget-object v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 679
    :try_start_2
    iget-wide v4, p2, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mOffset:J

    add-long v5, v4, p3

    iget-wide v7, p2, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mUncompressedLength:J

    sub-long/2addr v7, p3

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 683
    :catch_0
    :try_start_3
    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->release()V

    .line 684
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 693
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_2
    throw p1
.end method

.method private static zipFindFile(Lcom/android/vending/expansion/zipfile/ZipResourceFile;Ljava/lang/String;)Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    .locals 5

    .line 645
    invoke-virtual {p0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->getAllEntries()[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 647
    iget-object v4, v3, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 652
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "File \"%s\"not found in zip"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected BindSurfaceToPlayer()V
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 637
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 638
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 639
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    return-void
.end method

.method public CanPlay()Z
    .locals 2

    .line 124
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected CloseVideoOnPlayer()V
    .locals 2

    .line 59
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->_pause()V

    .line 64
    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->_stop()V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 76
    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;

    .line 80
    :cond_1
    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_aTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    .line 82
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    :cond_2
    return-void
.end method

.method protected DeinitializeVideoPlayer()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 94
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 95
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 96
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 97
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 98
    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public GetBufferingProgressPercent()F
    .locals 1

    .line 964
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_fBufferingProgressPercent:F

    return v0
.end method

.method public GetCurrentAbsoluteTimestamp()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public GetCurrentTimeMs()J
    .locals 7

    .line 426
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 428
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    const/4 v3, 0x3

    if-lt v0, v3, :cond_1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    const/16 v3, 0x8

    if-gt v0, v3, :cond_1

    .line 430
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v3, v0

    .line 433
    iget-wide v5, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_DurationMs:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    iget-wide v5, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_DurationMs:J

    cmp-long v0, v5, v1

    if-lez v0, :cond_0

    .line 435
    iget-wide v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_DurationMs:J

    goto :goto_0

    :cond_0
    move-wide v1, v3

    :cond_1
    :goto_0
    return-wide v1
.end method

.method public GetSeekableTimeRange()[F
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 722
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method protected InitialisePlayer(ZIZ)Z
    .locals 0

    .line 52
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_aTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    const/4 p1, 0x1

    return p1
.end method

.method public IsFinished()Z
    .locals 2

    .line 119
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public IsPaused()Z
    .locals 2

    .line 109
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public IsPlaying()Z
    .locals 2

    .line 104
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public IsSeeking()Z
    .locals 2

    .line 114
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected OpenVideoFromFileInternal(Ljava/lang/String;JLjava/lang/String;I)Z
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v8, p2

    const-string v10, "file:/"

    const/4 v11, 0x0

    .line 174
    iput-object v11, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_aTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    .line 178
    iget-object v2, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    const/4 v12, 0x0

    if-eqz v2, :cond_a

    const/4 v13, 0x1

    .line 185
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://"

    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "https://"

    .line 187
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "rtmp://"

    .line 188
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "rtsp://"

    .line 189
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 215
    :cond_0
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x6

    if-eqz v2, :cond_1

    .line 217
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    :cond_1
    move-object v14, v0

    :try_start_1
    const-string v0, ".obb!/"

    .line 223
    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    add-int/2addr v0, v3

    add-int/lit8 v2, v0, -0x2

    const/16 v3, 0xb

    .line 226
    invoke-virtual {v14, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-direct {v1, v2, v0, v8, v9}, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->setMediaPlayerDataSourceFromZip(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_6

    .line 237
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Not an obb file"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    const-string v0, "/assets/"

    .line 248
    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    iget-object v2, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_Context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 253
    iget-object v2, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    add-long/2addr v4, v8

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    sub-long/2addr v6, v8

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 258
    new-instance v15, Landroid/media/MediaExtractor;

    invoke-direct {v15}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v15, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 261
    :try_start_3
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v16

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    add-long v17, v2, v8

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v2

    sub-long v19, v2, v8

    invoke-virtual/range {v15 .. v20}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_6

    .line 265
    :catch_1
    :try_start_4
    iget-object v0, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 266
    iput-object v11, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_6

    :catch_2
    nop

    const-wide/16 v2, 0x0

    cmp-long v0, v8, v2

    if-nez v0, :cond_4

    .line 283
    :try_start_5
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 284
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 286
    iget-object v3, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 291
    new-instance v3, Landroid/media/MediaExtractor;

    invoke-direct {v3}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v3, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 294
    :try_start_7
    invoke-virtual {v3, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 298
    :catch_3
    :try_start_8
    iget-object v0, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 299
    iput-object v11, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 307
    :goto_0
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v11

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_3
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 317
    :cond_4
    :try_start_a
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 318
    :try_start_b
    invoke-virtual {v15}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 320
    iget-object v2, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v15}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    sub-long v6, v3, v8

    move-object v3, v0

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 325
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v2, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 328
    :try_start_c
    invoke-virtual {v15}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    sub-long v6, v3, v8

    move-object v3, v0

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_2

    .line 332
    :catch_4
    :try_start_d
    iget-object v0, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 333
    iput-object v11, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 341
    :goto_2
    :try_start_e
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v15, v11

    :goto_3
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    :cond_5
    throw v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .line 351
    :catch_5
    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 352
    iget-object v2, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_Context:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 357
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v2, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 360
    :try_start_10
    iget-object v3, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_Context:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v11}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    goto :goto_6

    .line 363
    :catch_6
    :try_start_11
    iget-object v0, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 364
    iput-object v11, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;

    goto :goto_6

    :cond_6
    :goto_4
    if-eqz p4, :cond_7

    .line 194
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 196
    invoke-static/range {p4 .. p4}, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->GetJsonAsMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 197
    iget-object v3, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_Context:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v4, v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_5

    .line 204
    :cond_7
    iget-object v2, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 209
    :goto_5
    iput-boolean v13, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_bIsStream:Z
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    :cond_8
    :goto_6
    const/4 v12, 0x1

    goto :goto_7

    :catch_7
    move-exception v0

    .line 374
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :goto_7
    if-eqz v12, :cond_9

    .line 380
    iget-object v0, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 381
    iget-object v0, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 382
    iget-object v0, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 383
    iget-object v0, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 384
    iget-object v0, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 385
    iget-object v0, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 386
    iget-object v0, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    iget-boolean v2, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_bLooping:Z

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    const/4 v0, 0x2

    .line 392
    iput v0, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    .line 393
    iput-boolean v13, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_bIsBuffering:Z

    .line 395
    iget-object v0, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    goto :goto_8

    :cond_9
    const/16 v0, 0x64

    .line 399
    iput v0, v1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_iLastError:I

    :cond_a
    :goto_8
    return v12
.end method

.method public SetAudioTrack(I)V
    .locals 7

    .line 464
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_iNumberAudioTracks:I

    if-ge p1, v0, :cond_2

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_iCurrentAudioTrackIndex:I

    if-eq p1, v0, :cond_2

    .line 470
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_aTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v5, v0, v2

    if-eqz v5, :cond_1

    .line 472
    invoke-virtual {v5}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    if-ne v3, p1, :cond_0

    .line 476
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->selectTrack(I)V

    .line 478
    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_iCurrentAudioTrackIndex:I

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public SetFocusEnabled(Z)V
    .locals 0

    return-void
.end method

.method public SetFocusProps(FF)V
    .locals 0

    return-void
.end method

.method public SetFocusRotation(FFFF)V
    .locals 0

    return-void
.end method

.method public SetHeadRotation(FFFF)V
    .locals 0

    return-void
.end method

.method public SetLooping(Z)V
    .locals 1

    .line 410
    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_bLooping:Z

    .line 412
    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->UpdateLooping()V

    return-void

    .line 418
    :cond_0
    sget p1, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->VideoCommand_SetLooping:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->AddVideoCommandInt(II)V

    return-void
.end method

.method public SetPlaybackRate(F)V
    .locals 3

    .line 445
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_1

    .line 447
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 449
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    const p1, 0x3c23d70a    # 0.01f

    .line 453
    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 454
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 455
    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_fPlaybackRate:F

    :cond_1
    return-void
.end method

.method public SetPositionTrackingEnabled(Z)V
    .locals 0

    return-void
.end method

.method protected UpdateAudioVolumes()V
    .locals 4

    .line 587
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_AudioMuted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 601
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_AudioPan:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 602
    iget v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_AudioPan:F

    add-float/2addr v3, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 604
    iget v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_AudioVolume:F

    mul-float v3, v3, v0

    .line 605
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_AudioVolume:F

    mul-float v1, v1, v0

    cmpl-float v0, v3, v2

    if-lez v0, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_0
    cmpl-float v0, v1, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 617
    :goto_1
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 620
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_3
    return-void
.end method

.method protected UpdateLooping()V
    .locals 2

    .line 626
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 628
    iget-boolean v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_bLooping:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    :cond_0
    return-void
.end method

.method protected UpdateVideoMetadata()V
    .locals 0

    return-void
.end method

.method protected _pause()V
    .locals 2

    .line 516
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 520
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 525
    :cond_0
    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->ResetPlaybackFrameRate()V

    const/4 v0, 0x7

    .line 527
    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    :cond_1
    return-void
.end method

.method protected _play()V
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 507
    :cond_0
    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->ResetPlaybackFrameRate()V

    const/4 v0, 0x5

    .line 509
    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    return-void
.end method

.method protected _seek(I)V
    .locals 3

    .line 552
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 555
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 557
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    int-to-long v1, p1

    const/4 p1, 0x3

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/MediaPlayer;->seekTo(JI)V

    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_1
    return-void
.end method

.method protected _seekFast(I)V
    .locals 3

    .line 569
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 571
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 573
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    int-to-long v1, p1

    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/MediaPlayer;->seekTo(JI)V

    return-void

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_1
    return-void
.end method

.method protected _stop()V
    .locals 2

    .line 535
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 538
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 543
    :cond_0
    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->ResetPlaybackFrameRate()V

    .line 545
    iput v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    :cond_1
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    int-to-float p1, p2

    .line 971
    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_fBufferingProgressPercent:F

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 952
    iget-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_bLooping:Z

    if-nez p1, :cond_0

    .line 954
    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    const/16 v0, 0x8

    if-ge p1, v0, :cond_0

    .line 956
    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 909
    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    const/4 p3, 0x4

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-eq p1, p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0xc8

    .line 926
    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_iLastError:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x64

    .line 918
    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_iLastError:I

    :goto_0
    return p2
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/16 p1, 0x2bd

    const/4 p3, 0x0

    if-eq p2, p1, :cond_1

    const/16 p1, 0x2be

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 991
    :cond_0
    iput-boolean p3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_bIsBuffering:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 984
    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_bIsBuffering:Z

    :goto_0
    return p3
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 11

    const/4 p1, 0x3

    .line 735
    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    const/4 v0, 0x0

    .line 738
    iput-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_bIsBuffering:Z

    .line 741
    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->UpdateGetDuration()V

    .line 744
    iget-boolean v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_bIsStream:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 746
    iput v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_iNumberAudioTracks:I

    .line 747
    iput-boolean v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_bSourceHasAudio:Z

    .line 752
    :cond_0
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x4

    if-eqz v1, :cond_a

    .line 759
    :try_start_0
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_aTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    if-eqz v1, :cond_a

    .line 762
    array-length v4, v1

    .line 764
    array-length v1, v1

    if-lez v1, :cond_a

    .line 766
    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_iNumberAudioTracks:I

    .line 768
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_aTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v4, :cond_8

    aget-object v7, v1, v5

    if-eqz v7, :cond_7

    .line 772
    invoke-virtual {v7}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v8

    if-eq v8, v2, :cond_4

    const/4 v7, 0x2

    if-eq v8, v7, :cond_3

    if-eq v8, p1, :cond_2

    if-eq v8, v3, :cond_1

    goto :goto_1

    .line 815
    :cond_1
    iput-boolean v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_bSourceHasSubtitles:Z

    goto :goto_1

    .line 811
    :cond_2
    iput-boolean v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_bSourceHasTimedText:Z

    goto :goto_1

    .line 819
    :cond_3
    iget v7, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_iNumberAudioTracks:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_iNumberAudioTracks:I

    goto :goto_1

    .line 776
    :cond_4
    iput-boolean v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_bSourceHasVideo:Z

    .line 779
    iget v8, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_fSourceVideoFrameRate:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "frame-rate"

    const/4 v10, 0x0

    cmpl-float v8, v8, v10

    if-nez v8, :cond_5

    .line 783
    :try_start_1
    invoke-virtual {v7}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 786
    invoke-virtual {v7, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_fSourceVideoFrameRate:F

    .line 793
    :cond_5
    iget-object v7, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v7, :cond_7

    .line 795
    iget v7, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_fSourceVideoFrameRate:F

    cmpl-float v7, v7, v10

    if-nez v7, :cond_6

    .line 797
    iget-object v7, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v7

    .line 799
    invoke-virtual {v7, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_fSourceVideoFrameRate:F

    .line 800
    iget v7, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_fSourceVideoFrameRate:F

    .line 803
    :cond_6
    iget-object v7, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->release()V

    const/4 v7, 0x0

    .line 804
    iput-object v7, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;

    :cond_7
    :goto_1
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 826
    :cond_8
    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_iNumberAudioTracks:I

    if-lez p1, :cond_9

    .line 828
    invoke-virtual {p0, v0}, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->SetAudioTrack(I)V

    .line 829
    iput-boolean v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_bSourceHasAudio:Z

    .line 831
    :cond_9
    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_iNumberAudioTracks:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 844
    :cond_a
    :goto_2
    iget-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_bIsStream:Z

    if-nez p1, :cond_b

    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_iNumberAudioTracks:I

    if-gtz p1, :cond_b

    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_bVideo_RenderSurfaceCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 846
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_bVideo_DestroyRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_bVideo_CreateRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_c

    .line 849
    :cond_b
    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_bVideo_AcceptCommands:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 850
    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    const/4 v1, 0x5

    if-eq p1, v1, :cond_c

    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    if-eq p1, v3, :cond_c

    const/4 p1, 0x6

    .line 853
    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_VideoState:I

    .line 861
    :cond_c
    iget-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_bIsStream:Z

    if-eqz p1, :cond_d

    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_Width:I

    if-lez p1, :cond_e

    .line 867
    :cond_d
    iget-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_bShowPosterFrame:Z

    if-eqz p1, :cond_e

    .line 869
    invoke-virtual {p0, v0}, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->_seek(I)V

    :cond_e
    return-void
.end method

.method public onRenderersError(Ljava/lang/Exception;)V
    .locals 0

    .line 701
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 879
    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_Width:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_Height:I

    if-eq p1, p3, :cond_1

    .line 884
    :cond_0
    iput p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_Width:I

    .line 885
    iput p3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_Height:I

    const/4 p1, 0x1

    .line 887
    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_bSourceHasVideo:Z

    .line 889
    iget-object p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_bVideo_CreateRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 890
    iget-object p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoMediaPlayer;->m_bVideo_DestroyRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method
