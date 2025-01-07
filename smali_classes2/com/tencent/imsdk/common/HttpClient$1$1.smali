.class Lcom/tencent/imsdk/common/HttpClient$1$1;
.super Ljava/lang/Object;
.source "HttpClient.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/common/HttpClient$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/common/HttpClient$1;

.field final synthetic val$httpsConn:Ljavax/net/ssl/HttpsURLConnection;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/common/HttpClient$1;Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/tencent/imsdk/common/HttpClient$1$1;->this$0:Lcom/tencent/imsdk/common/HttpClient$1;

    iput-object p2, p0, Lcom/tencent/imsdk/common/HttpClient$1$1;->val$httpsConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    .line 153
    iget-object p1, p0, Lcom/tencent/imsdk/common/HttpClient$1$1;->val$httpsConn:Ljavax/net/ssl/HttpsURLConnection;

    const-string v0, "Host"

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    return p1
.end method
