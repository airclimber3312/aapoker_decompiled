.class public final Landroidx/media2/MediaPlayer2Impl;
.super Landroidx/media2/MediaPlayer2;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;,
        Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;,
        Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;,
        Landroidx/media2/MediaPlayer2Impl$DataSourceError;,
        Landroidx/media2/MediaPlayer2Impl$Task;,
        Landroidx/media2/MediaPlayer2Impl$DrmInfoImpl;,
        Landroidx/media2/MediaPlayer2Impl$DrmEventNotifier;,
        Landroidx/media2/MediaPlayer2Impl$PlayerEventNotifier;,
        Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;,
        Landroidx/media2/MediaPlayer2Impl$TrackInfoImpl;
    }
.end annotation


# static fields
.field private static final SOURCE_STATE_ERROR:I = -0x1

.field private static final SOURCE_STATE_INIT:I = 0x0

.field private static final SOURCE_STATE_PREPARED:I = 0x2

.field private static final SOURCE_STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaPlayer2Impl"

.field static sErrorEventMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sInfoEventMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sStateMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCurrentTask:Landroidx/media2/MediaPlayer2Impl$Task;

.field private mDrmEventCallbackRecord:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/media2/MediaPlayer2$DrmEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndPositionHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mLock:Ljava/lang/Object;

.field mMediaPlayerConnectorImpl:Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;

.field private mMp2EventCallbackRecord:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/media2/MediaPlayer2$EventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingTasks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/MediaPlayer2Impl$Task;",
            ">;"
        }
    .end annotation
.end field

.field mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

.field private mPlayerEventCallbackMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskHandler:Landroid/os/Handler;

