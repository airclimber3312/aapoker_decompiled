.class final Lcom/tencent/bugly/proguard/ez;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/ez$c;,
        Lcom/tencent/bugly/proguard/ez$d;,
        Lcom/tencent/bugly/proguard/ez$a;,
        Lcom/tencent/bugly/proguard/ez$b;
    }
.end annotation


# static fields
.field static volatile oz:Lcom/tencent/bugly/proguard/fb;


# instance fields
.field os:Z

.field ot:Ljava/lang/String;

.field private ou:Lcom/tencent/bugly/proguard/ez$d;

.field ov:Lcom/tencent/bugly/proguard/ez$c;

.field ow:Lcom/tencent/bugly/proguard/fc;

.field ox:Lcom/tencent/bugly/proguard/ff$a;

.field final oy:[Z


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ez;->os:Z

    const/4 v1, 0x1

    new-array v1, v1, [Z

    aput-boolean v0, v1, v0

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ez;->oy:[Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/ez;)Lcom/tencent/bugly/proguard/fa;
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ez;->os:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/tencent/bugly/proguard/ez$b;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ez;->ot:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/ez$b;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/tencent/bugly/proguard/ez;->ox:Lcom/tencent/bugly/proguard/ff$a;

    iget-boolean v2, v2, Lcom/tencent/bugly/proguard/ff$a;->pZ:Z

    const-string v3, "enable-logger"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/tencent/bugly/proguard/ez;->ox:Lcom/tencent/bugly/proguard/ff$a;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/ff$a;->qa:Ljava/lang/String;

    const-string v3, "path-of-xlog-so"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/bugly/proguard/ez;->ox:Lcom/tencent/bugly/proguard/ff$a;

    iget-object p0, p0, Lcom/tencent/bugly/proguard/ff$a;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Lcom/tencent/bugly/proguard/ez$b;->a(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Lcom/tencent/bugly/proguard/ez$a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/ez$a;-><init>(B)V

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/ez;Lcom/tencent/bugly/proguard/fa;)V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ez;->os:Z

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tencent/bugly/proguard/ez$b;

    iget-object p0, p0, Lcom/tencent/bugly/proguard/ez;->ox:Lcom/tencent/bugly/proguard/ff$a;

    iget-object p0, p0, Lcom/tencent/bugly/proguard/ff$a;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/tencent/bugly/proguard/ez$b;->oI:Lcom/tencent/bugly/proguard/fd$b;

    invoke-virtual {p1, p0}, Lcom/tencent/bugly/proguard/fd$b;->D(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method static a(Lcom/tencent/bugly/proguard/ff$d;)V
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/ff$d;->qg:Lcom/tencent/bugly/proguard/ff$d;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/ff$d;->qh:Lcom/tencent/bugly/proguard/ff$d;

    if-ne p0, v0, :cond_1

    :cond_0
    sget-object p0, Lcom/tencent/bugly/proguard/ff$d;->qe:Lcom/tencent/bugly/proguard/ff$d;

    iget p0, p0, Lcom/tencent/bugly/proguard/ff$d;->value:I

    invoke-static {p0}, Lcom/tencent/bugly/matrix/backtrace/WeChatBacktraceNative;->setBacktraceMode(I)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/ez;Ljava/lang/String;I)Z
    .locals 3

    iget-object p0, p0, Lcom/tencent/bugly/proguard/ez;->ox:Lcom/tencent/bugly/proguard/ff$a;

    iget-object p0, p0, Lcom/tencent/bugly/proguard/ff$a;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/fe;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/fe$a;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    xor-int/2addr p0, v2

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Matrix.WarmUpDelegate"

    const-string p2, "Elf file %s:%s has blocked and will not do warm-up."

    invoke-static {p1, p2, v0}, Lcom/tencent/bugly/proguard/fg;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return p0
.end method

.method static synthetic b(Ljava/lang/String;I)V
    .locals 0

    sget-object p0, Lcom/tencent/bugly/proguard/ez;->oz:Lcom/tencent/bugly/proguard/fb;

    if-eqz p0, :cond_0

    sget p0, Lcom/tencent/bugly/proguard/fb$a;->oV:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    :cond_0
    return-void
.end method


# virtual methods
.method final declared-synchronized a(Lcom/tencent/bugly/proguard/ff$a;Lcom/tencent/bugly/proguard/ff$d;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/tencent/bugly/proguard/ff$a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/fe;->F(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ez;->ou:Lcom/tencent/bugly/proguard/ez$d;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/bugly/proguard/ez$d;

    invoke-direct {v0, p2}, Lcom/tencent/bugly/proguard/ez$d;-><init>(Lcom/tencent/bugly/proguard/ff$d;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ez;->ou:Lcom/tencent/bugly/proguard/ez$d;

    const-string p2, "Matrix.WarmUpDelegate"

    const-string v0, "Register warm-up receiver."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lcom/tencent/bugly/proguard/fg;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "action.backtrace.warmed-up"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/tencent/bugly/proguard/ff$a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ez;->ou:Lcom/tencent/bugly/proguard/ez$d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/tencent/bugly/proguard/ff$a;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".backtrace.warmed_up"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final setSavingPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ez;->ot:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/bugly/matrix/backtrace/WeChatBacktraceNative;->setSavingPath(Ljava/lang/String;)V

    return-void
.end method
