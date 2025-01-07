.class public abstract Lcom/tencent/bugly/proguard/bs;
.super Lcom/tencent/bugly/proguard/bn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/bs$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J@\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\"\u0010\u0010\u001a\u001e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012`\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0006R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u0004\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/tencent/bugly/common/reporter/upload/QAPMUpload;",
        "Lcom/tencent/bugly/common/reporter/upload/BaseUpload;",
        "url",
        "Ljava/net/URL;",
        "(Ljava/net/URL;)V",
        "protocol",
        "",
        "getProtocol",
        "()I",
        "setProtocol",
        "(I)V",
        "getUrl",
        "()Ljava/net/URL;",
        "setUrl",
        "connectionBuilder",
        "Ljava/net/HttpURLConnection;",
        "headers",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "connectTimeout",
        "readTimeout",
        "Companion",
        "bugly-pro_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final dU:Lcom/tencent/bugly/proguard/bs$a;


# instance fields
.field private dT:I

.field protected url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/bs$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/bs$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/bs;->dU:Lcom/tencent/bugly/proguard/bs$a;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/bn;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/bs;->url:Ljava/net/URL;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    const-string v1, "http"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput v0, p0, Lcom/tencent/bugly/proguard/bs;->dT:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;II)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/bs;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    instance-of v2, v1, Ljava/net/HttpURLConnection;

    if-nez v2, :cond_0

    move-object v1, v0

    :cond_0
    check-cast v1, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_6

    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p2, 0x1

    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 p3, 0x0

    invoke-virtual {v1, p3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string p3, "POST"

    invoke-virtual {v1, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/high16 p3, 0x100000

    invoke-virtual {v1, p3}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    const-string p3, "Connection"

    const-string v2, "close"

    invoke-virtual {v1, p3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, v2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/tencent/bugly/proguard/bs;->dT:I

    if-ne p1, p2, :cond_6

    instance-of p1, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-nez p1, :cond_2

    move-object p1, v0

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz p1, :cond_6

    sget-object p2, Lcom/tencent/bugly/proguard/aw;->cz:Lcom/tencent/bugly/proguard/aw;

    sget-object p2, Lcom/tencent/bugly/proguard/aw;->cy:Ljavax/net/ssl/SSLSocketFactory;

    if-nez p2, :cond_5

    sget-object p2, Lcom/tencent/bugly/proguard/aw;->cx:Lcom/tencent/bugly/proguard/au;

    if-nez p2, :cond_3

    sget-object p2, Lcom/tencent/bugly/proguard/aw;->cw:Lcom/tencent/bugly/proguard/au;

    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2}, Lcom/tencent/bugly/proguard/au;->ac()Ljavax/net/ssl/SSLContext;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p2

    goto :goto_2

    :cond_4
    move-object p2, v0

    :cond_5
    :goto_2
    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    sget-object p2, Lcom/tencent/bugly/proguard/av;->cv:Lcom/tencent/bugly/proguard/av;

    invoke-static {}, Lcom/tencent/bugly/proguard/av;->ae()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    move-object v0, v1

    goto :goto_3

    :catchall_0
    move-exception p1

    sget-object p2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string p3, "RMonitor_upload"

    invoke-virtual {p2, p3, p1}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-object v0
.end method
