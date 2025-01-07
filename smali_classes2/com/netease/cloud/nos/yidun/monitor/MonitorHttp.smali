.class public Lcom/netease/cloud/nos/yidun/monitor/MonitorHttp;
.super Ljava/lang/Object;
.source "MonitorHttp.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorHttp;

    invoke-static {v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/yidun/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static post(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const-string v0, "bos close exception"

    const-string v1, "http post response is correct, response: "

    const-string v2, "http post response is failed, status code: "

    .line 1
    invoke-static {}, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->get()Ljava/util/List;

    move-result-object v3

    .line 2
    invoke-static {v3}, Lcom/netease/cloud/nos/yidun/monitor/Monitor;->getPostData(Ljava/util/List;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    if-nez v4, :cond_0

    .line 4
    sget-object p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    const-string p1, "post data is null"

    invoke-static {p0, p1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_0
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    .line 9
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7, v6}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v6

    invoke-virtual {v5, v6}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 10
    invoke-static {p1}, Lcom/netease/cloud/nos/yidun/utils/Util;->getMonitorUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v5, "Content-Encoding"

    const-string v6, "gzip"

    .line 11
    invoke-virtual {p1, v5, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 15
    :try_start_0
    invoke-static {p0}, Lcom/netease/cloud/nos/yidun/utils/Util;->getHttpClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object p0

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 16
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 17
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p0

    .line 18
    invoke-virtual {v7}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    const/16 v5, 0xc8

    if-ne p0, v5, :cond_1

    .line 20
    sget-object p0, Lcom/netease/cloud/nos/yidun/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 25
    :cond_1
    sget-object v1, Lcom/netease/cloud/nos/yidun/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", result: "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 35
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 39
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 41
    sget-object p1, Lcom/netease/cloud/nos/yidun/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v7, :cond_5

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    .line 42
    :try_start_2
    sget-object p1, Lcom/netease/cloud/nos/yidun/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    const-string v1, "post monitor data failed with io exception"

    invoke-static {p1, v1, p0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_4

    .line 46
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 50
    :cond_4
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 52
    sget-object p1, Lcom/netease/cloud/nos/yidun/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz v7, :cond_5

    .line 56
    :goto_3
    invoke-virtual {v7}, Lokhttp3/ResponseBody;->close()V

    :cond_5
    return-void

    :goto_4
    if-eqz v3, :cond_6

    .line 57
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 61
    :cond_6
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 63
    sget-object v1, Lcom/netease/cloud/nos/yidun/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    if-eqz v7, :cond_7

    .line 67
    invoke-virtual {v7}, Lokhttp3/ResponseBody;->close()V

    :cond_7
    throw p0
.end method
