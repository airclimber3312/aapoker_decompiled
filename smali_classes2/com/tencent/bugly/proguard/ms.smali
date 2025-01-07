.class public abstract Lcom/tencent/bugly/proguard/ms;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/mp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final F(I)Lcom/tencent/bugly/proguard/mn;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ms;->getType()I

    move-result v0

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/mn;->d(II)Lcom/tencent/bugly/proguard/mn;

    move-result-object p1

    return-object p1
.end method

.method public final bj(Ljava/lang/String;)Lcom/tencent/bugly/proguard/mn;
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/tencent/bugly/proguard/ku;->B(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    if-nez v2, :cond_1

    const-string v2, "RMonitor_FdLeak_BaseFdLeakDumper"

    const-string v3, "dump failed due to invalid file path"

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/nb;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {p0, v2, p1}, Lcom/tencent/bugly/proguard/ms;->g(ILjava/lang/String;)Lcom/tencent/bugly/proguard/mn;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/ms;->bk(Ljava/lang/String;)Lcom/tencent/bugly/proguard/mn;

    move-result-object p1

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p1, Lcom/tencent/bugly/proguard/mn;->Ah:J

    return-object p1
.end method

.method protected abstract bk(Ljava/lang/String;)Lcom/tencent/bugly/proguard/mn;
.end method

.method protected final c(Ljava/lang/String;Ljava/lang/Object;)Lcom/tencent/bugly/proguard/mn;
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/mn;

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ms;->getType()I

    move-result v1

    invoke-direct {v0, v1, p1, p2}, Lcom/tencent/bugly/proguard/mn;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected final g(ILjava/lang/String;)Lcom/tencent/bugly/proguard/mn;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ms;->getType()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/tencent/bugly/proguard/mn;->a(IILjava/lang/String;)Lcom/tencent/bugly/proguard/mn;

    move-result-object p1

    return-object p1
.end method
