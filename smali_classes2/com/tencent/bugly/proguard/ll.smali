.class public abstract Lcom/tencent/bugly/proguard/ll;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/mb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tencent/bugly/proguard/mb;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static b(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/mn;)Lcom/tencent/bugly/proguard/mc;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/mn;->gZ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/tencent/bugly/proguard/mn;->data:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "RMonitor_FdLeak_BaseFdAnalyzer"

    const-string v1, "analyze failed due to invalid dump data"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/nb;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    new-instance v0, Lcom/tencent/bugly/proguard/mc;

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ll;->gU()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/mc;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/tencent/bugly/proguard/mn;->data:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/ll;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/bugly/proguard/mz;->g(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/bugly/proguard/mc;->zR:Ljava/util/List;

    return-object v0
.end method

.method protected abstract c(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
