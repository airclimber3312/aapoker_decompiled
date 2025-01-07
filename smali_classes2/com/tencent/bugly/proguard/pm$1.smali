.class final Lcom/tencent/bugly/proguard/pm$1;
.super Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/pm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EO:Lcom/tencent/bugly/proguard/pm;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/pm;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/pm$1;->EO:Lcom/tencent/bugly/proguard/pm;

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFragmentDestroyed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/bugly/proguard/pm$1;->EO:Lcom/tencent/bugly/proguard/pm;

    iget-object p1, p1, Lcom/tencent/bugly/proguard/pm;->EA:Lcom/tencent/bugly/proguard/pc;

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/tencent/bugly/proguard/pc;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onFragmentViewDestroyed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 1

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/bugly/proguard/pm$1;->EO:Lcom/tencent/bugly/proguard/pm;

    iget-object p1, p1, Lcom/tencent/bugly/proguard/pm;->EA:Lcom/tencent/bugly/proguard/pc;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/tencent/bugly/proguard/pc;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
