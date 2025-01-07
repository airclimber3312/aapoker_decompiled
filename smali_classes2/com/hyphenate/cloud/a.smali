.class Lcom/hyphenate/cloud/a;
.super Lcom/hyphenate/cloud/CloudFileManager;


# static fields
.field private static final b:I = 0x14


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/hyphenate/cloud/CloudFileManager;-><init>()V

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/hyphenate/cloud/a;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/cloud/CloudFileManager;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/hyphenate/cloud/a;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/cloud/CloudFileManager;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/hyphenate/cloud/a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/hyphenate/cloud/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/cloud/CloudOperationCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/hyphenate/cloud/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/cloud/CloudOperationCallback;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/cloud/CloudOperationCallback;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/cloud/CloudOperationCallback;",
            "IZ)V"
        }
    .end annotation

    const-string p8, "sendFileToServerHttpWithCountDown ....."

    const-string v0, "CloudFileManager"

    invoke-static {v0, p8}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p8, Ljava/io/File;

    invoke-direct {p8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p8}, Ljava/io/File;->isFile()Z

    move-result p8

    if-nez p8, :cond_0

    const-string p1, "Source file doesn\'t exist"

    invoke-static {v0, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p6, p1}, Lcom/hyphenate/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p5}, Lcom/hyphenate/cloud/HttpClientConfig;->getTimeout(Ljava/util/Map;)I

    move-result p8

    new-instance v0, Lcom/hyphenate/cloud/HttpClientManager$Builder;

    iget-object v1, p0, Lcom/hyphenate/cloud/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->uploadFile(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setUrl(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p1

    invoke-virtual {p1, p8}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setConnectTimeout(I)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p1

    const-string p2, "app"

    invoke-virtual {p1, p2, p3}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setParam(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p1

    const-string p2, "id"

    invoke-virtual {p1, p2, p4}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setParam(Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setHeaders(Ljava/util/Map;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p1

    invoke-virtual {p1, p7}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setRetryTimes(I)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p1

    new-instance p2, Lcom/hyphenate/cloud/a$1;

    invoke-direct {p2, p0, p6}, Lcom/hyphenate/cloud/a$1;-><init>(Lcom/hyphenate/cloud/a;Lcom/hyphenate/cloud/CloudOperationCallback;)V

    invoke-virtual {p1, p2}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->execute(Lcom/hyphenate/cloud/HttpCallback;)Lcom/hyphenate/cloud/HttpResponse;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/cloud/CloudOperationCallback;I)V
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
            "Lcom/hyphenate/cloud/CloudOperationCallback;",
            "I)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/hyphenate/cloud/HttpClientConfig;->getTimeout(Ljava/util/Map;)I

    move-result v0

    invoke-static {p1}, Lcom/hyphenate/cloud/HttpClientConfig;->getFileRemoteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remoteUrl:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " localFilePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CloudFileManager"

    invoke-static {v2, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/hyphenate/cloud/HttpClientManager$Builder;

    iget-object v2, p0, Lcom/hyphenate/cloud/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/hyphenate/cloud/HttpClientManager$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->downloadFile(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setUrl(Ljava/lang/String;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setConnectTimeout(I)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setHeaders(Ljava/util/Map;)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->setRetryTimes(I)Lcom/hyphenate/cloud/HttpClientManager$Builder;

    move-result-object p1

    new-instance p2, Lcom/hyphenate/cloud/a$3;

    invoke-direct {p2, p0, p4}, Lcom/hyphenate/cloud/a$3;-><init>(Lcom/hyphenate/cloud/a;Lcom/hyphenate/cloud/CloudOperationCallback;)V

    invoke-virtual {p1, p2}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->execute(Lcom/hyphenate/cloud/HttpCallback;)Lcom/hyphenate/cloud/HttpResponse;

    return-void

    :cond_1
    :goto_0
    const-string p1, "invalid remoteUrl"

    invoke-interface {p4, p1}, Lcom/hyphenate/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/cloud/CloudOperationCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/cloud/CloudOperationCallback;",
            ")V"
        }
    .end annotation

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/hyphenate/cloud/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/cloud/CloudOperationCallback;IZ)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/cloud/CloudOperationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/cloud/CloudOperationCallback;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/hyphenate/cloud/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/cloud/CloudOperationCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "uploadFile error:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CloudFileManager"

    invoke-static {p3, p2}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p6, p1}, Lcom/hyphenate/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/cloud/CloudOperationCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/cloud/CloudOperationCallback;",
            ")V"
        }
    .end annotation

    const/16 v5, 0x14

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/hyphenate/cloud/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/cloud/CloudOperationCallback;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "failed to download file : "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p4, :cond_1

    invoke-interface {p4, p1}, Lcom/hyphenate/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/cloud/CloudOperationCallback;)V
    .locals 0
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
            "Lcom/hyphenate/cloud/CloudOperationCallback;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p1, "remote file path is null or empty"

    if-eqz p5, :cond_0

    invoke-interface {p5, p1}, Lcom/hyphenate/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V

    :cond_0
    const-string p2, "CloudFileManager"

    invoke-static {p2, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/hyphenate/cloud/HttpClientConfig;->getFileRemoteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/hyphenate/cloud/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/cloud/CloudOperationCallback;)V

    :goto_0
    return-void
.end method

.method public uploadFileInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/cloud/CloudOperationCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/cloud/CloudOperationCallback;",
            ")V"
        }
    .end annotation

    new-instance v8, Lcom/hyphenate/cloud/a$2;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/hyphenate/cloud/a$2;-><init>(Lcom/hyphenate/cloud/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/cloud/CloudOperationCallback;)V

    invoke-virtual {v8}, Lcom/hyphenate/cloud/a$2;->start()V

    return-void
.end method
