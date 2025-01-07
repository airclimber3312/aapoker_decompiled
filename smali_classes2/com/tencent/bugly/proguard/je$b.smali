.class final Lcom/tencent/bugly/proguard/je$b;
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


# instance fields
.field final synthetic wv:Lcom/tencent/bugly/proguard/bg;

.field final synthetic ww:Lcom/tencent/bugly/proguard/ba$a;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/bg;Lcom/tencent/bugly/proguard/ba$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/je$b;->wv:Lcom/tencent/bugly/proguard/bg;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/je$b;->ww:Lcom/tencent/bugly/proguard/ba$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    sget-object v0, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    invoke-static {}, Lcom/tencent/bugly/proguard/je;->fP()Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/proguard/je$a;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/je$b;->wv:Lcom/tencent/bugly/proguard/bg;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/bg;->cU:Lcom/tencent/bugly/proguard/bh;

    iget v2, v2, Lcom/tencent/bugly/proguard/bh;->priority:I

    iget-object v3, p0, Lcom/tencent/bugly/proguard/je$b;->wv:Lcom/tencent/bugly/proguard/bg;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/je$b;->ww:Lcom/tencent/bugly/proguard/ba$a;

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/je$a;-><init>(ILcom/tencent/bugly/proguard/bg;Lcom/tencent/bugly/proguard/ba$a;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
