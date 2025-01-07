.class public final Lcom/tencent/bugly/proguard/pm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/pp;


# instance fields
.field final EA:Lcom/tencent/bugly/proguard/pc;

.field private final EN:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/pc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/bugly/proguard/pm$1;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/pm$1;-><init>(Lcom/tencent/bugly/proguard/pm;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/pm;->EN:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/pm;->EA:Lcom/tencent/bugly/proguard/pc;

    return-void
.end method


# virtual methods
.method public final j(Landroid/app/Activity;)Z
    .locals 1

    const-string v0, "androidx.fragment.app.FragmentActivity"

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/ks;->d(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final k(Landroid/app/Activity;)V
    .locals 2

    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pm;->EN:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    :cond_0
    return-void
.end method

.method public final l(Landroid/app/Activity;)V
    .locals 1

    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pm;->EN:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V

    :cond_0
    return-void
.end method