.field final mTaskLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 90
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/media2/MediaPlayer2Impl;->sInfoEventMap:Landroidx/collection/ArrayMap;

    const/4 v1, 0x1

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Landroidx/media2/MediaPlayer2Impl;->sInfoEventMap:Landroidx/collection/ArrayMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Landroidx/media2/MediaPlayer2Impl;->sInfoEventMap:Landroidx/collection/ArrayMap;

    const/4 v3, 0x3

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 93
    invoke-virtual {v0, v3, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Landroidx/media2/MediaPlayer2Impl;->sInfoEventMap:Landroidx/collection/ArrayMap;

    const/16 v4, 0x2bc

    .line 96
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 95
    invoke-virtual {v0, v4, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Landroidx/media2/MediaPlayer2Impl;->sInfoEventMap:Landroidx/collection/ArrayMap;

    const/16 v4, 0x2bd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Landroidx/media2/MediaPlayer2Impl;->sInfoEventMap:Landroidx/collection/ArrayMap;

    const/16 v4, 0x2be

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Landroidx/media2/MediaPlayer2Impl;->sInfoEventMap:Landroidx/collection/ArrayMap;

    const/16 v4, 0x320

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Landroidx/media2/MediaPlayer2Impl;->sInfoEventMap:Landroidx/collection/ArrayMap;

    const/16 v4, 0x321

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Landroidx/media2/MediaPlayer2Impl;->sInfoEventMap:Landroidx/collection/ArrayMap;

    const/16 v4, 0x322

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Landroidx/media2/MediaPlayer2Impl;->sInfoEventMap:Landroidx/collection/ArrayMap;

    const/16 v4, 0x324

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Landroidx/media2/MediaPlayer2Impl;->sInfoEventMap:Landroidx/collection/ArrayMap;

    const/16 v4, 0x325

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Landroidx/media2/MediaPlayer2Impl;->sInfoEventMap:Landroidx/collection/ArrayMap;

    const/16 v4, 0x385

    .line 105
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 104
    invoke-virtual {v0, v4, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Landroidx/media2/MediaPlayer2Impl;->sInfoEventMap:Landroidx/collection/ArrayMap;

    const/16 v4, 0x386

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/media2/MediaPlayer2Impl;->sErrorEventMap:Landroidx/collection/ArrayMap;

    .line 109
    invoke-virtual {v0, v1, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Landroidx/media2/MediaPlayer2Impl;->sErrorEventMap:Landroidx/collection/ArrayMap;

    const/16 v4, 0xc8

    .line 111
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 110
    invoke-virtual {v0, v4, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Landroidx/media2/MediaPlayer2Impl;->sErrorEventMap:Landroidx/collection/ArrayMap;

    const/16 v4, -0x3ec

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Landroidx/media2/MediaPlayer2Impl;->sErrorEventMap:Landroidx/collection/ArrayMap;

    const/16 v4, -0x3ef

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Landroidx/media2/MediaPlayer2Impl;->sErrorEventMap:Landroidx/collection/ArrayMap;

    const/16 v4, -0x3f2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Landroidx/media2/MediaPlayer2Impl;->sErrorEventMap:Landroidx/collection/ArrayMap;

    const/16 v4, -0x6e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Landroidx/media2/MediaPlayer2Impl;->sStateMap:Landroidx/collection/ArrayMap;

    const/16 v4, 0x3e9

    .line 119
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Landroidx/media2/MediaPlayer2Impl;->sStateMap:Landroidx/collection/ArrayMap;

    const/16 v4, 0x3ea

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Landroidx/media2/MediaPlayer2Impl;->sStateMap:Landroidx/collection/ArrayMap;

    const/16 v4, 0x3eb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Landroidx/media2/MediaPlayer2Impl;->sStateMap:Landroidx/collection/ArrayMap;

    const/16 v1, 0x3ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Landroidx/media2/MediaPlayer2Impl;->sStateMap:Landroidx/collection/ArrayMap;

    const/16 v1, 0x3ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 168
    invoke-direct {p0}, Landroidx/media2/MediaPlayer2;-><init>()V

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mTaskLock:Ljava/lang/Object;

    .line 133
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPendingTasks:Ljava/util/ArrayDeque;

    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mLock:Ljava/lang/Object;

    .line 142
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayerEventCallbackMap:Landroidx/collection/ArrayMap;

    .line 169
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MediaPlayer2TaskThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 170
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 171
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 172
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/media2/MediaPlayer2Impl;->mEndPositionHandler:Landroid/os/Handler;

    .line 173
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/media2/MediaPlayer2Impl;->mTaskHandler:Landroid/os/Handler;

    .line 177
    new-instance v0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-direct {v0, p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;-><init>(Landroidx/media2/MediaPlayer2Impl;)V

    iput-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    return-void
.end method

.method private addTask(Landroidx/media2/MediaPlayer2Impl$Task;)V
    .locals 4

    .line 581
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 582
    :try_start_0
    iget v1, p1, Landroidx/media2/MediaPlayer2Impl$Task;->mMediaCallType:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    .line 583
    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl;->mPendingTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/MediaPlayer2Impl$Task;

    if-eqz v1, :cond_0

    .line 584
    iget v2, v1, Landroidx/media2/MediaPlayer2Impl$Task;->mMediaCallType:I

    iget v3, p1, Landroidx/media2/MediaPlayer2Impl$Task;->mMediaCallType:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 586
    iput-boolean v2, v1, Landroidx/media2/MediaPlayer2Impl$Task;->mSkip:Z

    .line 589
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl;->mPendingTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 590
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl;->processPendingTask_l()V

    .line 591
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static handleDataSource(Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 610
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroidx/media2/DataSourceDesc2;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "the DataSourceDesc2 cannot be null"

    .line 611
    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 613
    invoke-virtual {p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v4

    .line 614
    invoke-virtual {v0}, Landroidx/media2/DataSourceDesc2;->getType()I

    move-result p0

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    goto :goto_1

    .line 646
    :cond_1
    check-cast v0, Landroidx/media2/UriDataSourceDesc2;

    .line 648
    invoke-virtual {v0}, Landroidx/media2/UriDataSourceDesc2;->getUriContext()Landroid/content/Context;

    move-result-object p0

    .line 649
    invoke-virtual {v0}, Landroidx/media2/UriDataSourceDesc2;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 650
    invoke-virtual {v0}, Landroidx/media2/UriDataSourceDesc2;->getUriHeaders()Ljava/util/Map;

    move-result-object v2

    .line 651
    invoke-virtual {v0}, Landroidx/media2/UriDataSourceDesc2;->getUriCookies()Ljava/util/List;

    move-result-object v0

    .line 647
    invoke-virtual {v4, p0, v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V

    goto :goto_1

    .line 638
    :cond_2
    check-cast v0, Landroidx/media2/FileDataSourceDesc2;

    .line 640
    invoke-virtual {v0}, Landroidx/media2/FileDataSourceDesc2;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 641
    invoke-virtual {v0}, Landroidx/media2/FileDataSourceDesc2;->getFileDescriptorOffset()J

    move-result-wide v6

    .line 642
    invoke-virtual {v0}, Landroidx/media2/FileDataSourceDesc2;->getFileDescriptorLength()J

    move-result-wide v8

    .line 639
    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_1

    .line 616
    :cond_3
    new-instance p0, Landroidx/media2/MediaPlayer2Impl$14;

    invoke-direct {p0, v0}, Landroidx/media2/MediaPlayer2Impl$14;-><init>(Landroidx/media2/DataSourceDesc2;)V

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/media/MediaDataSource;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public attachAuxEffect(I)V
    .locals 3

    .line 852
    new-instance v0, Landroidx/media2/MediaPlayer2Impl$18;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/MediaPlayer2Impl$18;-><init>(Landroidx/media2/MediaPlayer2Impl;IZI)V

    invoke-direct {p0, v0}, Landroidx/media2/MediaPlayer2Impl;->addTask(Landroidx/media2/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public clearDrmEventCallback()V
    .locals 2

    .line 1141
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1142
    :try_start_0
    iput-object v1, p0, Landroidx/media2/MediaPlayer2Impl;->mDrmEventCallbackRecord:Landroid/util/Pair;

    .line 1143
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearEventCallback()V
    .locals 2

    .line 1087
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1088
    :try_start_0
    iput-object v1, p0, Landroidx/media2/MediaPlayer2Impl;->mMp2EventCallbackRecord:Landroid/util/Pair;

    .line 1089
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearPendingCommands()V
    .locals 2

    .line 575
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 576
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl;->mPendingTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 577
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 1

    .line 219
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->release()V

    .line 220
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    return-void
.end method

.method public deselectTrack(I)V
    .locals 3

    .line 1052
    new-instance v0, Landroidx/media2/MediaPlayer2Impl$21;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/MediaPlayer2Impl$21;-><init>(Landroidx/media2/MediaPlayer2Impl;IZI)V

    invoke-direct {p0, v0}, Landroidx/media2/MediaPlayer2Impl;->addTask(Landroidx/media2/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public getAudioAttributes()Landroidx/media/AudioAttributesCompat;
    .locals 1

    .line 365
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getAudioAttributes()Landroidx/media/AudioAttributesCompat;

    move-result-object v0

    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 833
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 319
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method getBufferingState()I
    .locals 1

    .line 342
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getBufferingState()I

    move-result v0

    return v0
.end method

.method public getCurrentDataSource()Landroidx/media2/DataSourceDesc2;
    .locals 1

    .line 438
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getFirst()Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroidx/media2/DataSourceDesc2;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 293
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDrmInfo()Landroidx/media2/MediaPlayer2$DrmInfo;
    .locals 3

    .line 1154
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getDrmInfo()Landroid/media/MediaPlayer$DrmInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1155
    :cond_0
    new-instance v1, Landroidx/media2/MediaPlayer2Impl$DrmInfoImpl;

    invoke-virtual {v0}, Landroid/media/MediaPlayer$DrmInfo;->getPssh()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/MediaPlayer$DrmInfo;->getSupportedSchemes()[Ljava/util/UUID;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroidx/media2/MediaPlayer2Impl$DrmInfoImpl;-><init>(Ljava/util/Map;[Ljava/util/UUID;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getDrmKeyRequest([B[BLjava/lang/String;ILjava/util/Map;)Landroid/media/MediaDrm$KeyRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation

    .line 1274
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getKeyRequest([B[BLjava/lang/String;ILjava/util/Map;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p1
    :try_end_0
    .catch Landroid/media/MediaPlayer$NoDrmSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1276
    new-instance p2, Landroidx/media2/MediaPlayer2$NoDrmSchemeException;

    invoke-virtual {p1}, Landroid/media/MediaPlayer$NoDrmSchemeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/media2/MediaPlayer2$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getDrmPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation

    .line 1344
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0, p1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getDrmPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/media/MediaPlayer$NoDrmSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1346
    new-instance v0, Landroidx/media2/MediaPlayer2$NoDrmSchemeException;

    invoke-virtual {p1}, Landroid/media/MediaPlayer$NoDrmSchemeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/media2/MediaPlayer2$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDuration()J
    .locals 2

    .line 304
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxPlayerVolume()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getMediaPlayerConnector()Landroidx/media2/MediaPlayerConnector;
    .locals 2

    .line 186
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl;->mMediaPlayerConnectorImpl:Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;

    if-nez v1, :cond_0

    .line 188
    new-instance v1, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;

    invoke-direct {v1, p0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;-><init>(Landroidx/media2/MediaPlayer2Impl;)V

    iput-object v1, p0, Landroidx/media2/MediaPlayer2Impl;->mMediaPlayerConnectorImpl:Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;

    .line 190
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl;->mMediaPlayerConnectorImpl:Landroidx/media2/MediaPlayer2Impl$MediaPlayerConnectorImpl;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 191
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .locals 1

    .line 691
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackParams()Landroidx/media2/PlaybackParams2;
    .locals 2

    .line 728
    new-instance v0, Landroidx/media2/PlaybackParams2$Builder;

    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media2/PlaybackParams2$Builder;-><init>(Landroid/media/PlaybackParams;)V

    invoke-virtual {v0}, Landroidx/media2/PlaybackParams2$Builder;->build()Landroidx/media2/PlaybackParams2;

    move-result-object v0

    return-object v0
.end method

.method getPlayerState()I
    .locals 1

    .line 333
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getPlayerState()I

    move-result v0

    return v0
.end method

.method public getPlayerVolume()F
    .locals 1

    .line 481
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getVolume()F

    move-result v0

    return v0
.end method

.method public getSelectedTrack(I)I
    .locals 1

    .line 995
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0, p1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getSelectedTrack(I)I

    move-result p1

    return p1
.end method

.method public getState()I
    .locals 1

    .line 329
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getMediaPlayer2State()I

    move-result v0

    return v0
.end method

.method public getTimestamp()Landroidx/media2/MediaTimestamp2;
    .locals 1

    .line 791
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getTimestamp()Landroidx/media2/MediaTimestamp2;

    move-result-object v0

    return-object v0
.end method

.method public getTrackInfo()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/MediaPlayer2$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 968
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v0

    .line 969
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 970
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 971
    new-instance v5, Landroidx/media2/MediaPlayer2Impl$TrackInfoImpl;

    invoke-virtual {v4}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v6

    invoke-virtual {v4}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Landroidx/media2/MediaPlayer2Impl$TrackInfoImpl;-><init>(ILandroid/media/MediaFormat;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getVideoHeight()I
    .locals 1

    .line 686
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 671
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method handleDataSourceError(Landroidx/media2/MediaPlayer2Impl$DataSourceError;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 154
    :cond_0
    new-instance v0, Landroidx/media2/MediaPlayer2Impl$1;

    invoke-direct {v0, p0, p1}, Landroidx/media2/MediaPlayer2Impl$1;-><init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/MediaPlayer2Impl$DataSourceError;)V

    invoke-virtual {p0, v0}, Landroidx/media2/MediaPlayer2Impl;->notifyMediaPlayer2Event(Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;)V

    return-void
.end method

.method public loopCurrent(Z)V
    .locals 3

    .line 447
    new-instance v0, Landroidx/media2/MediaPlayer2Impl$10;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/MediaPlayer2Impl$10;-><init>(Landroidx/media2/MediaPlayer2Impl;IZZ)V

    invoke-direct {p0, v0}, Landroidx/media2/MediaPlayer2Impl;->addTask(Landroidx/media2/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method notifyDrmEvent(Landroidx/media2/MediaPlayer2Impl$DrmEventNotifier;)V
    .locals 3

    .line 1430
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1431
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl;->mDrmEventCallbackRecord:Landroid/util/Pair;

    .line 1432
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1434
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/media2/MediaPlayer2Impl$27;

    invoke-direct {v2, p0, p1, v1}, Landroidx/media2/MediaPlayer2Impl$27;-><init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/MediaPlayer2Impl$DrmEventNotifier;Landroid/util/Pair;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 1432
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method notifyMediaPlayer2Event(Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;)V
    .locals 3

    .line 1395
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1396
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl;->mMp2EventCallbackRecord:Landroid/util/Pair;

    .line 1397
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1399
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/media2/MediaPlayer2Impl$25;

    invoke-direct {v2, p0, p1, v1}, Landroidx/media2/MediaPlayer2Impl$25;-><init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/MediaPlayer2Impl$Mp2EventNotifier;Landroid/util/Pair;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 1397
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method notifyPlayerEvent(Landroidx/media2/MediaPlayer2Impl$PlayerEventNotifier;)V
    .locals 6

    .line 1411
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1412
    :try_start_0
    new-instance v1, Landroidx/collection/ArrayMap;

    iget-object v2, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayerEventCallbackMap:Landroidx/collection/ArrayMap;

    invoke-direct {v1, v2}, Landroidx/collection/ArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    .line 1413
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1414
    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1416
    invoke-virtual {v1, v2}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 1417
    invoke-virtual {v1, v2}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;

    .line 1418
    new-instance v5, Landroidx/media2/MediaPlayer2Impl$26;

    invoke-direct {v5, p0, p1, v4}, Landroidx/media2/MediaPlayer2Impl$26;-><init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/MediaPlayer2Impl$PlayerEventNotifier;Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 1413
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public notifyWhenCommandLabelReached(Ljava/lang/Object;)V
    .locals 3

    .line 528
    new-instance v0, Landroidx/media2/MediaPlayer2Impl$12;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/MediaPlayer2Impl$12;-><init>(Landroidx/media2/MediaPlayer2Impl;IZLjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroidx/media2/MediaPlayer2Impl;->addTask(Landroidx/media2/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public pause()V
    .locals 3

    .line 265
    new-instance v0, Landroidx/media2/MediaPlayer2Impl$4;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/media2/MediaPlayer2Impl$4;-><init>(Landroidx/media2/MediaPlayer2Impl;IZ)V

    invoke-direct {p0, v0}, Landroidx/media2/MediaPlayer2Impl;->addTask(Landroidx/media2/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public play()V
    .locals 3

    .line 234
    new-instance v0, Landroidx/media2/MediaPlayer2Impl$2;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/media2/MediaPlayer2Impl$2;-><init>(Landroidx/media2/MediaPlayer2Impl;IZ)V

    invoke-direct {p0, v0}, Landroidx/media2/MediaPlayer2Impl;->addTask(Landroidx/media2/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public prepare()V
    .locals 3

    .line 252
    new-instance v0, Landroidx/media2/MediaPlayer2Impl$3;

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroidx/media2/MediaPlayer2Impl$3;-><init>(Landroidx/media2/MediaPlayer2Impl;IZ)V

    invoke-direct {p0, v0}, Landroidx/media2/MediaPlayer2Impl;->addTask(Landroidx/media2/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public prepareDrm(Ljava/util/UUID;)V
    .locals 3

    .line 1183
    new-instance v0, Landroidx/media2/MediaPlayer2Impl$23;

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/MediaPlayer2Impl$23;-><init>(Landroidx/media2/MediaPlayer2Impl;IZLjava/util/UUID;)V

    invoke-direct {p0, v0}, Landroidx/media2/MediaPlayer2Impl;->addTask(Landroidx/media2/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method processPendingTask_l()V
    .locals 2

    .line 597
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mCurrentTask:Landroidx/media2/MediaPlayer2Impl$Task;

    if-eqz v0, :cond_0

    return-void

    .line 600
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPendingTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 601
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPendingTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaPlayer2Impl$Task;

    .line 602
    iput-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mCurrentTask:Landroidx/media2/MediaPlayer2Impl$Task;

    .line 603
    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl;->mTaskHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public provideDrmKeyResponse([B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/MediaPlayer2$NoDrmSchemeException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 1304
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->provideKeyResponse([B[B)[B

    move-result-object p1
    :try_end_0
    .catch Landroid/media/MediaPlayer$NoDrmSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1306
    new-instance p2, Landroidx/media2/MediaPlayer2$NoDrmSchemeException;

    invoke-virtual {p1}, Landroid/media/MediaPlayer$NoDrmSchemeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/media2/MediaPlayer2$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method registerPlayerEventCallback(Ljava/util/concurrent/Executor;Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;)V
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 507
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 508
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayerEventCallbackMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 504
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null Executor for the PlayerEventCallback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 501
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null PlayerEventCallback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public releaseDrm()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation

    .line 1223
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->releaseDrm()V
    :try_end_0
    .catch Landroid/media/MediaPlayer$NoDrmSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1225
    new-instance v1, Landroidx/media2/MediaPlayer2$NoDrmSchemeException;

    invoke-virtual {v0}, Landroid/media/MediaPlayer$NoDrmSchemeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/media2/MediaPlayer2$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .locals 1

    .line 801
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->reset()V

    return-void
.end method

.method public restoreDrmKeys([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation

    .line 1321
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0, p1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->restoreKeys([B)V
    :try_end_0
    .catch Landroid/media/MediaPlayer$NoDrmSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1323
    new-instance v0, Landroidx/media2/MediaPlayer2$NoDrmSchemeException;

    invoke-virtual {p1}, Landroid/media/MediaPlayer$NoDrmSchemeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/media2/MediaPlayer2$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public seekTo(JI)V
    .locals 8

    .line 763
    new-instance v7, Landroidx/media2/MediaPlayer2Impl$16;

    const/16 v2, 0xe

    const/4 v3, 0x1

    move-object v0, v7

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroidx/media2/MediaPlayer2Impl$16;-><init>(Landroidx/media2/MediaPlayer2Impl;IZJI)V

    invoke-direct {p0, v7}, Landroidx/media2/MediaPlayer2Impl;->addTask(Landroidx/media2/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public selectTrack(I)V
    .locals 3

    .line 1028
    new-instance v0, Landroidx/media2/MediaPlayer2Impl$20;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/MediaPlayer2Impl$20;-><init>(Landroidx/media2/MediaPlayer2Impl;IZI)V

    invoke-direct {p0, v0}, Landroidx/media2/MediaPlayer2Impl;->addTask(Landroidx/media2/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setAudioAttributes(Landroidx/media/AudioAttributesCompat;)V
    .locals 3

    .line 355
    new-instance v0, Landroidx/media2/MediaPlayer2Impl$6;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/MediaPlayer2Impl$6;-><init>(Landroidx/media2/MediaPlayer2Impl;IZLandroidx/media/AudioAttributesCompat;)V

    invoke-direct {p0, v0}, Landroidx/media2/MediaPlayer2Impl;->addTask(Landroidx/media2/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 3

    .line 823
    new-instance v0, Landroidx/media2/MediaPlayer2Impl$17;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/MediaPlayer2Impl$17;-><init>(Landroidx/media2/MediaPlayer2Impl;IZI)V

    invoke-direct {p0, v0}, Landroidx/media2/MediaPlayer2Impl;->addTask(Landroidx/media2/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setAuxEffectSendLevel(F)V
    .locals 3

    .line 874
    new-instance v0, Landroidx/media2/MediaPlayer2Impl$19;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/MediaPlayer2Impl$19;-><init>(Landroidx/media2/MediaPlayer2Impl;IZF)V

    invoke-direct {p0, v0}, Landroidx/media2/MediaPlayer2Impl;->addTask(Landroidx/media2/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setDataSource(Landroidx/media2/DataSourceDesc2;)V
    .locals 3

    .line 377
    new-instance v0, Landroidx/media2/MediaPlayer2Impl$7;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/MediaPlayer2Impl$7;-><init>(Landroidx/media2/MediaPlayer2Impl;IZLandroidx/media2/DataSourceDesc2;)V

    invoke-direct {p0, v0}, Landroidx/media2/MediaPlayer2Impl;->addTask(Landroidx/media2/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setDrmEventCallback(Ljava/util/concurrent/Executor;Landroidx/media2/MediaPlayer2$DrmEventCallback;)V
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 1131
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1132
    :try_start_0
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/media2/MediaPlayer2Impl;->mDrmEventCallbackRecord:Landroid/util/Pair;

    .line 1133
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1128
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null Executor for the EventCallback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1125
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null EventCallback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDrmPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation

    .line 1367
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->setDrmPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/media/MediaPlayer$NoDrmSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1369
    new-instance p2, Landroidx/media2/MediaPlayer2$NoDrmSchemeException;

    invoke-virtual {p1}, Landroid/media/MediaPlayer$NoDrmSchemeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/media2/MediaPlayer2$NoDrmSchemeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method setEndPositionTimerIfNeeded(Landroid/media/MediaPlayer$OnCompletionListener;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;Landroid/media/MediaTimestamp;)V
    .locals 7

    .line 1459
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getFirst()Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 1460
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mEndPositionHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1461
    invoke-virtual {p2}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroidx/media2/DataSourceDesc2;

    move-result-object v0

    .line 1462
    invoke-virtual {v0}, Landroidx/media2/DataSourceDesc2;->getEndPosition()J

    move-result-wide v1

    const-wide v3, 0x7ffffffffffffffL

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 1463
    invoke-virtual {p3}, Landroid/media/MediaTimestamp;->getMediaClockRate()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 1464
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 1465
    invoke-virtual {p3}, Landroid/media/MediaTimestamp;->getAnchorSytemNanoTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 1466
    invoke-virtual {p3}, Landroid/media/MediaTimestamp;->getAnchorMediaTimeUs()J

    move-result-wide v5

    add-long/2addr v5, v1

    div-long/2addr v5, v3

    .line 1467
    invoke-virtual {v0}, Landroidx/media2/DataSourceDesc2;->getEndPosition()J

    move-result-wide v0

    sub-long/2addr v0, v5

    long-to-float v0, v0

    .line 1468
    invoke-virtual {p3}, Landroid/media/MediaTimestamp;->getMediaClockRate()F

    move-result p3

    div-float/2addr v0, p3

    float-to-long v0, v0

    .line 1469
    iget-object p3, p0, Landroidx/media2/MediaPlayer2Impl;->mEndPositionHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/media2/MediaPlayer2Impl$28;

    invoke-direct {v2, p0, p2, p1}, Landroidx/media2/MediaPlayer2Impl$28;-><init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;Landroid/media/MediaPlayer$OnCompletionListener;)V

    const-wide/16 p1, 0x0

    cmp-long v3, v0, p1

    if-gez v3, :cond_0

    move-wide v0, p1

    :cond_0
    invoke-virtual {p3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public setEventCallback(Ljava/util/concurrent/Executor;Landroidx/media2/MediaPlayer2$EventCallback;)V
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 1077
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1078
    :try_start_0
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/media2/MediaPlayer2Impl;->mMp2EventCallbackRecord:Landroid/util/Pair;

    .line 1079
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1074
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null Executor for the EventCallback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1071
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal null EventCallback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNextDataSource(Landroidx/media2/DataSourceDesc2;)V
    .locals 3

    .line 401
    new-instance v0, Landroidx/media2/MediaPlayer2Impl$8;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/MediaPlayer2Impl$8;-><init>(Landroidx/media2/MediaPlayer2Impl;IZLandroidx/media2/DataSourceDesc2;)V

    invoke-direct {p0, v0}, Landroidx/media2/MediaPlayer2Impl;->addTask(Landroidx/media2/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setNextDataSources(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/DataSourceDesc2;",
            ">;)V"
        }
    .end annotation

    .line 419
    new-instance v0, Landroidx/media2/MediaPlayer2Impl$9;

    const/16 v1, 0x17

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/MediaPlayer2Impl$9;-><init>(Landroidx/media2/MediaPlayer2Impl;IZLjava/util/List;)V

    invoke-direct {p0, v0}, Landroidx/media2/MediaPlayer2Impl;->addTask(Landroidx/media2/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setOnDrmConfigHelper(Landroidx/media2/MediaPlayer2$OnDrmConfigHelper;)V
    .locals 2

    .line 1104
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    new-instance v1, Landroidx/media2/MediaPlayer2Impl$22;

    invoke-direct {v1, p0, p1}, Landroidx/media2/MediaPlayer2Impl$22;-><init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/MediaPlayer2$OnDrmConfigHelper;)V

    invoke-virtual {v0, v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->setOnDrmConfigHelper(Landroid/media/MediaPlayer$OnDrmConfigHelper;)V

    return-void
.end method

.method public setPlaybackParams(Landroidx/media2/PlaybackParams2;)V
    .locals 3

    .line 710
    new-instance v0, Landroidx/media2/MediaPlayer2Impl$15;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/MediaPlayer2Impl$15;-><init>(Landroidx/media2/MediaPlayer2Impl;IZLandroidx/media2/PlaybackParams2;)V

    invoke-direct {p0, v0}, Landroidx/media2/MediaPlayer2Impl;->addTask(Landroidx/media2/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method setPlaybackParamsInternal(Landroid/media/PlaybackParams;)V
    .locals 2

    .line 1377
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v0}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 1381
    :goto_0
    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    invoke-virtual {v1, p1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    if-eqz v0, :cond_0

    .line 1382
    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v0

    invoke-virtual {p1}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1383
    new-instance v0, Landroidx/media2/MediaPlayer2Impl$24;

    invoke-direct {v0, p0, p1}, Landroidx/media2/MediaPlayer2Impl$24;-><init>(Landroidx/media2/MediaPlayer2Impl;Landroid/media/PlaybackParams;)V

    invoke-virtual {p0, v0}, Landroidx/media2/MediaPlayer2Impl;->notifyPlayerEvent(Landroidx/media2/MediaPlayer2Impl$PlayerEventNotifier;)V

    :cond_0
    return-void
.end method

.method public setPlayerVolume(F)V
    .locals 3

    .line 466
    new-instance v0, Landroidx/media2/MediaPlayer2Impl$11;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/MediaPlayer2Impl$11;-><init>(Landroidx/media2/MediaPlayer2Impl;IZF)V

    invoke-direct {p0, v0}, Landroidx/media2/MediaPlayer2Impl;->addTask(Landroidx/media2/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3

    .line 562
    new-instance v0, Landroidx/media2/MediaPlayer2Impl$13;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/MediaPlayer2Impl$13;-><init>(Landroidx/media2/MediaPlayer2Impl;IZLandroid/view/Surface;)V

    invoke-direct {p0, v0}, Landroidx/media2/MediaPlayer2Impl;->addTask(Landroidx/media2/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method setUpListeners(Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V
    .locals 4

    .line 1486
    invoke-virtual {p1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->getPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 1487
    new-instance v1, Landroidx/media2/MediaPlayer2Impl$29;

    invoke-direct {v1, p0, p1}, Landroidx/media2/MediaPlayer2Impl$29;-><init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V

    .line 1518
    new-instance v2, Landroidx/media2/MediaPlayer2Impl$30;

    invoke-direct {v2, p0, p1, v1}, Landroidx/media2/MediaPlayer2Impl$30;-><init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1530
    new-instance v2, Landroidx/media2/MediaPlayer2Impl$31;

    invoke-direct {v2, p0, p1}, Landroidx/media2/MediaPlayer2Impl$31;-><init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 1541
    new-instance v2, Landroidx/media2/MediaPlayer2Impl$32;

    invoke-direct {v2, p0, p1}, Landroidx/media2/MediaPlayer2Impl$32;-><init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 1566
    new-instance v2, Landroidx/media2/MediaPlayer2Impl$33;

    invoke-direct {v2, p0}, Landroidx/media2/MediaPlayer2Impl$33;-><init>(Landroidx/media2/MediaPlayer2Impl;)V

    .line 1573
    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1574
    new-instance v3, Landroidx/media2/MediaPlayer2Impl$34;

    invoke-direct {v3, p0, p1}, Landroidx/media2/MediaPlayer2Impl$34;-><init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1596
    new-instance v3, Landroidx/media2/MediaPlayer2Impl$35;

    invoke-direct {v3, p0, p1, v1}, Landroidx/media2/MediaPlayer2Impl$35;-><init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 1626
    new-instance v1, Landroidx/media2/MediaPlayer2Impl$36;

    invoke-direct {v1, p0, p1}, Landroidx/media2/MediaPlayer2Impl$36;-><init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnTimedMetaDataAvailableListener(Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;)V

    .line 1639
    new-instance v1, Landroidx/media2/MediaPlayer2Impl$37;

    invoke-direct {v1, p0, p1}, Landroidx/media2/MediaPlayer2Impl$37;-><init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 1656
    new-instance v1, Landroidx/media2/MediaPlayer2Impl$38;

    invoke-direct {v1, p0, p1}, Landroidx/media2/MediaPlayer2Impl$38;-><init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 1673
    new-instance v1, Landroidx/media2/MediaPlayer2Impl$39;

    invoke-direct {v1, p0, p1, v2}, Landroidx/media2/MediaPlayer2Impl$39;-><init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnMediaTimeDiscontinuityListener(Landroid/media/MediaPlayer$OnMediaTimeDiscontinuityListener;)V

    .line 1689
    new-instance v1, Landroidx/media2/MediaPlayer2Impl$40;

    invoke-direct {v1, p0, p1}, Landroidx/media2/MediaPlayer2Impl$40;-><init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V

    .line 1701
    new-instance v1, Landroidx/media2/MediaPlayer2Impl$41;

    invoke-direct {v1, p0, p1}, Landroidx/media2/MediaPlayer2Impl$41;-><init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnDrmInfoListener(Landroid/media/MediaPlayer$OnDrmInfoListener;)V

    return-void
.end method

.method public skipToNext()V
    .locals 3

    .line 278
    new-instance v0, Landroidx/media2/MediaPlayer2Impl$5;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/media2/MediaPlayer2Impl$5;-><init>(Landroidx/media2/MediaPlayer2Impl;IZ)V

    invoke-direct {p0, v0}, Landroidx/media2/MediaPlayer2Impl;->addTask(Landroidx/media2/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method unregisterPlayerEventCallback(Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 521
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 522
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl;->mPlayerEventCallbackMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 519
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal null PlayerEventCallback"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
