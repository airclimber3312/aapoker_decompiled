.class final Lcom/google/android/gms/internal/zzdbk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzczt;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzddt:Ljava/lang/String;

.field private final zzkyi:Lcom/google/android/gms/internal/zzdbn;

.field private final zzkyj:Lcom/google/android/gms/internal/zzdbm;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzdbm;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzdbl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdbl;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzdbk;-><init>(Lcom/google/android/gms/internal/zzdbn;Landroid/content/Context;Lcom/google/android/gms/internal/zzdbm;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzdbn;Landroid/content/Context;Lcom/google/android/gms/internal/zzdbm;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdbk;->zzkyi:Lcom/google/android/gms/internal/zzdbn;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdbk;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdbk;->zzkyj:Lcom/google/android/gms/internal/zzdbm;

    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "-"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_3
    :goto_0
    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "GoogleTagManager"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "5.06"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 p1, 0x3

    aput-object p3, v1, p1

    const/4 p1, 0x4

    aput-object p2, v1, p1

    const/4 p1, 0x5

    aput-object v0, v1, p1

    const-string p1, "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdbk;->zzddt:Ljava/lang/String;

    return-void
.end method

.method private static zzd(Lcom/google/android/gms/internal/zzczx;)Ljava/net/URL;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzczx;->zzbgt()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string p0, "Error trying to parse the GTM url."

    invoke-static {p0}, Lcom/google/android/gms/internal/zzdal;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final zzam(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzczx;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "GET"

    const-string v3, ": "

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v4, 0x28

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_0
    if-ge v7, v4, :cond_10

    move-object/from16 v9, p1

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/gms/internal/zzczx;

    invoke-static {v10}, Lcom/google/android/gms/internal/zzdbk;->zzd(Lcom/google/android/gms/internal/zzczx;)Ljava/net/URL;

    move-result-object v11

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzczx;->zzbis()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzczx;->zzbit()Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzczx;->zzbiu()Ljava/lang/String;

    move-result-object v13

    if-nez v11, :cond_0

    const-string v0, "No destination: discarding hit."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->zzcz(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/zzdbk;->zzkyj:Lcom/google/android/gms/internal/zzdbm;

    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/zzdbm;->zzb(Lcom/google/android/gms/internal/zzczx;)V

    :goto_1
    move/from16 v16, v4

    const/4 v6, 0x0

    const/4 v12, 0x1

    goto/16 :goto_12

    :cond_0
    :try_start_0
    iget-object v14, v1, Lcom/google/android/gms/internal/zzdbk;->zzkyi:Lcom/google/android/gms/internal/zzdbn;

    invoke-interface {v14, v11}, Lcom/google/android/gms/internal/zzdbn;->zzc(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v8, :cond_1

    :try_start_1
    iget-object v15, v1, Lcom/google/android/gms/internal/zzdbk;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/google/android/gms/internal/zzdan;->zzeo(Landroid/content/Context;)V

    const/4 v8, 0x0

    :cond_1
    const-string v15, "User-Agent"

    iget-object v6, v1, Lcom/google/android/gms/internal/zzdbk;->zzddt:Ljava/lang/String;

    invoke-virtual {v14, v15, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_2

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v14, v15, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "Hit %d retrieved from the store has null HTTP method."

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzczx;->zzbgr()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v6, v13

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->zzcz(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/zzdbk;->zzkyj:Lcom/google/android/gms/internal/zzdbm;

    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/zzdbm;->zzb(Lcom/google/android/gms/internal/zzczx;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    :goto_3
    :try_start_2
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    const-string v12, "POST"

    const-string v15, "PUT"

    const-string v5, "HEAD"

    if-nez v6, :cond_4

    :try_start_4
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v5, "Unrecongnized HTTP method %s. Supported methods are GET, HEAD, PUT and/or POST"

    const/4 v6, 0x1

    new-array v12, v6, [Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    const/4 v6, 0x0

    :try_start_5
    aput-object v0, v12, v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v5, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->zzcz(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/zzdbk;->zzkyj:Lcom/google/android/gms/internal/zzdbm;

    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/zzdbm;->zzb(Lcom/google/android/gms/internal/zzczx;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move/from16 v16, v4

    goto/16 :goto_e

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    move/from16 v16, v4

    const/4 v4, 0x2

    sparse-switch v6, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    :try_start_7
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x2

    goto :goto_5

    :sswitch_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_5

    :sswitch_2
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x3

    goto :goto_5

    :sswitch_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v5, -0x1

    :goto_5
    if-eqz v5, :cond_8

    const/4 v6, 0x1

    if-eq v5, v6, :cond_8

    if-eq v5, v4, :cond_7

    const/4 v4, 0x3

    if-eq v5, v4, :cond_7

    :cond_6
    :goto_6
    const/4 v6, 0x0

    const/4 v12, 0x1

    goto :goto_8

    :cond_7
    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz v13, :cond_6

    invoke-virtual {v14, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    array-length v5, v4

    invoke-virtual {v14, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v5, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_6

    :catchall_1
    move-exception v0

    goto/16 :goto_d

    :cond_8
    if-eqz v13, :cond_9

    const-string v5, "Body of %s hit is ignored: %s."

    new-array v4, v4, [Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v6, 0x0

    :try_start_8
    aput-object v0, v4, v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const/4 v12, 0x1

    :try_start_9
    aput-object v13, v4, v12

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/zzdal;->zzcz(Ljava/lang/String;)V

    goto :goto_7

    :catchall_2
    move-exception v0

    goto/16 :goto_e

    :cond_9
    const/4 v6, 0x0

    const/4 v12, 0x1

    :goto_7
    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :goto_8
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_d

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x27

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Bad response received for "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->zzcz(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :try_start_a
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :goto_9
    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_a
    const-string v5, "Error Message: "

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_b

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_a
    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->zzcz(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    iget-object v0, v1, Lcom/google/android/gms/internal/zzdbk;->zzkyj:Lcom/google/android/gms/internal/zzdbm;

    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/zzdbm;->zzc(Lcom/google/android/gms/internal/zzczx;)V

    const/4 v15, 0x0

    goto :goto_c

    :catchall_3
    move-exception v0

    goto :goto_b

    :catchall_4
    move-exception v0

    const/4 v4, 0x0

    :goto_b
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_c
    throw v0

    :cond_d
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :try_start_d
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x17

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v5, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Hit sent to "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(method = "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/zzdbk;->zzkyj:Lcom/google/android/gms/internal/zzdbm;

    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/zzdbm;->zza(Lcom/google/android/gms/internal/zzczx;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :goto_c
    if-eqz v15, :cond_e

    :try_start_e
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    :cond_e
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_12

    :catchall_5
    move-exception v0

    goto :goto_10

    :catchall_6
    move-exception v0

    goto :goto_f

    :catchall_7
    move-exception v0

    move/from16 v16, v4

    :goto_d
    const/4 v6, 0x0

    :goto_e
    const/4 v12, 0x1

    :goto_f
    const/4 v15, 0x0

    :goto_10
    if-eqz v15, :cond_f

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    :cond_f
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    :catch_0
    move-exception v0

    goto :goto_11

    :catch_1
    move-exception v0

    move/from16 v16, v4

    const/4 v6, 0x0

    const/4 v12, 0x1

    :goto_11
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x1b

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v11, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "Exception sending hit to "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/zzdal;->zzcz(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->zzcz(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/zzdbk;->zzkyj:Lcom/google/android/gms/internal/zzdbm;

    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/zzdbm;->zzc(Lcom/google/android/gms/internal/zzczx;)V

    :goto_12
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v16

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_10
    return-void

    :sswitch_data_0
    .sparse-switch
        0x11336 -> :sswitch_3
        0x136ef -> :sswitch_2
        0x21c5e0 -> :sswitch_1
        0x2590a0 -> :sswitch_0
    .end sparse-switch
.end method

.method public final zzbgj()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdbk;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const-string v0, "...no network connectivity"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
