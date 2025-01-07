.class Lio/agora/utils2/HttpAsyncTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lio/agora/utils2/HttpAsyncTaskParam;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final RESPONSE_COMPLETED:I = 0x1

.field private static final RESPONSE_COMPLETED_REASON_NONE:I = 0x0

.field private static final RESPONSE_COMPLETED_REASON_OTHER_ERROR:I = 0x4

.field private static final RESPONSE_COMPLETED_REASON_SOCKET_TIMEOUT:I = 0x3

.field private static final RESPONSE_COMPLETED_REASON_SUCCESS:I = 0x1

.field private static final RESPONSE_COMPLETED_REASON_UNKNOWN_HOST:I = 0x2

.field private static final RESPONSE_ON_GOING:I = 0x0

.field private static final SIZE_FOR_CALLBACK:I = 0x4000

.field private static final TAG:Ljava/lang/String; = "HttpAsyncTask"


# instance fields
.field private nativeHandle:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-wide p1, p0, Lio/agora/utils2/HttpAsyncTask;->nativeHandle:J

    return-void
.end method

.method private static native nativeNotifyResponse(JIII[BILjava/util/Map;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "status",
            "isCompleted",
            "completedReason",
            "body",
            "size",
            "headers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIII[BI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method private notifyNativeResponse(III[BLjava/util/Map;)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "status",
            "isCompleted",
            "completedReason",
            "body",
            "headers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    iget-wide v0, p0, Lio/agora/utils2/HttpAsyncTask;->nativeHandle:J

    if-eqz p4, :cond_0

    array-length v2, p4

    move v6, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_0
    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lio/agora/utils2/HttpAsyncTask;->nativeNotifyResponse(JIII[BILjava/util/Map;)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "params"
        }
    .end annotation

    check-cast p1, [Lio/agora/utils2/HttpAsyncTaskParam;

    invoke-virtual {p0, p1}, Lio/agora/utils2/HttpAsyncTask;->doInBackground([Lio/agora/utils2/HttpAsyncTaskParam;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lio/agora/utils2/HttpAsyncTaskParam;)Ljava/lang/Void;
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "got exception "

    const-string v2, "HttpAsyncTask"

    const/4 v9, 0x0

    array-length v3, v0

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ge v3, v11, :cond_0

    const/4 v15, 0x4

    const/16 v13, 0x194

    const/4 v14, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v17}, Lio/agora/utils2/HttpAsyncTask;->notifyNativeResponse(III[BLjava/util/Map;)I

    return-object v10

    :cond_0
    const/4 v12, 0x0

    aget-object v0, v0, v12

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x4

    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, v0, Lio/agora/utils2/HttpAsyncTaskParam;->fullUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lio/agora/utils2/HttpAsyncTaskParam;->httpProxy:Ljava/net/Proxy;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lio/agora/utils2/HttpAsyncTaskParam;->httpProxy:Ljava/net/Proxy;

    invoke-virtual {v3, v4}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v3

    :goto_0
    check-cast v3, Ljava/net/HttpURLConnection;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    goto :goto_0

    :goto_1
    iget-object v4, v0, Lio/agora/utils2/HttpAsyncTaskParam;->headers:Ljava/util/HashMap;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lio/agora/utils2/HttpAsyncTaskParam;->headers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v4, v0, Lio/agora/utils2/HttpAsyncTaskParam;->user:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lio/agora/utils2/HttpAsyncTaskParam;->user:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v0, Lio/agora/utils2/HttpAsyncTaskParam;->pass:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lio/agora/utils2/HttpAsyncTaskParam;->pass:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lio/agora/utils2/HttpAsyncTaskParam;->user:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lio/agora/utils2/HttpAsyncTaskParam;->pass:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Authorization"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Basic "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v4, v0, Lio/agora/utils2/HttpAsyncTaskParam;->agent:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v0, Lio/agora/utils2/HttpAsyncTaskParam;->agent:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "User-Agent"

    iget-object v5, v0, Lio/agora/utils2/HttpAsyncTaskParam;->agent:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v4, v0, Lio/agora/utils2/HttpAsyncTaskParam;->method:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget v4, v0, Lio/agora/utils2/HttpAsyncTaskParam;->timeout_millsec:I

    if-lez v4, :cond_5

    iget v4, v0, Lio/agora/utils2/HttpAsyncTaskParam;->timeout_millsec:I

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v4, v0, Lio/agora/utils2/HttpAsyncTaskParam;->timeout_millsec:I

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_5
    const-string v4, "POST"

    iget-object v5, v0, Lio/agora/utils2/HttpAsyncTaskParam;->method:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :cond_6
    iget-object v4, v0, Lio/agora/utils2/HttpAsyncTaskParam;->body:[B

    if-eqz v4, :cond_7

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v0, v0, Lio/agora/utils2/HttpAsyncTaskParam;->body:[B

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    :cond_7
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const-string v7, ""

    if-eqz v6, :cond_8

    goto :goto_4

    :cond_8
    move-object v6, v7

    :goto_4
    if-eqz v5, :cond_9

    goto :goto_5

    :cond_9
    move-object v5, v7

    :goto_5
    :try_start_1
    invoke-interface {v8, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resp code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    div-int/lit8 v4, v0, 0x64

    if-eq v4, v14, :cond_d

    div-int/lit8 v4, v0, 0x64

    if-eq v4, v13, :cond_d

    div-int/lit8 v4, v0, 0x64

    if-ne v4, v15, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move/from16 v17, v0

    move-object/from16 v20, v3

    move-object/from16 v21, v8

    goto :goto_6

    :cond_c
    move/from16 v17, v0

    move-object/from16 v21, v8

    move-object/from16 v20, v10

    :goto_6
    const/16 v19, 0x0

    goto/16 :goto_f

    :cond_d
    :goto_7
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x1000

    new-array v6, v4, [B
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    div-int/lit8 v4, v0, 0x64

    if-ne v4, v15, :cond_e

    new-instance v4, Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_8

    :cond_e
    new-instance v4, Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_8
    move-object v5, v4

    move-object v3, v10

    :goto_9
    :try_start_3
    invoke-virtual {v5, v6}, Ljava/io/DataInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_11

    invoke-virtual {v7, v6, v12, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    const/16 v11, 0x4000

    if-lt v4, v11, :cond_10

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v17, 0x0

    move-object/from16 v3, p0

    move v4, v0

    move-object/from16 v18, v5

    move/from16 v5, v17

    move-object/from16 v17, v6

    move v6, v9

    move-object/from16 v19, v7

    move-object v7, v11

    move-object/from16 v21, v8

    :try_start_4
    invoke-direct/range {v3 .. v8}, Lio/agora/utils2/HttpAsyncTask;->notifyNativeResponse(III[BLjava/util/Map;)I

    move-result v3

    if-eqz v3, :cond_f

    move-object v3, v11

    goto :goto_b

    :cond_f
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v3, v11

    move-object/from16 v6, v17

    move-object/from16 v5, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v21

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v3, v11

    goto :goto_c

    :cond_10
    move-object/from16 v18, v5

    :goto_a
    const/4 v11, 0x1

    goto :goto_9

    :cond_11
    move-object/from16 v18, v5

    move-object/from16 v19, v7

    move-object/from16 v21, v8

    :goto_b
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v18, :cond_12

    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_12
    const/4 v9, 0x1

    goto :goto_e

    :catchall_0
    move-exception v0

    move-object/from16 v5, v18

    goto :goto_10

    :catch_1
    move-exception v0

    :goto_c
    move-object/from16 v5, v18

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object/from16 v18, v5

    goto :goto_10

    :catch_2
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v21, v8

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object v5, v10

    goto :goto_10

    :catch_3
    move-exception v0

    move-object/from16 v21, v8

    move-object v3, v10

    move-object v5, v3

    :goto_d
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v5, :cond_13

    :try_start_8
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    :cond_13
    const/16 v0, 0x194

    const/4 v9, 0x4

    :goto_e
    move/from16 v17, v0

    move-object/from16 v20, v3

    move/from16 v19, v9

    :goto_f
    const/16 v18, 0x1

    move-object/from16 v16, p0

    invoke-direct/range {v16 .. v21}, Lio/agora/utils2/HttpAsyncTask;->notifyNativeResponse(III[BLjava/util/Map;)I

    return-object v10

    :catchall_3
    move-exception v0

    :goto_10
    if-eqz v5, :cond_14

    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    :cond_14
    throw v0
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x4

    goto :goto_11

    :catch_5
    const-string v0, "got time out exception"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x3

    goto :goto_11

    :catch_6
    const-string v0, "got unknown host exception"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x2

    :goto_11
    const/16 v4, 0x194

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lio/agora/utils2/HttpAsyncTask;->notifyNativeResponse(III[BLjava/util/Map;)I

    return-object v10
.end method
