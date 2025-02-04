.class public final Lokhttp3/internal/huc/OkHttpURLConnection;
.super Ljava/net/HttpURLConnection;
.source "OkHttpURLConnection.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;,
        Lokhttp3/internal/huc/OkHttpURLConnection$UnexpectedException;
    }
.end annotation


# static fields
.field private static final METHODS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_SOURCE:Ljava/lang/String;

.field public static final SELECTED_PROTOCOL:Ljava/lang/String;


# instance fields
.field call:Lokhttp3/Call;

.field private callFailure:Ljava/lang/Throwable;

.field client:Lokhttp3/OkHttpClient;

.field connectPending:Z

.field private executed:Z

.field private fixedContentLength:J

.field handshake:Lokhttp3/Handshake;

.field private final lock:Ljava/lang/Object;

.field private final networkInterceptor:Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;

.field networkResponse:Lokhttp3/Response;

.field proxy:Ljava/net/Proxy;

.field private requestHeaders:Lokhttp3/Headers$Builder;

.field private response:Lokhttp3/Response;

.field private responseHeaders:Lokhttp3/Headers;

.field urlFilter:Lokhttp3/internal/URLFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Selected-Protocol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/huc/OkHttpURLConnection;->SELECTED_PROTOCOL:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Response-Source"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/huc/OkHttpURLConnection;->RESPONSE_SOURCE:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/LinkedHashSet;

    const-string v1, "OPTIONS"

    const-string v2, "GET"

    const-string v3, "HEAD"

    const-string v4, "POST"

    const-string v5, "PUT"

    const-string v6, "DELETE"

    const-string v7, "TRACE"

    const-string v8, "PATCH"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lokhttp3/internal/huc/OkHttpURLConnection;->METHODS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lokhttp3/OkHttpClient;)V
    .locals 2

    .line 112
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 90
    new-instance p1, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;

    invoke-direct {p1, p0}, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;-><init>(Lokhttp3/internal/huc/OkHttpURLConnection;)V

    iput-object p1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->networkInterceptor:Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;

    .line 91
    new-instance p1, Lokhttp3/Headers$Builder;

    invoke-direct {p1}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->requestHeaders:Lokhttp3/Headers$Builder;

    const-wide/16 v0, -0x1

    .line 100
    iput-wide v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->fixedContentLength:J

    .line 103
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->lock:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->connectPending:Z

    .line 113
    iput-object p2, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lokhttp3/OkHttpClient;Lokhttp3/internal/URLFilter;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/huc/OkHttpURLConnection;-><init>(Ljava/net/URL;Lokhttp3/OkHttpClient;)V

    .line 118
    iput-object p3, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->urlFilter:Lokhttp3/internal/URLFilter;

    return-void
.end method

.method static synthetic access$000(Lokhttp3/internal/huc/OkHttpURLConnection;)Ljava/lang/Object;
    .locals 0

    .line 74
    iget-object p0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$102(Lokhttp3/internal/huc/OkHttpURLConnection;Ljava/net/URL;)Ljava/net/URL;
    .locals 0

    .line 74
    iput-object p1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->url:Ljava/net/URL;

    return-object p1
.end method

