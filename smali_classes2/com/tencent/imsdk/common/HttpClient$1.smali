.class final Lcom/tencent/imsdk/common/HttpClient$1;
.super Ljava/lang/Object;
.source "HttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/common/HttpClient;->httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$connectTimeout:I

.field final synthetic val$content:[B

.field final synthetic val$downloadFile:Ljava/lang/String;

.field final synthetic val$headers:Ljava/util/Map;

.field final synthetic val$listener:Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$proxyHost:Ljava/lang/String;

.field final synthetic val$proxyPassword:Ljava/lang/String;

.field final synthetic val$proxyPort:I

.field final synthetic val$proxyType:I

.field final synthetic val$proxyUserName:Ljava/lang/String;

.field final synthetic val$recvTimeout:I

.field final synthetic val$rollbackHttps2Http:Ljava/lang/String;

.field final synthetic val$uploadFile:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$use_origin_ip:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Ljava/lang/Boolean;[BLjava/lang/String;Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    move-object v1, p1

    .line 98
    iput-object v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$url:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$rollbackHttps2Http:Ljava/lang/String;

    move v1, p3

    iput v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyType:I

    move-object v1, p4

    iput-object v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyHost:Ljava/lang/String;

    move v1, p5

    iput v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyPort:I

    move-object v1, p6

    iput-object v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyUserName:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyPassword:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$method:Ljava/lang/String;

    move v1, p9

    iput v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$connectTimeout:I

    move v1, p10

    iput v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$recvTimeout:I

    move-object v1, p11

    iput-object v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$headers:Ljava/util/Map;

    move-object v1, p12

    iput-object v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$use_origin_ip:Ljava/lang/Boolean;

    move-object v1, p13

    iput-object v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$content:[B

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$uploadFile:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$listener:Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/tencent/imsdk/common/HttpClient$1;->val$downloadFile:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "http request failed."

    .line 106
    iget-object v0, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$url:Ljava/lang/String;

    const-string v3, "https"

    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    invoke-static {}, Lcom/tencent/imsdk/common/HttpClient;->access$000()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$rollbackHttps2Http:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 110
    iget-object v4, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$rollbackHttps2Http:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/imsdk/common/HttpClient;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    iget-object v4, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$rollbackHttps2Http:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/imsdk/common/HttpClient;->access$200(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Lcom/tencent/imsdk/common/HttpClient;->access$102(Z)Z

    .line 114
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/common/HttpClient;->access$100()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    iget-object v0, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$url:Ljava/lang/String;

    const-string v4, "http"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0xc8

    .line 120
    :try_start_0
    iget v6, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyType:I

    const/4 v7, 0x1

    if-ne v7, v6, :cond_2

    iget-object v6, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyHost:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyPort:I

    if-eqz v6, :cond_2

    .line 121
    new-instance v6, Ljava/net/Proxy;

    sget-object v8, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v9, Ljava/net/InetSocketAddress;

    iget-object v10, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyHost:Ljava/lang/String;

    iget v11, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyPort:I

    invoke-direct {v9, v10, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v6, v8, v9}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 122
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/net/HttpURLConnection;

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 123
    :try_start_1
    iget-object v0, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyUserName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 124
    new-instance v0, Lcom/tencent/imsdk/common/HttpClient$BasicAuthenticator;

    iget-object v8, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyUserName:Ljava/lang/String;

    iget-object v9, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyPassword:Ljava/lang/String;

    invoke-direct {v0, v8, v9}, Lcom/tencent/imsdk/common/HttpClient$BasicAuthenticator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_0

    .line 126
    :cond_2
    :try_start_2
    iget v6, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyType:I

    const/4 v8, 0x2

    if-ne v8, v6, :cond_3

    iget-object v6, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyHost:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    iget v6, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyPort:I

    if-eqz v6, :cond_3

    .line 127
    new-instance v6, Ljava/net/Proxy;

    sget-object v8, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    new-instance v9, Ljava/net/InetSocketAddress;

    iget-object v10, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyHost:Ljava/lang/String;

    iget v11, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyPort:I

    invoke-direct {v9, v10, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v6, v8, v9}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 128
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/net/HttpURLConnection;

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 129
    :try_start_3
    iget-object v0, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyUserName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 130
    new-instance v0, Lcom/tencent/imsdk/common/HttpClient$BasicAuthenticator;

    iget-object v8, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyUserName:Ljava/lang/String;

    iget-object v9, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$proxyPassword:Ljava/lang/String;

    invoke-direct {v0, v8, v9}, Lcom/tencent/imsdk/common/HttpClient$BasicAuthenticator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 133
    :cond_3
    :try_start_4
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/net/HttpURLConnection;

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 136
    :cond_4
    :goto_0
    :try_start_5
    iget-object v0, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$method:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 137
    iget v0, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$connectTimeout:I

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 138
    iget v0, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$recvTimeout:I

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x0

    .line 139
    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 140
    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 142
    iget-object v8, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$headers:Ljava/util/Map;

    if-eqz v8, :cond_5

    .line 143
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 144
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v10, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 148
    :cond_5
    iget-object v8, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$use_origin_ip:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    instance-of v8, v6, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v8, :cond_6

    .line 149
    move-object v8, v6

    check-cast v8, Ljavax/net/ssl/HttpsURLConnection;

    .line 150
    new-instance v9, Lcom/tencent/imsdk/common/HttpClient$1$1;

    invoke-direct {v9, v1, v8}, Lcom/tencent/imsdk/common/HttpClient$1$1;-><init>(Lcom/tencent/imsdk/common/HttpClient$1;Ljavax/net/ssl/HttpsURLConnection;)V

    invoke-virtual {v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 160
    :cond_6
    iget-object v8, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$content:[B

    if-eqz v8, :cond_7

    array-length v8, v8

    if-lez v8, :cond_7

    const/4 v8, 0x1

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    .line 161
    :goto_2
    iget-object v9, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$uploadFile:Ljava/lang/String;

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    goto :goto_3

    :cond_8
    const/4 v9, 0x0

    :goto_3
    if-nez v8, :cond_a

    if-eqz v9, :cond_9

    goto :goto_4

    :cond_9
    const/4 v8, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v8, 0x1

    .line 163
    :goto_5
    iget-object v10, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$method:Ljava/lang/String;

    const-string v11, "GET"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    const/16 v11, 0x1000

    if-nez v10, :cond_e

    if-eqz v8, :cond_e

    .line 164
    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-eqz v9, :cond_b

    .line 167
    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$uploadFile:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_6

    .line 169
    :cond_b
    new-instance v8, Ljava/io/ByteArrayInputStream;

    iget-object v9, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$content:[B

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 172
    :goto_6
    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v9

    .line 173
    invoke-virtual {v6, v9}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    new-array v10, v11, [B

    const/4 v12, 0x0

    .line 177
    :cond_c
    :goto_7
    invoke-virtual {v8, v10}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-gez v13, :cond_d

    .line 185
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    goto :goto_8

    :cond_d
    add-int/2addr v12, v13

    .line 180
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-virtual {v14, v10, v0, v13}, Ljava/io/OutputStream;->write([BII)V

    .line 181
    iget-object v13, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$listener:Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;

    if-eqz v13, :cond_c

    .line 182
    invoke-interface {v13, v0, v12, v9}, Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;->onProgress(III)V

    goto :goto_7

    .line 189
    :cond_e
    :goto_8
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 191
    :try_start_6
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_f

    .line 193
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v9, :cond_10

    .line 195
    :try_start_7
    invoke-virtual {v6, v12}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_f
    move-object v10, v4

    .line 199
    :cond_10
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v9

    if-ne v9, v3, :cond_11

    const/4 v9, 0x0

    .line 205
    :cond_11
    iget-object v12, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$downloadFile:Ljava/lang/String;

    if-eqz v12, :cond_12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_12

    const/4 v12, 0x1

    goto :goto_a

    :cond_12
    const/4 v12, 0x0

    :goto_a
    if-ne v8, v5, :cond_17

    .line 207
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v12, :cond_13

    .line 210
    :try_start_8
    new-instance v13, Ljava/io/FileOutputStream;

    iget-object v14, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$downloadFile:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_b

    .line 212
    :cond_13
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_b
    new-array v11, v11, [B

    const/4 v14, 0x0

    .line 218
    :cond_14
    :goto_c
    invoke-virtual {v5, v11}, Ljava/io/InputStream;->read([B)I

    move-result v15

    if-gez v15, :cond_16

    if-eqz v12, :cond_15

    new-array v0, v0, [B

    :goto_d
    move-object v4, v0

    goto :goto_e

    .line 229
    :cond_15
    move-object v0, v13

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_d

    .line 231
    :goto_e
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    move-object v2, v4

    move-object v4, v5

    goto :goto_f

    :cond_16
    add-int/2addr v14, v15

    .line 221
    invoke-virtual {v13, v11, v0, v15}, Ljava/io/OutputStream;->write([BII)V

    .line 222
    iget-object v15, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$listener:Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;

    if-eqz v15, :cond_14

    .line 223
    invoke-interface {v15, v7, v14, v9}, Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;->onProgress(III)V
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v2, v0

    move v3, v8

    move-object/from16 v16, v5

    move-object v5, v4

    move-object/from16 v4, v16

    goto/16 :goto_1b

    :catch_0
    move-exception v0

    move-object/from16 v16, v5

    move-object v5, v4

    move-object/from16 v4, v16

    goto/16 :goto_14

    :catch_1
    move-exception v0

    move v3, v8

    move-object/from16 v16, v5

    move-object v5, v4

    move-object/from16 v4, v16

    goto/16 :goto_18

    :cond_17
    move-object v2, v4

    :goto_f
    if-eqz v4, :cond_18

    .line 246
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_10

    :catch_2
    move-exception v0

    move-object v3, v0

    .line 248
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_18
    :goto_10
    if-eqz v6, :cond_19

    .line 253
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 256
    :cond_19
    iget-object v0, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$listener:Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;

    if-eqz v0, :cond_1e

    .line 257
    invoke-interface {v0, v8, v10, v2}, Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;->onCompleted(ILjava/util/Map;[B)V

    goto/16 :goto_1a

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v5, v4

    goto/16 :goto_16

    :catch_3
    move-exception v0

    move-object v5, v4

    goto :goto_14

    :catch_4
    move-exception v0

    move-object v5, v4

    goto :goto_11

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v5, v4

    move-object v10, v5

    goto/16 :goto_16

    :catch_5
    move-exception v0

    move-object v5, v4

    move-object v10, v5

    goto :goto_14

    :catch_6
    move-exception v0

    move-object v5, v4

    move-object v10, v5

    :goto_11
    move v3, v8

    goto/16 :goto_18

    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object v5, v4

    move-object v10, v5

    goto :goto_12

    :catch_7
    move-exception v0

    move-object v5, v4

    move-object v10, v5

    goto :goto_13

    :catch_8
    move-exception v0

    move-object v5, v4

    move-object v10, v5

    goto :goto_17

    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object v5, v4

    move-object v6, v5

    move-object v10, v6

    :goto_12
    const/16 v3, 0xc8

    goto/16 :goto_1b

    :catch_9
    move-exception v0

    move-object v5, v4

    move-object v6, v5

    move-object v10, v6

    :goto_13
    const/16 v8, 0xc8

    .line 239
    :goto_14
    :try_start_a
    invoke-static {}, Lcom/tencent/imsdk/common/HttpClient;->access$300()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 241
    :try_start_b
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-eqz v4, :cond_1a

    .line 246
    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_15

    :catch_a
    move-exception v0

    move-object v4, v0

    .line 248
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_1a
    :goto_15
    if-eqz v6, :cond_1b

    .line 253
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 256
    :cond_1b
    iget-object v0, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$listener:Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;

    if-eqz v0, :cond_1e

    .line 257
    invoke-interface {v0, v3, v10, v2}, Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;->onCompleted(ILjava/util/Map;[B)V

    goto :goto_1a

    :catchall_5
    move-exception v0

    move-object v2, v0

    :goto_16
    move v3, v8

    goto :goto_1b

    :catch_b
    move-exception v0

    move-object v5, v4

    move-object v6, v5

    move-object v10, v6

    :goto_17
    const/16 v3, 0xc8

    .line 236
    :goto_18
    :try_start_d
    invoke-static {}, Lcom/tencent/imsdk/common/HttpClient;->access$300()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    if-eqz v4, :cond_1c

    .line 246
    :try_start_e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    goto :goto_19

    :catch_c
    move-exception v0

    move-object v2, v0

    .line 248
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_1c
    :goto_19
    if-eqz v6, :cond_1d

    .line 253
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 256
    :cond_1d
    iget-object v0, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$listener:Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;

    if-eqz v0, :cond_1e

    const/16 v2, 0x194

    .line 257
    invoke-interface {v0, v2, v10, v5}, Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;->onCompleted(ILjava/util/Map;[B)V

    :cond_1e
    :goto_1a
    return-void

    :catchall_6
    move-exception v0

    move-object v2, v0

    :goto_1b
    if-eqz v4, :cond_1f

    .line 246
    :try_start_f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    goto :goto_1c

    :catch_d
    move-exception v0

    move-object v4, v0

    .line 248
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_1f
    :goto_1c
    if-eqz v6, :cond_20

    .line 253
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 256
    :cond_20
    iget-object v0, v1, Lcom/tencent/imsdk/common/HttpClient$1;->val$listener:Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;

    if-eqz v0, :cond_21

    .line 257
    invoke-interface {v0, v3, v10, v5}, Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;->onCompleted(ILjava/util/Map;[B)V

    .line 259
    :cond_21
    throw v2
.end method
