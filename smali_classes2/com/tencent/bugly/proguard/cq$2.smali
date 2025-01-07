.class final Lcom/tencent/bugly/proguard/cq$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/cq;->bm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fc:Lcom/tencent/bugly/proguard/cq;

.field final synthetic fd:Z


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/cq;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/cq$2;->fc:Lcom/tencent/bugly/proguard/cq;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/cq$2;->fd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/cq$2;->fc:Lcom/tencent/bugly/proguard/cq;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/cq$2;->fd:Z

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/cq;->a(Lcom/tencent/bugly/proguard/cq;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    return-void
.end method
