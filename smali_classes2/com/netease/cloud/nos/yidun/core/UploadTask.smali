.class public Lcom/netease/cloud/nos/yidun/core/UploadTask;
.super Landroid/os/AsyncTask;
.source "UploadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lcom/netease/cloud/nos/yidun/core/CallRet;",
        ">;"
    }
.end annotation


# static fields
.field private static final HTTP_REQUEST_TAG:Ljava/lang/String; = "UploadTask"

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private MD5:Ljava/lang/String;

.field private bucketName:Ljava/lang/String;

.field private callback:Lcom/netease/cloud/nos/yidun/core/Callback;

.field private context:Landroid/content/Context;

.field private fileName:Ljava/lang/String;

.field private fileParam:Ljava/lang/Object;

.field private fileSize:J

.field public volatile get:Lokhttp3/Request$Builder;

.field private inputStream:Ljava/io/InputStream;

.field private isHttps:Z

.field private item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

.field private meta:Lcom/netease/cloud/nos/yidun/core/WanNOSObject;

.field private offset:J

.field public volatile post:Lokhttp3/Request$Builder;

.field private token:Ljava/lang/String;

.field private volatile upCancelled:Z

.field private uploadContext:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/netease/cloud/nos/yidun/core/UploadTask;

    invoke-static {v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/yidun/core/Callback;ZLcom/netease/cloud/nos/yidun/core/WanNOSObject;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->upCancelled:Z

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->MD5:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->token:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->bucketName:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->fileName:Ljava/lang/String;

    .line 27
    invoke-virtual {p5}, Ljava/io/InputStream;->markSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, p5

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, p5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->inputStream:Ljava/io/InputStream;

    .line 29
    :try_start_0
    invoke-virtual {p5}, Ljava/io/InputStream;->available()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->fileSize:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-wide/16 p1, 0x0

    .line 31
    iput-wide p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->fileSize:J

    .line 33
    :goto_1
    iput-object p6, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->fileParam:Ljava/lang/Object;

    .line 34
    iput-object p7, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->uploadContext:Ljava/lang/String;

    .line 35
    iput-object p8, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->callback:Lcom/netease/cloud/nos/yidun/core/Callback;

    .line 36
    iput-boolean p9, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->isHttps:Z

    .line 37
    new-instance p1, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    invoke-direct {p1}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;-><init>()V

    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    .line 38
    iput-object p10, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->meta:Lcom/netease/cloud/nos/yidun/core/WanNOSObject;

    .line 39
    invoke-virtual {p10}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getContentMD5()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->MD5:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 41
    iget-wide p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->fileSize:J

    .line 42
    invoke-static {}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    move-result-object p3

    .line 43
    invoke-virtual {p3}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->getMd5FileMaxSize()I

    move-result p3

    int-to-long p3, p3

    cmp-long p5, p1, p3

    if-gtz p5, :cond_1

    .line 44
    iget-object p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->inputStream:Ljava/io/InputStream;

    invoke-static {p1}, Lcom/netease/cloud/nos/yidun/utils/FileDigest;->getFileMD5(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->MD5:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private abort()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/cloud/nos/yidun/utils/Util;->getHttpClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 2
    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "UploadTask"

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createCancelCallRet()Lcom/netease/cloud/nos/yidun/core/CallRet;
    .locals 9

    .line 1
    new-instance v8, Lcom/netease/cloud/nos/yidun/core/CallRet;

    iget-object v1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->fileParam:Ljava/lang/Object;

    iget-object v2, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->uploadContext:Ljava/lang/String;

    const/16 v3, 0x258

    const-string v4, ""

    const-string v5, ""

    const-string v6, "uploading is cancelled"

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/netease/cloud/nos/yidun/core/CallRet;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v8
.end method

.method private doUpload(I)Lcom/netease/cloud/nos/yidun/http/HttpResult;
    .locals 11

    const-string v0, "offset is invalid in server side, with offset:"

    .line 1
    sget-object v1, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file parameters: ContentMD5="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->meta:Lcom/netease/cloud/nos/yidun/core/WanNOSObject;

    invoke-virtual {v3}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getContentMD5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", realMD5="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->MD5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ContentType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->meta:Lcom/netease/cloud/nos/yidun/core/WanNOSObject;

    .line 2
    invoke-virtual {v3}, Lcom/netease/cloud/nos/yidun/core/WanNOSObject;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", chunkSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v1, v2}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->uploadContext:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 11
    iget-object v3, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->bucketName:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->fileName:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->uploadContext:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->token:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->isHttps:Z

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/netease/cloud/nos/yidun/core/UploadTask;->getBreakOffset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/netease/cloud/nos/yidun/http/HttpResult;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/netease/cloud/nos/yidun/http/HttpResult;->getStatusCode()I

    move-result v2

    const/16 v3, 0x194

    if-ne v2, v3, :cond_0

    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->uploadContext:Ljava/lang/String;

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Lcom/netease/cloud/nos/yidun/http/HttpResult;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 16
    invoke-virtual {v1}, Lcom/netease/cloud/nos/yidun/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "offset"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->offset:J

    goto :goto_0

    :cond_1
    return-object v1

    .line 22
    :cond_2
    :goto_0
    iget-wide v3, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->offset:J

    iget-wide v1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->fileSize:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v1

    if-ltz v7, :cond_3

    cmp-long v7, v1, v5

    if-nez v7, :cond_4

    :cond_3
    cmp-long v1, v3, v5

    if-gez v1, :cond_5

    .line 24
    :cond_4
    new-instance p1, Lcom/netease/cloud/nos/yidun/http/HttpResult;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lcom/netease/cloud/nos/yidun/exception/InvalidOffsetException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->offset:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", file length: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->fileSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/netease/cloud/nos/yidun/exception/InvalidOffsetException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x2bb

    invoke-direct {p1, v0, v1, v2}, Lcom/netease/cloud/nos/yidun/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    return-object p1

    .line 29
    :cond_5
    iget-object v1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->inputStream:Ljava/io/InputStream;

    iget-object v6, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->bucketName:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->fileName:Ljava/lang/String;

    iget-object v8, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->token:Ljava/lang/String;

    iget-object v9, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->uploadContext:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->isHttps:Z

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v10}, Lcom/netease/cloud/nos/yidun/core/UploadTask;->putFile(Landroid/content/Context;Ljava/io/InputStream;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/netease/cloud/nos/yidun/http/HttpResult;

    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->setUploadType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 40
    sget-object v0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v1, "offset result exception"

    invoke-static {v0, v1, p1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    new-instance v0, Lcom/netease/cloud/nos/yidun/http/HttpResult;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/16 v2, 0x31f

    invoke-direct {v0, v2, v1, p1}, Lcom/netease/cloud/nos/yidun/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    return-object v0
.end method

.method private executeQueryTask(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)Lcom/netease/cloud/nos/yidun/http/HttpResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netease/cloud/nos/yidun/http/HttpResult;"
        }
    .end annotation

    const-string v0, "http get response is correct, response: "

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v2

    .line 2
    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v2, "UploadTask"

    .line 3
    invoke-virtual {p1, v2}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->get:Lokhttp3/Request$Builder;

    if-eqz p3, :cond_0

    .line 5
    iget-object p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->get:Lokhttp3/Request$Builder;

    invoke-static {p1, p3}, Lcom/netease/cloud/nos/yidun/utils/Util;->setHeader(Lokhttp3/Request$Builder;Ljava/util/Map;)Lokhttp3/Request$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->get:Lokhttp3/Request$Builder;

    .line 7
    :cond_0
    invoke-static {p2}, Lcom/netease/cloud/nos/yidun/utils/Util;->getHttpClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->get:Lokhttp3/Request$Builder;

    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_3

    .line 11
    :try_start_1
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    .line 12
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p3

    .line 13
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xc8

    if-ne p1, v3, :cond_1

    .line 15
    sget-object v3, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 18
    :cond_1
    sget-object p3, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v0, "http get response is failed."

    invoke-static {p3, v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :goto_0
    new-instance p3, Lcom/netease/cloud/nos/yidun/http/HttpResult;

    invoke-direct {p3, p1, v2, v1}, Lcom/netease/cloud/nos/yidun/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V

    .line 31
    iput-object v1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->get:Lokhttp3/Request$Builder;

    return-object p3

    :cond_2
    move-object p2, v1

    .line 32
    :cond_3
    :try_start_2
    new-instance p1, Lcom/netease/cloud/nos/yidun/http/HttpResult;

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const/16 v0, 0x383

    invoke-direct {p1, v0, p3, v1}, Lcom/netease/cloud/nos/yidun/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_4

    .line 39
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V

    .line 41
    :cond_4
    iput-object v1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->get:Lokhttp3/Request$Builder;

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object p2, v1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object p2, v1

    .line 42
    :goto_1
    :try_start_3
    sget-object p3, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v0, "http get task exception"

    invoke-static {p3, v0, p1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    new-instance p3, Lcom/netease/cloud/nos/yidun/http/HttpResult;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/16 v2, 0x31f

    invoke-direct {p3, v2, v0, p1}, Lcom/netease/cloud/nos/yidun/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_5

    .line 46
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V

    .line 48
    :cond_5
    iput-object v1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->get:Lokhttp3/Request$Builder;

    return-object p3

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz p2, :cond_6

    .line 49
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V

    .line 51
    :cond_6
    iput-object v1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->get:Lokhttp3/Request$Builder;

    throw p1
.end method

.method private failureOperation(Lcom/netease/cloud/nos/yidun/core/CallRet;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->setUploaderSucc(I)V

    .line 2
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->add(Landroid/content/Context;Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;)V

    .line 3
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->callback:Lcom/netease/cloud/nos/yidun/core/Callback;

    invoke-interface {v0, p1}, Lcom/netease/cloud/nos/yidun/core/Callback;->onFailure(Lcom/netease/cloud/nos/yidun/core/CallRet;)V

    return-void
.end method

.method private getBreakOffset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/netease/cloud/nos/yidun/http/HttpResult;
    .locals 8

    .line 1
    invoke-static {p1, p2, p6}, Lcom/netease/cloud/nos/yidun/utils/Util;->getUploadServer(Landroid/content/Context;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p6

    .line 2
    sget-object v0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "upload servers: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "x-nos-token"

    .line 4
    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p5, 0x0

    .line 7
    :try_start_0
    array-length v1, p6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    move-object v3, p5

    :goto_0
    if-ge v2, v1, :cond_3

    :try_start_1
    aget-object v4, p6, v2

    .line 8
    invoke-static {v4, p2, p3, p4}, Lcom/netease/cloud/nos/yidun/utils/Util;->buildQueryUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 10
    sget-object v5, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "break query upload server url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-direct {p0, v4, p1, v0}, Lcom/netease/cloud/nos/yidun/core/UploadTask;->retryQuery(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)Lcom/netease/cloud/nos/yidun/http/HttpResult;

    move-result-object v3

    .line 13
    iget-boolean v4, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->upCancelled:Z

    if-eqz v4, :cond_0

    return-object v3

    .line 16
    :cond_0
    invoke-virtual {v3}, Lcom/netease/cloud/nos/yidun/http/HttpResult;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_2

    .line 17
    invoke-virtual {v3}, Lcom/netease/cloud/nos/yidun/http/HttpResult;->getStatusCode()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v5, 0x194

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v3, p5

    .line 22
    :goto_2
    sget-object p2, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string p3, "get break offset exception"

    invoke-static {p2, p3, p1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez v3, :cond_3

    .line 24
    new-instance v3, Lcom/netease/cloud/nos/yidun/http/HttpResult;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const/16 p2, 0x31f

    invoke-direct {v3, p2, p1, p5}, Lcom/netease/cloud/nos/yidun/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    :cond_3
    return-object v3
.end method

.method private post(Ljava/lang/String;[B)Lcom/netease/cloud/nos/yidun/http/HttpResult;
    .locals 6

    const-string v0, "http post response is correct, response: "

    const-string v1, "http post response is failed, status code: "

    .line 1
    sget-object v2, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v3, "http post task is executing"

    invoke-static {v2, v3}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 6
    :try_start_0
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 7
    invoke-static {v3, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-virtual {v4, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 8
    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p2, "UploadTask"

    .line 9
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->post:Lokhttp3/Request$Builder;

    .line 10
    iget-object p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->post:Lokhttp3/Request$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p2, "x-nos-token"

    :try_start_1
    iget-object v4, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->token:Ljava/lang/String;

    invoke-virtual {p1, p2, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 11
    iget-object p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->MD5:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->post:Lokhttp3/Request$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p2, "Content-MD5"

    :try_start_2
    iget-object v4, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->MD5:Ljava/lang/String;

    invoke-virtual {p1, p2, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->meta:Lcom/netease/cloud/nos/yidun/core/WanNOSObject;

    if-eqz p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->post:Lokhttp3/Request$Builder;

    iget-object p2, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->meta:Lcom/netease/cloud/nos/yidun/core/WanNOSObject;

    invoke-static {p1, p2}, Lcom/netease/cloud/nos/yidun/utils/Util;->addHeaders(Lokhttp3/Request$Builder;Lcom/netease/cloud/nos/yidun/core/WanNOSObject;)V

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/cloud/nos/yidun/utils/Util;->getHttpClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->post:Lokhttp3/Request$Builder;

    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    const-string p2, "http post task executing finished"

    .line 18
    invoke-static {v2, p2}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 20
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_4

    .line 21
    :try_start_3
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    .line 22
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc8

    if-ne p1, v5, :cond_2

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 28
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :goto_0
    new-instance v0, Lcom/netease/cloud/nos/yidun/http/HttpResult;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/netease/cloud/nos/yidun/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_3
    move-object p2, v3

    .line 34
    :cond_4
    new-instance v0, Lcom/netease/cloud/nos/yidun/http/HttpResult;

    const/16 p1, 0x383

    invoke-direct {v0, p1, v3, v3}, Lcom/netease/cloud/nos/yidun/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-eqz p2, :cond_5

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object p2, v3

    goto :goto_4

    :catch_1
    move-exception p1

    move-object p2, v3

    .line 37
    :goto_2
    :try_start_4
    sget-object v0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v1, "http post exception"

    invoke-static {v0, v1, p1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    new-instance v0, Lcom/netease/cloud/nos/yidun/http/HttpResult;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/16 v2, 0x31f

    invoke-direct {v0, v2, v1, p1}, Lcom/netease/cloud/nos/yidun/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p2, :cond_5

    .line 41
    :goto_3
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V

    .line 43
    :cond_5
    iput-object v3, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->post:Lokhttp3/Request$Builder;

    return-object v0

    :catchall_1
    move-exception p1

    :goto_4
    if-eqz p2, :cond_6

    .line 44
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V

    .line 46
    :cond_6
    iput-object v3, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->post:Lokhttp3/Request$Builder;

    throw p1
.end method

.method private putFile(Landroid/content/Context;Ljava/io/InputStream;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/netease/cloud/nos/yidun/http/HttpResult;
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    move-object/from16 v4, p8

    .line 1
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->available()I

    move-result v5

    int-to-long v5, v5

    .line 3
    invoke-virtual/range {p2 .. p4}, Ljava/io/InputStream;->skip(J)J

    .line 4
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->mark(I)V

    .line 5
    iget-object v7, v1, Lcom/netease/cloud/nos/yidun/core/UploadTask;->item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    invoke-virtual {v7, v5, v6}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->setFileSize(J)V

    .line 6
    sget-object v7, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "file length is: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v7, p9

    .line 10
    iput-object v7, v1, Lcom/netease/cloud/nos/yidun/core/UploadTask;->uploadContext:Ljava/lang/String;

    const/4 v8, 0x0

    move-wide/from16 v14, p3

    const/4 v10, 0x1

    const/16 v17, 0x0

    :goto_0
    if-eqz v10, :cond_d

    const-wide/16 v18, 0x0

    cmp-long v11, v14, v5

    if-ltz v11, :cond_0

    cmp-long v11, v14, v18

    if-nez v11, :cond_d

    cmp-long v11, v5, v18

    if-nez v11, :cond_d

    .line 13
    :cond_0
    :try_start_0
    iget-boolean v11, v1, Lcom/netease/cloud/nos/yidun/core/UploadTask;->upCancelled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v11, :cond_d

    int-to-long v11, v3

    move-object/from16 p3, v8

    sub-long v7, v5, v14

    .line 15
    :try_start_1
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v8, v7

    .line 16
    sget-object v7, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "upload block size is: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v7, p6

    move/from16 v13, p10

    .line 17
    invoke-static {v0, v7, v13}, Lcom/netease/cloud/nos/yidun/utils/Util;->getUploadServer(Landroid/content/Context;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v12

    .line 18
    new-array v11, v8, [B

    .line 19
    invoke-virtual {v2, v11}, Ljava/io/InputStream;->read([B)I

    move-result v16

    if-nez v16, :cond_1

    goto/16 :goto_6

    .line 23
    :cond_1
    array-length v9, v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v20, p3

    move/from16 v21, v10

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v22, 0x0

    :goto_1
    if-ge v7, v9, :cond_c

    move/from16 p4, v9

    :try_start_2
    aget-object v9, v12, v7

    move/from16 p3, v10

    move-object/from16 v16, v11

    int-to-long v10, v8

    add-long v23, v10, v14

    cmp-long v10, v23, v5

    if-ltz v10, :cond_2

    .line 25
    sget-object v10, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v11, "upload block is the last block"

    invoke-static {v10, v11}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v25, 0x1

    goto :goto_2

    :cond_2
    move/from16 v25, p3

    .line 28
    :goto_2
    iget-object v10, v1, Lcom/netease/cloud/nos/yidun/core/UploadTask;->item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    invoke-virtual {v10, v9}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->setUploaderIP(Ljava/lang/String;)V

    .line 29
    iget-object v11, v1, Lcom/netease/cloud/nos/yidun/core/UploadTask;->uploadContext:Ljava/lang/String;

    move-object v10, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v11

    move-object/from16 v11, p6

    move/from16 v26, v8

    move-object v8, v12

    move-object/from16 v12, p7

    move-object/from16 v13, v16

    move-wide/from16 v27, v14

    move/from16 v16, v25

    invoke-static/range {v10 .. v16}, Lcom/netease/cloud/nos/yidun/utils/Util;->buildPostDataUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v10

    .line 31
    invoke-direct {v1, v10, v4, v0, v9}, Lcom/netease/cloud/nos/yidun/core/UploadTask;->retryPutFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;[B)Lcom/netease/cloud/nos/yidun/http/HttpResult;

    move-result-object v20

    .line 32
    iget-boolean v10, v1, Lcom/netease/cloud/nos/yidun/core/UploadTask;->upCancelled:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_3

    .line 98
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    return-object v20

    .line 99
    :cond_3
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Lcom/netease/cloud/nos/yidun/http/HttpResult;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_7

    .line 103
    invoke-virtual/range {v20 .. v20}, Lcom/netease/cloud/nos/yidun/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "offset"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    cmp-long v9, v23, v7

    if-eqz v9, :cond_4

    .line 105
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->reset()V

    move-wide/from16 v11, v27

    sub-long v9, v7, v11

    .line 106
    invoke-virtual {v2, v9, v10}, Ljava/io/InputStream;->skip(J)J

    .line 108
    :cond_4
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->mark(I)V

    .line 109
    invoke-virtual/range {v20 .. v20}, Lcom/netease/cloud/nos/yidun/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "context"

    .line 110
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 111
    iget-object v10, v1, Lcom/netease/cloud/nos/yidun/core/UploadTask;->uploadContext:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 112
    iget-object v10, v1, Lcom/netease/cloud/nos/yidun/core/UploadTask;->callback:Lcom/netease/cloud/nos/yidun/core/Callback;

    iget-object v11, v1, Lcom/netease/cloud/nos/yidun/core/UploadTask;->fileParam:Ljava/lang/Object;

    iget-object v12, v1, Lcom/netease/cloud/nos/yidun/core/UploadTask;->uploadContext:Ljava/lang/String;

    invoke-interface {v10, v11, v12, v9}, Lcom/netease/cloud/nos/yidun/core/Callback;->onUploadContextCreate(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_5
    iput-object v9, v1, Lcom/netease/cloud/nos/yidun/core/UploadTask;->uploadContext:Ljava/lang/String;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 116
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v13, 0x0

    aput-object v10, v9, v13

    iget-wide v10, v1, Lcom/netease/cloud/nos/yidun/core/UploadTask;->fileSize:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-virtual {v1, v9}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    add-int/lit8 v9, v17, 0x1

    .line 118
    sget-object v10, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "http post success, offset: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", len: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", this is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " block uploaded"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v10, v7, v18

    if-nez v10, :cond_6

    cmp-long v10, v5, v18

    if-nez v10, :cond_6

    move-wide v14, v7

    move/from16 v17, v9

    move-object/from16 v8, v20

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_6
    move-wide v14, v7

    move/from16 v17, v9

    goto/16 :goto_3

    :cond_7
    move-wide/from16 v11, v27

    const/4 v13, 0x0

    const/16 v14, 0x190

    if-eq v10, v14, :cond_b

    const/16 v14, 0x193

    if-eq v10, v14, :cond_a

    const/16 v14, 0x208

    if-eq v10, v14, :cond_9

    .line 144
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->reset()V

    .line 145
    iget-object v10, v1, Lcom/netease/cloud/nos/yidun/core/UploadTask;->item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    const/4 v14, 0x1

    add-int/lit8 v15, v22, 0x1

    invoke-virtual {v10, v15}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->setUploadRetryCount(I)V

    .line 146
    array-length v10, v8

    if-lt v15, v10, :cond_8

    .line 148
    sget-object v10, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "upload block failed with all tries, offset: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x0

    .line 152
    :cond_8
    sget-object v10, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "http post failed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    move/from16 v13, p10

    move/from16 v22, v15

    move/from16 v10, v25

    move-wide v14, v11

    move-object v12, v8

    move-object v11, v9

    move/from16 v8, v26

    move/from16 v9, p4

    goto/16 :goto_1

    .line 153
    :cond_9
    sget-object v0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v3, "callback error."

    invoke-static {v0, v3}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    return-object v20

    .line 181
    :cond_a
    :try_start_4
    sget-object v0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "token is expired, token: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 213
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    return-object v20

    .line 214
    :cond_b
    :try_start_5
    sget-object v0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v3, "bad request."

    invoke-static {v0, v3}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 238
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    return-object v20

    :catch_0
    move-exception v0

    move-object/from16 v8, v20

    goto :goto_4

    :cond_c
    move-wide v11, v14

    :goto_3
    move-object/from16 v8, v20

    move/from16 v10, v21

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v8, p3

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 p3, v8

    .line 239
    :goto_4
    :try_start_6
    sget-object v3, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v4, "upload block exception"

    invoke-static {v3, v4, v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 242
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    return-object v8

    :goto_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_d
    move-object/from16 p3, v8

    :goto_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    return-object p3
.end method

.method private queryLBS(Ljava/lang/String;)Lcom/netease/cloud/nos/yidun/http/HttpResult;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "netease_pomelo_nos_net_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/yidun/utils/Util;->getData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "netease_pomelo_nos_lbs_status"

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    sget-object v0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "network connection change for bucket "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/netease/cloud/nos/yidun/utils/Util;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 5
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/netease/cloud/nos/yidun/utils/Util;->setData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/cloud/nos/yidun/utils/Util;->getBooleanData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "netease_pomelo_nos_server"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lcom/netease/cloud/nos/yidun/utils/Util;->getData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "netease_pomelo_nos_lbs_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {p1, v0}, Lcom/netease/cloud/nos/yidun/utils/Util;->getLongData(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 11
    invoke-static {}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->getRefreshInterval()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    sget-boolean p1, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->isOpened:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    const/4 p1, 0x1

    .line 16
    sput-boolean p1, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->isOpened:Z

    .line 17
    sget-object v0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v1, "get lbs address"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 20
    iget-object v2, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lcom/netease/cloud/nos/yidun/core/IOManager;->getLBSAddress(Landroid/content/Context;Ljava/lang/String;Z)Lcom/netease/cloud/nos/yidun/http/HttpResult;

    move-result-object v2

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 22
    iget-object v5, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    sub-long/2addr v3, v0

    invoke-virtual {v5, v3, v4}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->setLbsUseTime(J)V

    .line 23
    invoke-virtual {v2}, Lcom/netease/cloud/nos/yidun/http/HttpResult;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 24
    invoke-virtual {v2}, Lcom/netease/cloud/nos/yidun/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object p1

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    const-string v1, "lbs"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->setLbsIP(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    sget-object v0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse LBS result: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    invoke-virtual {v0, p1}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->setLbsSucc(I)V

    .line 33
    iget-object p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    invoke-static {v2}, Lcom/netease/cloud/nos/yidun/utils/Util;->getHttpCode(Lcom/netease/cloud/nos/yidun/http/HttpResult;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->setLbsHttpCode(I)V

    :goto_0
    return-object v2
.end method

.method private retryPutFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;[B)Lcom/netease/cloud/nos/yidun/http/HttpResult;
    .locals 7

    const-string p2, "offset"

    const-string p3, ", retryTime: "

    .line 1
    invoke-static {}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->getChunkRetryCount()I

    move-result v0

    .line 2
    sget-object v1, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "user set the retry times is : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v1, 0x1

    if-ge v1, v0, :cond_7

    .line 7
    :try_start_0
    iget-boolean v1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->upCancelled:Z

    if-nez v1, :cond_7

    .line 8
    sget-object v1, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "put block to server side with url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-direct {p0, p1, p4}, Lcom/netease/cloud/nos/yidun/core/UploadTask;->post(Ljava/lang/String;[B)Lcom/netease/cloud/nos/yidun/http/HttpResult;

    move-result-object v3

    .line 12
    iget-boolean v5, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->upCancelled:Z

    if-eqz v5, :cond_0

    return-object v3

    .line 15
    :cond_0
    invoke-virtual {v3}, Lcom/netease/cloud/nos/yidun/http/HttpResult;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_4

    const/16 v6, 0x190

    if-eq v5, v6, :cond_3

    const/16 v6, 0x193

    if-eq v5, v6, :cond_3

    const/16 v6, 0x1f4

    if-eq v5, v6, :cond_3

    const/16 v6, 0x208

    if-eq v5, v6, :cond_3

    const/16 v6, 0x31f

    if-eq v5, v6, :cond_2

    const/16 v6, 0x383

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, -0x5

    goto :goto_1

    :cond_2
    const/4 v2, -0x4

    goto :goto_1

    :cond_3
    return-object v3

    .line 18
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http post result is back, result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 20
    invoke-static {v1, v5}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {v3}, Lcom/netease/cloud/nos/yidun/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string v6, "context"

    .line 23
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 24
    invoke-virtual {v3}, Lcom/netease/cloud/nos/yidun/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http post result success with context: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->context:Landroid/content/Context;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", offset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    if-lez v2, :cond_6

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "retryPutFile with success result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 54
    :cond_6
    iget-object v1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    invoke-virtual {v1}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getChunkRetryCount()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->setChunkRetryCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 58
    sget-object p2, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string p3, "put file exception"

    invoke-static {p2, p3, p1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    return-object v3
.end method

.method private retryQuery(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)Lcom/netease/cloud/nos/yidun/http/HttpResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netease/cloud/nos/yidun/http/HttpResult;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->getQueryRetryCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, 0x1

    if-ge v1, v0, :cond_2

    .line 4
    iget-boolean v1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->upCancelled:Z

    if-nez v1, :cond_2

    .line 5
    sget-object v1, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "query offset with url: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", retry times: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/cloud/nos/yidun/core/UploadTask;->executeQueryTask(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)Lcom/netease/cloud/nos/yidun/http/HttpResult;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/netease/cloud/nos/yidun/http/HttpResult;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 10
    invoke-virtual {v2}, Lcom/netease/cloud/nos/yidun/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object p1

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "get break offset result:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 14
    :cond_0
    iget-object v4, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    invoke-virtual {v4}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->getQueryRetryCount()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->setQueryRetryCount(I)V

    .line 16
    invoke-virtual {v2}, Lcom/netease/cloud/nos/yidun/http/HttpResult;->getStatusCode()I

    move-result v4

    const/16 v5, 0x194

    if-ne v4, v5, :cond_1

    const-string p1, "upload file is expired in server side."

    .line 17
    invoke-static {v1, p1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private successOperation(Lcom/netease/cloud/nos/yidun/core/CallRet;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->setUploaderSucc(I)V

    .line 2
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->add(Landroid/content/Context;Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;)V

    .line 3
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->callback:Lcom/netease/cloud/nos/yidun/core/Callback;

    invoke-interface {v0, p1}, Lcom/netease/cloud/nos/yidun/core/Callback;->onSuccess(Lcom/netease/cloud/nos/yidun/core/CallRet;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v1, "uploading is canceling"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->upCancelled:Z

    .line 3
    invoke-direct {p0}, Lcom/netease/cloud/nos/yidun/core/UploadTask;->abort()V

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 5
    invoke-direct {p0}, Lcom/netease/cloud/nos/yidun/core/UploadTask;->abort()V

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Lcom/netease/cloud/nos/yidun/core/CallRet;
    .locals 14

    const-string p1, "upload result:"

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/cloud/nos/yidun/utils/NetworkType;->getNetWorkType(Landroid/content/Context;)Lcom/netease/cloud/nos/yidun/utils/NetworkType;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    invoke-virtual {v0}, Lcom/netease/cloud/nos/yidun/utils/NetworkType;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->setNetEnv(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    invoke-static {}, Lcom/netease/cloud/nos/yidun/utils/Util;->getIPAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->setClientIP(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    iget-object v2, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->setBucketName(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/netease/cloud/nos/yidun/utils/NetworkType;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netease/cloud/nos/yidun/core/UploadTask;->queryLBS(Ljava/lang/String;)Lcom/netease/cloud/nos/yidun/http/HttpResult;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "callbackRetMsg"

    const-string v3, "requestID"

    const/16 v4, 0xc8

    if-eqz v1, :cond_0

    .line 9
    :try_start_1
    invoke-virtual {v1}, Lcom/netease/cloud/nos/yidun/http/HttpResult;->getStatusCode()I

    move-result v5

    if-eq v5, v4, :cond_0

    iget-object v5, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->context:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "netease_pomelo_nos_server"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-static {v5, v6}, Lcom/netease/cloud/nos/yidun/utils/Util;->getData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 11
    new-instance p1, Lcom/netease/cloud/nos/yidun/core/CallRet;

    iget-object v7, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->fileParam:Ljava/lang/Object;

    iget-object v8, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->uploadContext:Ljava/lang/String;

    .line 12
    invoke-virtual {v1}, Lcom/netease/cloud/nos/yidun/http/HttpResult;->getStatusCode()I

    move-result v9

    invoke-static {v1, v3}, Lcom/netease/cloud/nos/yidun/utils/Util;->getResultString(Lcom/netease/cloud/nos/yidun/http/HttpResult;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 13
    invoke-static {v1, v2}, Lcom/netease/cloud/nos/yidun/utils/Util;->getResultString(Lcom/netease/cloud/nos/yidun/http/HttpResult;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 14
    invoke-virtual {v1}, Lcom/netease/cloud/nos/yidun/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    move-object v6, p1

    invoke-direct/range {v6 .. v13}, Lcom/netease/cloud/nos/yidun/core/CallRet;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/netease/cloud/nos/yidun/utils/Util;->closeInputStream(Ljava/io/InputStream;)V

    return-object p1

    .line 44
    :cond_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 45
    invoke-virtual {v0}, Lcom/netease/cloud/nos/yidun/utils/NetworkType;->getChunkSize()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netease/cloud/nos/yidun/core/UploadTask;->doUpload(I)Lcom/netease/cloud/nos/yidun/http/HttpResult;

    move-result-object v0

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Lcom/netease/cloud/nos/yidun/http/HttpResult;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v7, 0x0

    const/16 v8, 0x1f4

    invoke-direct {v0, v8, v1, v7}, Lcom/netease/cloud/nos/yidun/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 49
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 50
    iget-wide v9, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->fileSize:J

    iget-wide v11, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->offset:J

    sub-long/2addr v9, v11

    long-to-double v9, v9

    const-wide/high16 v11, 0x4090000000000000L    # 1024.0

    div-double/2addr v9, v11

    sub-long/2addr v7, v5

    long-to-double v5, v7

    const-wide v11, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v11

    div-double/2addr v9, v5

    double-to-float v1, v9

    .line 51
    sget-object v5, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/cloud/nos/yidun/http/HttpResult;->getStatusCode()I

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", speed:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "KB/S"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    invoke-virtual {p1, v7, v8}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->setUploaderUseTime(J)V

    .line 54
    iget-object p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    invoke-static {v0}, Lcom/netease/cloud/nos/yidun/utils/Util;->getHttpCode(Lcom/netease/cloud/nos/yidun/http/HttpResult;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->setUploaderHttpCode(I)V

    .line 56
    invoke-virtual {v0}, Lcom/netease/cloud/nos/yidun/http/HttpResult;->getStatusCode()I

    move-result p1

    if-eq p1, v4, :cond_2

    iget-boolean p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->upCancelled:Z

    if-nez p1, :cond_2

    .line 57
    iget-object p1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "netease_pomelo_nos_lbs_status"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {p1, v1, v4}, Lcom/netease/cloud/nos/yidun/utils/Util;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 60
    :cond_2
    new-instance p1, Lcom/netease/cloud/nos/yidun/core/CallRet;

    iget-object v1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->fileParam:Ljava/lang/Object;

    iget-object v4, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->uploadContext:Ljava/lang/String;

    .line 61
    invoke-virtual {v0}, Lcom/netease/cloud/nos/yidun/http/HttpResult;->getStatusCode()I

    move-result v5

    invoke-static {v0, v3}, Lcom/netease/cloud/nos/yidun/utils/Util;->getResultString(Lcom/netease/cloud/nos/yidun/http/HttpResult;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 62
    invoke-static {v0, v2}, Lcom/netease/cloud/nos/yidun/utils/Util;->getResultString(Lcom/netease/cloud/nos/yidun/http/HttpResult;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 63
    invoke-virtual {v0}, Lcom/netease/cloud/nos/yidun/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v0, p1

    move-object v2, v4

    move v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/netease/cloud/nos/yidun/core/CallRet;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/netease/cloud/nos/yidun/utils/Util;->closeInputStream(Ljava/io/InputStream;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v7, p1

    .line 71
    :try_start_3
    sget-object p1, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v0, "upload exception"

    invoke-static {p1, v0, v7}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    new-instance p1, Lcom/netease/cloud/nos/yidun/core/CallRet;

    iget-object v1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->fileParam:Ljava/lang/Object;

    iget-object v2, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->uploadContext:Ljava/lang/String;

    const/16 v3, 0x31f

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/netease/cloud/nos/yidun/core/CallRet;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/netease/cloud/nos/yidun/utils/Util;->closeInputStream(Ljava/io/InputStream;)V

    return-object p1

    :goto_0
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/netease/cloud/nos/yidun/utils/Util;->closeInputStream(Ljava/io/InputStream;)V

    throw p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/netease/cloud/nos/yidun/core/UploadTask;->doInBackground([Ljava/lang/Object;)Lcom/netease/cloud/nos/yidun/core/CallRet;

    move-result-object p1

    return-object p1
.end method

.method public isUpCancelled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->upCancelled:Z

    return v0
.end method

.method public onCancelled()V
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v1, "on cancelled"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/netease/cloud/nos/yidun/utils/Util;->closeInputStream(Ljava/io/InputStream;)V

    .line 3
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->setUploaderSucc(I)V

    .line 4
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;->setUploaderHttpCode(I)V

    .line 5
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->item:Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->add(Landroid/content/Context;Lcom/netease/cloud/nos/yidun/monitor/StatisticItem;)V

    .line 6
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->callback:Lcom/netease/cloud/nos/yidun/core/Callback;

    invoke-direct {p0}, Lcom/netease/cloud/nos/yidun/core/UploadTask;->createCancelCallRet()Lcom/netease/cloud/nos/yidun/core/CallRet;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/cloud/nos/yidun/core/Callback;->onCanceled(Lcom/netease/cloud/nos/yidun/core/CallRet;)V

    return-void
.end method

.method public onPostExecute(Lcom/netease/cloud/nos/yidun/core/CallRet;)V
    .locals 10

    .line 2
    sget-object v0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v1, "on post executed"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/netease/cloud/nos/yidun/core/CallRet;

    iget-object v3, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->fileParam:Ljava/lang/Object;

    iget-object v4, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->uploadContext:Ljava/lang/String;

    const/16 v5, 0x3e7

    const-string v6, ""

    const-string v7, ""

    const-string v8, "result is null"

    const/4 v9, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/netease/cloud/nos/yidun/core/CallRet;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-direct {p0, p1}, Lcom/netease/cloud/nos/yidun/core/UploadTask;->failureOperation(Lcom/netease/cloud/nos/yidun/core/CallRet;)V

    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/netease/cloud/nos/yidun/core/CallRet;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-direct {p0, p1}, Lcom/netease/cloud/nos/yidun/core/UploadTask;->failureOperation(Lcom/netease/cloud/nos/yidun/core/CallRet;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/netease/cloud/nos/yidun/core/CallRet;->getHttpCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 11
    invoke-direct {p0, p1}, Lcom/netease/cloud/nos/yidun/core/UploadTask;->successOperation(Lcom/netease/cloud/nos/yidun/core/CallRet;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-direct {p0, p1}, Lcom/netease/cloud/nos/yidun/core/UploadTask;->failureOperation(Lcom/netease/cloud/nos/yidun/core/CallRet;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/cloud/nos/yidun/core/CallRet;

    invoke-virtual {p0, p1}, Lcom/netease/cloud/nos/yidun/core/UploadTask;->onPostExecute(Lcom/netease/cloud/nos/yidun/core/CallRet;)V

    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v1, "on process update"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v0, 0x1

    .line 3
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 4
    iget-object v1, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->callback:Lcom/netease/cloud/nos/yidun/core/Callback;

    iget-object v2, p0, Lcom/netease/cloud/nos/yidun/core/UploadTask;->fileParam:Ljava/lang/Object;

    invoke-interface/range {v1 .. v6}, Lcom/netease/cloud/nos/yidun/core/Callback;->onProcess(Ljava/lang/Object;JJ)V

    return-void
.end method
