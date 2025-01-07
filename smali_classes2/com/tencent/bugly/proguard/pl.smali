.class public final Lcom/tencent/bugly/proguard/pl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/pp;


# instance fields
.field final EA:Lcom/tencent/bugly/proguard/pc;

.field private final EL:Landroid/app/FragmentManager$FragmentLifecycleCallbacks;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/pc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/bugly/proguard/pl$1;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/pl$1;-><init>(Lcom/tencent/bugly/proguard/pl;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/pl;->EL:Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/pl;->EA:Lcom/tencent/bugly/proguard/pc;

    return-void
.end method


# virtual methods
.method public final j(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aS()Z

    move-result p1

    return p1
.end method

.method public final k(Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pl;->EL:Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    :cond_0
    return-void
.end method

.method public final l(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/pl;->EL:Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->unregisterFragmentLifecycleCallbacks(Landroid/app/FragmentManager$FragmentLifecycleCallbacks;)V

    :cond_0
    return-void
.end method
