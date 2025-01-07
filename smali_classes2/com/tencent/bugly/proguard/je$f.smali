.class final Lcom/tencent/bugly/proguard/je$f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/je;
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


# static fields
.field public static final wA:Lcom/tencent/bugly/proguard/je$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/je$f;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/je$f;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/je$f;->wA:Lcom/tencent/bugly/proguard/je$f;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :cond_0
    :goto_0
    sget-object v0, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    invoke-static {}, Lcom/tencent/bugly/proguard/je;->fP()Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/je$a;

    :try_start_0
    iget-object v1, v0, Lcom/tencent/bugly/proguard/je$a;->ws:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object v1, v0, Lcom/tencent/bugly/proguard/je$a;->dN:Lcom/tencent/bugly/proguard/bg;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/je$a;->dO:Lcom/tencent/bugly/proguard/ba$a;

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/je;->b(Lcom/tencent/bugly/proguard/bg;Lcom/tencent/bugly/proguard/ba$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "RMonitor_report"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
