.class final Lcom/tencent/bugly/proguard/ez$1;
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

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ez$1;->oB:Lcom/tencent/bugly/proguard/ez;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/ez$1;->oA:Landroid/os/CancellationSignal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const-string v0, ""

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Matrix.WarmUpDelegate"

    const-string v4, "Going to warm up."

    invoke-static {v3, v4, v2}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/tencent/bugly/proguard/ez$1;->oB:Lcom/tencent/bugly/proguard/ez;

    iget-object v6, v6, Lcom/tencent/bugly/proguard/ez;->ox:Lcom/tencent/bugly/proguard/ff$a;

    invoke-static {v6}, Lcom/tencent/bugly/proguard/fe;->b(Lcom/tencent/bugly/proguard/ff$a;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "Saving path is not a directory."

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/tencent/bugly/proguard/fg;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/tencent/bugly/proguard/ez$1;->oB:Lcom/tencent/bugly/proguard/ez;

    iget-object v5, v5, Lcom/tencent/bugly/proguard/ez;->ow:Lcom/tencent/bugly/proguard/fc;

    sget-object v6, Lcom/tencent/bugly/proguard/fc$b;->pl:Lcom/tencent/bugly/proguard/fc$b;

    invoke-virtual {v5, v6}, Lcom/tencent/bugly/proguard/fc;->b(Lcom/tencent/bugly/proguard/fc$b;)V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/tencent/bugly/proguard/ez$1;->oB:Lcom/tencent/bugly/proguard/ez;

    invoke-static {v5}, Lcom/tencent/bugly/proguard/ez;->a(Lcom/tencent/bugly/proguard/ez;)Lcom/tencent/bugly/proguard/fa;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v5, "Failed to acquire warm-up invoker"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/tencent/bugly/proguard/fg;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ez$1;->oB:Lcom/tencent/bugly/proguard/ez;

    invoke-static {v0, v4}, Lcom/tencent/bugly/proguard/ez;->a(Lcom/tencent/bugly/proguard/ez;Lcom/tencent/bugly/proguard/fa;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/tencent/bugly/proguard/ez$1;->oB:Lcom/tencent/bugly/proguard/ez;

    iget-object v5, v5, Lcom/tencent/bugly/proguard/ez;->ox:Lcom/tencent/bugly/proguard/ff$a;

    iget-object v5, v5, Lcom/tencent/bugly/proguard/ff$a;->pP:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/bugly/proguard/ez$1;->oA:Landroid/os/CancellationSignal;

    new-instance v8, Lcom/tencent/bugly/proguard/ez$1$1;

    invoke-direct {v8, p0, v4}, Lcom/tencent/bugly/proguard/ez$1$1;-><init>(Lcom/tencent/bugly/proguard/ez$1;Lcom/tencent/bugly/proguard/fa;)V

    invoke-static {v7, v6, v8}, Lcom/tencent/bugly/proguard/fe;->a(Ljava/io/File;Landroid/os/CancellationSignal;Ljava/io/FileFilter;)V
    :try_end_1
    .catch Landroid/os/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    :catchall_0
    move-exception v5

    :try_start_2
    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v3, v5, v0, v6}, Lcom/tencent/bugly/proguard/fg;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_4

    :goto_1
    iget-object v5, p0, Lcom/tencent/bugly/proguard/ez$1;->oB:Lcom/tencent/bugly/proguard/ez;

    invoke-static {v5, v4}, Lcom/tencent/bugly/proguard/ez;->a(Lcom/tencent/bugly/proguard/ez;Lcom/tencent/bugly/proguard/fa;)V

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    :catchall_1
    move-exception v0

    if-eqz v4, :cond_5

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ez$1;->oB:Lcom/tencent/bugly/proguard/ez;

    invoke-static {v1, v4}, Lcom/tencent/bugly/proguard/ez;->a(Lcom/tencent/bugly/proguard/ez;Lcom/tencent/bugly/proguard/fa;)V

    :cond_5
    throw v0

    :goto_2
    if-eqz v4, :cond_6

    iget-object v5, p0, Lcom/tencent/bugly/proguard/ez$1;->oB:Lcom/tencent/bugly/proguard/ez;

    invoke-static {v5, v4}, Lcom/tencent/bugly/proguard/ez;->a(Lcom/tencent/bugly/proguard/ez;Lcom/tencent/bugly/proguard/fa;)V

    :cond_6
    const/4 v4, 0x1

    :goto_3
    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/tencent/bugly/proguard/ez$1;->oB:Lcom/tencent/bugly/proguard/ez;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/ez;->ow:Lcom/tencent/bugly/proguard/fc;

    sget-object v5, Lcom/tencent/bugly/proguard/fc$b;->pl:Lcom/tencent/bugly/proguard/fc$b;

    invoke-virtual {v4, v5}, Lcom/tencent/bugly/proguard/fc;->b(Lcom/tencent/bugly/proguard/fc$b;)V

    iget-object v4, p0, Lcom/tencent/bugly/proguard/ez$1;->oB:Lcom/tencent/bugly/proguard/ez;

    iget-object v5, v4, Lcom/tencent/bugly/proguard/ez;->ox:Lcom/tencent/bugly/proguard/ff$a;

    iget-object v5, v5, Lcom/tencent/bugly/proguard/ff$a;->mContext:Landroid/content/Context;

    :try_start_3
    invoke-static {v5}, Lcom/tencent/bugly/proguard/fe;->F(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/fe;->a(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v3, v6, v0, v7}, Lcom/tencent/bugly/proguard/fg;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    invoke-static {v2}, Lcom/tencent/bugly/matrix/backtrace/WeChatBacktraceNative;->setWarmedUp(Z)V

    iget-object v0, v4, Lcom/tencent/bugly/proguard/ez;->ox:Lcom/tencent/bugly/proguard/ff$a;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/ff$a;->pQ:Lcom/tencent/bugly/proguard/ff$d;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ez;->a(Lcom/tencent/bugly/proguard/ff$d;)V

    const-string v0, "Broadcast warmed up message to other processes."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "action.backtrace.warmed-up"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".backtrace.warmed_up"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/ez;->oz:Lcom/tencent/bugly/proguard/fb;

    if-eqz v0, :cond_7

    sget v0, Lcom/tencent/bugly/proguard/fb$a;->oS:I

    :cond_7
    const-string v0, "Warm-up done."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_8
    const-string v0, "Warm-up cancelled."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
