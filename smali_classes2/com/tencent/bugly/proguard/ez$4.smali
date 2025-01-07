.class final Lcom/tencent/bugly/proguard/ez$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/ez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oA:Landroid/os/CancellationSignal;

.field final synthetic oB:Lcom/tencent/bugly/proguard/ez;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/ez;Landroid/os/CancellationSignal;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ez$4;->oB:Lcom/tencent/bugly/proguard/ez;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/ez$4;->oA:Landroid/os/CancellationSignal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const-string v0, "Compute disk usage, file count(%s), disk usage(%s)"

    const-string v1, "Matrix.WarmUpDelegate"

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/ez$4;->oB:Lcom/tencent/bugly/proguard/ez;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/ez;->ot:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ez$4;->oB:Lcom/tencent/bugly/proguard/ez;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/ez;->ow:Lcom/tencent/bugly/proguard/fc;

    sget-object v1, Lcom/tencent/bugly/proguard/fc$b;->po:Lcom/tencent/bugly/proguard/fc$b;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/fc;->b(Lcom/tencent/bugly/proguard/fc$b;)V

    return-void

    :cond_0
    const/4 v3, 0x2

    new-array v4, v3, [J

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/tencent/bugly/proguard/ez$4;->oA:Landroid/os/CancellationSignal;

    new-instance v8, Lcom/tencent/bugly/proguard/ez$4$1;

    invoke-direct {v8, p0, v4}, Lcom/tencent/bugly/proguard/ez$4$1;-><init>(Lcom/tencent/bugly/proguard/ez$4;[J)V

    invoke-static {v2, v7, v8}, Lcom/tencent/bugly/proguard/fe;->a(Ljava/io/File;Landroid/os/CancellationSignal;Ljava/io/FileFilter;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/tencent/bugly/proguard/ez$4;->oB:Lcom/tencent/bugly/proguard/ez;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/ez;->ow:Lcom/tencent/bugly/proguard/fc;

    sget-object v7, Lcom/tencent/bugly/proguard/fc$b;->po:Lcom/tencent/bugly/proguard/fc$b;

    invoke-virtual {v2, v7}, Lcom/tencent/bugly/proguard/fc;->b(Lcom/tencent/bugly/proguard/fc$b;)V

    iget-object v2, p0, Lcom/tencent/bugly/proguard/ez$4;->oB:Lcom/tencent/bugly/proguard/ez;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/ez;->ox:Lcom/tencent/bugly/proguard/ff$a;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/ff$a;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/fe;->L(Landroid/content/Context;)V

    new-array v2, v3, [Ljava/lang/Object;

    aget-wide v7, v4, v6

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    aget-wide v7, v4, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v0, v2}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/tencent/bugly/proguard/ez;->oz:Lcom/tencent/bugly/proguard/fb;

    if-eqz v0, :cond_1

    sget v0, Lcom/tencent/bugly/proguard/fb$a;->oY:I

    aget-wide v0, v4, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    aget-wide v0, v4, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    iget-object v7, p0, Lcom/tencent/bugly/proguard/ez$4;->oB:Lcom/tencent/bugly/proguard/ez;

    iget-object v7, v7, Lcom/tencent/bugly/proguard/ez;->ow:Lcom/tencent/bugly/proguard/fc;

    sget-object v8, Lcom/tencent/bugly/proguard/fc$b;->po:Lcom/tencent/bugly/proguard/fc$b;

    invoke-virtual {v7, v8}, Lcom/tencent/bugly/proguard/fc;->b(Lcom/tencent/bugly/proguard/fc$b;)V

    iget-object v7, p0, Lcom/tencent/bugly/proguard/ez$4;->oB:Lcom/tencent/bugly/proguard/ez;

    iget-object v7, v7, Lcom/tencent/bugly/proguard/ez;->ox:Lcom/tencent/bugly/proguard/ff$a;

    iget-object v7, v7, Lcom/tencent/bugly/proguard/ff$a;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/bugly/proguard/fe;->L(Landroid/content/Context;)V

    new-array v3, v3, [Ljava/lang/Object;

    aget-wide v7, v4, v6

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v6

    aget-wide v6, v4, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v0, v3}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :catch_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ez$4;->oB:Lcom/tencent/bugly/proguard/ez;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/ez;->ow:Lcom/tencent/bugly/proguard/fc;

    sget-object v7, Lcom/tencent/bugly/proguard/fc$b;->po:Lcom/tencent/bugly/proguard/fc$b;

    invoke-virtual {v2, v7}, Lcom/tencent/bugly/proguard/fc;->b(Lcom/tencent/bugly/proguard/fc$b;)V

    iget-object v2, p0, Lcom/tencent/bugly/proguard/ez$4;->oB:Lcom/tencent/bugly/proguard/ez;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/ez;->ox:Lcom/tencent/bugly/proguard/ff$a;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/ff$a;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/fe;->L(Landroid/content/Context;)V

    new-array v2, v3, [Ljava/lang/Object;

    aget-wide v7, v4, v6

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    aget-wide v3, v4, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v0, v2}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
