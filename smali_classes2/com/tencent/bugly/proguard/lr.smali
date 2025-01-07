.class public final Lcom/tencent/bugly/proguard/lr;
.super Lcom/tencent/bugly/proguard/ll;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/bugly/proguard/ll<",
        "Ljava/util/Map<",
        "Ljava/lang/Integer;",
        "Lcom/tencent/bugly/proguard/mh;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ll;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic c(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/bugly/proguard/mh;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/tencent/bugly/proguard/mh;->Aa:Ljava/util/Map;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final gU()Ljava/lang/String;
    .locals 1

    const-string v0, "dmabuf"

    return-object v0
.end method
