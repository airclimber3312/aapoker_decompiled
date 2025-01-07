.class public final Lcom/tencent/bugly/proguard/nj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/nj$b;,
        Lcom/tencent/bugly/proguard/nj$a;,
        Lcom/tencent/bugly/proguard/nj$c;
    }
.end annotation


# instance fields
.field final AN:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/bugly/proguard/nj$a;",
            ">;"
        }
    .end annotation
.end field

.field final AO:Lcom/tencent/bugly/proguard/nj$c;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/nj$c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/nj;->AN:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/nj;->AO:Lcom/tencent/bugly/proguard/nj$c;

    return-void
.end method

.method static a(Landroid/app/Activity;Lcom/tencent/bugly/proguard/nj$a;)V
    .locals 2

    iget-object v0, p1, Lcom/tencent/bugly/proguard/nj$a;->AY:Lcom/tencent/bugly/proguard/nj$b;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/tencent/bugly/proguard/nj$a;->AY:Lcom/tencent/bugly/proguard/nj$b;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/tencent/bugly/proguard/nj$a;->AY:Lcom/tencent/bugly/proguard/nj$b;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v0, "RMonitor_launch_ActivityLaunchWatcher"

    const-string v1, "removeActivityLaunchInfo"

    invoke-virtual {p1, v0, v1, p0}, Lcom/tencent/bugly/proguard/km;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 3

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_launch_ActivityLaunchWatcher"

    const-string v2, "destroy begin"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/bugly/proguard/nj$1;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/nj$1;-><init>(Lcom/tencent/bugly/proguard/nj;)V

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/by;->c(Ljava/lang/Runnable;J)V

    return-void
.end method
