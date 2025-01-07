.class public final Lcom/tencent/bugly/proguard/lf;
.super Ljava/lang/Object;


# instance fields
.field private final zB:Lcom/tencent/bugly/proguard/my;

.field final zF:Lcom/tencent/bugly/proguard/lj;

.field private zG:Lcom/tencent/bugly/proguard/le;

.field public zH:I


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/my;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/bugly/proguard/lj;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/lj;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/lf;->zF:Lcom/tencent/bugly/proguard/lj;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/lf;->zH:I

    iput-object p1, p0, Lcom/tencent/bugly/proguard/lf;->zB:Lcom/tencent/bugly/proguard/my;

    return-void
.end method


# virtual methods
.method public final gT()Lcom/tencent/bugly/proguard/lg;
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/lf;->zG:Lcom/tencent/bugly/proguard/le;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/tencent/bugly/proguard/iv;->vT:Lcom/tencent/bugly/proguard/iw;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/iw;->fJ()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/ik;

    check-cast v2, Lcom/tencent/bugly/proguard/lg;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/tencent/bugly/proguard/le;

    invoke-direct {v1, v0}, Lcom/tencent/bugly/proguard/le;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/tencent/bugly/proguard/lf;->zG:Lcom/tencent/bugly/proguard/le;

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/lf;->zG:Lcom/tencent/bugly/proguard/le;

    return-object v0
.end method
