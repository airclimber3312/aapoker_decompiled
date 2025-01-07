.class public Lcom/tencent/bugly/proguard/or;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static m(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/cc;->aX()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/cc;->f(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/bm;->as()Lcom/tencent/bugly/proguard/bm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/bm;->ar()Lcom/tencent/bugly/proguard/bj;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Lcom/tencent/bugly/proguard/oq;

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/oq;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/bm;->as()Lcom/tencent/bugly/proguard/bm;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/bugly/proguard/bm;->a(Lcom/tencent/bugly/proguard/bj;)V

    :cond_1
    return-void
.end method
