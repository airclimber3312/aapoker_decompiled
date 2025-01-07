.class Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaPlayer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayerSource"
.end annotation


# instance fields
.field final mBufferedPercentage:Ljava/util/concurrent/atomic/AtomicInteger;

.field mBufferingState:I

.field volatile mDSD:Landroidx/media2/DataSourceDesc2;

.field mMp2State:I

.field mPlayPending:Z

.field mPlayer:Landroid/media/MediaPlayer;

.field mPlayerState:I

.field mSetAsNextPlayer:Z

.field mSourceState:I

.field final synthetic this$0:Landroidx/media2/MediaPlayer2Impl;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl;Landroidx/media2/DataSourceDesc2;)V
    .locals 2

    .line 1953
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->this$0:Landroidx/media2/MediaPlayer2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1945
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mBufferedPercentage:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1946
    iput v1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mSourceState:I

    const/16 v0, 0x3e9

    .line 1947
    iput v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mMp2State:I

    .line 1948
    iput v1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mBufferingState:I

    .line 1949
    iput v1, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mPlayerState:I

    .line 1954
    iput-object p2, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mDSD:Landroidx/media2/DataSourceDesc2;

    .line 1955
    invoke-virtual {p1, p0}, Landroidx/media2/MediaPlayer2Impl;->setUpListeners(Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;)V

    return-void
.end method


# virtual methods
.method getDSD()Landroidx/media2/DataSourceDesc2;
    .locals 1

    .line 1959
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mDSD:Landroidx/media2/DataSourceDesc2;

    return-object v0
.end method

.method declared-synchronized getPlayer()Landroid/media/MediaPlayer;
    .locals 1

    monitor-enter p0

    .line 1963
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 1964
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;

    .line 1966
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSource;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
