.class public final Lcom/tencent/bugly/proguard/pj;
.super Lcom/tencent/bugly/proguard/pk;


# instance fields
.field private final EJ:Lcom/tencent/bugly/proguard/ke;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/pc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/pk;-><init>(Lcom/tencent/bugly/proguard/pc;)V

    new-instance p1, Lcom/tencent/bugly/proguard/pj$1;

    invoke-direct {p1, p0}, Lcom/tencent/bugly/proguard/pj$1;-><init>(Lcom/tencent/bugly/proguard/pj;)V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/pj;->EJ:Lcom/tencent/bugly/proguard/ke;

    return-void
.end method


# virtual methods
.method public final iu()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pj;->EJ:Lcom/tencent/bugly/proguard/ke;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/kh;->a(Lcom/tencent/bugly/proguard/ke;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final iv()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pj;->EJ:Lcom/tencent/bugly/proguard/ke;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/kh;->b(Lcom/tencent/bugly/proguard/ke;)V

    return-void
.end method

.method public final iw()Z
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aK()Z

    move-result v0

    return v0
.end method
