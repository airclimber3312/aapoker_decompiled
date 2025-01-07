.class public Lcom/netease/cloud/nos/yidun/utils/Http;
.super Ljava/lang/Object;
.source "Http.java"


# static fields
.field private static httpClient:Lokhttp3/OkHttpClient;

.field private static lbsHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildHttpClient(Landroid/content/Context;II)Lokhttp3/OkHttpClient;
    .locals 6

    .line 1
    new-instance p0, Lokhttp3/Dispatcher;

    invoke-direct {p0}, Lokhttp3/Dispatcher;-><init>()V

    const/16 v0, 0xa

    .line 2
    invoke-virtual {p0, v0}, Lokhttp3/Dispatcher;->setMaxRequests(I)V

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p0, v0}, Lokhttp3/Dispatcher;->setMaxRequestsPerHost(I)V

    .line 5
    new-instance p0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 6
    new-instance v0, Lcom/netease/cloud/nos/yidun/utils/Http$1;

    invoke-direct {v0}, Lcom/netease/cloud/nos/yidun/utils/Http$1;-><init>()V

    .line 17
    new-instance v1, Lcom/netease/cloud/nos/yidun/utils/Http$2;

    invoke-direct {v1}, Lcom/netease/cloud/nos/yidun/utils/Http$2;-><init>()V

    :try_start_0
    const-string v2, "TLS"

    .line 23
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 24
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 25
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 26
    invoke-virtual {p0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 28
    :goto_0
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    :goto_1
    int-to-long v0, p1

    .line 30
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    int-to-long v0, p2

    .line 31
    invoke-virtual {p0, v0, v1, p1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 32
    invoke-virtual {p0, v0, v1, p1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static getHttpClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;
    .locals 2

    .line 1
    invoke-static {}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 5
    :cond_0
    sget-object v0, Lcom/netease/cloud/nos/yidun/utils/Http;->httpClient:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_1

    .line 7
    invoke-static {}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->getConnectionTimeout()I

    move-result v0

    .line 8
    invoke-static {}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->getSoTimeout()I

    move-result v1

    .line 9
    invoke-static {p0, v0, v1}, Lcom/netease/cloud/nos/yidun/utils/Http;->buildHttpClient(Landroid/content/Context;II)Lokhttp3/OkHttpClient;

    move-result-object p0

    sput-object p0, Lcom/netease/cloud/nos/yidun/utils/Http;->httpClient:Lokhttp3/OkHttpClient;

    .line 13
    :cond_1
    sget-object p0, Lcom/netease/cloud/nos/yidun/utils/Http;->httpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public static getLbsHttpClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;
    .locals 2

    .line 1
    invoke-static {}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 5
    :cond_0
    sget-object v0, Lcom/netease/cloud/nos/yidun/utils/Http;->lbsHttpClient:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_1

    .line 7
    invoke-static {}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->getLbsConnectionTimeout()I

    move-result v0

    .line 8
    invoke-static {}, Lcom/netease/cloud/nos/yidun/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cloud/nos/yidun/core/AcceleratorConf;->getLbsSoTimeout()I

    move-result v1

    .line 9
    invoke-static {p0, v0, v1}, Lcom/netease/cloud/nos/yidun/utils/Http;->buildHttpClient(Landroid/content/Context;II)Lokhttp3/OkHttpClient;

    move-result-object p0

    sput-object p0, Lcom/netease/cloud/nos/yidun/utils/Http;->lbsHttpClient:Lokhttp3/OkHttpClient;

    .line 13
    :cond_1
    sget-object p0, Lcom/netease/cloud/nos/yidun/utils/Http;->lbsHttpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method
