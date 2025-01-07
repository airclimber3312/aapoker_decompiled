.class final Lcom/tencent/bugly/proguard/ps;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/ke;


# instance fields
.field private EV:Ljava/lang/String;

.field private final EW:Lcom/tencent/bugly/proguard/pr;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/pr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ps;->EV:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ps;->EW:Lcom/tencent/bugly/proguard/pr;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ps;->EV:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ps;->EW:Lcom/tencent/bugly/proguard/pr;

    invoke-interface {v0, p1}, Lcom/tencent/bugly/proguard/pr;->bx(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final eg()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ps;->EW:Lcom/tencent/bugly/proguard/pr;

    invoke-interface {v0}, Lcom/tencent/bugly/proguard/pr;->eg()V

    return-void
.end method

.method public final eh()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ps;->EW:Lcom/tencent/bugly/proguard/pr;

    invoke-interface {v0}, Lcom/tencent/bugly/proguard/pr;->eh()V

    return-void
.end method

.method public final f(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ps;->EV:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ps;->EV:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/tencent/bugly/proguard/ps;->EW:Lcom/tencent/bugly/proguard/pr;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ps;->EV:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/tencent/bugly/proguard/pr;->bx(Ljava/lang/String;)V

    return-void
.end method
