.class final Lcom/tencent/bugly/proguard/aj$a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/aj$a;->b(Landroid/os/Looper;Lcom/tencent/bugly/proguard/ai;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic aV:Landroid/os/Looper;

.field final synthetic aW:Lcom/tencent/bugly/proguard/ai;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/tencent/bugly/proguard/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/aj$a$b;->aV:Landroid/os/Looper;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/aj$a$b;->aW:Lcom/tencent/bugly/proguard/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    sget-object v0, Lcom/tencent/bugly/proguard/aj;->aU:Lcom/tencent/bugly/proguard/aj$a;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj$a$b;->aV:Landroid/os/Looper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/aj$a;->b(Landroid/os/Looper;Z)Lcom/tencent/bugly/proguard/aj;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/tencent/bugly/proguard/aj$a$b;->aW:Lcom/tencent/bugly/proguard/ai;

    const-string v3, "listener"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tencent/bugly/proguard/aj;->aO:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-boolean v2, v0, Lcom/tencent/bugly/proguard/aj;->aJ:Z

    const/4 v3, 0x1

    const-string v4, "RMonitor_looper_DispatchWatcher"

    const/4 v5, 0x2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/tencent/bugly/proguard/aj;->aO:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v6, v5, [Ljava/lang/String;

    aput-object v4, v6, v1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "checkAndStop in "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/tencent/bugly/proguard/aj;->aR:Landroid/os/Looper;

    invoke-virtual {v8}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v8

    const-string v9, "looper.thread"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v2, v6}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/aj;->release()V

    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/aj;->aJ:Z

    :cond_1
    :goto_0
    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/aj;->aJ:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/bugly/proguard/aj;->aU:Lcom/tencent/bugly/proguard/aj$a;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj$a$b;->aV:Landroid/os/Looper;

    invoke-static {}, Lcom/tencent/bugly/proguard/aj;->J()Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    invoke-static {}, Lcom/tencent/bugly/proguard/aj;->K()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v5, v5, [Ljava/lang/String;

    aput-object v4, v5, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "release watcher and handler of looper["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-virtual {v2, v5}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    :cond_2
    return-void
.end method
