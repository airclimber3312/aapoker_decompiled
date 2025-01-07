.class public final Lcom/tencent/bugly/proguard/nf;
.super Ljava/lang/Object;


# static fields
.field private static final AH:[Lcom/tencent/bugly/proguard/nh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tencent/bugly/proguard/nh;

    new-instance v1, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;

    invoke-direct {v1}, Lcom/tencent/rmonitor/heapdump/ForkJvmHeapDumper;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/tencent/bugly/proguard/ni;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/ni;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/tencent/bugly/proguard/nf;->AH:[Lcom/tencent/bugly/proguard/nh;

    return-void
.end method

.method public static hm()Lcom/tencent/bugly/proguard/nh;
    .locals 5

    sget-object v0, Lcom/tencent/bugly/proguard/nf;->AH:[Lcom/tencent/bugly/proguard/nh;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/tencent/bugly/proguard/nh;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/tencent/bugly/proguard/ni;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ni;-><init>()V

    return-object v0
.end method

.method public static hn()Z
    .locals 5

    invoke-static {}, Lcom/tencent/bugly/proguard/kx;->gy()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/nf;->AH:[Lcom/tencent/bugly/proguard/nh;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/tencent/bugly/proguard/nh;->isValid()Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/nf;->AH:[Lcom/tencent/bugly/proguard/nh;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-interface {v4}, Lcom/tencent/bugly/proguard/nh;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
