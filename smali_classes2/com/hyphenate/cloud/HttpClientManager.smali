.class public Lcom/hyphenate/cloud/HttpClientManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyphenate/cloud/HttpClientManager$Builder;
    }
.end annotation


# static fields
.field private static HIGH_SPEED_DOWNLOAD_BUF_SIZE:I = 0x7800

.field public static Method_DELETE:Ljava/lang/String; = "DELETE"

.field public static Method_GET:Ljava/lang/String; = "GET"

.field public static Method_POST:Ljava/lang/String; = "POST"

.field public static Method_PUT:Ljava/lang/String; = "PUT"

.field private static final REQUEST_FAILED_CODE:I = 0x198

.field private static final TAG:Ljava/lang/String; = "HttpClientManager"

.field private static volatile isRetring:Z = false

.field public static final max_retries_times_on_connection_refused:I = 0x3

.field private static final max_retry_times_on_connection_refused:I = 0x14

.field private static final retriveInterval:I = 0x1d4c0

.field private static volatile retrivedTokenTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/hyphenate/cloud/HttpResponse;Landroid/net/Uri;Lcom/hyphenate/cloud/HttpCallback;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/hyphenate/cloud/HttpClientManager;->onDownloadCompleted(Lcom/hyphenate/cloud/HttpResponse;Landroid/net/Uri;Lcom/hyphenate/cloud/HttpCallback;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$300(Lcom/hyphenate/cloud/HttpResponse;Ljava/lang/String;Lcom/hyphenate/cloud/HttpCallback;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/hyphenate/cloud/HttpClientManager;->onDownloadCompleted(Lcom/hyphenate/cloud/HttpResponse;Ljava/lang/String;Lcom/hyphenate/cloud/HttpCallback;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/chat/adapter/EMARHttpCallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMARHttpCallback;",
            ")I"
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/cloud/HttpClientManager$Builder;

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->downloadFile(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p1

    const/16 v0, 0x7530

    invoke-virtual {p1, v0}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setConnectTimeout(I)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setUrl(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setHeaders(Ljava/util/Map;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p3}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->execute(Ljava/lang/StringBuilder;Lcom/hyphenate/chat/adapter/EMARHttpCallback;)I

    move-result p0

    return p0
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/StringBuilder;Lcom/hyphenate/chat/adapter/EMARHttpCallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Lcom/hyphenate/chat/adapter/EMARHttpCallback;",
            ")I"
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/cloud/HttpClientManager$Builder;

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->downloadFile(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p1

    const/16 v0, 0x7530

    invoke-virtual {p1, v0}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setConnectTimeout(I)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setUrl(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setHeaders(Ljava/util/Map;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->execute(Ljava/lang/StringBuilder;Lcom/hyphenate/chat/adapter/EMARHttpCallback;)I

    move-result p0

    return p0
.end method

.method static getNewHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/hyphenate/cloud/HttpClientConfig;->getNewHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static httpExecute(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/cloud/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hyphenate/cloud/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/hyphenate/cloud/HttpClientConfig;->getTimeout(Ljava/util/Map;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {p0, p1, p2, p3, v0}, Lcom/hyphenate/cloud/HttpClientManager;->httpExecute(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Lcom/hyphenate/cloud/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static httpExecute(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Lcom/hyphenate/cloud/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/hyphenate/cloud/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/cloud/HttpClientManager$Builder;

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setRequestMethod(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setUrl(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setConnectTimeout(I)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setHeaders(Ljava/util/Map;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->withToken(Z)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setParams(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->execute()Lcom/hyphenate/cloud/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method private static onDownloadCompleted(Lcom/hyphenate/cloud/HttpResponse;Landroid/net/Uri;Lcom/hyphenate/cloud/HttpCallback;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "HttpClientManager"

    iget-wide v1, p0, Lcom/hyphenate/cloud/HttpResponse;->contentLength:J

    iget-object p0, p0, Lcom/hyphenate/cloud/HttpResponse;->inputStream:Ljava/io/InputStream;

    :try_start_0
    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hyphenate/chat/EMClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "w"

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    sget v3, Lcom/hyphenate/cloud/HttpClientManager;->HIGH_SPEED_DOWNLOAD_BUF_SIZE:I

    new-array v3, v3, [B

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    int-to-long v10, v9

    add-long/2addr v6, v10

    const-wide/16 v10, 0x64

    mul-long v10, v10, v6

    div-long/2addr v10, v1

    long-to-int v11, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x64

    if-eq v11, v10, :cond_0

    add-int/lit8 v10, v8, 0x5

    if-le v11, v10, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2, v1, v2, v6, v7}, Lcom/hyphenate/cloud/HttpCallback;->onProgress(JJ)V

    :cond_1
    move v8, v11

    :cond_2
    invoke-virtual {v4, v3, v5, v9}, Ljava/io/OutputStream;->write([BII)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u6267\u884c\u5199\u5165\u64cd\u4f5c count = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/hyphenate/util/EMFileHelper;->isFileExist(Landroid/net/Uri;)Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download by uri fileExistByUri = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long p1, p1

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_4
    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_5
    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw p1
.end method

.method private static onDownloadCompleted(Lcom/hyphenate/cloud/HttpResponse;Ljava/lang/String;Lcom/hyphenate/cloud/HttpCallback;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/hyphenate/cloud/HttpResponse;->contentLength:J

    iget-object p0, p0, Lcom/hyphenate/cloud/HttpResponse;->inputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "inputStream length = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HttpClientManager"

    invoke-static {v3, v2}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    sget p1, Lcom/hyphenate/cloud/HttpClientManager;->HIGH_SPEED_DOWNLOAD_BUF_SIZE:I

    new-array p1, p1, [B

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    int-to-long v10, v9

    add-long/2addr v6, v10

    const-wide/16 v10, 0x64

    mul-long v10, v10, v6

    div-long/2addr v10, v0

    long-to-int v11, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x64

    if-eq v11, v10, :cond_0

    add-int/lit8 v10, v8, 0x5

    if-le v11, v10, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2, v0, v1, v6, v7}, Lcom/hyphenate/cloud/HttpCallback;->onProgress(JJ)V

    :cond_1
    move v8, v11

    :cond_2
    invoke-virtual {v4, p1, v5, v9}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw p1
.end method

.method public static sendDeleteRequest(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/hyphenate/cloud/HttpClientManager;->Method_DELETE:Ljava/lang/String;

    invoke-static {p0, v0, p1, v1}, Lcom/hyphenate/cloud/HttpClientManager;->sendRequestWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static sendGetRequest(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/hyphenate/cloud/HttpClientManager;->Method_GET:Ljava/lang/String;

    invoke-static {p0, v0, p1, v1}, Lcom/hyphenate/cloud/HttpClientManager;->sendRequestWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static sendHttpRequestWithRetryToken(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/hyphenate/cloud/HttpClientManager;->sendRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static sendPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    sget-object v0, Lcom/hyphenate/cloud/HttpClientManager;->Method_POST:Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/hyphenate/cloud/HttpClientManager;->sendRequestWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static sendPutRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    sget-object v0, Lcom/hyphenate/cloud/HttpClientManager;->Method_PUT:Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/hyphenate/cloud/HttpClientManager;->sendRequestWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static sendRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/cloud/HttpClientManager$Builder;

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setRequestMethod(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setUrl(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setHeaders(Ljava/util/Map;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setParams(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->execute()Lcom/hyphenate/cloud/HttpResponse;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Landroid/util/Pair;

    iget p2, p0, Lcom/hyphenate/cloud/HttpResponse;->code:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/hyphenate/cloud/HttpResponse;->content:Ljava/lang/String;

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static sendRequestWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bearer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->getOptions()Lcom/hyphenate/chat/EMOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMOptions;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {p0, v0, p1, p2}, Lcom/hyphenate/cloud/HttpClientManager;->sendHttpRequestWithRetryToken(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " send request : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed!"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string p1, "HttpClientManager"

    invoke-static {p1, p0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/hyphenate/exceptions/HyphenateException;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method static sendRequestWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v0, "Authorization"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bearer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->getOptions()Lcom/hyphenate/chat/EMOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMOptions;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :try_start_0
    invoke-static {p0, p2, p1, p3}, Lcom/hyphenate/cloud/HttpClientManager;->sendHttpRequestWithRetryToken(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, " send request : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed!"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    const-string p1, "HttpClientManager"

    invoke-static {p1, p0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/hyphenate/exceptions/HyphenateException;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lcom/hyphenate/exceptions/HyphenateException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public static uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/StringBuilder;Lcom/hyphenate/chat/adapter/EMARHttpCallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Lcom/hyphenate/chat/adapter/EMARHttpCallback;",
            ")I"
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/cloud/HttpClientManager$Builder;

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->uploadFile(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setUrl(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setFilename(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    const/16 p1, 0x7530

    invoke-virtual {p0, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setConnectTimeout(I)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setHeaders(Ljava/util/Map;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->getOptions()Lcom/hyphenate/chat/EMOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->getAppKey()Ljava/lang/String;

    move-result-object p1

    const-string p2, "app"

    invoke-virtual {p0, p2, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->getCurrentUser()Ljava/lang/String;

    move-result-object p1

    const-string p2, "id"

    invoke-virtual {p0, p2, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    invoke-virtual {p0, p4, p5}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->execute(Ljava/lang/StringBuilder;Lcom/hyphenate/chat/adapter/EMARHttpCallback;)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "upload code = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HttpClientManager"

    invoke-static {p2, p1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static uploadInParts(Ljava/lang/String;Ljava/lang/String;IJJLjava/util/Map;Ljava/lang/StringBuilder;Lcom/hyphenate/chat/adapter/EMARHttpCallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Lcom/hyphenate/chat/adapter/EMARHttpCallback;",
            ")I"
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/cloud/HttpClientManager$Builder;

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/EMClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->uploadFile(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->partNum(I)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->partLength(J)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    invoke-virtual {p0, p5, p6}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->offset(J)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setUrl(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    const/16 p1, 0x7530

    invoke-virtual {p0, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setConnectTimeout(I)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    invoke-virtual {p0, p7}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setHeaders(Ljava/util/Map;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->put()Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->getOptions()Lcom/hyphenate/chat/EMOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMOptions;->getAppKey()Ljava/lang/String;

    move-result-object p1

    const-string p2, "app"

    invoke-virtual {p0, p2, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMClient;->getCurrentUser()Ljava/lang/String;

    move-result-object p1

    const-string p2, "id"

    invoke-virtual {p0, p2, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p0

    invoke-virtual {p0, p8, p9}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->execute(Ljava/lang/StringBuilder;Lcom/hyphenate/chat/adapter/EMARHttpCallback;)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "uploadInParts code = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HttpClientManager"

    invoke-static {p2, p1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method
