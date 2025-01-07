.class final Lcom/tencent/bugly/proguard/hj;
.super Lcom/tencent/bugly/proguard/bs;

# interfaces
.implements Lcom/tencent/bugly/proguard/hn;


# instance fields
.field private final uj:Lcom/tencent/bugly/proguard/hh;

.field private final uk:Lcom/tencent/bugly/proguard/hi;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/bs;-><init>(Ljava/net/URL;)V

    new-instance p1, Lcom/tencent/bugly/proguard/hh;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/hh;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/hj;->uj:Lcom/tencent/bugly/proguard/hh;

    new-instance p1, Lcom/tencent/bugly/proguard/hi;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/hi;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/hj;->uk:Lcom/tencent/bugly/proguard/hi;

    return-void
.end method

.method private static c(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1}, Lcom/tencent/bugly/proguard/cf;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    :cond_0
    throw p0
.end method

.method private fr()Lcom/tencent/bugly/proguard/hn$a;
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/tencent/bugly/proguard/hj;->uj:Lcom/tencent/bugly/proguard/hh;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/hh;->fo()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "Content-Type"

    const-string v6, "application/x-gzip"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Content-Encoding"

    const-string v6, "gzip"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/tencent/bugly/proguard/hn$a;->uw:Lcom/tencent/bugly/proguard/hn$a;

    const/16 v6, 0x7530

    invoke-virtual {v1, v4, v6, v6}, Lcom/tencent/bugly/proguard/hj;->a(Ljava/util/HashMap;II)Ljava/net/HttpURLConnection;

    move-result-object v4

    const-string v6, "RMonitor_config_Apply"

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_6

    :try_start_0
    sget-object v10, Lcom/tencent/bugly/proguard/cd;->et:Lcom/tencent/bugly/proguard/cd;

    iget-boolean v10, v10, Lcom/tencent/bugly/proguard/cd;->debugMode:Z

    if-eqz v10, :cond_0

    sget-object v10, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v11, v7, [Ljava/lang/String;

    aput-object v6, v11, v9

    const-string v12, "apply param: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-virtual {v10, v11}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :cond_0
    const/4 v10, 0x0

    :try_start_1
    new-instance v11, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    new-instance v12, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v12, v11}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "utf-8"

    invoke-static {v10}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v12}, Ljava/util/zip/GZIPOutputStream;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v12}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    const/16 v0, 0xc8

    if-ne v10, v0, :cond_3

    :try_start_5
    invoke-static {v4}, Lcom/tencent/bugly/proguard/hj;->c(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    sget-object v10, Lcom/tencent/bugly/proguard/cd;->et:Lcom/tencent/bugly/proguard/cd;

    iget-boolean v10, v10, Lcom/tencent/bugly/proguard/cd;->debugMode:Z

    if-eqz v10, :cond_1

    sget-object v10, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v11, v7, [Ljava/lang/String;

    aput-object v6, v11, v9

    const-string v12, "config from server: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-virtual {v10, v11}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    sget-object v0, Lcom/tencent/bugly/proguard/hn$a;->uw:Lcom/tencent/bugly/proguard/hn$a;

    :goto_0
    move-object v5, v0

    const/4 v0, 0x1

    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_2
    iget-object v10, v1, Lcom/tencent/bugly/proguard/hj;->uk:Lcom/tencent/bugly/proguard/hi;

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v10, Lcom/tencent/bugly/proguard/hi;->uq:J

    const-string v0, "status"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/tencent/bugly/proguard/hi;->status:I

    const-string v0, "data"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v10, Lcom/tencent/bugly/proguard/hi;->um:Lorg/json/JSONObject;

    const-string v0, "md5code"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/tencent/bugly/proguard/hi;->un:Ljava/lang/String;

    const-string v0, "next_time_in_sec"

    const-wide/16 v12, 0x0

    invoke-virtual {v11, v0, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    iput-wide v14, v10, Lcom/tencent/bugly/proguard/hi;->uo:J

    const-string v0, "config_latest_update_time"

    invoke-virtual {v11, v0, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v10, Lcom/tencent/bugly/proguard/hi;->up:J

    const-string v0, "apply result from json"

    invoke-virtual {v10, v0}, Lcom/tencent/bugly/proguard/hi;->aG(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/hn$a;->ux:Lcom/tencent/bugly/proguard/hn$a;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v11, v0

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    :try_start_6
    sget-object v0, Lcom/tencent/bugly/proguard/hn$a;->uw:Lcom/tencent/bugly/proguard/hn$a;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v5, v0

    const/4 v0, 0x0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v11, v0

    const/4 v0, 0x0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v10, v12

    goto :goto_1

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object v11, v10

    :goto_1
    if-eqz v10, :cond_4

    :try_start_7
    invoke-virtual {v10}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_4
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V

    :cond_5
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception v0

    move-object v11, v0

    const/4 v0, 0x0

    :goto_2
    const/4 v10, 0x0

    :goto_3
    :try_start_8
    sget-object v12, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    invoke-virtual {v12, v6, v11}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :goto_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    move v12, v0

    move v0, v10

    goto :goto_5

    :catchall_6
    move-exception v0

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    :cond_6
    const/4 v0, 0x0

    const/4 v12, 0x0

    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v14, v10, v2

    invoke-static {}, Lcom/tencent/bugly/proguard/qx$a;->jh()Lcom/tencent/bugly/proguard/qx;

    move-result-object v10

    const-string v11, "RMConfigEvent"

    move v13, v0

    invoke-interface/range {v10 .. v15}, Lcom/tencent/bugly/proguard/qz;->a(Ljava/lang/String;IIJ)V

    sget-object v2, Lcom/tencent/bugly/proguard/cd;->et:Lcom/tencent/bugly/proguard/cd;

    iget-boolean v2, v2, Lcom/tencent/bugly/proguard/cd;->debugMode:Z

    if-eqz v2, :cond_7

    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v3, v7, [Ljava/lang/String;

    aput-object v6, v3, v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v9

    aput-object v5, v6, v8

    const-string v0, "load config from service, errorCode: %d, configMode: %s"

    invoke-static {v4, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_7
    return-object v5
.end method


# virtual methods
.method public final b(Lcom/tencent/bugly/proguard/hh;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/hj;->uj:Lcom/tencent/bugly/proguard/hh;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/hh;->a(Lcom/tencent/bugly/proguard/hh;)V

    return-void
.end method

.method public final fp()I
    .locals 6

    const-string v0, "RMonitor_config_Apply"

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lcom/tencent/bugly/proguard/hj;->uk:Lcom/tencent/bugly/proguard/hi;

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/hi;->reset()V

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/hj;->fr()Lcom/tencent/bugly/proguard/hn$a;

    move-result-object v4

    sget-object v5, Lcom/tencent/bugly/proguard/hn$a;->ux:Lcom/tencent/bugly/proguard/hn$a;

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/tencent/bugly/proguard/hj;->uk:Lcom/tencent/bugly/proguard/hi;

    iget v4, v4, Lcom/tencent/bugly/proguard/hi;->status:I

    const/16 v5, 0x4b0

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/tencent/bugly/proguard/hj;->uk:Lcom/tencent/bugly/proguard/hi;

    iget v4, v4, Lcom/tencent/bugly/proguard/hi;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x2

    goto :goto_1

    :catchall_0
    move-exception v4

    sget-object v5, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    invoke-virtual {v5, v0, v4}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    sget-object v4, Lcom/tencent/bugly/proguard/cd;->et:Lcom/tencent/bugly/proguard/cd;

    iget-boolean v4, v4, Lcom/tencent/bugly/proguard/cd;->debugMode:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "load config result: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", status: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tencent/bugly/proguard/hj;->uk:Lcom/tencent/bugly/proguard/hi;

    iget v5, v5, Lcom/tencent/bugly/proguard/hi;->status:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {v4, v3}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_3
    return v2
.end method

.method public final fq()Lcom/tencent/bugly/proguard/hi;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/hj;->uk:Lcom/tencent/bugly/proguard/hi;

    return-object v0
.end method
