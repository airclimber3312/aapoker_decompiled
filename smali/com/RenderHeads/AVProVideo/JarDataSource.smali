.class public Lcom/RenderHeads/AVProVideo/JarDataSource;
.super Ljava/lang/Object;
.source "JarDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# static fields
.field private static final extensions:[Ljava/lang/String;


# instance fields
.field private m_File:Ljava/io/InputStream;

.field private m_FileOffset:J

.field private m_Path:Ljava/lang/String;

.field private m_Uri:Landroid/net/Uri;

.field private m_ZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "obb!/"

    const-string v1, "apk!/"

    .line 27
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/RenderHeads/AVProVideo/JarDataSource;->extensions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/JarDataSource;->m_Path:Ljava/lang/String;

    .line 39
    iput-wide p2, p0, Lcom/RenderHeads/AVProVideo/JarDataSource;->m_FileOffset:J

    .line 40
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/JarDataSource;->m_Uri:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/JarDataSource;->m_File:Ljava/io/InputStream;

    .line 42
    iput-object p1, p0, Lcom/RenderHeads/AVProVideo/JarDataSource;->m_ZipFile:Ljava/util/zip/ZipFile;

    return-void
.end method


# virtual methods
.method public addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/JarDataSource;->m_File:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 60
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/JarDataSource;->m_ZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_1

    .line 68
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 72
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/JarDataSource;->m_ZipFile:Ljava/util/zip/ZipFile;

    .line 77
    iput-object v0, p0, Lcom/RenderHeads/AVProVideo/JarDataSource;->m_File:Ljava/io/InputStream;

    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/JarDataSource;->m_Uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/JarDataSource;->m_Uri:Landroid/net/Uri;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    const/4 v0, 0x0

    .line 96
    :goto_0
    sget-object v3, Lcom/RenderHeads/AVProVideo/JarDataSource;->extensions:[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_5

    .line 98
    aget-object v3, v3, v0

    .line 99
    iget-object v4, p0, Lcom/RenderHeads/AVProVideo/JarDataSource;->m_Path:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_4

    .line 105
    iget-object v5, p0, Lcom/RenderHeads/AVProVideo/JarDataSource;->m_Path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x2

    const/16 v7, 0xb

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 106
    iget-object v6, p0, Lcom/RenderHeads/AVProVideo/JarDataSource;->m_Path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 112
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/RenderHeads/AVProVideo/JarDataSource;->m_ZipFile:Ljava/util/zip/ZipFile;

    .line 113
    invoke-virtual {v4, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 119
    iget-object v3, p0, Lcom/RenderHeads/AVProVideo/JarDataSource;->m_ZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/RenderHeads/AVProVideo/JarDataSource;->m_File:Ljava/io/InputStream;

    .line 120
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/RenderHeads/AVProVideo/JarDataSource;->m_FileOffset:J

    sub-long/2addr v3, v5

    .line 123
    iget-wide v5, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-wide v7, p0, Lcom/RenderHeads/AVProVideo/JarDataSource;->m_FileOffset:J

    add-long/2addr v5, v7

    .line 124
    iget-object v7, p0, Lcom/RenderHeads/AVProVideo/JarDataSource;->m_File:Ljava/io/InputStream;

    invoke-virtual {v7, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v9, v7, v5

    if-ltz v9, :cond_2

    .line 135
    iget-object v5, p0, Lcom/RenderHeads/AVProVideo/JarDataSource;->m_File:Ljava/io/InputStream;

    if-eqz v5, :cond_4

    .line 139
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v5, -0x1

    cmp-long v2, v0, v5

    if-nez v2, :cond_1

    return-wide v3

    .line 143
    :cond_1
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    return-wide v0

    .line 127
    :cond_2
    :try_start_1
    new-instance p1, Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "End of file reached"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p1

    .line 116
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to locate file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in zip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 132
    new-instance v0, Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    return-wide v1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/RenderHeads/AVProVideo/JarDataSource;->m_File:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 156
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    int-to-long v0, p3

    .line 157
    iget-object p3, p0, Lcom/RenderHeads/AVProVideo/JarDataSource;->m_File:Ljava/io/InputStream;

    long-to-int v1, v0

    invoke-virtual {p3, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method
