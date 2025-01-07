.class public Lcom/hyphenate/cloud/EMHttpClient;
.super Ljava/lang/Object;


# static fields
.field public static DELETE:Ljava/lang/String; = "DELETE"

.field public static GET:Ljava/lang/String; = "GET"

.field public static POST:Ljava/lang/String; = "POST"

.field public static PUT:Ljava/lang/String; = "PUT"

.field private static final TAG:Ljava/lang/String; = "EMHttpClient"

.field private static instance:Lcom/hyphenate/cloud/EMHttpClient;


# instance fields
.field private configPrivate:Lcom/hyphenate/chat/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hyphenate/cloud/EMHttpClient;->configPrivate:Lcom/hyphenate/chat/a/a;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hyphenate/cloud/EMHttpClient;
    .locals 2

    const-class v0, Lcom/hyphenate/cloud/EMHttpClient;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hyphenate/cloud/EMHttpClient;->instance:Lcom/hyphenate/cloud/EMHttpClient;

    if-nez v1, :cond_0

    new-instance v1, Lcom/hyphenate/cloud/EMHttpClient;

    invoke-direct {v1}, Lcom/hyphenate/cloud/EMHttpClient;-><init>()V

    sput-object v1, Lcom/hyphenate/cloud/EMHttpClient;->instance:Lcom/hyphenate/cloud/EMHttpClient;

    :cond_0
    sget-object v1, Lcom/hyphenate/cloud/EMHttpClient;->instance:Lcom/hyphenate/cloud/EMHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public chatConfig()Lcom/hyphenate/chat/a/a;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/cloud/EMHttpClient;->configPrivate:Lcom/hyphenate/chat/a/a;

    return-object v0
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/cloud/EMCloudOperationCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/cloud/EMCloudOperationCallback;",
            ")V"
        }
    .end annotation

    new-instance v6, Lcom/hyphenate/cloud/EMHttpClient$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hyphenate/cloud/EMHttpClient$1;-><init>(Lcom/hyphenate/cloud/EMHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/cloud/EMCloudOperationCallback;)V

    invoke-virtual {v6}, Lcom/hyphenate/cloud/EMHttpClient$1;->start()V

    return-void
.end method

.method public httpExecute(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/cloud/HttpResponse;
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

    invoke-static {p1, p2, p3, p4}, Lcom/hyphenate/cloud/HttpClientManager;->httpExecute(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/hyphenate/cloud/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public onInit(Lcom/hyphenate/chat/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/cloud/EMHttpClient;->configPrivate:Lcom/hyphenate/chat/a/a;

    return-void
.end method

.method public sendRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
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
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/hyphenate/cloud/HttpClientManager;->sendRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public sendRequestWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hyphenate/exceptions/HyphenateException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/hyphenate/cloud/HttpClientManager;->sendRequestWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/cloud/EMCloudOperationCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hyphenate/cloud/EMCloudOperationCallback;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "upload file :  localFilePath : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " remoteUrl : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMHttpClient"

    invoke-static {v1, v0}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/hyphenate/cloud/EMHttpClient$2;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/hyphenate/cloud/EMHttpClient$2;-><init>(Lcom/hyphenate/cloud/EMHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/cloud/EMCloudOperationCallback;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
