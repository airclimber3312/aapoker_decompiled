.class public Lcom/hyphenate/chat/adapter/EMARHttpAPI;
.super Ljava/lang/Object;


# static fields
.field public static REQUEST_FAILED_CODE:I = 0x198

.field public static final TAG:Ljava/lang/String; = "EMARHttpAPI"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _httpExecute(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/cloud/HttpResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hyphenate/cloud/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/hyphenate/cloud/HttpClientManager;->httpExecute(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/cloud/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static download(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/chat/adapter/EMARHttpCallback;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/chat/adapter/EMARHttpCallback;",
            ")I"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x190

    return p0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/hyphenate/cloud/HttpClientManager;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/chat/adapter/EMARHttpCallback;)I

    move-result p0

    return p0
.end method

.method public static download(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/StringBuilder;Lcom/hyphenate/chat/adapter/EMARHttpCallback;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Lcom/hyphenate/chat/adapter/EMARHttpCallback;",
            ")I"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x190

    return p0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/hyphenate/cloud/HttpClientManager;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/StringBuilder;Lcom/hyphenate/chat/adapter/EMARHttpCallback;)I

    move-result p0

    return p0
.end method

.method public static httpExecute(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            ")I"
        }
    .end annotation

    const-string v0, "EMARHttpAPI"

    const-string v1, "httpExecute code: "

    sget v2, Lcom/hyphenate/chat/adapter/EMARHttpAPI;->REQUEST_FAILED_CODE:I

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/hyphenate/chat/adapter/EMARHttpAPI;->_httpExecute(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/cloud/HttpResponse;

    move-result-object p0

    iget-object p1, p0, Lcom/hyphenate/cloud/HttpResponse;->content:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hyphenate/cloud/HttpResponse;->code:I

    const/16 p1, 0x198

    if-ne p0, p1, :cond_0

    const/16 p0, 0x12d

    const/16 v2, 0x12d

    goto :goto_0

    :cond_0
    move v2, p0

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    const-string p0, "ConnectTimeoutException"

    invoke-static {v0, p0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string p0, "can\'t catch exceptions"

    invoke-static {v0, p0}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/StringBuilder;Lcom/hyphenate/chat/adapter/EMARHttpCallback;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Lcom/hyphenate/chat/adapter/EMARHttpCallback;",
            ")I"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x190

    return p0

    :cond_0
    invoke-static/range {p0 .. p5}, Lcom/hyphenate/cloud/HttpClientManager;->uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/StringBuilder;Lcom/hyphenate/chat/adapter/EMARHttpCallback;)I

    move-result p0

    return p0
.end method

.method public static uploadInParts(Ljava/lang/String;Ljava/lang/String;IJJLjava/util/Map;Ljava/lang/StringBuilder;Lcom/hyphenate/chat/adapter/EMARHttpCallback;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Lcom/hyphenate/chat/adapter/EMARHttpCallback;",
            ")I"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x6e

    return p0

    :cond_0
    invoke-static/range {p0 .. p9}, Lcom/hyphenate/cloud/HttpClientManager;->uploadInParts(Ljava/lang/String;Ljava/lang/String;IJJLjava/util/Map;Ljava/lang/StringBuilder;Lcom/hyphenate/chat/adapter/EMARHttpCallback;)I

    move-result p0

    return p0
.end method
