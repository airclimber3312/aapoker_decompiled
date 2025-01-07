.class final Lcom/tencent/bugly/proguard/ez$3;
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

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ez$3;->oB:Lcom/tencent/bugly/proguard/ez;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/ez$3;->oA:Landroid/os/CancellationSignal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Matrix.WarmUpDelegate"

    const-string v3, "Going to consume requested QUT."

    invoke-static {v2, v3, v1}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/bugly/matrix/backtrace/WeChatBacktraceNative;->consumeRequestedQut()[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/bugly/proguard/ez$3;->oB:Lcom/tencent/bugly/proguard/ez;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/ez;->a(Lcom/tencent/bugly/proguard/ez;)Lcom/tencent/bugly/proguard/fa;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ez$3;->oB:Lcom/tencent/bugly/proguard/ez;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/ez;->ow:Lcom/tencent/bugly/proguard/fc;

    sget-object v3, Lcom/tencent/bugly/proguard/fc$b;->pn:Lcom/tencent/bugly/proguard/fc$b;

    invoke-virtual {v1, v3}, Lcom/tencent/bugly/proguard/fc;->b(Lcom/tencent/bugly/proguard/fc$b;)V

    const-string v1, "Failed to acquire warm-up invoker."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lcom/tencent/bugly/proguard/fg;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_0
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v1, v5

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    :try_start_1
    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v7, v7, 0x1

    :try_start_2
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    :cond_1
    move-object v8, v6

    :catchall_1
    const/4 v7, 0x0

    :goto_1
    :try_start_3
    iget-object v9, p0, Lcom/tencent/bugly/proguard/ez$3;->oB:Lcom/tencent/bugly/proguard/ez;

    invoke-static {v9, v8, v7}, Lcom/tencent/bugly/proguard/ez;->a(Lcom/tencent/bugly/proguard/ez;Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-interface {v3, v8, v7}, Lcom/tencent/bugly/proguard/fa;->c(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v8, v7}, Lcom/tencent/bugly/proguard/ez;->b(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :cond_3
    :goto_2
    const-string v7, "Consumed requested QUT -> %s, ret = %s."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v9, 0x1

    aput-object v6, v8, v9

    invoke-static {v2, v7, v8}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/tencent/bugly/proguard/ez$3;->oA:Landroid/os/CancellationSignal;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v1, "Consume requested QUT canceled."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v4}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    const-string v1, "Consume requested QUT done."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ez$3;->oB:Lcom/tencent/bugly/proguard/ez;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/ez;->a(Lcom/tencent/bugly/proguard/ez;Lcom/tencent/bugly/proguard/fa;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ez$3;->oB:Lcom/tencent/bugly/proguard/ez;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/ez;->ow:Lcom/tencent/bugly/proguard/fc;

    sget-object v1, Lcom/tencent/bugly/proguard/fc$b;->pn:Lcom/tencent/bugly/proguard/fc$b;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/fc;->b(Lcom/tencent/bugly/proguard/fc$b;)V

    return-void

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ez$3;->oB:Lcom/tencent/bugly/proguard/ez;

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/ez;->a(Lcom/tencent/bugly/proguard/ez;Lcom/tencent/bugly/proguard/fa;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ez$3;->oB:Lcom/tencent/bugly/proguard/ez;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/ez;->ow:Lcom/tencent/bugly/proguard/fc;

    sget-object v2, Lcom/tencent/bugly/proguard/fc$b;->pn:Lcom/tencent/bugly/proguard/fc$b;

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/fc;->b(Lcom/tencent/bugly/proguard/fc$b;)V

    throw v0
.end method
