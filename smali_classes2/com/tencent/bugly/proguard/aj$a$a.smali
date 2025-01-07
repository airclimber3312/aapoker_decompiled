.class final Lcom/tencent/bugly/proguard/aj$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/aj$a;->a(Landroid/os/Looper;Lcom/tencent/bugly/proguard/ai;)V
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

    iput-object p1, p0, Lcom/tencent/bugly/proguard/aj$a$a;->aV:Landroid/os/Looper;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/aj$a$a;->aW:Lcom/tencent/bugly/proguard/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    sget-object v0, Lcom/tencent/bugly/proguard/aj;->aU:Lcom/tencent/bugly/proguard/aj$a;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj$a$a;->aV:Landroid/os/Looper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/aj$a;->b(Landroid/os/Looper;Z)Lcom/tencent/bugly/proguard/aj;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/tencent/bugly/proguard/aj$a$a;->aW:Lcom/tencent/bugly/proguard/ai;

    const-string v3, "listener"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tencent/bugly/proguard/aj;->aO:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-boolean v2, v0, Lcom/tencent/bugly/proguard/aj;->aJ:Z

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/tencent/bugly/proguard/aj;->aO:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "RMonitor_looper_DispatchWatcher"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkAndStart in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/tencent/bugly/proguard/aj;->aR:Landroid/os/Looper;

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    const-string v6, "looper.thread"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/aj;->aJ:Z

    iget-object v1, v0, Lcom/tencent/bugly/proguard/aj;->aR:Landroid/os/Looper;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/aj;->c(Landroid/os/Looper;)V

    iget-object v1, v0, Lcom/tencent/bugly/proguard/aj;->aR:Landroid/os/Looper;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/aj;->a(Landroid/os/Looper;)V

    :cond_1
    :goto_0
    return-void
.end method
