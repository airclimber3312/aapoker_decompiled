.class final Lcom/tencent/bugly/proguard/ra$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/ra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic HL:Lcom/tencent/bugly/proguard/ra;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/ra;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ra$2;->HL:Lcom/tencent/bugly/proguard/ra;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ra$2;->HL:Lcom/tencent/bugly/proguard/ra;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ra;->b(Lcom/tencent/bugly/proguard/ra;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ra$2;->HL:Lcom/tencent/bugly/proguard/ra;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ra;->c(Lcom/tencent/bugly/proguard/ra;)Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "looper_metric"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ci;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "memory_quantile"

    goto :goto_0

    :cond_0
    const-string v1, "sub_memory_quantile"

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ga;->r(Ljava/util/List;)V

    :cond_1
    return-void
.end method
