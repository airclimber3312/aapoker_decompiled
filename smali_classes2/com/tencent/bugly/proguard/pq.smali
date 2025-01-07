.class public final Lcom/tencent/bugly/proguard/pq;
.super Lcom/tencent/bugly/proguard/iy;


# static fields
.field private static ET:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/iy;-><init>()V

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 1

    sget-boolean v0, Lcom/tencent/bugly/proguard/pq;->ET:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/proguard/pq;->ET:Z

    sget-object v0, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    new-instance v0, Lcom/tencent/bugly/proguard/pq$1;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/pq$1;-><init>(Lcom/tencent/bugly/proguard/pq;)V

    invoke-static {v0}, Lcom/tencent/bugly/proguard/je;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 0

    return-void
.end method
