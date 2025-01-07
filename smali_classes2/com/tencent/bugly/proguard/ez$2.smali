.class final Lcom/tencent/bugly/proguard/ez$2;
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

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ez$2;->oB:Lcom/tencent/bugly/proguard/ez;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/ez$2;->oA:Landroid/os/CancellationSignal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const-string v0, ""

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/ez$2;->oB:Lcom/tencent/bugly/proguard/ez;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/ez;->ox:Lcom/tencent/bugly/proguard/ff$a;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/fe;->b(Lcom/tencent/bugly/proguard/ff$a;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Matrix.WarmUpDelegate"

    const-string v6, "Going to clean up saving path(%s).."

    invoke-static {v4, v6, v3}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ez$2;->oB:Lcom/tencent/bugly/proguard/ez;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/ez;->ow:Lcom/tencent/bugly/proguard/fc;

    sget-object v1, Lcom/tencent/bugly/proguard/fc$b;->pm:Lcom/tencent/bugly/proguard/fc$b;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/fc;->b(Lcom/tencent/bugly/proguard/fc$b;)V

    return-void

    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    iget-object v6, p0, Lcom/tencent/bugly/proguard/ez$2;->oA:Landroid/os/CancellationSignal;

    new-instance v7, Lcom/tencent/bugly/proguard/ez$2$1;

    invoke-direct {v7, p0, v3}, Lcom/tencent/bugly/proguard/ez$2$1;-><init>(Lcom/tencent/bugly/proguard/ez$2;Ljava/util/HashMap;)V

    invoke-static {v1, v6, v7}, Lcom/tencent/bugly/proguard/fe;->a(Ljava/io/File;Landroid/os/CancellationSignal;Ljava/io/FileFilter;)V
    :try_end_0
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4, v3, v0, v6}, Lcom/tencent/bugly/proguard/fg;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v3, 0x0

    goto :goto_1

    :catch_0
    nop

    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/tencent/bugly/proguard/ez$2;->oB:Lcom/tencent/bugly/proguard/ez;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/ez;->ox:Lcom/tencent/bugly/proguard/ff$a;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/ff$a;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/fe;->E(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    const-string v6, "Matrix.Backtrace.WarmUp"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v3, v0, v7}, Lcom/tencent/bugly/proguard/fg;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ez$2;->oB:Lcom/tencent/bugly/proguard/ez;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/ez;->ow:Lcom/tencent/bugly/proguard/fc;

    sget-object v3, Lcom/tencent/bugly/proguard/fc$b;->pm:Lcom/tencent/bugly/proguard/fc$b;

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/proguard/fc;->b(Lcom/tencent/bugly/proguard/fc$b;)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "Clean up saving path(%s) done."

    invoke-static {v4, v1, v0}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/tencent/bugly/proguard/ez;->oz:Lcom/tencent/bugly/proguard/fb;

    if-eqz v0, :cond_1

    sget v0, Lcom/tencent/bugly/proguard/fb$a;->oT:I

    :cond_1
    return-void

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "Clean up saving path(%s) cancelled."

    invoke-static {v4, v1, v0}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
