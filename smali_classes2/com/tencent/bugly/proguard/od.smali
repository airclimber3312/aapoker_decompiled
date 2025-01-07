.class public final Lcom/tencent/bugly/proguard/od;
.super Ljava/lang/Object;


# instance fields
.field private volatile CR:Lcom/tencent/bugly/proguard/ck;

.field private volatile CS:Lcom/tencent/bugly/proguard/ck;

.field private final eM:I

.field private final eS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/tencent/bugly/proguard/ck$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tencent/bugly/proguard/ck$b;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/od;->CR:Lcom/tencent/bugly/proguard/ck;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/od;->CS:Lcom/tencent/bugly/proguard/ck;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/od;->eS:Ljava/lang/Class;

    iput p2, p0, Lcom/tencent/bugly/proguard/od;->eM:I

    return-void
.end method


# virtual methods
.method public final hU()Lcom/tencent/bugly/proguard/ck;
    .locals 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/tencent/bugly/proguard/om;->e(Ljava/lang/Thread;)Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/od;->CR:Lcom/tencent/bugly/proguard/ck;

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/bugly/proguard/ck;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/od;->eS:Ljava/lang/Class;

    iget v2, p0, Lcom/tencent/bugly/proguard/od;->eM:I

    invoke-direct {v0, v1, v2}, Lcom/tencent/bugly/proguard/ck;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/od;->CR:Lcom/tencent/bugly/proguard/ck;

    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/od;->CR:Lcom/tencent/bugly/proguard/ck;

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/od;->CS:Lcom/tencent/bugly/proguard/ck;

    if-nez v0, :cond_4

    new-instance v0, Lcom/tencent/bugly/proguard/ck;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/od;->eS:Ljava/lang/Class;

    iget v2, p0, Lcom/tencent/bugly/proguard/od;->eM:I

    invoke-direct {v0, v1, v2}, Lcom/tencent/bugly/proguard/ck;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/od;->CS:Lcom/tencent/bugly/proguard/ck;

    :cond_4
    iget-object v0, p0, Lcom/tencent/bugly/proguard/od;->CS:Lcom/tencent/bugly/proguard/ck;

    return-object v0
.end method
