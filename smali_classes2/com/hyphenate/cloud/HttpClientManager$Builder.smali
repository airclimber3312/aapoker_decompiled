.class public Lcom/hyphenate/cloud/HttpClientManager$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/cloud/HttpClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hyphenate/cloud/HttpClientManager$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    invoke-direct {v0, p1}, Lcom/hyphenate/cloud/HttpClientController$HttpParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    return-void
.end method

.method static synthetic access$000(Lcom/hyphenate/cloud/HttpClientManager$Builder;Lcom/hyphenate/cloud/HttpCallback;)Lcom/hyphenate/cloud/HttpResponse;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->executeNormal(Lcom/hyphenate/cloud/HttpCallback;)Lcom/hyphenate/cloud/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/hyphenate/cloud/HttpClientManager$Builder;Lcom/hyphenate/cloud/HttpCallback;)Lcom/hyphenate/cloud/HttpResponse;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->executeFile(Lcom/hyphenate/cloud/HttpCallback;)Lcom/hyphenate/cloud/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method private asyncExecuteFile(Lcom/hyphenate/cloud/HttpCallback;)V
    .locals 1

    new-instance v0, Lcom/hyphenate/cloud/HttpClientManager$Builder$3;

    invoke-direct {v0, p0, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder$3;-><init>(Lcom/hyphenate/cloud/HttpClientManager$Builder;Lcom/hyphenate/cloud/HttpCallback;)V

    invoke-virtual {v0}, Lcom/hyphenate/cloud/HttpClientManager$Builder$3;->start()V

    return-void
.end method

.method private asyncExecuteNormal(Lcom/hyphenate/cloud/HttpCallback;)V
    .locals 1

    new-instance v0, Lcom/hyphenate/cloud/HttpClientManager$Builder$2;

    invoke-direct {v0, p0, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder$2;-><init>(Lcom/hyphenate/cloud/HttpClientManager$Builder;Lcom/hyphenate/cloud/HttpCallback;)V

    invoke-virtual {v0}, Lcom/hyphenate/cloud/HttpClientManager$Builder$2;->start()V

    return-void
.end method

.method private download(Lcom/hyphenate/cloud/HttpResponse;Lcom/hyphenate/cloud/HttpCallback;)Lcom/hyphenate/cloud/HttpResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-object v1, v1, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mDownloadPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hyphenate/util/EMFileHelper;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    iget-object v1, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-object v1, v1, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mDownloadPath:Ljava/lang/String;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-object v1, v1, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mLocalFileUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hyphenate/util/EMFileHelper;->formatInUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/hyphenate/cloud/HttpClientManager;->access$200(Lcom/hyphenate/cloud/HttpResponse;Landroid/net/Uri;Lcom/hyphenate/cloud/HttpCallback;)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-static {p1, v0, p2}, Lcom/hyphenate/cloud/HttpClientManager;->access$300(Lcom/hyphenate/cloud/HttpResponse;Ljava/lang/String;Lcom/hyphenate/cloud/HttpCallback;)J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    const/16 v0, 0x198

    const-string v1, "downloaded content size is zero!"

    if-eqz p2, :cond_2

    invoke-interface {p2, v0, v1}, Lcom/hyphenate/cloud/HttpCallback;->onError(ILjava/lang/String;)V

    :cond_2
    iput v0, p1, Lcom/hyphenate/cloud/HttpResponse;->code:I

    iput-object v1, p1, Lcom/hyphenate/cloud/HttpResponse;->content:Ljava/lang/String;

    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    const-string v0, "HttpClientManager"

    const-string v1, "download successfully"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/hyphenate/cloud/HttpCallback;->onSuccess(Ljava/lang/String;)V

    :cond_4
    return-object p1
.end method

.method private executeFile(Lcom/hyphenate/cloud/HttpCallback;)Lcom/hyphenate/cloud/HttpResponse;
    .locals 8

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->executePrivate(Lcom/hyphenate/cloud/HttpCallback;)Lcom/hyphenate/cloud/HttpResponse;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget v2, v1, Lcom/hyphenate/cloud/HttpResponse;->code:I

    const/16 v3, 0x191

    if-eq v2, v3, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/hyphenate/cloud/EMHttpClient;->getInstance()Lcom/hyphenate/cloud/EMHttpClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hyphenate/cloud/EMHttpClient;->chatConfig()Lcom/hyphenate/chat/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hyphenate/chat/a/a;->n()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/32 v3, 0x927c0

    cmp-long v7, v5, v3

    if-gtz v7, :cond_2

    const-string v3, "unauthorized file"

    if-eqz p1, :cond_1

    invoke-interface {p1, v2, v3}, Lcom/hyphenate/cloud/HttpCallback;->onError(ILjava/lang/String;)V

    :cond_1
    iput-object v3, v1, Lcom/hyphenate/cloud/HttpResponse;->content:Ljava/lang/String;

    :cond_2
    iget-object v2, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-boolean v2, v2, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->canRetry:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget v2, v2, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRetryTimes:I

    if-lez v2, :cond_3

    invoke-static {}, Lcom/hyphenate/cloud/EMHttpClient;->getInstance()Lcom/hyphenate/cloud/EMHttpClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/cloud/EMHttpClient;->chatConfig()Lcom/hyphenate/chat/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/a/a;->l()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-object v4, v3, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mUrl:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/hyphenate/cloud/HttpClientManager;->getNewHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget v3, v2, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRetryTimes:I

    sub-int/2addr v3, v0

    iput v3, v2, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRetryTimes:I

    invoke-direct {p0, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->executeFile(Lcom/hyphenate/cloud/HttpCallback;)Lcom/hyphenate/cloud/HttpResponse;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :cond_3
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-boolean v2, v2, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->isUploadFile:Z

    if-eqz v2, :cond_5

    const-string v2, "failed to upload the file"

    goto :goto_1

    :cond_5
    const-string v2, "failed to download file"

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error execute:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HttpClientManager"

    invoke-static {v4, v3}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "refused"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-object v3, v3, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/hyphenate/util/NetUtils;->hasNetwork(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-boolean v3, v3, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->isDefaultRetry:Z

    if-nez v3, :cond_6

    iget-object v1, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iput-boolean v0, v1, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->isDefaultRetry:Z

    iget-object v1, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    const/16 v2, 0x14

    iput v2, v1, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRetryTimes:I

    iget-object v1, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iput-boolean v0, v1, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->canRetry:Z

    invoke-static {}, Lcom/hyphenate/cloud/EMHttpClient;->getInstance()Lcom/hyphenate/cloud/EMHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/cloud/EMHttpClient;->chatConfig()Lcom/hyphenate/chat/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/a/a;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-object v2, v1, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mUrl:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/hyphenate/cloud/HttpClientManager;->getNewHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mUrl:Ljava/lang/String;

    :goto_2
    invoke-direct {p0, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->executeFile(Lcom/hyphenate/cloud/HttpCallback;)Lcom/hyphenate/cloud/HttpResponse;

    move-result-object p1

    return-object p1

    :cond_6
    iget-object v3, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-boolean v3, v3, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->canRetry:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget v3, v3, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRetryTimes:I

    if-lez v3, :cond_7

    invoke-static {}, Lcom/hyphenate/cloud/EMHttpClient;->getInstance()Lcom/hyphenate/cloud/EMHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/cloud/EMHttpClient;->chatConfig()Lcom/hyphenate/chat/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/a/a;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-object v3, v2, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mUrl:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/hyphenate/cloud/HttpClientManager;->getNewHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget v2, v1, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRetryTimes:I

    sub-int/2addr v2, v0

    iput v2, v1, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRetryTimes:I

    goto :goto_2

    :cond_7
    if-nez v1, :cond_8

    new-instance v1, Lcom/hyphenate/cloud/HttpResponse;

    invoke-direct {v1}, Lcom/hyphenate/cloud/HttpResponse;-><init>()V

    :cond_8
    iget v0, v1, Lcom/hyphenate/cloud/HttpResponse;->code:I

    if-nez v0, :cond_9

    const/16 v0, 0x198

    iput v0, v1, Lcom/hyphenate/cloud/HttpResponse;->code:I

    :cond_9
    iput-object v2, v1, Lcom/hyphenate/cloud/HttpResponse;->content:Ljava/lang/String;

    if-eqz p1, :cond_a

    iget v0, v1, Lcom/hyphenate/cloud/HttpResponse;->code:I

    iget-object v2, v1, Lcom/hyphenate/cloud/HttpResponse;->content:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Lcom/hyphenate/cloud/HttpCallback;->onError(ILjava/lang/String;)V

    :cond_a
    return-object v1
.end method

.method private executeNormal(Lcom/hyphenate/cloud/HttpCallback;)Lcom/hyphenate/cloud/HttpResponse;
    .locals 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->executePrivate(Lcom/hyphenate/cloud/HttpCallback;)Lcom/hyphenate/cloud/HttpResponse;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget v1, v0, Lcom/hyphenate/cloud/HttpResponse;->code:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-boolean v1, v1, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->canRetry:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget v1, v1, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRetryTimes:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget v2, v1, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRetryTimes:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRetryTimes:I

    invoke-direct {p0, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->executeNormal(Lcom/hyphenate/cloud/HttpCallback;)Lcom/hyphenate/cloud/HttpResponse;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "failed to request"

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error execute:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HttpClientManager"

    invoke-static {v3, v2}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-boolean v2, v2, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->canRetry:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget v2, v2, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRetryTimes:I

    if-lez v2, :cond_2

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget v1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRetryTimes:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRetryTimes:I

    invoke-direct {p0, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->executeNormal(Lcom/hyphenate/cloud/HttpCallback;)Lcom/hyphenate/cloud/HttpResponse;

    move-result-object p1

    return-object p1

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Lcom/hyphenate/cloud/HttpResponse;

    invoke-direct {v0}, Lcom/hyphenate/cloud/HttpResponse;-><init>()V

    :cond_3
    iget v2, v0, Lcom/hyphenate/cloud/HttpResponse;->code:I

    if-nez v2, :cond_4

    const/16 v2, 0x198

    iput v2, v0, Lcom/hyphenate/cloud/HttpResponse;->code:I

    :cond_4
    iput-object v1, v0, Lcom/hyphenate/cloud/HttpResponse;->content:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget v2, v0, Lcom/hyphenate/cloud/HttpResponse;->code:I

    invoke-interface {p1, v2, v1}, Lcom/hyphenate/cloud/HttpCallback;->onError(ILjava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method private executePrivate(Lcom/hyphenate/cloud/HttpCallback;)Lcom/hyphenate/cloud/HttpResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "HttpClientManager"

    :try_start_0
    invoke-virtual {p0}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->build()Lcom/hyphenate/cloud/HttpClientController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/cloud/HttpClientController;->i()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-object v2, v2, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mParamsString:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/hyphenate/cloud/HttpClientController;->a(Ljava/lang/String;Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-object v2, v2, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mParams:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lcom/hyphenate/cloud/HttpClientController;->a(Ljava/util/Map;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v2, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    invoke-virtual {v2, v1, v3, p1}, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->addFile(Lcom/hyphenate/cloud/HttpClientController;Ljava/io/OutputStream;Lcom/hyphenate/cloud/HttpCallback;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Connection reset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    throw p1

    :cond_1
    :goto_1
    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    invoke-virtual {v3, v1}, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->getResponse(Lcom/hyphenate/cloud/HttpClientController;)Lcom/hyphenate/cloud/HttpResponse;

    move-result-object v1

    if-eqz v2, :cond_3

    iget v2, v1, Lcom/hyphenate/cloud/HttpResponse;->code:I

    const/16 v3, 0x19d

    if-eq v2, v3, :cond_3

    const-string v2, "Connection reset but not 413"

    if-eqz p1, :cond_2

    iget v3, v1, Lcom/hyphenate/cloud/HttpResponse;->code:I

    invoke-interface {p1, v3, v2}, Lcom/hyphenate/cloud/HttpCallback;->onError(ILjava/lang/String;)V

    :cond_2
    iput-object v2, v1, Lcom/hyphenate/cloud/HttpResponse;->content:Ljava/lang/String;

    :cond_3
    iget v2, v1, Lcom/hyphenate/cloud/HttpResponse;->code:I

    const/16 v3, 0x191

    if-ne v2, v3, :cond_4

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v2

    iget-object v3, v1, Lcom/hyphenate/cloud/HttpResponse;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/hyphenate/chat/EMClient;->notifyTokenExpired(Ljava/lang/String;)V

    :cond_4
    iget v2, v1, Lcom/hyphenate/cloud/HttpResponse;->code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-boolean v2, v2, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->isDownloadFile:Z

    if-eqz v2, :cond_5

    invoke-direct {p0, v1, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->download(Lcom/hyphenate/cloud/HttpResponse;Lcom/hyphenate/cloud/HttpCallback;)Lcom/hyphenate/cloud/HttpResponse;

    move-result-object p1

    return-object p1

    :cond_5
    if-eqz p1, :cond_7

    iget-object v2, v1, Lcom/hyphenate/cloud/HttpResponse;->content:Ljava/lang/String;

    invoke-interface {p1, v2}, Lcom/hyphenate/cloud/HttpCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_7

    iget v2, v1, Lcom/hyphenate/cloud/HttpResponse;->code:I

    iget-object v3, v1, Lcom/hyphenate/cloud/HttpResponse;->content:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Lcom/hyphenate/cloud/HttpCallback;->onError(ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_7
    :goto_3
    return-object v1

    :catch_1
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error message = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public asyncExecute(Lcom/hyphenate/cloud/HttpCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-boolean v0, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->isUploadFile:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-boolean v0, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->isDownloadFile:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->asyncExecuteNormal(Lcom/hyphenate/cloud/HttpCallback;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->asyncExecuteFile(Lcom/hyphenate/cloud/HttpCallback;)V

    :goto_1
    return-void
.end method

.method public build()Lcom/hyphenate/cloud/HttpClientController;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/hyphenate/cloud/HttpClientController;

    iget-object v1, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-object v1, v1, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/hyphenate/cloud/HttpClientController;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    invoke-virtual {v1, v0}, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->apply(Lcom/hyphenate/cloud/HttpClientController;)V

    return-object v0
.end method

.method public checkAndProcessSSL(Z)Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iput-boolean p1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->isCheckSSL:Z

    return-object p0
.end method

.method public delete()Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    const-string v1, "DELETE"

    iput-object v1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRequestMethod:Ljava/lang/String;

    return-object p0
.end method

.method public downloadFile(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    const-string v1, "GET"

    iput-object v1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRequestMethod:Ljava/lang/String;

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iput-object p1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mDownloadPath:Ljava/lang/String;

    iget-object p1, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->isDownloadFile:Z

    return-object p0
.end method

.method public execute(Ljava/lang/StringBuilder;Lcom/hyphenate/chat/adapter/EMARHttpCallback;)I
    .locals 7

    const-string v0, "HttpClientManager"

    const-string v1, "json parse exception remotefilepath:"

    const/16 v2, 0x198

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lcom/hyphenate/cloud/HttpClientManager$Builder$1;

    invoke-direct {v4, p0, p2}, Lcom/hyphenate/cloud/HttpClientManager$Builder$1;-><init>(Lcom/hyphenate/cloud/HttpClientManager$Builder;Lcom/hyphenate/chat/adapter/EMARHttpCallback;)V

    invoke-direct {p0, v4}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->executePrivate(Lcom/hyphenate/cloud/HttpCallback;)Lcom/hyphenate/cloud/HttpResponse;

    move-result-object v3

    iget v2, v3, Lcom/hyphenate/cloud/HttpResponse;->code:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_0

    :try_start_1
    iget-object v4, v3, Lcom/hyphenate/cloud/HttpResponse;->content:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-object v1, v1, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    return v2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, "failed to upload the files"

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "error asyncExecute:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "refused"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-object v5, v5, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/hyphenate/util/NetUtils;->hasNetwork(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-boolean v5, v5, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->canRetry:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget v5, v5, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRetryTimes:I

    if-lez v5, :cond_2

    invoke-static {}, Lcom/hyphenate/cloud/EMHttpClient;->getInstance()Lcom/hyphenate/cloud/EMHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/cloud/EMHttpClient;->chatConfig()Lcom/hyphenate/chat/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hyphenate/chat/a/a;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-object v3, v2, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mUrl:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/hyphenate/cloud/HttpClientManager;->getNewHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget v2, v1, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRetryTimes:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRetryTimes:I

    const-string/jumbo v1, "\u91cd\u8bd5\u4e2d\u3002\u3002\u3002"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->execute(Ljava/lang/StringBuilder;Lcom/hyphenate/chat/adapter/EMARHttpCallback;)I

    move-result p1

    return p1

    :cond_2
    if-eqz p1, :cond_3

    :try_start_3
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    nop

    :cond_3
    :goto_2
    instance-of p1, v1, Ljava/lang/IllegalArgumentException;

    if-eqz p1, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    instance-of p1, v1, Ljava/io/FileNotFoundException;

    if-eqz p1, :cond_5

    const/16 p1, 0x194

    return p1

    :cond_5
    if-eqz v3, :cond_6

    iget p1, v3, Lcom/hyphenate/cloud/HttpResponse;->code:I

    return p1

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public execute()Lcom/hyphenate/cloud/HttpResponse;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->execute(Lcom/hyphenate/cloud/HttpCallback;)Lcom/hyphenate/cloud/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/hyphenate/cloud/HttpCallback;)Lcom/hyphenate/cloud/HttpResponse;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-boolean v0, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->isUploadFile:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-boolean v0, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->isDownloadFile:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->executeNormal(Lcom/hyphenate/cloud/HttpCallback;)Lcom/hyphenate/cloud/HttpResponse;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->executeFile(Lcom/hyphenate/cloud/HttpCallback;)Lcom/hyphenate/cloud/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public followRedirect(Z)Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iput-boolean p1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->followRedirect:Z

    return-object p0
.end method

.method public get()Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    const-string v1, "GET"

    iput-object v1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRequestMethod:Ljava/lang/String;

    return-object p0
.end method

.method public isCanRetry(Z)Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iput-boolean p1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->canRetry:Z

    return-object p0
.end method

.method public offset(J)Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iput-wide p1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->offset:J

    return-object p0
.end method

.method public partLength(J)Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iput-wide p1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->partLength:J

    return-object p0
.end method

.method public partNum(I)Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iput p1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->partNum:I

    return-object p0
.end method

.method public post()Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    const-string v1, "POST"

    iput-object v1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRequestMethod:Ljava/lang/String;

    return-object p0
.end method

.method public put()Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    const-string v1, "PUT"

    iput-object v1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRequestMethod:Ljava/lang/String;

    return-object p0
.end method

.method public setConnectTimeout(I)Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iput p1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mConnectTimeout:I

    return-object p0
.end method

.method public setDownloadPath(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iput-object p1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mDownloadPath:Ljava/lang/String;

    return-object p0
.end method

.method public setFileKey(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iput-object p1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mFileKey:Ljava/lang/String;

    return-object p0
.end method

.method public setFilename(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iput-object p1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mFilename:Ljava/lang/String;

    return-object p0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-object v0, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setHeaders(Ljava/util/Map;)Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hyphenate/cloud/HttpClientManager$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-object v0, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public setLocalFilePath(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iput-object p1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mLocalFileUri:Ljava/lang/String;

    return-object p0
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-object v0, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setParams(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iput-object p1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mParamsString:Ljava/lang/String;

    return-object p0
.end method

.method public setParams(Ljava/util/Map;)Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hyphenate/cloud/HttpClientManager$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iget-object v0, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public setReadTimeout(I)Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iput p1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mReadTimeout:I

    return-object p0
.end method

.method public setRequestMethod(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iput-object p1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRequestMethod:Ljava/lang/String;

    return-object p0
.end method

.method public setRetryTimes(I)Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->canRetry:Z

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iput p1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRetryTimes:I

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iput-object p1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;I)Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iput-object p1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mUrl:Ljava/lang/String;

    iget-object p1, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iput p2, p1, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mPort:I

    return-object p0
.end method

.method public uploadFile(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    const-string v1, "POST"

    iput-object v1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRequestMethod:Ljava/lang/String;

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iput-object p1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mLocalFileUri:Ljava/lang/String;

    iget-object p1, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->isUploadFile:Z

    return-object p0
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    const-string v1, "POST"

    iput-object v1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRequestMethod:Ljava/lang/String;

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iput-object p1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mLocalFileUri:Ljava/lang/String;

    iget-object p1, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iput-object p2, p1, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mFilename:Ljava/lang/String;

    iget-object p1, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    iput-object p3, p1, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mFileKey:Ljava/lang/String;

    iget-object p1, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->isUploadFile:Z

    return-object p0
.end method

.method public withToken(Z)Lcom/hyphenate/cloud/HttpClientManager$Builder;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder;->p:Lcom/hyphenate/cloud/HttpClientController$HttpParams;

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, v0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->isNotUseToken:Z

    return-object p0
.end method
