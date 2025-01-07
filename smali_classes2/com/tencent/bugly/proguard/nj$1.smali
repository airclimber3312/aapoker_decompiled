.class final Lcom/tencent/bugly/proguard/nj$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/nj;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic AP:Lcom/tencent/bugly/proguard/nj;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/nj;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/nj$1;->AP:Lcom/tencent/bugly/proguard/nj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nj$1;->AP:Lcom/tencent/bugly/proguard/nj;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/nj;->AN:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/nj$a;

    iget-object v2, v1, Lcom/tencent/bugly/proguard/nj$a;->AQ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/nj;->a(Landroid/app/Activity;Lcom/tencent/bugly/proguard/nj$a;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/nj$1;->AP:Lcom/tencent/bugly/proguard/nj;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/nj;->AN:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_launch_ActivityLaunchWatcher"

    const-string v2, "destroy end"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    return-void
.end method
