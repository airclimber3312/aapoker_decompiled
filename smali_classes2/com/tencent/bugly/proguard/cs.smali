.class public final Lcom/tencent/bugly/proguard/cs;
.super Ljava/lang/Object;


# static fields
.field private static fL:Lcom/tencent/bugly/proguard/cs;

.field private static fM:Ljava/lang/Object;


# instance fields
.field public fN:Lcom/tencent/bugly/proguard/al;

.field public fO:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/cs;->fM:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/bugly/proguard/al;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/al;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/cs;->fN:Lcom/tencent/bugly/proguard/al;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/cs;->fO:Z

    return-void
.end method

.method public static bz()Lcom/tencent/bugly/proguard/cs;
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/cs;->fL:Lcom/tencent/bugly/proguard/cs;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/proguard/cs;->fM:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/cs;->fL:Lcom/tencent/bugly/proguard/cs;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/bugly/proguard/cs;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/cs;-><init>()V

    sput-object v1, Lcom/tencent/bugly/proguard/cs;->fL:Lcom/tencent/bugly/proguard/cs;

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
    sget-object v0, Lcom/tencent/bugly/proguard/cs;->fL:Lcom/tencent/bugly/proguard/cs;

    return-object v0
.end method
