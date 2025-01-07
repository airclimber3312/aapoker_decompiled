.class public final Lcom/tencent/bugly/proguard/pf;
.super Lcom/tencent/bugly/proguard/pg;


# instance fields
.field private final ED:[Lcom/tencent/bugly/proguard/ph;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/pc;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/bugly/proguard/ph;

    new-instance v1, Lcom/tencent/bugly/proguard/pj;

    invoke-direct {v1, p1}, Lcom/tencent/bugly/proguard/pj;-><init>(Lcom/tencent/bugly/proguard/pc;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/tencent/bugly/proguard/pi;

    invoke-direct {v1, p1}, Lcom/tencent/bugly/proguard/pi;-><init>(Lcom/tencent/bugly/proguard/pc;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/tencent/bugly/proguard/po;

    invoke-direct {v1, p1}, Lcom/tencent/bugly/proguard/po;-><init>(Lcom/tencent/bugly/proguard/pc;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/tencent/bugly/proguard/pf;-><init>(Lcom/tencent/bugly/proguard/pc;[Lcom/tencent/bugly/proguard/ph;)V

    return-void
.end method

.method private constructor <init>(Lcom/tencent/bugly/proguard/pc;[Lcom/tencent/bugly/proguard/ph;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/pg;-><init>(Lcom/tencent/bugly/proguard/pc;)V

    iput-object p2, p0, Lcom/tencent/bugly/proguard/pf;->ED:[Lcom/tencent/bugly/proguard/ph;

    return-void
.end method


# virtual methods
.method public final iu()Z
    .locals 5

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pf;->ED:[Lcom/tencent/bugly/proguard/ph;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/tencent/bugly/proguard/ph;->iw()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lcom/tencent/bugly/proguard/ph;->iu()Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final iv()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pf;->ED:[Lcom/tencent/bugly/proguard/ph;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/tencent/bugly/proguard/ph;->iv()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
