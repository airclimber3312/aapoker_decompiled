.class public final Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;
.super Ljava/lang/Object;
.source "AVPro_FileDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# instance fields
.field private bytesRemaining:J

.field private file:Ljava/io/RandomAccessFile;

.field private final listener:Lcom/google/android/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private m_FileOffset:J

.field private opened:Z

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0}, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0}, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 44
    iput-wide p1, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->m_FileOffset:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 134
    :try_start_0
    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->file:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_0
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 146
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->opened:Z

    if-eqz v0, :cond_1

    .line 148
    iput-boolean v1, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->opened:Z

    .line 149
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_1

    .line 151
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 141
    :try_start_1
    new-instance v3, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :goto_0
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 146
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->opened:Z

    if-eqz v0, :cond_2

    .line 148
    iput-boolean v1, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->opened:Z

    .line 149
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_2

    .line 151
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_2
    throw v2
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    .line 60
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->uri:Landroid/net/Uri;

    .line 61
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 63
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-wide v2, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->m_FileOffset:J

    add-long/2addr v0, v2

    .line 64
    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 66
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->m_FileOffset:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    :goto_0
    iput-wide v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->bytesRemaining:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->opened:Z

    .line 78
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_1

    .line 80
    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onTransferStart(Ljava/lang/Object;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 83
    :cond_1
    iget-wide v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->bytesRemaining:J

    return-wide v0

    .line 69
    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 74
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 93
    :cond_0
    iget-wide v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 p1, -0x1

    return p1

    .line 102
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->file:Ljava/io/RandomAccessFile;

    int-to-long v3, p3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_2

    .line 111
    iget-wide p2, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->bytesRemaining:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->bytesRemaining:J

    .line 112
    iget-object p2, p0, Lcom/RenderHeads/AVProVideo/AVPro_FileDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz p2, :cond_2

    .line 114
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    :cond_2
    return p1

    :catch_0
    move-exception p1

    .line 106
    new-instance p2, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method
