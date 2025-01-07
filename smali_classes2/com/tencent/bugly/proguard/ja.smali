.class public abstract Lcom/tencent/bugly/proguard/ja;
.super Lcom/tencent/bugly/proguard/iy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/iy;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ao()Ljava/lang/String;
.end method

.method protected final fM()V
    .locals 2

    invoke-static {}, Lcom/tencent/bugly/proguard/cj;->bi()Lcom/tencent/bugly/proguard/cj;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ja;->ao()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/gz;->aD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/cj;->G(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/iv;->vY:Lcom/tencent/bugly/proguard/iw;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/iw;->fJ()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ja;->ao()Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final y(I)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/tencent/bugly/proguard/cj;->bi()Lcom/tencent/bugly/proguard/cj;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ja;->ao()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/gz;->aD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/cj;->F(Ljava/lang/String;)V

    :cond_0
    sget-object p1, Lcom/tencent/bugly/proguard/iv;->vY:Lcom/tencent/bugly/proguard/iw;

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/iw;->fJ()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ja;->ao()Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-void
.end method
