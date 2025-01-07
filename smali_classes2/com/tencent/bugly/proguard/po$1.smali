.class final Lcom/tencent/bugly/proguard/po$1;
.super Lcom/tencent/bugly/proguard/kj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/po;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ES:Lcom/tencent/bugly/proguard/po;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/po;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/po$1;->ES:Lcom/tencent/bugly/proguard/po;

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/kj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/po$1;->ES:Lcom/tencent/bugly/proguard/po;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/po;->ER:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/pp;

    invoke-interface {v1, p1}, Lcom/tencent/bugly/proguard/pp;->j(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Lcom/tencent/bugly/proguard/pp;->k(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/po$1;->ES:Lcom/tencent/bugly/proguard/po;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/po;->ER:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/pp;

    invoke-interface {v1, p1}, Lcom/tencent/bugly/proguard/pp;->l(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method
