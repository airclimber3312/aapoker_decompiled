.class final Lcom/tencent/bugly/proguard/dp$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/dp;->a(ILjava/util/concurrent/LinkedBlockingQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic jk:Ljava/lang/Runnable;

.field final synthetic jl:Lcom/tencent/bugly/proguard/dp;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/dp;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/dp$1;->jl:Lcom/tencent/bugly/proguard/dp;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/dp$1;->jk:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/dp$1;->jk:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/dp$1;->jl:Lcom/tencent/bugly/proguard/dp;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/dp;->a(Lcom/tencent/bugly/proguard/dp;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/dp$1;->jl:Lcom/tencent/bugly/proguard/dp;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/dp;->b(Lcom/tencent/bugly/proguard/dp;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
