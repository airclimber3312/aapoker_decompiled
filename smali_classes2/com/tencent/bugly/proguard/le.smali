.class final Lcom/tencent/bugly/proguard/le;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/lg;


# instance fields
.field private final zz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/lg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/lg;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/le;->zz:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final C(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/le;->zz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/lg;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/tencent/bugly/proguard/lg;->C(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final D(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/le;->zz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/lg;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/tencent/bugly/proguard/lg;->D(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(ILcom/tencent/bugly/proguard/mn;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/le;->zz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/lg;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/tencent/bugly/proguard/lg;->a(ILcom/tencent/bugly/proguard/mn;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/md;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/le;->zz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/lg;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/tencent/bugly/proguard/lg;->a(Lcom/tencent/bugly/proguard/md;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(II)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/le;->zz:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/lg;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/tencent/bugly/proguard/lg;->c(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final gQ()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/le;->zz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/lg;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/tencent/bugly/proguard/lg;->gQ()V

    goto :goto_0

    :cond_1
    return-void
.end method
