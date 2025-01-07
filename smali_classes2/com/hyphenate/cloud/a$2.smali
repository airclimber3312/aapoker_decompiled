.class Lcom/hyphenate/cloud/a$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/cloud/a;->uploadFileInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/cloud/CloudOperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/util/Map;

.field final synthetic f:Lcom/hyphenate/cloud/CloudOperationCallback;

.field final synthetic g:Lcom/hyphenate/cloud/a;


# direct methods
.method constructor <init>(Lcom/hyphenate/cloud/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/cloud/CloudOperationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/cloud/a$2;->g:Lcom/hyphenate/cloud/a;

    iput-object p2, p0, Lcom/hyphenate/cloud/a$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyphenate/cloud/a$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyphenate/cloud/a$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/hyphenate/cloud/a$2;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/hyphenate/cloud/a$2;->e:Ljava/util/Map;

    iput-object p7, p0, Lcom/hyphenate/cloud/a$2;->f:Lcom/hyphenate/cloud/CloudOperationCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/hyphenate/cloud/a$2;->g:Lcom/hyphenate/cloud/a;

    iget-object v1, p0, Lcom/hyphenate/cloud/a$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/hyphenate/cloud/a$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/hyphenate/cloud/a$2;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/hyphenate/cloud/a$2;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/hyphenate/cloud/a$2;->e:Ljava/util/Map;

    iget-object v6, p0, Lcom/hyphenate/cloud/a$2;->f:Lcom/hyphenate/cloud/CloudOperationCallback;

    invoke-static/range {v0 .. v6}, Lcom/hyphenate/cloud/a;->a(Lcom/hyphenate/cloud/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/cloud/CloudOperationCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "CloudFileManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyphenate/cloud/a$2;->f:Lcom/hyphenate/cloud/CloudOperationCallback;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/hyphenate/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/cloud/a$2;->f:Lcom/hyphenate/cloud/CloudOperationCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to upload the file : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hyphenate/cloud/a$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " remote path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hyphenate/cloud/a$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hyphenate/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