.method private buildCall()Lokhttp3/Call;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->call:Lokhttp3/Call;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 336
    iput-boolean v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->connected:Z

    .line 337
    iget-boolean v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->doOutput:Z

    if-eqz v1, :cond_3

    .line 338
    iget-object v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->method:Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "POST"

    .line 340
    iput-object v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->method:Ljava/lang/String;

    goto :goto_0

    .line 341
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->method:Ljava/lang/String;

    invoke-static {v1}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 342
    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not support writing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_3
    :goto_0
    iget-object v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->requestHeaders:Lokhttp3/Headers$Builder;

    const-string v2, "User-Agent"

    invoke-virtual {v1, v2}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 347
    iget-object v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->requestHeaders:Lokhttp3/Headers$Builder;

    invoke-direct {p0}, Lokhttp3/internal/huc/OkHttpURLConnection;->defaultUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 351
    :cond_4
    iget-object v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->method:Ljava/lang/String;

    invoke-static {v1}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    .line 353
    iget-object v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->requestHeaders:Lokhttp3/Headers$Builder;

    const-string v3, "Content-Type"

    invoke-virtual {v1, v3}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, "application/x-www-form-urlencoded"

    .line 356
    iget-object v4, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->requestHeaders:Lokhttp3/Headers$Builder;

    invoke-virtual {v4, v3, v1}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 359
    :cond_5
    iget-wide v3, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->fixedContentLength:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    iget v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->chunkLength:I

    if-lez v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 362
    :cond_7
    :goto_1
    iget-object v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->requestHeaders:Lokhttp3/Headers$Builder;

    const-string v3, "Content-Length"

    invoke-virtual {v1, v3}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    iget-wide v3, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->fixedContentLength:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_8

    move-wide v5, v3

    goto :goto_2

    :cond_8
    if-eqz v1, :cond_9

    .line 366
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    :cond_9
    :goto_2
    if-eqz v0, :cond_a

    .line 370
    new-instance v0, Lokhttp3/internal/huc/StreamedRequestBody;

    invoke-direct {v0, v5, v6}, Lokhttp3/internal/huc/StreamedRequestBody;-><init>(J)V

    goto :goto_3

    .line 371
    :cond_a
    new-instance v0, Lokhttp3/internal/huc/BufferedRequestBody;

    invoke-direct {v0, v5, v6}, Lokhttp3/internal/huc/BufferedRequestBody;-><init>(J)V

    .line 372
    :goto_3
    invoke-virtual {v0}, Lokhttp3/internal/huc/OutputStreamRequestBody;->timeout()Lokio/Timeout;

    move-result-object v1

    iget-object v3, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    goto :goto_4

    :cond_b
    move-object v0, v2

    .line 377
    :goto_4
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/huc/OkHttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 390
    invoke-virtual {v3, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v1

    iget-object v3, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->requestHeaders:Lokhttp3/Headers$Builder;

    .line 391
    invoke-virtual {v3}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v1

    iget-object v3, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->method:Ljava/lang/String;

    .line 392
    invoke-virtual {v1, v3, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->urlFilter:Lokhttp3/internal/URLFilter;

    if-eqz v1, :cond_c

    .line 396
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v3

    invoke-interface {v1, v3}, Lokhttp3/internal/URLFilter;->checkURLPermitted(Ljava/net/URL;)V

    .line 399
    :cond_c
    iget-object v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 400
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->interceptors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 401
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->interceptors()Ljava/util/List;

    move-result-object v3

    sget-object v4, Lokhttp3/internal/huc/OkHttpURLConnection$UnexpectedException;->INTERCEPTOR:Lokhttp3/Interceptor;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->networkInterceptors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 403
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->networkInterceptors()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->networkInterceptor:Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v3, Lokhttp3/Dispatcher;

    iget-object v4, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-direct {v3, v4}, Lokhttp3/Dispatcher;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v1, v3}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    .line 409
    invoke-virtual {p0}, Lokhttp3/internal/huc/OkHttpURLConnection;->getUseCaches()Z

    move-result v3

    if-nez v3, :cond_d

    .line 410
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    .line 413
    :cond_d
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->call:Lokhttp3/Call;

    return-object v0

    :catch_0
    move-exception v0

    .line 379
    sget-object v1, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v1, v0}, Lokhttp3/internal/Internal;->isInvalidHttpUrlHost(Ljava/lang/IllegalArgumentException;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 380
    new-instance v1, Ljava/net/UnknownHostException;

    invoke-direct {v1}, Ljava/net/UnknownHostException;-><init>()V

    .line 381
    invoke-virtual {v1, v0}, Ljava/net/UnknownHostException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 382
    throw v1

    .line 384
    :cond_e
    new-instance v1, Ljava/net/MalformedURLException;

    invoke-direct {v1}, Ljava/net/MalformedURLException;-><init>()V

    .line 385
    invoke-virtual {v1, v0}, Ljava/net/MalformedURLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 386
    throw v1
.end method

.method private defaultUserAgent()Ljava/lang/String;
    .locals 1

    const-string v0, "http.agent"

    .line 417
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    invoke-static {v0}, Lokhttp3/internal/huc/OkHttpURLConnection;->toHumanReadableAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lokhttp3/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getHeaders()Lokhttp3/Headers;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->responseHeaders:Lokhttp3/Headers;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 169
    invoke-direct {p0, v0}, Lokhttp3/internal/huc/OkHttpURLConnection;->getResponse(Z)Lokhttp3/Response;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v1

    sget-object v2, Lokhttp3/internal/huc/OkHttpURLConnection;->SELECTED_PROTOCOL:Ljava/lang/String;

    .line 172
    invoke-virtual {v0}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v1

    sget-object v2, Lokhttp3/internal/huc/OkHttpURLConnection;->RESPONSE_SOURCE:Ljava/lang/String;

    .line 173
    invoke-static {v0}, Lokhttp3/internal/huc/OkHttpURLConnection;->responseSourceHeader(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->responseHeaders:Lokhttp3/Headers;

    .line 176
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->responseHeaders:Lokhttp3/Headers;

    return-object v0
.end method

.method private getResponse(Z)Lokhttp3/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 445
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->response:Lokhttp3/Response;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    .line 446
    :cond_0
    iget-object v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->callFailure:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 447
    iget-object p1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->networkResponse:Lokhttp3/Response;

    if-eqz p1, :cond_1

    monitor-exit v0

    return-object p1

    .line 448
    :cond_1
    invoke-static {v1}, Lokhttp3/internal/huc/OkHttpURLConnection;->propagate(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 450
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 452
    invoke-direct {p0}, Lokhttp3/internal/huc/OkHttpURLConnection;->buildCall()Lokhttp3/Call;

    move-result-object p1

    .line 453
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->networkInterceptor:Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;

    invoke-virtual {v0}, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->proceed()V

    .line 455
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/huc/OutputStreamRequestBody;

    if-eqz v0, :cond_3

    .line 456
    invoke-virtual {v0}, Lokhttp3/internal/huc/OutputStreamRequestBody;->outputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 458
    :cond_3
    iget-boolean v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->executed:Z

    if-eqz v0, :cond_5

    .line 459
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 461
    :goto_0
    :try_start_1
    iget-object p1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->response:Lokhttp3/Response;

    if-nez p1, :cond_4

    iget-object p1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->callFailure:Ljava/lang/Throwable;

    if-nez p1, :cond_4

    .line 462
    iget-object p1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 468
    :cond_4
    :try_start_2
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 465
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 466
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 468
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_5
    const/4 v0, 0x1

    .line 470
    iput-boolean v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->executed:Z

    .line 472
    :try_start_3
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lokhttp3/internal/huc/OkHttpURLConnection;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 474
    invoke-virtual {p0, p1, v0}, Lokhttp3/internal/huc/OkHttpURLConnection;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 478
    :goto_2
    iget-object p1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 479
    :try_start_4
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->callFailure:Ljava/lang/Throwable;

    if-nez v0, :cond_7

    .line 480
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->response:Lokhttp3/Response;

    if-eqz v0, :cond_6

    monitor-exit p1

    return-object v0

    .line 481
    :cond_6
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 483
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 479
    :cond_7
    :try_start_5
    invoke-static {v0}, Lokhttp3/internal/huc/OkHttpURLConnection;->propagate(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catchall_1
    move-exception v0

    .line 481
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception p1

    .line 450
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method

.method private static propagate(Ljava/lang/Throwable;)Ljava/io/IOException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 614
    instance-of v0, p0, Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 615
    instance-of v0, p0, Ljava/lang/Error;

    if-nez v0, :cond_1

    .line 616
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 617
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 615
    :cond_1
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 614
    :cond_2
    check-cast p0, Ljava/io/IOException;

    throw p0
.end method

.method private static responseSourceHeader(Lokhttp3/Response;)Ljava/lang/String;
    .locals 2

    .line 180
    invoke-virtual {p0}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    move-result-object v0

    if-nez v0, :cond_1

    .line 181
    invoke-virtual {p0}, Lokhttp3/Response;->cacheResponse()Lokhttp3/Response;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "NONE"

    return-object p0

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CACHE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 186
    :cond_1
    invoke-virtual {p0}, Lokhttp3/Response;->cacheResponse()Lokhttp3/Response;

    move-result-object v0

    if-nez v0, :cond_2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NETWORK "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 189
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CONDITIONAL_CACHE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toHumanReadableAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 423
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 424
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x7f

    const/16 v5, 0x1f

    if-le v3, v5, :cond_0

    if-ge v3, v4, :cond_0

    .line 423
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 427
    :cond_0
    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    .line 428
    invoke-virtual {v6, p0, v1, v2}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    const/16 v1, 0x3f

    .line 429
    invoke-virtual {v6, v1}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    .line 430
    :goto_1
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    if-ge v2, v0, :cond_2

    .line 431
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    if-le v3, v5, :cond_1

    if-ge v3, v4, :cond_1

    move v7, v3

    goto :goto_2

    :cond_1
    const/16 v7, 0x3f

    .line 432
    :goto_2
    invoke-virtual {v6, v7}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    goto :goto_1

    .line 434
    :cond_2
    invoke-virtual {v6}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 542
    iget-boolean v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->connected:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 554
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring header "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because its value was null."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-virtual {p2, v1, p1, v0}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 558
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->requestHeaders:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-void

    .line 546
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "field == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 543
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add request property after connection is made"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-boolean v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->executed:Z

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-direct {p0}, Lokhttp3/internal/huc/OkHttpURLConnection;->buildCall()Lokhttp3/Call;

    move-result-object v0

    const/4 v1, 0x1

    .line 125
    iput-boolean v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->executed:Z

    .line 126
    invoke-interface {v0, p0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 128
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->connectPending:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->response:Lokhttp3/Response;

    if-nez v1, :cond_1

    iget-object v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->callFailure:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 131
    iget-object v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->callFailure:Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 140
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 134
    :cond_2
    :try_start_2
    invoke-static {v1}, Lokhttp3/internal/huc/OkHttpURLConnection;->propagate(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 137
    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 138
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1

    .line 140
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public disconnect()V
    .locals 1

    .line 145
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->call:Lokhttp3/Call;

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->networkInterceptor:Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;

    invoke-virtual {v0}, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->proceed()V

    .line 148
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->call:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    return-void
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 318
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 157
    :try_start_0
    invoke-direct {p0, v0}, Lokhttp3/internal/huc/OkHttpURLConnection;->getResponse(Z)Lokhttp3/Response;

    move-result-object v0

    .line 158
    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_0

    .line 159
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    return-object v1
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 198
    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/huc/OkHttpURLConnection;->getHeaders()Lokhttp3/Headers;

    move-result-object v1

    if-ltz p1, :cond_1

    .line 199
    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {v1, p1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 213
    :try_start_0
    invoke-direct {p0, p1}, Lokhttp3/internal/huc/OkHttpURLConnection;->getResponse(Z)Lokhttp3/Response;

    move-result-object p1

    invoke-static {p1}, Lokhttp3/internal/http/StatusLine;->get(Lokhttp3/Response;)Lokhttp3/internal/http/StatusLine;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 214
    :cond_0
    invoke-direct {p0}, Lokhttp3/internal/huc/OkHttpURLConnection;->getHeaders()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 222
    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/huc/OkHttpURLConnection;->getHeaders()Lokhttp3/Headers;

    move-result-object v1

    if-ltz p1, :cond_1

    .line 223
    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {v1, p1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 232
    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/huc/OkHttpURLConnection;->getHeaders()Lokhttp3/Headers;

    move-result-object v0

    const/4 v1, 0x1

    .line 233
    invoke-direct {p0, v1}, Lokhttp3/internal/huc/OkHttpURLConnection;->getResponse(Z)Lokhttp3/Response;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/http/StatusLine;->get(Lokhttp3/Response;)Lokhttp3/internal/http/StatusLine;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-static {v0, v1}, Lokhttp3/internal/JavaNetHeaders;->toMultimap(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 235
    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    iget-boolean v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->doInput:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 253
    invoke-direct {p0, v0}, Lokhttp3/internal/huc/OkHttpURLConnection;->getResponse(Z)Lokhttp3/Response;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0x190

    if-ge v1, v2, :cond_0

    .line 259
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 256
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "This protocol does not support input"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .line 314
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->followRedirects()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    invoke-direct {p0}, Lokhttp3/internal/huc/OkHttpURLConnection;->buildCall()Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/huc/OutputStreamRequestBody;

    if-eqz v0, :cond_2

    .line 270
    instance-of v1, v0, Lokhttp3/internal/huc/StreamedRequestBody;

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {p0}, Lokhttp3/internal/huc/OkHttpURLConnection;->connect()V

    .line 272
    iget-object v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->networkInterceptor:Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;

    invoke-virtual {v1}, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->proceed()V

    .line 275
    :cond_0
    invoke-virtual {v0}, Lokhttp3/internal/huc/OutputStreamRequestBody;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 279
    invoke-virtual {v0}, Lokhttp3/internal/huc/OutputStreamRequestBody;->outputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 276
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "cannot write request body after response has been read"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method does not support a request body: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    invoke-virtual {p0}, Lokhttp3/internal/huc/OkHttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 286
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v0

    .line 288
    :goto_0
    invoke-virtual {p0}, Lokhttp3/internal/huc/OkHttpURLConnection;->usingProxy()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 290
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    .line 293
    :cond_1
    new-instance v2, Ljava/net/SocketPermission;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connect, resolve"

    invoke-direct {v2, v0, v1}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getReadTimeout()I
    .locals 1

    .line 328
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v0

    return v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 240
    iget-boolean v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->connected:Z

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->requestHeaders:Lokhttp3/Headers$Builder;

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lokhttp3/internal/JavaNetHeaders;->toMultimap(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access request header fields after connection is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 298
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->requestHeaders:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 509
    invoke-direct {p0, v0}, Lokhttp3/internal/huc/OkHttpURLConnection;->getResponse(Z)Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 505
    invoke-direct {p0, v0}, Lokhttp3/internal/huc/OkHttpURLConnection;->getResponse(Z)Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 581
    iget-object p1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 582
    :try_start_0
    instance-of v0, p2, Lokhttp3/internal/huc/OkHttpURLConnection$UnexpectedException;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->callFailure:Ljava/lang/Throwable;

    .line 583
    iget-object p2, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->lock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 584
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

    .line 588
    iget-object p1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 589
    :try_start_0
    iput-object p2, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->response:Lokhttp3/Response;

    .line 590
    invoke-virtual {p2}, Lokhttp3/Response;->handshake()Lokhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->handshake:Lokhttp3/Handshake;

    .line 591
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object p2

    iput-object p2, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->url:Ljava/net/URL;

    .line 592
    iget-object p2, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->lock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 593
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public setConnectTimeout(I)V
    .locals 3

    .line 302
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 303
    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 304
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 2

    int-to-long v0, p1

    .line 569
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/huc/OkHttpURLConnection;->setFixedLengthStreamingMode(J)V

    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 3

    .line 573
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-nez v0, :cond_2

    .line 574
    iget v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->chunkLength:I

    if-gtz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 576
    iput-wide p1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->fixedContentLength:J

    const-wide/32 v0, 0x7fffffff

    .line 577
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    return-void

    .line 575
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "contentLength < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 574
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already in chunked mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 573
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already connected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIfModifiedSince(J)V
    .locals 4

    .line 533
    invoke-super {p0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 534
    iget-wide p1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->ifModifiedSince:J

    const-wide/16 v0, 0x0

    const-string v2, "If-Modified-Since"

    cmp-long v3, p1, v0

    if-eqz v3, :cond_0

    .line 535
    iget-object p1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->requestHeaders:Lokhttp3/Headers$Builder;

    new-instance p2, Ljava/util/Date;

    iget-wide v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->ifModifiedSince:J

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {p2}, Lokhttp3/internal/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_0

    .line 537
    :cond_0
    iget-object p1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->requestHeaders:Lokhttp3/Headers$Builder;

    invoke-virtual {p1, v2}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    :goto_0
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    .line 308
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 309
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 310
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 3

    .line 322
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 323
    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 324
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 562
    sget-object v0, Lokhttp3/internal/huc/OkHttpURLConnection;->METHODS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    iput-object p1, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->method:Ljava/lang/String;

    return-void

    .line 563
    :cond_0
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected one of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " but was "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 513
    iget-boolean v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->connected:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 525
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring header "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because its value was null."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-virtual {p2, v1, p1, v0}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->requestHeaders:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-void

    .line 517
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "field == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 514
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot set request property after connection is made"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public usingProxy()Z
    .locals 3

    .line 499
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->proxy:Ljava/net/Proxy;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 500
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 501
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
