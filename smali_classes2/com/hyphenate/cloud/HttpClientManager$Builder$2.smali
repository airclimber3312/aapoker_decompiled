.class Lcom/hyphenate/cloud/HttpClientManager$Builder$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/cloud/HttpClientManager$Builder;->asyncExecuteNormal(Lcom/hyphenate/cloud/HttpCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hyphenate/cloud/HttpCallback;

.field final synthetic b:Lcom/hyphenate/cloud/HttpClientManager$Builder;


# direct methods
.method constructor <init>(Lcom/hyphenate/cloud/HttpClientManager$Builder;Lcom/hyphenate/cloud/HttpCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder$2;->b:Lcom/hyphenate/cloud/HttpClientManager$Builder;

    iput-object p2, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder$2;->a:Lcom/hyphenate/cloud/HttpCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder$2;->b:Lcom/hyphenate/cloud/HttpClientManager$Builder;

    iget-object v1, p0, Lcom/hyphenate/cloud/HttpClientManager$Builder$2;->a:Lcom/hyphenate/cloud/HttpCallback;

    invoke-static {v0, v1}, Lcom/hyphenate/cloud/HttpClientManager$Builder;->access$000(Lcom/hyphenate/cloud/HttpClientManager$Builder;Lcom/hyphenate/cloud/HttpCallback;)Lcom/hyphenate/cloud/HttpResponse;

    return-void
.end method
