.class public Lcom/netease/cloud/nos/yidun/http/HttpGetTask;
.super Ljava/lang/Object;
.source "HttpGetTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field public final callback:Lcom/netease/cloud/nos/yidun/core/RequestCallback;

.field public final ctx:Landroid/content/Context;

.field public volatile getRequest:Lokhttp3/Request$Builder;

.field public final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final url:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/netease/cloud/nos/yidun/http/HttpGetTask;

    invoke-static {v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/yidun/http/HttpGetTask;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/netease/cloud/nos/yidun/core/RequestCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/cloud/nos/yidun/core/RequestCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/cloud/nos/yidun/http/HttpGetTask;->url:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/netease/cloud/nos/yidun/http/HttpGetTask;->ctx:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/netease/cloud/nos/yidun/http/HttpGetTask;->map:Ljava/util/Map;

    .line 5
    iput-object p4, p0, Lcom/netease/cloud/nos/yidun/http/HttpGetTask;->callback:Lcom/netease/cloud/nos/yidun/core/RequestCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "http get response is correct, response: "

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/cloud/nos/yidun/http/HttpGetTask;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/cloud/nos/yidun/http/HttpGetTask;->getRequest:Lokhttp3/Request$Builder;

    .line 2
    iget-object v2, p0, Lcom/netease/cloud/nos/yidun/http/HttpGetTask;->map:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/netease/cloud/nos/yidun/http/HttpGetTask;->getRequest:Lokhttp3/Request$Builder;

    iget-object v3, p0, Lcom/netease/cloud/nos/yidun/http/HttpGetTask;->map:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/netease/cloud/nos/yidun/utils/Util;->setHeader(Lokhttp3/Request$Builder;Ljava/util/Map;)Lokhttp3/Request$Builder;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/cloud/nos/yidun/http/HttpGetTask;->getRequest:Lokhttp3/Request$Builder;

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/netease/cloud/nos/yidun/http/HttpGetTask;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/netease/cloud/nos/yidun/utils/Util;->getLbsHttpClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/cloud/nos/yidun/http/HttpGetTask;->getRequest:Lokhttp3/Request$Builder;

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 8
    :try_start_1
    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v2

    .line 9
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    .line 10
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 v6, 0xc8

    if-ne v2, v6, :cond_1

    .line 12
    sget-object v6, Lcom/netease/cloud/nos/yidun/http/HttpGetTask;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 15
    :cond_1
    sget-object v0, Lcom/netease/cloud/nos/yidun/http/HttpGetTask;->LOGTAG:Ljava/lang/String;

    const-string v4, "http get response is failed."

    invoke-static {v0, v4}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/http/HttpGetTask;->callback:Lcom/netease/cloud/nos/yidun/core/RequestCallback;

    new-instance v4, Lcom/netease/cloud/nos/yidun/http/HttpResult;

    invoke-direct {v4, v2, v5, v1}, Lcom/netease/cloud/nos/yidun/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    invoke-interface {v0, v4}, Lcom/netease/cloud/nos/yidun/core/RequestCallback;->onResult(Lcom/netease/cloud/nos/yidun/http/HttpResult;)V

    goto :goto_1

    :cond_2
    move-object v3, v1

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/netease/cloud/nos/yidun/http/HttpGetTask;->callback:Lcom/netease/cloud/nos/yidun/core/RequestCallback;

    new-instance v2, Lcom/netease/cloud/nos/yidun/http/HttpResult;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/16 v5, 0x383

    invoke-direct {v2, v5, v4, v1}, Lcom/netease/cloud/nos/yidun/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    invoke-interface {v0, v2}, Lcom/netease/cloud/nos/yidun/core/RequestCallback;->onResult(Lcom/netease/cloud/nos/yidun/http/HttpResult;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    if-eqz v3, :cond_4

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v3, v1

    .line 23
    :goto_2
    :try_start_2
    sget-object v2, Lcom/netease/cloud/nos/yidun/http/HttpGetTask;->LOGTAG:Ljava/lang/String;

    const-string v4, "http get task exception"

    invoke-static {v2, v4, v0}, Lcom/netease/cloud/nos/yidun/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    iget-object v2, p0, Lcom/netease/cloud/nos/yidun/http/HttpGetTask;->callback:Lcom/netease/cloud/nos/yidun/core/RequestCallback;

    new-instance v4, Lcom/netease/cloud/nos/yidun/http/HttpResult;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const/16 v6, 0x31f

    invoke-direct {v4, v6, v5, v0}, Lcom/netease/cloud/nos/yidun/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    invoke-interface {v2, v4}, Lcom/netease/cloud/nos/yidun/core/RequestCallback;->onResult(Lcom/netease/cloud/nos/yidun/http/HttpResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_4

    .line 28
    :goto_3
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->close()V

    .line 31
    :cond_4
    iput-object v1, p0, Lcom/netease/cloud/nos/yidun/http/HttpGetTask;->getRequest:Lokhttp3/Request$Builder;

    return-void

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v3, :cond_5

    .line 32
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->close()V

    .line 35
    :cond_5
    iput-object v1, p0, Lcom/netease/cloud/nos/yidun/http/HttpGetTask;->getRequest:Lokhttp3/Request$Builder;

    throw v0
.end method
