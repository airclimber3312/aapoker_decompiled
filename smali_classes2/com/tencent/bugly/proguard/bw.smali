.class public final Lcom/tencent/bugly/proguard/bw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/ba;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u000e\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0014J \u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u00052\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dJ\u001a\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0002J \u0010\u001f\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u00052\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dJ\u001a\u0010 \u001a\u00020!2\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\""
    }
    d2 = {
        "Lcom/tencent/bugly/common/reporter/upload/UploadProxy;",
        "Lcom/tencent/bugly/common/reporter/IReporter;",
        "context",
        "Landroid/content/Context;",
        "appId",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "mAppId",
        "getMAppId",
        "()Ljava/lang/String;",
        "setMAppId",
        "(Ljava/lang/String;)V",
        "mContext",
        "getMContext",
        "()Landroid/content/Context;",
        "setMContext",
        "(Landroid/content/Context;)V",
        "checkAttrBeforeReport",
        "",
        "reportData",
        "Lcom/tencent/bugly/common/reporter/data/ReportData;",
        "getFileUploadUrl",
        "reportType",
        "",
        "getJsonUploadUrl",
        "getMD5Params",
        "reportFile",
        "url",
        "callback",
        "Lcom/tencent/bugly/common/reporter/IReporter$ReportCallback;",
        "reportForVersion1",
        "reportJson",
        "reportNow",
        "",
        "bugly-pro_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private dZ:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/bw;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/bw;->dZ:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/tencent/bugly/proguard/bg;)Ljava/lang/String;
    .locals 4

    const-string v0, "reportData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/tencent/bugly/proguard/bg;->da:Lorg/json/JSONObject;

    const-string v2, "client_identify"

    const-string v3, "clientidnull"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "?timestamp="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "&nonce="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/tencent/bugly/proguard/bg;Ljava/lang/String;Lcom/tencent/bugly/proguard/ba$a;)V
    .locals 10

    const-string v0, ""

    const-string v1, "reportData"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/bugly/proguard/bp;

    invoke-direct {v1, p0, p2}, Lcom/tencent/bugly/proguard/bp;-><init>(Lcom/tencent/bugly/proguard/bg;Lcom/tencent/bugly/proguard/ba$a;)V

    new-instance p2, Lcom/tencent/bugly/proguard/br;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/tencent/bugly/proguard/ba$a;

    invoke-direct {p2, v2, p0, v1}, Lcom/tencent/bugly/proguard/br;-><init>(Ljava/net/URL;Lcom/tencent/bugly/proguard/bg;Lcom/tencent/bugly/proguard/ba$a;)V

    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/br;->ax()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p2, Lcom/tencent/bugly/proguard/bt;->dO:Lcom/tencent/bugly/proguard/ba$a;

    if-eqz p0, :cond_0

    iget-object p2, p2, Lcom/tencent/bugly/proguard/bt;->dN:Lcom/tencent/bugly/proguard/bg;

    iget p2, p2, Lcom/tencent/bugly/proguard/bg;->cS:I

    invoke-interface {p0, p2, p1}, Lcom/tencent/bugly/proguard/ba$a;->b(II)V

    :cond_0
    return-void

    :cond_1
    sget-object p0, Lcom/tencent/bugly/proguard/aq;->cl:Lcom/tencent/bugly/proguard/aq;

    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->aa()Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, p2, Lcom/tencent/bugly/proguard/bt;->dO:Lcom/tencent/bugly/proguard/ba$a;

    if-eqz p0, :cond_2

    iget-object p2, p2, Lcom/tencent/bugly/proguard/bt;->dN:Lcom/tencent/bugly/proguard/bg;

    iget p2, p2, Lcom/tencent/bugly/proguard/bg;->cS:I

    const/16 v0, 0x25a

    const-string v1, "network not available"

    invoke-interface {p0, v0, v1, p2, p1}, Lcom/tencent/bugly/proguard/ba$a;->a(ILjava/lang/String;II)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/tencent/bugly/proguard/bm;->as()Lcom/tencent/bugly/proguard/bm;

    move-result-object p0

    iget-object v1, p2, Lcom/tencent/bugly/proguard/bt;->dN:Lcom/tencent/bugly/proguard/bg;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/bg;->da:Lorg/json/JSONObject;

    invoke-virtual {p0, v1}, Lcom/tencent/bugly/proguard/bm;->f(Lorg/json/JSONObject;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/tencent/bugly/proguard/bv;->dY:Lcom/tencent/bugly/proguard/bv$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/bv$a;->ay()Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljava/util/Map;

    const-string v3, "Content-Encoding"

    const-string v4, "gzip, encrypt"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p2, Lcom/tencent/bugly/proguard/bt;->dN:Lcom/tencent/bugly/proguard/bg;

    iget v3, v3, Lcom/tencent/bugly/proguard/bg;->cY:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const-string v3, "Content-Type"

    const-string v5, "application/json"

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v3, "X-ENCRYPTION-KEY"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/tencent/bugly/proguard/bv;->dY:Lcom/tencent/bugly/proguard/bv$a;

    const-string v3, "v1"

    const-string v5, "X-ENCRYPTION-VERSION"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/tencent/bugly/proguard/cd;->et:Lcom/tencent/bugly/proguard/cd;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/cd;->aY()Z

    move-result v2

    const-string v3, "RMonitor_report_Json"

    const/4 v5, 0x2

    if-eqz v2, :cond_5

    iget-object v2, p2, Lcom/tencent/bugly/proguard/bt;->dN:Lcom/tencent/bugly/proguard/bg;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/bg;->da:Lorg/json/JSONObject;

    const-string v6, "client_identify"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    sget-object v6, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v7, v5, [Ljava/lang/String;

    aput-object v3, v7, p1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "url: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p2, Lcom/tencent/bugly/proguard/bs;->url:Ljava/net/URL;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", eventName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p2, Lcom/tencent/bugly/proguard/bt;->dN:Lcom/tencent/bugly/proguard/bg;

    iget-object v9, v9, Lcom/tencent/bugly/proguard/bg;->cZ:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", client_identify: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v4

    invoke-virtual {v6, v7}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_5
    iget-object v2, p2, Lcom/tencent/bugly/proguard/bt;->dN:Lcom/tencent/bugly/proguard/bg;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/bg;->cU:Lcom/tencent/bugly/proguard/bh;

    iget v2, v2, Lcom/tencent/bugly/proguard/bh;->dd:I

    iget-object v6, p2, Lcom/tencent/bugly/proguard/bt;->dN:Lcom/tencent/bugly/proguard/bg;

    iget-object v6, v6, Lcom/tencent/bugly/proguard/bg;->cU:Lcom/tencent/bugly/proguard/bh;

    iget v6, v6, Lcom/tencent/bugly/proguard/bh;->de:I

    invoke-virtual {p2, p0, v2, v6}, Lcom/tencent/bugly/proguard/br;->a(Ljava/util/HashMap;II)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p2, p0, v1}, Lcom/tencent/bugly/proguard/br;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    sget-object v6, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v2, v2, [Ljava/lang/String;

    aput-object v3, v2, p1

    iget-object v3, p2, Lcom/tencent/bugly/proguard/bt;->dN:Lcom/tencent/bugly/proguard/bg;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/bg;->cZ:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v6, v2}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    iget-object v2, p2, Lcom/tencent/bugly/proguard/bt;->dO:Lcom/tencent/bugly/proguard/ba$a;

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    move-object v0, v1

    :goto_0
    iget-object p2, p2, Lcom/tencent/bugly/proguard/bt;->dN:Lcom/tencent/bugly/proguard/bg;

    iget p2, p2, Lcom/tencent/bugly/proguard/bg;->cS:I

    const/16 v1, 0x2bc

    invoke-interface {v2, v1, v0, p2, p1}, Lcom/tencent/bugly/proguard/ba$a;->a(ILjava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_8
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    return-void

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v6, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v2, v2, [Ljava/lang/String;

    aput-object v3, v2, p1

    iget-object v3, p2, Lcom/tencent/bugly/proguard/bt;->dN:Lcom/tencent/bugly/proguard/bg;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/bg;->cZ:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v6, v2}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    iget-object v2, p2, Lcom/tencent/bugly/proguard/bt;->dO:Lcom/tencent/bugly/proguard/ba$a;

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_1

    :cond_a
    move-object v0, v1

    :goto_1
    iget-object p2, p2, Lcom/tencent/bugly/proguard/bt;->dN:Lcom/tencent/bugly/proguard/bg;

    iget p2, p2, Lcom/tencent/bugly/proguard/bg;->cS:I

    const/16 v1, 0x25b

    invoke-interface {v2, v1, v0, p2, p1}, Lcom/tencent/bugly/proguard/ba$a;->a(ILjava/lang/String;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_b
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    return-void

    :catch_1
    :try_start_3
    iget-object v0, p2, Lcom/tencent/bugly/proguard/bt;->dO:Lcom/tencent/bugly/proguard/ba$a;

    if-eqz v0, :cond_d

    const-string v1, "OutOfMemoryError"

    iget-object p2, p2, Lcom/tencent/bugly/proguard/bt;->dN:Lcom/tencent/bugly/proguard/bg;

    iget p2, p2, Lcom/tencent/bugly/proguard/bg;->cS:I

    const/16 v2, 0x258

    invoke-interface {v0, v2, v1, p2, p1}, Lcom/tencent/bugly/proguard/ba$a;->a(ILjava/lang/String;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_d
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e
    return-void

    :catchall_1
    move-exception p1

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    throw p1
.end method

.method public static b(Lcom/tencent/bugly/proguard/bg;Ljava/lang/String;Lcom/tencent/bugly/proguard/ba$a;)V
    .locals 11

    const-string v0, ""

    const-string v1, "reportData"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/bugly/proguard/bp;

    invoke-direct {v1, p0, p2}, Lcom/tencent/bugly/proguard/bp;-><init>(Lcom/tencent/bugly/proguard/bg;Lcom/tencent/bugly/proguard/ba$a;)V

    new-instance p2, Lcom/tencent/bugly/proguard/bq;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/tencent/bugly/proguard/ba$a;

    invoke-direct {p2, v2, p0, v1}, Lcom/tencent/bugly/proguard/bq;-><init>(Ljava/net/URL;Lcom/tencent/bugly/proguard/bg;Lcom/tencent/bugly/proguard/ba$a;)V

    invoke-virtual {p2}, Lcom/tencent/bugly/proguard/bq;->ax()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p2, Lcom/tencent/bugly/proguard/bt;->dO:Lcom/tencent/bugly/proguard/ba$a;

    if-eqz p0, :cond_0

    iget-object p2, p2, Lcom/tencent/bugly/proguard/bt;->dN:Lcom/tencent/bugly/proguard/bg;

    iget p2, p2, Lcom/tencent/bugly/proguard/bg;->cS:I

    invoke-interface {p0, p2, p1}, Lcom/tencent/bugly/proguard/ba$a;->b(II)V

    :cond_0
    return-void

    :cond_1
    sget-object p0, Lcom/tencent/bugly/proguard/aq;->cl:Lcom/tencent/bugly/proguard/aq;

    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->aa()Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, p2, Lcom/tencent/bugly/proguard/bt;->dO:Lcom/tencent/bugly/proguard/ba$a;

    if-eqz p0, :cond_2

    iget-object p2, p2, Lcom/tencent/bugly/proguard/bt;->dN:Lcom/tencent/bugly/proguard/bg;

    iget p2, p2, Lcom/tencent/bugly/proguard/bg;->cS:I

    const/16 v0, 0x25a

    const-string v1, "network not available"

    invoke-interface {p0, v0, v1, p2, p1}, Lcom/tencent/bugly/proguard/ba$a;->a(ILjava/lang/String;II)V

    :cond_2
    return-void

    :cond_3
    iget-object p0, p2, Lcom/tencent/bugly/proguard/bt;->dN:Lcom/tencent/bugly/proguard/bg;

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/bg;->ap()Ljava/lang/String;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    :goto_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p2, Lcom/tencent/bugly/proguard/bq;->dQ:Ljava/io/File;

    iget-object p0, p2, Lcom/tencent/bugly/proguard/bq;->dQ:Ljava/io/File;

    if-nez p0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    const/4 p0, 0x1

    :goto_2
    const/16 v1, 0x259

    if-nez p0, :cond_a

    iget-object p0, p2, Lcom/tencent/bugly/proguard/bt;->dN:Lcom/tencent/bugly/proguard/bg;

    iget-object p0, p0, Lcom/tencent/bugly/proguard/bg;->cW:Lcom/tencent/bugly/proguard/bd;

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_3

    :cond_8
    const/4 p0, 0x0

    :goto_3
    if-nez p0, :cond_a

    iget-object p0, p2, Lcom/tencent/bugly/proguard/bt;->dO:Lcom/tencent/bugly/proguard/ba$a;

    if-eqz p0, :cond_9

    iget-object p2, p2, Lcom/tencent/bugly/proguard/bt;->dN:Lcom/tencent/bugly/proguard/bg;

    iget p2, p2, Lcom/tencent/bugly/proguard/bg;->cS:I

    const-string v0, "no upload content"

    invoke-interface {p0, v1, v0, p2, p1}, Lcom/tencent/bugly/proguard/ba$a;->a(ILjava/lang/String;II)V

    :cond_9
    return-void

    :cond_a
    invoke-static {}, Lcom/tencent/bugly/proguard/bm;->as()Lcom/tencent/bugly/proguard/bm;

    move-result-object p0

    iget-object v3, p2, Lcom/tencent/bugly/proguard/bt;->dN:Lcom/tencent/bugly/proguard/bg;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/bg;->da:Lorg/json/JSONObject;

    invoke-virtual {p0, v3}, Lcom/tencent/bugly/proguard/bm;->f(Lorg/json/JSONObject;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lcom/tencent/bugly/proguard/bv;->dY:Lcom/tencent/bugly/proguard/bv$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/bv$a;->ay()Ljava/lang/String;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Ljava/util/Map;

    const-string v5, "Content-Type"

    const-string v6, "multipart/form-data; boundary=27182818284590452353602874713526"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Content-Encoding"

    const-string v6, "encrypt"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "X-ENCRYPTION-KEY"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/tencent/bugly/proguard/bv;->dY:Lcom/tencent/bugly/proguard/bv$a;

    const-string v5, "v1"

    const-string v6, "X-ENCRYPTION-VERSION"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p2, Lcom/tencent/bugly/proguard/bt;->dN:Lcom/tencent/bugly/proguard/bg;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/bg;->da:Lorg/json/JSONObject;

    const-string v5, "RMonitor_report_File"

    const/4 v6, 0x2

    if-eqz v4, :cond_b

    iget-object v4, p2, Lcom/tencent/bugly/proguard/bt;->dN:Lcom/tencent/bugly/proguard/bg;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/bg;->da:Lorg/json/JSONObject;

    const-string v7, "sub_type"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v8, v6, [Ljava/lang/String;

    aput-object v5, v8, p1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "url: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p2, Lcom/tencent/bugly/proguard/bs;->url:Ljava/net/URL;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", sub_type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p2, Lcom/tencent/bugly/proguard/bt;->dN:Lcom/tencent/bugly/proguard/bg;

    iget-object v10, v10, Lcom/tencent/bugly/proguard/bg;->da:Lorg/json/JSONObject;

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v2

    invoke-virtual {v4, v8}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    :cond_b
    iget-object v4, p2, Lcom/tencent/bugly/proguard/bt;->dN:Lcom/tencent/bugly/proguard/bg;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/bg;->cU:Lcom/tencent/bugly/proguard/bh;

    iget v4, v4, Lcom/tencent/bugly/proguard/bh;->dd:I

    iget-object v7, p2, Lcom/tencent/bugly/proguard/bt;->dN:Lcom/tencent/bugly/proguard/bg;

    iget-object v7, v7, Lcom/tencent/bugly/proguard/bg;->cU:Lcom/tencent/bugly/proguard/bh;

    iget v7, v7, Lcom/tencent/bugly/proguard/bh;->de:I

    invoke-virtual {p2, p0, v4, v7}, Lcom/tencent/bugly/proguard/bq;->a(Ljava/util/HashMap;II)Ljava/net/HttpURLConnection;

    move-result-object p0

    :try_start_0
    invoke-virtual {p2, p0, v3}, Lcom/tencent/bugly/proguard/bq;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    sget-object v3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v4, v6, [Ljava/lang/String;

    aput-object v5, v4, p1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, v4}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    iget-object v2, p2, Lcom/tencent/bugly/proguard/bt;->dO:Lcom/tencent/bugly/proguard/ba$a;

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_4

    :cond_d
    move-object v0, v1

    :goto_4
    iget-object p2, p2, Lcom/tencent/bugly/proguard/bt;->dN:Lcom/tencent/bugly/proguard/bg;

    iget p2, p2, Lcom/tencent/bugly/proguard/bg;->cS:I

    const/16 v1, 0x2bc

    invoke-interface {v2, v1, v0, p2, p1}, Lcom/tencent/bugly/proguard/ba$a;->a(ILjava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_e
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    return-void

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v4, v6, [Ljava/lang/String;

    aput-object v5, v4, p1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, v4}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    iget-object v2, p2, Lcom/tencent/bugly/proguard/bt;->dO:Lcom/tencent/bugly/proguard/ba$a;

    if-eqz v2, :cond_11

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    goto :goto_5

    :cond_10
    move-object v0, v1

    :goto_5
    iget-object p2, p2, Lcom/tencent/bugly/proguard/bt;->dN:Lcom/tencent/bugly/proguard/bg;

    iget p2, p2, Lcom/tencent/bugly/proguard/bg;->cS:I

    const/16 v1, 0x25b

    invoke-interface {v2, v1, v0, p2, p1}, Lcom/tencent/bugly/proguard/ba$a;->a(ILjava/lang/String;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_11
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12
    return-void

    :catch_1
    move-exception v0

    :try_start_3
    sget-object v3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v4, v6, [Ljava/lang/String;

    aput-object v5, v4, p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/tencent/bugly/proguard/bq;->dQ:Ljava/io/File;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_13
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    iget-object v0, p2, Lcom/tencent/bugly/proguard/bt;->dO:Lcom/tencent/bugly/proguard/ba$a;

    if-eqz v0, :cond_14

    const-string v2, "FileNotFoundError"

    iget-object p2, p2, Lcom/tencent/bugly/proguard/bt;->dN:Lcom/tencent/bugly/proguard/bg;

    iget p2, p2, Lcom/tencent/bugly/proguard/bg;->cS:I

    invoke-interface {v0, v1, v2, p2, p1}, Lcom/tencent/bugly/proguard/ba$a;->a(ILjava/lang/String;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_14
    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_15
    return-void

    :catch_2
    :try_start_4
    iget-object p2, p2, Lcom/tencent/bugly/proguard/bt;->dO:Lcom/tencent/bugly/proguard/ba$a;

    if-eqz p2, :cond_16

    const-string v0, "OutOfMemoryError"

    const/16 v1, 0x258

    invoke-interface {p2, v1, v0, p1, p1}, Lcom/tencent/bugly/proguard/ba$a;->a(ILjava/lang/String;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_16
    if-eqz p0, :cond_17

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_17
    return-void

    :catchall_1
    move-exception p1

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_18
    throw p1
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/bg;Lcom/tencent/bugly/proguard/ba$a;)Z
    .locals 5

    const-string v0, "is64bit"

    const-string v1, "process_name"

    const-string v2, "Attributes"

    const-string v3, "reportData"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p1, Lcom/tencent/bugly/proguard/bg;->da:Lorg/json/JSONObject;

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/tencent/bugly/proguard/bg;->da:Lorg/json/JSONObject;

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/tencent/bugly/proguard/ci;->eG:Lcom/tencent/bugly/proguard/ci$a;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/bw;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/ci$a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/tencent/bugly/proguard/ci;->eG:Lcom/tencent/bugly/proguard/ci$a;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/bw;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-static {v1}, Lcom/tencent/bugly/proguard/ci$a;->k(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_2
    iget v0, p1, Lcom/tencent/bugly/proguard/bg;->cY:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/bg;->ap()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    iget v0, p1, Lcom/tencent/bugly/proguard/bg;->cY:I

    const-string v2, ""

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/proguard/q;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/v1/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/bw;->dZ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/upload-json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/bw;->a(Lcom/tencent/bugly/proguard/bg;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/tencent/bugly/proguard/bw;->a(Lcom/tencent/bugly/proguard/bg;Ljava/lang/String;Lcom/tencent/bugly/proguard/ba$a;)V

    goto :goto_1

    :cond_5
    iget v0, p1, Lcom/tencent/bugly/proguard/bg;->cY:I

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/bw;->d(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/bw;->a(Lcom/tencent/bugly/proguard/bg;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/tencent/bugly/proguard/bw;->b(Lcom/tencent/bugly/proguard/bg;Ljava/lang/String;Lcom/tencent/bugly/proguard/ba$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_2
    return v3
.end method

.method public final d(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/proguard/q;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/v1/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/bw;->dZ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/upload-file"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method
