.class public Lcom/netease/cloud/nos/yidun/http/HttpPostTask;
.super Ljava/lang/Object;
.source "HttpPostTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/netease/cloud/nos/yidun/http/HttpResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field public final chunkData:[B

.field public final ctx:Landroid/content/Context;

.field public volatile postRequest:Lokhttp3/Request$Builder;

.field public final token:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/netease/cloud/nos/yidun/http/HttpPostTask;

    invoke-static {v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/yidun/http/HttpPostTask;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/http/HttpPostTask;->url:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/netease/cloud/nos/yidun/http/HttpPostTask;->token:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/netease/cloud/nos/yidun/http/HttpPostTask;->ctx:Landroid/content/Context;

    .line 5
    iput-object p4, p0, Lcom/netease/cloud/nos/yidun/http/HttpPostTask;->chunkData:[B

    return-void
.end method


# virtual methods
.method public call()Lcom/netease/cloud/nos/yidun/http/HttpResult;
    .locals 7

    const-string v0, "http post response is failed, status code: "

    const-string v1, "http post response is correct, response: "

    .line 2
    sget-object v2, Lcom/netease/cloud/nos/yidun/http/HttpPostTask;->LOGTAG:Ljava/lang/String;

    const-string v3, "http post task is executing"

    invoke-static {v2, v3}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 5
    :try_start_0
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v5, p0, Lcom/netease/cloud/nos/yidun/http/HttpPostTask;->chunkData:[B

    invoke-static {v3, v5}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/cloud/nos/yidun/http/HttpPostTask;->url:Ljava/lang/String;

    .line 6
    invoke-virtual {v4, v5}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "x-nos-token"

    :try_start_1
    iget-object v6, p0, Lcom/netease/cloud/nos/yidun/http/HttpPostTask;->token:Ljava/lang/String;

    .line 7
    invoke-virtual {v4, v5, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    iput-object v4, p0, Lcom/netease/cloud/nos/yidun/http/HttpPostTask;->postRequest:Lokhttp3/Request$Builder;

    .line 8
    iget-object v4, p0, Lcom/netease/cloud/nos/yidun/http/HttpPostTask;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lcom/netease/cloud/nos/yidun/utils/Util;->getHttpClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/cloud/nos/yidun/http/HttpPostTask;->postRequest:Lokhttp3/Request$Builder;

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    invoke-interface {v4}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 11
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 12
    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v4

    .line 13
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xc8

    if-ne v4, v6, :cond_0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 19
    :cond_0
    new-instance v1, Lcom/netease/cloud/nos/yidun/http/HttpResult;

    invoke-direct {v1, v4, v3, v3}, Lcom/netease/cloud/nos/yidun/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", result: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :goto_0
    new-instance v0, Lcom/netease/cloud/nos/yidun/http/HttpResult;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4, v1, v3}, Lcom/netease/cloud/nos/yidun/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    goto :goto_1

    .line 26
    :cond_1
    new-instance v0, Lcom/netease/cloud/nos/yidun/http/HttpResult;

    const/16 v1, 0x383

    invoke-direct {v0, v1, v3, v3}, Lcom/netease/cloud/nos/yidun/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :goto_1
    iput-object v3, p0, Lcom/netease/cloud/nos/yidun/http/HttpPostTask;->postRequest:Lokhttp3/Request$Builder;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 33
    :try_start_2
    sget-object v1, Lcom/netease/cloud/nos/yidun/http/HttpPostTask;->LOGTAG:Ljava/lang/String;

    const-string v2, "http post exception"

    invoke-static {v1, v2, v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    new-instance v1, Lcom/netease/cloud/nos/yidun/http/HttpResult;

    const/16 v2, 0x31f

    invoke-direct {v1, v2, v3, v0}, Lcom/netease/cloud/nos/yidun/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    iput-object v3, p0, Lcom/netease/cloud/nos/yidun/http/HttpPostTask;->postRequest:Lokhttp3/Request$Builder;

    move-object v0, v1

    :goto_2
    return-object v0

    :goto_3
    iput-object v3, p0, Lcom/netease/cloud/nos/yidun/http/HttpPostTask;->postRequest:Lokhttp3/Request$Builder;

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/netease/cloud/nos/yidun/http/HttpPostTask;->call()Lcom/netease/cloud/nos/yidun/http/HttpResult;

    move-result-object v0

    return-object v0
.end method
