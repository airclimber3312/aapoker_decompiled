.class final Lcom/tencent/bugly/proguard/pl$1;
.super Landroid/app/FragmentManager$FragmentLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/pl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EM:Lcom/tencent/bugly/proguard/pl;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/pl;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/pl$1;->EM:Lcom/tencent/bugly/proguard/pl;

    invoke-direct {p0}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFragmentDestroyed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/bugly/proguard/pl$1;->EM:Lcom/tencent/bugly/proguard/pl;

    iget-object p1, p1, Lcom/tencent/bugly/proguard/pl;->EA:Lcom/tencent/bugly/proguard/pc;

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/tencent/bugly/proguard/pc;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onFragmentViewDestroyed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .locals 1

    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/bugly/proguard/pl$1;->EM:Lcom/tencent/bugly/proguard/pl;

    iget-object p1, p1, Lcom/tencent/bugly/proguard/pl;->EA:Lcom/tencent/bugly/proguard/pc;

    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/tencent/bugly/proguard/pc;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
