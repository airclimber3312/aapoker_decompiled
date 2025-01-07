.class final Lcom/tencent/imsdk/common/HttpClient$2;
.super Ljava/lang/Object;
.source "HttpClient.java"

# interfaces
.implements Lcom/tencent/imsdk/common/HttpClient$HttpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/common/HttpClient;->httpRequest(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;JJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$progressCallback:J

.field final synthetic val$responseCallback:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0

    .line 282
    iput-wide p1, p0, Lcom/tencent/imsdk/common/HttpClient$2;->val$progressCallback:J

    iput-wide p3, p0, Lcom/tencent/imsdk/common/HttpClient$2;->val$responseCallback:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(ILjava/util/Map;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .line 292
    iget-wide v0, p0, Lcom/tencent/imsdk/common/HttpClient$2;->val$responseCallback:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    if-eqz p2, :cond_1

    .line 296
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 297
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 299
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 300
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v2

    .line 301
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move-object v2, v0

    move-object v3, v2

    .line 305
    :goto_1
    iget-wide v5, p0, Lcom/tencent/imsdk/common/HttpClient$2;->val$responseCallback:J

    move v1, p1

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Lcom/tencent/imsdk/common/HttpClient;->access$500(I[Ljava/lang/String;[Ljava/lang/String;[BJ)V

    :cond_2
    return-void
.end method

.method public onProgress(III)V
    .locals 5

    .line 285
    iget-wide v0, p0, Lcom/tencent/imsdk/common/HttpClient$2;->val$progressCallback:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 286
    invoke-static {p1, p2, p3, v0, v1}, Lcom/tencent/imsdk/common/HttpClient;->access$400(IIIJ)V

    :cond_0
    return-void
.end method
