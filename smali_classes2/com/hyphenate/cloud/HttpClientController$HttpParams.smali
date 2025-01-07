.class public Lcom/hyphenate/cloud/HttpClientController$HttpParams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/cloud/HttpClientController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpParams"
.end annotation


# instance fields
.field public canRetry:Z

.field public followRedirect:Z

.field public isCheckSSL:Z

.field public isDefaultRetry:Z

.field public isDownloadFile:Z

.field public isNotUseToken:Z

.field public isTokenExceeded:Z

.field public isUploadFile:Z

.field public mConnectTimeout:I

.field public final mContext:Landroid/content/Context;

.field public mDownloadPath:Ljava/lang/String;

.field public mFileKey:Ljava/lang/String;

.field public mFilename:Ljava/lang/String;

.field public mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLocalFileUri:Ljava/lang/String;

.field public mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mParamsString:Ljava/lang/String;

.field public mPort:I

.field public mReadTimeout:I

.field public mRequestMethod:Ljava/lang/String;

.field public mRetryTimes:I

.field public mUrl:Ljava/lang/String;

.field public offset:J

.field public partLength:J

.field public partNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mPort:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->followRedirect:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mHeaders:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mParams:Ljava/util/Map;

    iput v0, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->partNum:I

    iput-object p1, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addFile(Lcom/hyphenate/cloud/HttpClientController;Ljava/io/OutputStream;Lcom/hyphenate/cloud/HttpCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->isUploadFile:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->partNum:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/hyphenate/cloud/HttpClientController;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "upload part file"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mLocalFileUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hyphenate/util/EMFileHelper;->formatInUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget v4, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->partNum:I

    iget-wide v5, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->partLength:J

    iget-wide v7, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->offset:J

    move-object v2, p1

    move-object v9, p2

    move-object v10, p3

    invoke-static/range {v2 .. v10}, Lcom/hyphenate/cloud/HttpClientController;->a(Lcom/hyphenate/cloud/HttpClientController;Landroid/net/Uri;IJJLjava/io/OutputStream;Lcom/hyphenate/cloud/HttpCallback;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hyphenate/cloud/HttpClientController;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "upload normal file"

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mFileKey:Ljava/lang/String;

    invoke-static {}, Lcom/hyphenate/util/EMFileHelper;->getInstance()Lcom/hyphenate/util/EMFileHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mLocalFileUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hyphenate/util/EMFileHelper;->formatInUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mFilename:Ljava/lang/String;

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/hyphenate/cloud/HttpClientController;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/io/OutputStream;Lcom/hyphenate/cloud/HttpCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public apply(Lcom/hyphenate/cloud/HttpClientController;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mPort:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/hyphenate/cloud/HttpClientController;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/hyphenate/cloud/HttpClientController;->a(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRequestMethod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/hyphenate/cloud/HttpClientController;->b(Ljava/lang/String;)V

    const-string v0, "GET"

    iget-object v1, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRequestMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/hyphenate/cloud/HttpClientController;->e()V

    goto :goto_1

    :cond_1
    const-string v0, "DELETE"

    iget-object v1, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mRequestMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/hyphenate/cloud/HttpClientController;->g()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/hyphenate/cloud/HttpClientController;->f()V

    :goto_1
    iget v0, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mConnectTimeout:I

    invoke-virtual {p1, v0}, Lcom/hyphenate/cloud/HttpClientController;->a(I)V

    iget v0, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mReadTimeout:I

    invoke-virtual {p1, v0}, Lcom/hyphenate/cloud/HttpClientController;->b(I)V

    invoke-virtual {p1}, Lcom/hyphenate/cloud/HttpClientController;->b()V

    iget-boolean v0, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->isNotUseToken:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/hyphenate/cloud/HttpClientController;->a()V

    :cond_3
    iget-boolean v0, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->followRedirect:Z

    invoke-virtual {p1, v0}, Lcom/hyphenate/cloud/HttpClientController;->a(Z)V

    iget-boolean v0, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->isUploadFile:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/hyphenate/cloud/HttpClientController;->c()V

    invoke-virtual {p1}, Lcom/hyphenate/cloud/HttpClientController;->d()V

    :cond_4
    iget-boolean v0, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->isDownloadFile:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mDownloadPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->checkDownloadProperty()V

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string v0, "file download path is empty"

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/hyphenate/cloud/HttpClientController;->a(Lcom/hyphenate/cloud/HttpClientController;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->checkToken()V

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mHeaders:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/hyphenate/cloud/HttpClientController;->a(Ljava/util/Map;)V

    return-void
.end method

.method public checkDownloadProperty()V
    .locals 3

    iget-boolean v0, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->isDownloadFile:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mHeaders:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bearer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMClient;->getOptions()Lcom/hyphenate/chat/EMOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hyphenate/chat/EMOptions;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mHeaders:Ljava/util/Map;

    const-string v1, "Accept"

    const-string v2, "application/octet-stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public checkToken()V
    .locals 4

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "Authorization"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->mHeaders:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bearer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hyphenate/chat/EMClient;->getOptions()Lcom/hyphenate/chat/EMOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hyphenate/chat/EMOptions;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getExceptionResponse(Lcom/hyphenate/cloud/HttpClientController;Ljava/io/IOException;)Lcom/hyphenate/cloud/HttpResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/hyphenate/cloud/HttpClientController;->a(Ljava/lang/Exception;)Lcom/hyphenate/cloud/HttpResponse;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRedirectionUrl(Lcom/hyphenate/cloud/HttpClientController;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/hyphenate/cloud/HttpClientController;->a(Lcom/hyphenate/cloud/HttpClientController;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResponse(Lcom/hyphenate/cloud/HttpClientController;)Lcom/hyphenate/cloud/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/hyphenate/cloud/HttpClientController$HttpParams;->isDownloadFile:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/hyphenate/cloud/HttpClientController;->k()Lcom/hyphenate/cloud/HttpResponse;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/hyphenate/cloud/HttpClientController;->j()Lcom/hyphenate/cloud/HttpResponse;

    move-result-object p1

    :goto_0
    return-object p1
.end method
