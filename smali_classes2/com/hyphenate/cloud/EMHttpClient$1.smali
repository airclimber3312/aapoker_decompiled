.class Lcom/hyphenate/cloud/EMHttpClient$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/cloud/EMHttpClient;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/cloud/EMCloudOperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/hyphenate/cloud/EMCloudOperationCallback;

.field final synthetic e:Lcom/hyphenate/cloud/EMHttpClient;


# direct methods
.method constructor <init>(Lcom/hyphenate/cloud/EMHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/cloud/EMCloudOperationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/cloud/EMHttpClient$1;->e:Lcom/hyphenate/cloud/EMHttpClient;

    iput-object p2, p0, Lcom/hyphenate/cloud/EMHttpClient$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/cloud/EMHttpClient$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyphenate/cloud/EMHttpClient$1;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/hyphenate/cloud/EMHttpClient$1;->d:Lcom/hyphenate/cloud/EMCloudOperationCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/hyphenate/cloud/a;

    invoke-direct {v0}, Lcom/hyphenate/cloud/a;-><init>()V

    iget-object v1, p0, Lcom/hyphenate/cloud/EMHttpClient$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/hyphenate/cloud/EMHttpClient$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/hyphenate/cloud/EMHttpClient$1;->c:Ljava/util/Map;

    iget-object v4, p0, Lcom/hyphenate/cloud/EMHttpClient$1;->d:Lcom/hyphenate/cloud/EMCloudOperationCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hyphenate/cloud/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/cloud/CloudOperationCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/hyphenate/cloud/EMHttpClient$1;->d:Lcom/hyphenate/cloud/EMCloudOperationCallback;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "failed to download the file : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hyphenate/cloud/EMHttpClient$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Lcom/hyphenate/cloud/EMCloudOperationCallback;->onError(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
