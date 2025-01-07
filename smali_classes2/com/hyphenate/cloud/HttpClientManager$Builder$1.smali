.class Lcom/hyphenate/cloud/HttpClientManager$Builder$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hyphenate/cloud/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/cloud/HttpClientManager$Builder;->execute(Ljava/lang/StringBuilder;Lcom/hyphenate/chat/adapter/EMARHttpCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hyphenate/chat/adapter/EMARHttpCallback;

.field final synthetic b:Lcom/hyphenate/cloud/HttpClientManager$Builder;


# direct methods
.method constructor <init>(Lcom/hyphenate/cloud/HttpClientManager$Builder;Lcom/hyphenate/chat/adapter/EMARHttpCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder$1;->b:Lcom/hyphenate/cloud/HttpClientManager$Builder;

    iput-object p2, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder$1;->a:Lcom/hyphenate/chat/adapter/EMARHttpCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProgress(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder$1;->a:Lcom/hyphenate/chat/adapter/EMARHttpCallback;

    if-eqz v0, :cond_0

    long-to-double p1, p1

    long-to-double p3, p3

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMARHttpCallback;->onProgress(DD)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
