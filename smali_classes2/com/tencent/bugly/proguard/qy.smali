.class public final Lcom/tencent/bugly/proguard/qy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/qy$a;
    }
.end annotation


# instance fields
.field private final HF:Lcom/tencent/bugly/proguard/qq;

.field private HG:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/qy;->HG:Z

    new-instance v0, Lcom/tencent/bugly/proguard/qq;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/qq;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/qy;->HF:Lcom/tencent/bugly/proguard/qq;

    return-void
.end method

.method public static ji()Lcom/tencent/bugly/proguard/qy;
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/qy$a;->jk()Lcom/tencent/bugly/proguard/qy;

    move-result-object v0

    return-object v0
.end method

.method private jj()V
    .locals 2

    invoke-static {}, Lcom/tencent/bugly/proguard/kx;->gv()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/qy;->HG:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/proguard/gg;->sn:Lcom/tencent/bugly/proguard/gg;

    const-string v0, "atta"

    invoke-static {}, Lcom/tencent/bugly/proguard/gf;->eO()Lcom/tencent/bugly/proguard/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/gf;->aB(Ljava/lang/String;)Lcom/tencent/bugly/proguard/ha;

    move-result-object v0

    instance-of v1, v0, Lcom/tencent/bugly/proguard/qq;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/tencent/bugly/proguard/qq;

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/qy;->b(Lcom/tencent/bugly/proguard/qq;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Lcom/tencent/bugly/proguard/qq;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qy;->HF:Lcom/tencent/bugly/proguard/qq;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/qq;->a(Lcom/tencent/bugly/proguard/qq;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/qy;->HG:Z

    return-void
.end method

.method public final cb(Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/qy;->jj()V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/bugly/proguard/qy;->HF:Lcom/tencent/bugly/proguard/qq;

    invoke-virtual {v2, p1}, Lcom/tencent/bugly/proguard/qq;->bC(Ljava/lang/String;)F

    move-result p1

    float-to-double v2, p1

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
