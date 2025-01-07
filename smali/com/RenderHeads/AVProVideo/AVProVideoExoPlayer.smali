.class public Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;
.super Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;
.source "AVProVideoExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;
.implements Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
.implements Lcom/google/android/exoplayer2/video/VideoListener;


# static fields
.field private static m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;


# instance fields
.field private m_AdaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

.field private m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

.field private m_BandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

.field private m_EventLogger:Lcom/RenderHeads/AVProVideo/EventLogger;

.field private m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private m_ForcedFileFormat:I

.field private m_LastAbsoluteTime:J

.field private m_MainHandler:Landroid/os/Handler;

.field private m_MediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private m_MediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private m_PendingFileOffset:J

.field private m_PendingFilePath:Ljava/lang/String;

.field private m_Sink:Lcom/google/android/exoplayer2/audio/AudioSink;

.field private m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

.field private m_Surface:Landroid/view/Surface;

.field private m_Surface_ToBeReleased:Landroid/view/Surface;

.field private m_TrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private m_UserAgent:Ljava/lang/String;

.field private m_bDebugLogStateChange:Z

.field private m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m_bUpdateSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

.field m_textureTransform:[F


# direct methods
.method public constructor <init>(IZLjava/util/Random;)V
    .locals 0

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/RenderHeads/AVProVideo/AVProVideoPlayer;-><init>(IZLjava/util/Random;)V

    const/4 p1, 0x0

    .line 118
    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    .line 158
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bUpdateSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 159
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 161
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 162
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 164
    sget-object p1, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    if-nez p1, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->initChannelMap()V

    :cond_0
    return-void
.end method

.method private BuildDataSourceFactory(ZLjava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 3

    .line 580
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Context:Landroid/content/Context;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_BandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->BuildHttpDataSourceFactory(ZLjava/lang/String;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object v0
.end method

.method private BuildHttpDataSourceFactory(ZLjava/lang/String;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 7

    .line 567
    new-instance v6, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_UserAgent:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_BandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZ)V

    if-eqz p2, :cond_1

    .line 569
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 571
    invoke-static {p2}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->GetJsonAsMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 572
    invoke-interface {v6}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;->getDefaultRequestProperties()Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->set(Ljava/util/Map;)V

    :cond_1
    return-object v6
.end method

.method private BuildMediaSource(Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 9

    .line 760
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 762
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jar:"

    .line 772
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_d

    const-string v2, ".zip!"

    .line 773
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, ".obb!"

    .line 774
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 818
    :cond_0
    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ForcedFileFormat:I

    const/4 v2, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_2

    if-eq v1, v4, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    .line 826
    :cond_4
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result v1

    :goto_0
    if-eqz v1, :cond_c

    if-eq v1, v3, :cond_b

    if-eq v1, v2, :cond_a

    if-ne v1, v4, :cond_9

    .line 867
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v6, 0x0

    const/4 v2, 0x6

    const-string v4, "file:/"

    cmp-long v8, p2, v6

    if-lez v8, :cond_7

    .line 870
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "file"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 874
    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 876
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 880
    :cond_6
    new-instance p1, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    .line 881
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->setMp4ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    .line 882
    new-instance p4, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    new-instance v1, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSourceFactory;

    invoke-direct {v1, p2, p3}, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSourceFactory;-><init>(J)V

    invoke-direct {p4, v1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {p4, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->setExtractorsFactory(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    goto/16 :goto_3

    .line 891
    :cond_7
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 893
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 896
    :cond_8
    invoke-direct {p0, v5, p4}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->BuildDataSourceFactory(ZLjava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p1

    .line 897
    new-instance p2, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    .line 898
    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->setMp4ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    .line 899
    new-instance p3, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    invoke-direct {p3, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {p3, p2}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->setExtractorsFactory(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    goto/16 :goto_3

    .line 906
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported type: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 859
    :cond_a
    invoke-direct {p0, v5, p4}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->BuildHttpDataSourceFactory(ZLjava/lang/String;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object p1

    .line 860
    new-instance p2, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p1

    goto/16 :goto_3

    .line 837
    :cond_b
    invoke-direct {p0, v5, p4}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->BuildHttpDataSourceFactory(ZLjava/lang/String;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object p1

    .line 838
    new-instance p2, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;

    iget-object p3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_MediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {p2, p3}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 839
    new-instance p3, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    invoke-direct {p3, p2, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    move-result-object p1

    goto/16 :goto_3

    .line 848
    :cond_c
    invoke-direct {p0, v5, p4}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->BuildHttpDataSourceFactory(ZLjava/lang/String;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object p1

    .line 849
    new-instance p2, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    iget-object p3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_MediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {p2, p3}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 850
    new-instance p3, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    invoke-direct {p3, p2, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p1

    goto :goto_3

    :cond_d
    :goto_1
    const/4 p4, 0x0

    :try_start_0
    const-string v1, "/assets/"

    .line 780
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    add-int/lit8 v1, v1, 0x8

    .line 783
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 786
    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 789
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 791
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "assets:///"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 792
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 795
    new-instance v2, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    .line 796
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->setMp4ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    .line 797
    new-instance v4, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    new-instance v5, Lcom/RenderHeads/AVProVideo/AVPro_AssetSourceFactory;

    iget-object v6, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Context:Landroid/content/Context;

    invoke-direct {v5, p2, p3, v6}, Lcom/RenderHeads/AVProVideo/AVPro_AssetSourceFactory;-><init>(JLandroid/content/Context;)V

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->setExtractorsFactory(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    :cond_e
    :goto_2
    if-nez p4, :cond_f

    .line 809
    new-instance p4, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {p4}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    .line 810
    invoke-virtual {p4, v3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->setMp4ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    .line 811
    new-instance v1, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    new-instance v2, Lcom/RenderHeads/AVProVideo/JarDataSourceFactory;

    invoke-direct {v2, p1, p2, p3}, Lcom/RenderHeads/AVProVideo/JarDataSourceFactory;-><init>(Ljava/lang/String;J)V

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {v1, p4}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->setExtractorsFactory(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    goto :goto_3

    :cond_f
    move-object p1, p4

    :goto_3
    return-object p1
.end method

.method private CalculateSeekableTimeRangeForPeriod()[F
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 660
    fill-array-data v1, :array_0

    .line 664
    iget-object v2, v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v2, :cond_0

    return-object v1

    .line 668
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    .line 669
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    .line 674
    :cond_1
    iget-object v3, v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v3

    .line 675
    new-instance v4, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    .line 676
    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    .line 678
    iget-boolean v4, v3, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-nez v4, :cond_2

    return-object v1

    .line 683
    :cond_2
    iget-object v4, v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPeriodIndex()I

    move-result v4

    .line 684
    iget v5, v3, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    if-ge v4, v5, :cond_3

    return-object v1

    :cond_3
    move v8, v5

    const-wide/16 v9, 0x0

    :goto_0
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v8, v4, :cond_5

    .line 695
    new-instance v13, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v13}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    .line 696
    invoke-virtual {v2, v8, v13}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v13

    .line 697
    iget-wide v14, v13, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    cmp-long v16, v14, v11

    if-nez v16, :cond_4

    const-wide/16 v11, 0x0

    goto :goto_1

    :cond_4
    iget-wide v11, v13, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    :goto_1
    add-long/2addr v9, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 700
    :cond_5
    new-instance v8, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v8}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    .line 701
    invoke-virtual {v2, v4, v8}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    const/4 v8, 0x0

    const/4 v13, 0x1

    if-ne v4, v5, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_7

    const-wide/16 v14, 0x0

    goto :goto_3

    .line 705
    :cond_7
    iget-wide v14, v3, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    :goto_3
    sub-long/2addr v9, v14

    .line 707
    iget-wide v14, v3, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    cmp-long v5, v14, v11

    if-nez v5, :cond_8

    const-wide/16 v14, 0x0

    goto :goto_4

    :cond_8
    iget-wide v14, v3, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    sub-long/2addr v14, v9

    .line 710
    :goto_4
    iget-wide v9, v2, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    cmp-long v5, v9, v11

    if-eqz v5, :cond_9

    .line 712
    iget-wide v9, v2, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    if-eqz v4, :cond_a

    iget-wide v6, v3, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    sub-long/2addr v9, v6

    goto :goto_5

    :cond_9
    move-wide v9, v11

    .line 715
    :cond_a
    :goto_5
    iget-wide v5, v2, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    cmp-long v2, v5, v11

    if-nez v2, :cond_b

    goto :goto_6

    .line 716
    :cond_b
    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    :goto_6
    if-eqz v4, :cond_c

    .line 718
    iget-wide v4, v3, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    cmp-long v2, v4, v11

    if-eqz v2, :cond_c

    iget-wide v6, v3, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    goto :goto_7

    :cond_c
    const-wide/16 v6, 0x0

    .line 719
    :goto_7
    iget-wide v4, v3, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    cmp-long v2, v4, v11

    if-eqz v2, :cond_d

    .line 721
    iget-wide v2, v3, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    sub-long/2addr v6, v2

    :cond_d
    add-long/2addr v14, v6

    long-to-float v2, v6

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    aput v2, v1, v8

    long-to-float v2, v14

    div-float/2addr v2, v3

    aput v2, v1, v13

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
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

    .line 734
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 737
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 738
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 739
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 741
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 742
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 743
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 750
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

.method private getChannelMap(I)Lcom/twobigears/audio360/ChannelMap;
    .locals 2

    .line 240
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    if-nez v0, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->initChannelMap()V

    :cond_0
    if-ltz p1, :cond_2

    .line 245
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    array-length v1, v0

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 250
    :cond_1
    aget-object p1, v0, p1

    return-object p1

    .line 247
    :cond_2
    :goto_0
    sget-object p1, Lcom/twobigears/audio360/ChannelMap;->TBE_8_2:Lcom/twobigears/audio360/ChannelMap;

    return-object p1
.end method

.method private initChannelMap()V
    .locals 3

    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/twobigears/audio360/ChannelMap;

    .line 125
    sput-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/4 v1, 0x0

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_8_2:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 126
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/4 v1, 0x1

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_8:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 127
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/4 v1, 0x2

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_6_2:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 128
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/4 v1, 0x3

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_6:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 129
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/4 v1, 0x4

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_4_2:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 130
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/4 v1, 0x5

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_4:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 131
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/4 v1, 0x6

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_8_PAIR0:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 132
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/4 v1, 0x7

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_8_PAIR1:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 133
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x8

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_8_PAIR2:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 134
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x9

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_8_PAIR3:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 135
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0xa

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_CHANNEL0:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 136
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0xb

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_CHANNEL1:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 137
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0xc

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_CHANNEL2:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 138
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0xd

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_CHANNEL3:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 139
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0xe

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_CHANNEL4:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 140
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0xf

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_CHANNEL5:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 141
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x10

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_CHANNEL6:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 142
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x11

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_CHANNEL7:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 143
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x12

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->HEADLOCKED_STEREO:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 144
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x13

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->HEADLOCKED_CHANNEL0:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 145
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x14

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->HEADLOCKED_CHANNEL1:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 146
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x15

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->AMBIX_4:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 147
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x16

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->AMBIX_9:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 148
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x17

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->AMBIX_9_2:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 149
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x18

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->AMBIX_16:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 150
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x19

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->AMBIX_16_2:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 151
    sget-object v0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x1a

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->STEREO:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    return-void
.end method


# virtual methods
.method protected BindSurfaceToPlayer()V
    .locals 2

    .line 1242
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 1245
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface_ToBeReleased:Landroid/view/Surface;

    const/4 v0, 0x0

    .line 1246
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface:Landroid/view/Surface;

    .line 1249
    :cond_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bUpdateSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1250
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1252
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz v0, :cond_1

    const-string v0, "AVProVideo"

    const-string v1, "BindSurfaceToPlayer called"

    .line 1254
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public CanPlay()Z
    .locals 2

    .line 559
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

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
    .locals 5

    const-wide/16 v0, 0x0

    .line 445
    iput-wide v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_LastAbsoluteTime:J

    .line 450
    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->_stop()V

    .line 464
    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v2, :cond_0

    .line 466
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurface()V

    .line 468
    :cond_0
    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface:Landroid/view/Surface;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 470
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 471
    iput-object v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface:Landroid/view/Surface;

    .line 473
    :cond_1
    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bUpdateSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 474
    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 476
    iput-object v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_MediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 478
    iput v4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    .line 479
    iput-object v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFilePath:Ljava/lang/String;

    .line 480
    iput-wide v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFileOffset:J

    return-void
.end method

.method protected DeinitializeVideoPlayer()V
    .locals 3

    const/4 v0, 0x0

    .line 486
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_TrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 487
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_MediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 490
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_0

    .line 492
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurface()V

    .line 494
    :cond_0
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 496
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 497
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface:Landroid/view/Surface;

    .line 499
    :cond_1
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bUpdateSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 500
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 502
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_2

    .line 509
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    .line 510
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 511
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 514
    :cond_2
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    if-eqz v1, :cond_4

    .line 516
    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    if-eqz v2, :cond_3

    .line 519
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 521
    :cond_3
    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    invoke-virtual {v1, v2}, Lcom/twobigears/audio360/AudioEngine;->destroySpatDecoderQueue(Lcom/twobigears/audio360/SpatDecoderQueue;)V

    .line 522
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    invoke-virtual {v1}, Lcom/twobigears/audio360/AudioEngine;->delete()V

    .line 523
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    .line 524
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    :cond_4
    return-void
.end method

.method public GetBufferingProgressPercent()F
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPercentage()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_fBufferingProgressPercent:F

    .line 175
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_fBufferingProgressPercent:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public GetCurrentAbsoluteTimestamp()D
    .locals 8

    .line 321
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_2

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v3, 0x2

    const-wide v4, 0x408f400000000000L    # 1000.0

    if-ne v0, v3, :cond_1

    .line 328
    iget-wide v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_LastAbsoluteTime:J

    :goto_0
    long-to-double v0, v0

    div-double/2addr v0, v4

    return-wide v0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    if-nez v0, :cond_2

    .line 335
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "[AVProVideoTimestampTest] timeline is null"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-wide v1

    .line 339
    :cond_2
    iget-object v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v3

    .line 341
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v6

    if-gt v6, v3, :cond_3

    return-wide v1

    .line 346
    :cond_3
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    .line 347
    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    .line 349
    iget-wide v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v6

    if-nez v3, :cond_4

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_4
    iget-wide v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_1
    iput-wide v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_LastAbsoluteTime:J

    goto :goto_0

    :cond_5
    :goto_2
    return-wide v1
.end method

.method public GetCurrentTimeMs()J
    .locals 2

    .line 987
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public GetEstimatedBandwidthUsed()J
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_BandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 198
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->getBitrateEstimate()J

    move-result-wide v0

    return-wide v0
.end method

.method public GetSeekableTimeRange()[F
    .locals 1

    .line 357
    invoke-direct {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->CalculateSeekableTimeRangeForPeriod()[F

    move-result-object v0

    return-object v0
.end method

.method protected InitialisePlayer(ZIZ)Z
    .locals 5

    .line 362
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Context:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 372
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 373
    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 374
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "?"

    .line 380
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AVProMobileVideo/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (Linux;Android "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") ExoPlayerLib/2.8.4"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_UserAgent:Ljava/lang/String;

    .line 382
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    .line 388
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_BandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    .line 390
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_MainHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 392
    invoke-direct {p0, v0, v1}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->BuildDataSourceFactory(ZLjava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v2

    iput-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_MediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 393
    new-instance v2, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    iget-object v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_BandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    iput-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AdaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    .line 394
    new-instance v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AdaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    iput-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_TrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 395
    new-instance v2, Lcom/RenderHeads/AVProVideo/EventLogger;

    iget-object v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_TrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v2, v3}, Lcom/RenderHeads/AVProVideo/EventLogger;-><init>(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;)V

    iput-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_EventLogger:Lcom/RenderHeads/AVProVideo/EventLogger;

    .line 397
    new-instance v2, Lcom/RenderHeads/AVProVideo/CustomDefaultRenderersFactory;

    iget-object v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Context:Landroid/content/Context;

    invoke-direct {v2, v3, v1, v0, p3}, Lcom/RenderHeads/AVProVideo/CustomDefaultRenderersFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;IZ)V

    if-eqz p1, :cond_1

    .line 401
    new-instance p1, Lcom/twobigears/audio360/EngineInitSettings;

    invoke-direct {p1}, Lcom/twobigears/audio360/EngineInitSettings;-><init>()V

    .line 402
    invoke-virtual {p1}, Lcom/twobigears/audio360/EngineInitSettings;->getAudioSettings()Lcom/twobigears/audio360/AudioSettings;

    move-result-object p3

    const/16 v1, 0x400

    invoke-virtual {p3, v1}, Lcom/twobigears/audio360/AudioSettings;->setBufferSize(I)V

    .line 403
    invoke-virtual {p1}, Lcom/twobigears/audio360/EngineInitSettings;->getAudioSettings()Lcom/twobigears/audio360/AudioSettings;

    move-result-object p3

    const v1, 0x473b8000    # 48000.0f

    invoke-virtual {p3, v1}, Lcom/twobigears/audio360/AudioSettings;->setSampleRate(F)V

    .line 405
    invoke-virtual {p1}, Lcom/twobigears/audio360/EngineInitSettings;->getMemorySettings()Lcom/twobigears/audio360/MemorySettings;

    move-result-object p3

    const/16 v1, 0x2000

    invoke-virtual {p3, v1}, Lcom/twobigears/audio360/MemorySettings;->setSpatQueueSizePerChannel(I)V

    .line 409
    iget-object p3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Context:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/twobigears/audio360/AudioEngine;->create(Lcom/twobigears/audio360/EngineInitSettings;Landroid/content/Context;)Lcom/twobigears/audio360/AudioEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    .line 411
    invoke-virtual {p1}, Lcom/twobigears/audio360/AudioEngine;->createSpatDecoderQueue()Lcom/twobigears/audio360/SpatDecoderQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    .line 415
    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    invoke-virtual {p1}, Lcom/twobigears/audio360/AudioEngine;->getOutputLatencyMs()D

    move-result-wide v3

    .line 416
    invoke-direct {p0, p2}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->getChannelMap(I)Lcom/twobigears/audio360/ChannelMap;

    move-result-object p1

    .line 417
    new-instance p2, Lcom/twobigears/audio360exo2/Audio360Sink;

    iget-object p3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    invoke-direct {p2, p3, p1, v3, v4}, Lcom/twobigears/audio360exo2/Audio360Sink;-><init>(Lcom/twobigears/audio360/SpatDecoderQueue;Lcom/twobigears/audio360/ChannelMap;D)V

    iput-object p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 419
    new-instance p1, Lcom/RenderHeads/AVProVideo/OpusRenderersFactory;

    invoke-direct {p1, p2, v2}, Lcom/RenderHeads/AVProVideo/OpusRenderersFactory;-><init>(Lcom/google/android/exoplayer2/audio/AudioSink;Lcom/google/android/exoplayer2/RenderersFactory;)V

    move-object v2, p1

    .line 422
    :cond_1
    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_TrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 425
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 434
    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V

    return v0
.end method

.method public IsFinished()Z
    .locals 2

    .line 554
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

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

    .line 543
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

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

    .line 530
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->IsSeeking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 531
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public IsSeeking()Z
    .locals 1

    .line 548
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bIsSeeking:Z

    return v0
.end method

.method protected OpenVideoFromFileInternal(Ljava/lang/String;JLjava/lang/String;I)Z
    .locals 4

    .line 918
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "OpenVideoFromFileInternal | m_ExoPlayer.getPlaybackState() = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " | m_VideoState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " | m_SurfaceTexture = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AVProVideo"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_1
    iput p5, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ForcedFileFormat:I

    .line 925
    iget-object p5, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p5

    if-nez p5, :cond_2

    .line 927
    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->BindSurfaceToPlayer()V

    .line 930
    :cond_2
    iget-object p5, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v0, 0x1

    if-eqz p5, :cond_4

    iget p5, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    const/4 v2, 0x2

    if-eq p5, v2, :cond_4

    iget-object p5, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 932
    invoke-virtual {p5}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result p5

    if-ne p5, v0, :cond_4

    iget-object p5, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 934
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p5

    if-eqz p5, :cond_4

    .line 938
    iget-object p5, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v3, 0x0

    invoke-virtual {p5, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 940
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->BuildMediaSource(Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_MediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    const-wide/16 p2, 0x0

    if-eqz p1, :cond_3

    .line 943
    iput-wide p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_LastAbsoluteTime:J

    .line 946
    iput v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    .line 947
    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object p4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_MediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {p1, p4, v0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    goto :goto_1

    .line 953
    :cond_3
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p4, "[AVProVideo] error failed to prepare"

    invoke-virtual {p1, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 956
    :goto_1
    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFilePath:Ljava/lang/String;

    .line 957
    iput-wide p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFileOffset:J

    goto :goto_2

    .line 963
    :cond_4
    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFilePath:Ljava/lang/String;

    .line 964
    iput-wide p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFileOffset:J

    :goto_2
    return v0
.end method

.method protected PlayerRenderUpdate()V
    .locals 7

    .line 595
    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->UpdateVideoMetadata()V

    .line 598
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface_ToBeReleased:Landroid/view/Surface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 602
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurface()V

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface_ToBeReleased:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 608
    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface_ToBeReleased:Landroid/view/Surface;

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bUpdateSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 616
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    .line 618
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurface()V

    .line 620
    :cond_2
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    .line 622
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 623
    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface:Landroid/view/Surface;

    .line 626
    :cond_3
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_5

    .line 628
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface:Landroid/view/Surface;

    if-nez v0, :cond_4

    .line 630
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface:Landroid/view/Surface;

    .line 634
    :cond_4
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Surface:Landroid/view/Surface;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_5

    .line 636
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 637
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 639
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bUpdateSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 646
    :cond_5
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFilePath:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 648
    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFilePath:Ljava/lang/String;

    iget-wide v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFileOffset:J

    const-string v5, ""

    iget v6, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ForcedFileFormat:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->OpenVideoFromFileInternal(Ljava/lang/String;JLjava/lang/String;I)Z

    .line 651
    :cond_6
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_7

    .line 653
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    .line 654
    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_fPlaybackRate:F

    :cond_7
    return-void
.end method

.method protected PlayerRendererSetup()V
    .locals 7

    .line 586
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 588
    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFilePath:Ljava/lang/String;

    iget-wide v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFileOffset:J

    const-string v5, ""

    iget v6, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ForcedFileFormat:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->OpenVideoFromFileInternal(Ljava/lang/String;JLjava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public SetAudioTrack(I)V
    .locals 9

    .line 1001
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_iNumberAudioTracks:I

    if-ge p1, v0, :cond_9

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_iCurrentAudioTrackIndex:I

    if-ne p1, v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1006
    :goto_0
    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 1008
    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererType(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1010
    new-instance v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;-><init>()V

    .line 1011
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->clearSelectionOverrides(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    .line 1012
    invoke-virtual {v2, v1, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    .line 1013
    iget-object v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_TrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1017
    :cond_2
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_TrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1025
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v5

    if-ge v2, v5, :cond_9

    .line 1027
    iget-object v5, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererType(I)I

    move-result v5

    if-ne v5, v3, :cond_8

    .line 1032
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v5

    if-eqz v5, :cond_8

    sub-int v6, p1, v4

    .line 1040
    iget v7, v5, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-lt v6, v7, :cond_4

    .line 1042
    iget v5, v5, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    add-int/2addr v4, v5

    goto :goto_4

    .line 1046
    :cond_4
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object p1

    .line 1048
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 1049
    :goto_2
    iget v7, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v4, v7, :cond_6

    .line 1051
    invoke-virtual {v1, v2, v6, v4}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackSupport(III)I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    .line 1053
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1057
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_9

    .line 1062
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    const/4 v1, 0x0

    .line 1064
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 1066
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1072
    :cond_7
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-direct {v1, v6, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    .line 1073
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;-><init>()V

    .line 1074
    invoke-virtual {p1, v2, v5, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    .line 1075
    invoke-virtual {p1, v2, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    .line 1076
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_TrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    .line 1077
    iput v6, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_iCurrentAudioTrackIndex:I

    return-void

    :cond_8
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    :goto_5
    return-void
.end method

.method public SetFocusEnabled(Z)V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 234
    invoke-virtual {v0, p1, v1}, Lcom/twobigears/audio360/SpatDecoderQueue;->enableFocus(ZZ)V

    :cond_0
    return-void
.end method

.method public SetFocusProps(FF)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0, p1, p2}, Lcom/twobigears/audio360/SpatDecoderQueue;->setFocusProperties(FF)V

    :cond_0
    return-void
.end method

.method public SetFocusRotation(FFFF)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    if-eqz v0, :cond_0

    .line 207
    new-instance v1, Lcom/twobigears/audio360/TBQuat;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/twobigears/audio360/TBQuat;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/twobigears/audio360/SpatDecoderQueue;->setFocusOrientationQuat(Lcom/twobigears/audio360/TBQuat;)V

    :cond_0
    return-void
.end method

.method public SetHeadRotation(FFFF)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    if-eqz v0, :cond_0

    .line 186
    new-instance v1, Lcom/twobigears/audio360/TBQuat;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/twobigears/audio360/TBQuat;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/twobigears/audio360/AudioEngine;->setListenerRotation(Lcom/twobigears/audio360/TBQuat;)V

    :cond_0
    return-void
.end method

.method public SetLooping(Z)V
    .locals 1

    .line 973
    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bLooping:Z

    .line 975
    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    .line 977
    invoke-virtual {p0}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->UpdateLooping()V

    return-void

    .line 981
    :cond_0
    sget p1, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->VideoCommand_SetLooping:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->AddVideoCommandInt(II)V

    return-void
.end method

.method public SetPlaybackRate(F)V
    .locals 3

    .line 992
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 994
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    .line 995
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v2, Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    invoke-direct {v2, p1, v0}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_0
    return-void
.end method

.method public SetPositionTrackingEnabled(Z)V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    if-eqz v0, :cond_0

    .line 225
    new-instance v1, Lcom/twobigears/audio360/TBVector;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lcom/twobigears/audio360/TBVector;-><init>(FFF)V

    invoke-virtual {v0, p1, v1}, Lcom/twobigears/audio360/AudioEngine;->enablePositionalTracking(ZLcom/twobigears/audio360/TBVector;)Lcom/twobigears/audio360/EngineError;

    :cond_0
    return-void
.end method

.method protected UpdateAudioVolumes()V
    .locals 2

    .line 1220
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    .line 1224
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AudioMuted:Z

    if-nez v0, :cond_0

    .line 1226
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AudioVolume:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1228
    :goto_0
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    :cond_1
    return-void
.end method

.method protected UpdateLooping()V
    .locals 2

    .line 1234
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    .line 1236
    iget-boolean v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bLooping:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setRepeatMode(I)V

    :cond_1
    return-void
.end method

.method protected UpdateVideoMetadata()V
    .locals 2

    .line 1584
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_fSourceVideoFrameRate:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 1586
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1590
    iget v0, v0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_fSourceVideoFrameRate:F

    :cond_0
    return-void
.end method

.method protected _pause()V
    .locals 2

    .line 1114
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz v0, :cond_0

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_pause called : m_VideoState = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AVProVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 1123
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    const/4 v0, 0x7

    .line 1124
    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    .line 1125
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    if-eqz v0, :cond_1

    .line 1127
    invoke-virtual {v0}, Lcom/twobigears/audio360/AudioEngine;->suspend()Lcom/twobigears/audio360/EngineError;

    :cond_1
    return-void
.end method

.method protected _play()V
    .locals 3

    .line 1085
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz v0, :cond_0

    const-string v0, "AVProVideo"

    const-string v1, "_play called"

    .line 1087
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    .line 1092
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 1095
    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    .line 1096
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_MediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    .line 1100
    iput v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    .line 1104
    :goto_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 1105
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    if-eqz v0, :cond_2

    .line 1107
    invoke-virtual {v0}, Lcom/twobigears/audio360/AudioEngine;->start()Lcom/twobigears/audio360/EngineError;

    :cond_2
    return-void
.end method

.method protected _seek(I)V
    .locals 3

    .line 1175
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    if-eqz v0, :cond_0

    .line 1176
    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->reset()V

    .line 1178
    :cond_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    if-eqz v0, :cond_1

    .line 1179
    invoke-virtual {v0}, Lcom/twobigears/audio360/SpatDecoderQueue;->flushQueue()V

    .line 1183
    :cond_1
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    .line 1187
    sget-object v1, Lcom/google/android/exoplayer2/SeekParameters;->EXACT:Lcom/google/android/exoplayer2/SeekParameters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V

    .line 1189
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    const/4 p1, 0x1

    .line 1190
    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bIsSeeking:Z

    :cond_2
    return-void
.end method

.method protected _seekFast(I)V
    .locals 3

    .line 1199
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    if-eqz v0, :cond_0

    .line 1200
    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->reset()V

    .line 1202
    :cond_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    if-eqz v0, :cond_1

    .line 1203
    invoke-virtual {v0}, Lcom/twobigears/audio360/SpatDecoderQueue;->flushQueue()V

    .line 1207
    :cond_1
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    .line 1211
    sget-object v1, Lcom/google/android/exoplayer2/SeekParameters;->CLOSEST_SYNC:Lcom/google/android/exoplayer2/SeekParameters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V

    .line 1213
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    const/4 p1, 0x1

    .line 1214
    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bIsSeeking:Z

    :cond_2
    return-void
.end method

.method protected _stop()V
    .locals 2

    .line 1134
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_4

    .line 1136
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    if-eqz v0, :cond_0

    .line 1138
    invoke-virtual {v0}, Lcom/twobigears/audio360/SpatDecoderQueue;->flushQueue()V

    .line 1139
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twobigears/audio360/SpatDecoderQueue;->setEndOfStream(Z)V

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    if-eqz v0, :cond_2

    .line 1149
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Sink:Lcom/google/android/exoplayer2/audio/AudioSink;

    if-eqz v0, :cond_1

    .line 1151
    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->reset()V

    .line 1153
    :cond_1
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    invoke-virtual {v0}, Lcom/twobigears/audio360/AudioEngine;->suspend()Lcom/twobigears/audio360/EngineError;

    .line 1156
    :cond_2
    iget v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    .line 1159
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    .line 1166
    :cond_3
    iput v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    :cond_4
    return-void
.end method

.method public onDownstreamFormatChanged(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0

    return-void
.end method

.method public onLoadCanceled(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0

    return-void
.end method

.method public onLoadCompleted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0

    return-void
.end method

.method public onLoadError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    .line 1514
    invoke-static {p5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method public onLoadStarted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onMediaPeriodCreated(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    return-void
.end method

.method public onMediaPeriodReleased(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 3

    .line 1461
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AVProVideo error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1462
    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    if-lez p1, :cond_0

    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    const/16 p1, 0x64

    .line 1464
    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_iLastError:I

    :cond_0
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 6

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_14

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_11

    const/4 v3, 0x3

    if-eq p2, v3, :cond_3

    if-eq p2, v1, :cond_0

    .line 1415
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz v0, :cond_2

    .line 1417
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AVProVideo video state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1403
    :cond_0
    iget-boolean p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz p2, :cond_1

    .line 1405
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "AVProVideo video state: ended"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    const/16 p2, 0x8

    .line 1408
    iput p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    .line 1420
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bIsBuffering:Z

    goto/16 :goto_6

    .line 1315
    :cond_3
    iget-boolean p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz p2, :cond_4

    .line 1317
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "AVProVideo video state: ready | m_VideoState: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " | m_bIsBuffering: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bIsBuffering:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1321
    :cond_4
    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bIsBuffering:Z

    .line 1323
    iget-object p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_PendingFilePath:Ljava/lang/String;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_5

    .line 1328
    iget-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz p1, :cond_10

    .line 1330
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "AVProVideo video state: has pending file path"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 1335
    :cond_5
    iget p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    if-lt p2, v2, :cond_10

    .line 1337
    iget p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    if-ne p2, v2, :cond_6

    goto :goto_1

    :cond_6
    iget v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    :goto_1
    iput v3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    .line 1339
    iget-object p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 1340
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getAudioFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x6

    if-eqz p2, :cond_e

    .line 1343
    iget v4, p2, Lcom/google/android/exoplayer2/Format;->frameRate:F

    iput v4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_fSourceVideoFrameRate:F

    .line 1344
    iget v4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_fSourceVideoFrameRate:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    .line 1346
    iget v4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_fSourceVideoFrameRate:F

    iput v4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_DisplayRate_FrameRate:F

    .line 1348
    :cond_7
    iget-object v4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_DurationMs:J

    .line 1349
    iput-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bSourceHasVideo:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    .line 1350
    :goto_2
    iput-boolean v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bSourceHasAudio:Z

    .line 1355
    iget v1, p2, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    .line 1356
    iget v1, p2, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    const/16 v4, 0x5a

    if-eq v1, v4, :cond_9

    iget v1, p2, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    const/16 v4, 0x10e

    if-ne v1, v4, :cond_a

    :cond_9
    const/4 p1, 0x1

    :cond_a
    if-eqz p1, :cond_c

    .line 1359
    iget p1, p2, Lcom/google/android/exoplayer2/Format;->height:I

    .line 1360
    iget p2, p2, Lcom/google/android/exoplayer2/Format;->width:I

    .line 1362
    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Width:I

    if-lez v1, :cond_c

    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Height:I

    if-lez v1, :cond_c

    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Width:I

    if-ne p1, v1, :cond_b

    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Height:I

    if-eq p2, v1, :cond_c

    :cond_b
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bVideo_RenderSurfaceCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1364
    monitor-enter p0

    .line 1366
    :try_start_0
    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Width:I

    .line 1367
    iput p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Height:I

    .line 1368
    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bVideo_DestroyRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1369
    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bVideo_CreateRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1370
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1379
    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_4

    :cond_d
    const/4 v2, 0x6

    :goto_4
    iput v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    .line 1380
    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bVideo_AcceptCommands:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_e
    if-eqz v1, :cond_10

    .line 1385
    iget p2, v1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    iput p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_fSourceVideoFrameRate:F

    iput p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_DisplayRate_FrameRate:F

    .line 1387
    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bSourceHasVideo:Z

    .line 1388
    iput-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bSourceHasAudio:Z

    .line 1389
    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Width:I

    .line 1390
    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Height:I

    .line 1391
    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_DurationMs:J

    .line 1393
    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_5

    :cond_f
    const/4 v2, 0x6

    :goto_5
    iput v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    .line 1394
    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bVideo_AcceptCommands:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_10
    :goto_6
    return-void

    .line 1300
    :cond_11
    iget-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz p1, :cond_12

    .line 1302
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "AVProVideo video state: buffering"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1305
    :cond_12
    iget p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    if-eq p1, v2, :cond_13

    .line 1307
    iput v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    .line 1309
    :cond_13
    iput-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bIsBuffering:Z

    return-void

    .line 1283
    :cond_14
    iget-boolean p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz p2, :cond_15

    .line 1285
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "AVProVideo video state: idle"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1288
    :cond_15
    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bIsBuffering:Z

    .line 1293
    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_VideoState:I

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    return-void
.end method

.method public onReadingStarted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onSeekProcessed()V
    .locals 1

    const/4 v0, 0x0

    .line 1448
    iput-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bIsSeeking:Z

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 3

    const/4 p1, 0x0

    .line 1472
    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_iNumberAudioTracks:I

    .line 1474
    iget-object p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_TrackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-nez p2, :cond_0

    goto :goto_2

    .line 1479
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 1486
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    const/4 v0, 0x0

    .line 1488
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1490
    iget-object v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererType(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1492
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    .line 1493
    iget v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_iNumberAudioTracks:I

    if-eqz v1, :cond_2

    iget v1, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v2, v1

    iput v2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_iNumberAudioTracks:I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1498
    :cond_4
    iget p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_iNumberAudioTracks:I

    .line 1500
    iget p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_iCurrentAudioTrackIndex:I

    if-gez p2, :cond_5

    .line 1502
    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_iCurrentAudioTrackIndex:I

    :cond_5
    :goto_2
    return-void
.end method

.method public onUpstreamDiscarded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 2

    .line 259
    iget p4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Width:I

    if-ne p4, p1, :cond_1

    iget p4, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Height:I

    if-eq p4, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 261
    :cond_1
    :goto_0
    sget-object p4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AVProVideo changing video size "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 p4, 0x5a

    const/4 v0, 0x6

    if-eq p3, p4, :cond_4

    const/16 p4, 0xb4

    if-eq p3, p4, :cond_3

    const/16 p4, 0x10e

    if-eq p3, p4, :cond_2

    .line 267
    iget-boolean p3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz p3, :cond_5

    const-string p3, "AVProVideo"

    const-string p4, "NO texture transform set"

    .line 269
    invoke-static {p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-array p3, v0, [F

    .line 287
    fill-array-data p3, :array_0

    iput-object p3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_textureTransform:[F

    .line 288
    iget-boolean p3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz p3, :cond_5

    const-string p3, "AVProVideo"

    const-string p4, "Texture transform set for 270 degrees"

    .line 290
    invoke-static {p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    new-array p3, v0, [F

    .line 280
    fill-array-data p3, :array_1

    iput-object p3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_textureTransform:[F

    .line 281
    iget-boolean p3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz p3, :cond_5

    const-string p3, "AVProVideo"

    const-string p4, "Texture transform set for 180 degrees"

    .line 283
    invoke-static {p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    new-array p3, v0, [F

    .line 273
    fill-array-data p3, :array_2

    iput-object p3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_textureTransform:[F

    .line 274
    iget-boolean p3, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz p3, :cond_5

    const-string p3, "AVProVideo"

    const-string p4, "Texture transform set for 90 degrees"

    .line 276
    invoke-static {p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_5
    :goto_1
    monitor-enter p0

    .line 297
    :try_start_0
    iput p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Width:I

    .line 298
    iput p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_Height:I

    const/4 p1, 0x1

    .line 299
    iput-boolean p1, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bSourceHasVideo:Z

    .line 300
    iget-object p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bVideo_CreateRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 301
    iget-object p2, p0, Lcom/RenderHeads/AVProVideo/AVProVideoExoPlayer;->m_bVideo_DestroyRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 302
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :array_0
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method
