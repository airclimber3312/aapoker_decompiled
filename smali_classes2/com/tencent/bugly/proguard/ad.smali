.class public Lcom/tencent/bugly/proguard/ad;
.super Ljava/lang/Object;


# static fields
.field private static volatile aB:Lcom/tencent/bugly/proguard/ad;


# instance fields
.field public aC:Ljava/lang/String;

.field public aD:Ljava/lang/String;

.field public aE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ad;->aC:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ad;->aD:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ad;->aE:Ljava/lang/String;

    return-void
.end method

.method public static D()Lcom/tencent/bugly/proguard/ad;
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/ad;->aB:Lcom/tencent/bugly/proguard/ad;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/bugly/proguard/ad;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/ad;->aB:Lcom/tencent/bugly/proguard/ad;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/bugly/proguard/ad;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/ad;-><init>()V

    sput-object v1, Lcom/tencent/bugly/proguard/ad;->aB:Lcom/tencent/bugly/proguard/ad;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/bugly/proguard/ad;->aB:Lcom/tencent/bugly/proguard/ad;

    return-object v0
.end method


# virtual methods
.method public final E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ad;->aC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ad;->aC:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ad;->aE:Ljava/lang/String;

    return-object v0
.end method
