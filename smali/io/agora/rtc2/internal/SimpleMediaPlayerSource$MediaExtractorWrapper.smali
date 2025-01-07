.class Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/internal/SimpleMediaPlayerSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaExtractorWrapper"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mMediaExtractor:Landroid/media/MediaExtractor;

.field private volatile mPrepared:Z

.field private final threadName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaExtractor-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->threadName:Ljava/lang/String;

    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->mMediaExtractor:Landroid/media/MediaExtractor;

    return-void
.end method

.method static synthetic access$000(Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->setDataSource(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->threadName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;)Landroid/media/MediaExtractor;
    .locals 0

    iget-object p0, p0, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->mMediaExtractor:Landroid/media/MediaExtractor;

    return-object p0
.end method

.method static synthetic access$602(Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->mPrepared:Z

    return p1
.end method

.method static synthetic access$700(Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private setDataSource(Ljava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "setDataSource()"

    const-string v1, "SMPS"

    invoke-static {v1, v0}, Lio/agora/utils2/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const-string v2, "/assets/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v2, "content://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    iget-object v8, p0, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->mHandler:Landroid/os/Handler;

    new-instance v9, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper$1;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper$1;-><init>(Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;Ljava/lang/String;ZZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v2, 0x7d0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    const-string p1, "setDataSource complete"

    invoke-static {v1, p1}, Lio/agora/utils2/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->mPrepared:Z

    return p1
.end method


# virtual methods
.method advance()V
    .locals 1

    invoke-virtual {p0}, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->checkPrepared()V

    iget-object v0, p0, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    return-void
.end method

.method checkPrepared()V
    .locals 2

    iget-boolean v0, p0, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->mPrepared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mMediaExtractor hasn\'t prepared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getSampleTime()J
    .locals 2

    invoke-virtual {p0}, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->checkPrepared()V

    iget-object v0, p0, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    return-wide v0
.end method

.method getTrackCount()I
    .locals 1

    invoke-virtual {p0}, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->checkPrepared()V

    iget-object v0, p0, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    return v0
.end method

.method getTrackFormat(I)Landroid/media/MediaFormat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0}, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->checkPrepared()V

    iget-object v0, p0, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    return-object p1
.end method

.method readSampleData(Ljava/nio/ByteBuffer;I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "byteBuf",
            "offset"
        }
    .end annotation

    invoke-virtual {p0}, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->checkPrepared()V

    iget-object v0, p0, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result p1

    return p1
.end method

.method release()V
    .locals 2

    const-string v0, "SMPS"

    const-string v1, "release()"

    invoke-static {v0, v1}, Lio/agora/utils2/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper$2;

    invoke-direct {v1, p0}, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper$2;-><init>(Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method seekTo(JI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeUs",
            "mode"
        }
    .end annotation

    invoke-virtual {p0}, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->checkPrepared()V

    iget-object v0, p0, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    return-void
.end method

.method selectTrack(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0}, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->checkPrepared()V

    iget-object v0, p0, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    return-void
.end method

.method unselectTrack(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0}, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->checkPrepared()V

    iget-object v0, p0, Lio/agora/rtc2/internal/SimpleMediaPlayerSource$MediaExtractorWrapper;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    return-void
.end method
