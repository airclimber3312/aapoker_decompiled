.class Lcom/hyphenate/cloud/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hyphenate/cloud/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/cloud/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/hyphenate/cloud/CloudOperationCallback;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hyphenate/cloud/CloudOperationCallback;

.field final synthetic b:Lcom/hyphenate/cloud/a;


# direct methods
.method constructor <init>(Lcom/hyphenate/cloud/a;Lcom/hyphenate/cloud/CloudOperationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/cloud/a$1;->b:Lcom/hyphenate/cloud/a;

    iput-object p2, p0, Lcom/hyphenate/cloud/a$1;->a:Lcom/hyphenate/cloud/CloudOperationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/hyphenate/cloud/a$1;->a:Lcom/hyphenate/cloud/CloudOperationCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/hyphenate/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onProgress(JJ)V
    .locals 3

    iget-object v0, p0, Lcom/hyphenate/cloud/a$1;->a:Lcom/hyphenate/cloud/CloudOperationCallback;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x64

    mul-long p3, p3, v1

    div-long/2addr p3, p1

    long-to-int p1, p3

    invoke-interface {v0, p1}, Lcom/hyphenate/cloud/CloudOperationCallback;->onProgress(I)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/cloud/a$1;->a:Lcom/hyphenate/cloud/CloudOperationCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/hyphenate/cloud/CloudOperationCallback;->onSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
