.class final Lcom/tencent/bugly/proguard/fc$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/fc;->a(Lcom/tencent/bugly/proguard/fc$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pe:Lcom/tencent/bugly/proguard/fc$b;

.field final synthetic pf:Lcom/tencent/bugly/proguard/fc;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/fc;Lcom/tencent/bugly/proguard/fc$b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/fc$1;->pf:Lcom/tencent/bugly/proguard/fc;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/fc$1;->pe:Lcom/tencent/bugly/proguard/fc$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/tencent/bugly/proguard/fc$1;->pf:Lcom/tencent/bugly/proguard/fc;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/fc$1;->pe:Lcom/tencent/bugly/proguard/fc$b;

    sget-object v2, Lcom/tencent/bugly/proguard/fc$2;->pg:[I

    iget-object v3, v0, Lcom/tencent/bugly/proguard/fc;->pc:Lcom/tencent/bugly/proguard/ff$f;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/ff$f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/tencent/bugly/proguard/fc;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/bugly/proguard/fc;->a(Landroid/content/Context;Lcom/tencent/bugly/proguard/fc$b;)V

    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/tencent/bugly/proguard/fc$2;->ph:[I

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/fc$b;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const-wide/16 v6, 0x3e8

    const/4 v2, 0x0

    const-string v8, "Matrix.WarmUpScheduler"

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    goto :goto_1

    :cond_2
    new-array v1, v5, [Ljava/lang/Object;

    iget-wide v9, v0, Lcom/tencent/bugly/proguard/fc;->pd:J

    div-long/2addr v9, v6

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Schedule request consuming in %ss"

    invoke-static {v8, v2, v1}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/tencent/bugly/proguard/fc;->nT:Landroid/os/Handler;

    iget-object v2, v0, Lcom/tencent/bugly/proguard/fc;->nT:Landroid/os/Handler;

    new-instance v3, Landroid/os/CancellationSignal;

    invoke-direct {v3}, Landroid/os/CancellationSignal;-><init>()V

    invoke-static {v2, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, v0, Lcom/tencent/bugly/proguard/fc;->pd:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    return-void

    :cond_3
    new-array v1, v5, [Ljava/lang/Object;

    iget-wide v4, v0, Lcom/tencent/bugly/proguard/fc;->pd:J

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "Schedule clean-up in %ss"

    invoke-static {v8, v2, v1}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/tencent/bugly/proguard/fc;->nT:Landroid/os/Handler;

    iget-object v2, v0, Lcom/tencent/bugly/proguard/fc;->nT:Landroid/os/Handler;

    new-instance v4, Landroid/os/CancellationSignal;

    invoke-direct {v4}, Landroid/os/CancellationSignal;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    :goto_2
    iget-wide v3, v0, Lcom/tencent/bugly/proguard/fc;->pd:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_4
    new-array v1, v5, [Ljava/lang/Object;

    iget-wide v3, v0, Lcom/tencent/bugly/proguard/fc;->pd:J

    div-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Schedule warm-up in %ss"

    invoke-static {v8, v2, v1}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/tencent/bugly/proguard/fc;->nT:Landroid/os/Handler;

    iget-object v2, v0, Lcom/tencent/bugly/proguard/fc;->nT:Landroid/os/Handler;

    new-instance v3, Landroid/os/CancellationSignal;

    invoke-direct {v3}, Landroid/os/CancellationSignal;-><init>()V

    invoke-static {v2, v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_2
.end method
