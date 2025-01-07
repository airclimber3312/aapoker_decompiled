.class public Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;
.super Ljava/lang/Object;
.source "AVPro_AssetDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# instance fields
.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;

.field private final m_AssetManager:Landroid/content/res/AssetManager;

.field private m_FileOffset:J

.field private opened:Z

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(JLandroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p3

    iput-object p3, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->m_AssetManager:Landroid/content/res/AssetManager;

    .line 39
    iput-wide p1, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->m_FileOffset:J

    return-void
.end method


# virtual methods
.method public addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 3

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 52
    :try_start_0
    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 64
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->opened:Z

    if-eqz v0, :cond_2

    .line 66
    iput-boolean v1, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->opened:Z

    return-void

    :catchall_0
    move-exception v2

    .line 63
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 64
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->opened:Z

    if-eqz v0, :cond_1

    .line 66
    iput-boolean v1, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->opened:Z

    :cond_1
    throw v2

    :catch_0
    nop

    .line 63
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 64
    iget-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->opened:Z

    if-eqz v0, :cond_2

    .line 66
    iput-boolean v1, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->opened:Z

    :cond_2
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 81
    :try_start_0
    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->uri:Landroid/net/Uri;

    .line 83
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/android_asset/"

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xf

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v2, "/"

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->m_AssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v2, v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 97
    iget-wide v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-wide v3, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->m_FileOffset:J

    add-long/2addr v1, v3

    .line 98
    iget-object v3, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-ltz v5, :cond_3

    .line 105
    iget-wide v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 107
    iget-wide v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v1, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->bytesRemaining:J

    goto :goto_1

    .line 111
    :cond_2
    iget-object p1, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->bytesRemaining:J

    const-wide/32 v5, 0x7fffffff

    cmp-long p1, v1, v5

    if-nez p1, :cond_4

    .line 117
    iput-wide v3, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->bytesRemaining:J

    goto :goto_1

    .line 103
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :catch_0
    :cond_4
    :goto_1
    iput-boolean v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->opened:Z

    .line 129
    iget-wide v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->bytesRemaining:J

    return-wide v0
.end method

.method public read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 138
    :cond_0
    iget-wide v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    return v4

    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    int-to-long v5, p3

    .line 146
    :try_start_0
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    const/4 p1, -0x1

    :goto_1
    if-ne p1, v4, :cond_4

    .line 155
    iget-wide p1, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->bytesRemaining:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_3

    return v4

    .line 158
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 162
    :cond_4
    iget-wide p2, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->bytesRemaining:J

    cmp-long v0, p2, v2

    if-eqz v0, :cond_5

    int-to-long v0, p1

    sub-long/2addr p2, v0

    .line 164
    iput-wide p2, p0, Lcom/RenderHeads/AVProVideo/AVPro_AssetDataSource;->bytesRemaining:J

    :cond_5
    return p1
.end method
