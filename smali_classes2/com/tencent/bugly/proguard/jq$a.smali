.class final Lcom/tencent/bugly/proguard/jq$a;
.super Lcom/tencent/bugly/proguard/kj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/jq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final xn:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/tencent/bugly/proguard/jt;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic xo:Lcom/tencent/bugly/proguard/jq;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/jq;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/jq$a;->xo:Lcom/tencent/bugly/proguard/jq;

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/kj;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/jq$a;->xn:Landroid/util/SparseArray;

    new-instance p1, Lcom/tencent/bugly/proguard/jq$a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/tencent/bugly/proguard/jq$a$1;-><init>(Lcom/tencent/bugly/proguard/jq$a;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/jq$a;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final b(Landroid/app/Activity;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/jq$a;->xo:Lcom/tencent/bugly/proguard/jq;

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/jq;->a(Lcom/tencent/bugly/proguard/jq;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "RMonitor_BigBitmap_Monitor"

    aput-object v4, v1, v3

    aput-object v0, v1, v2

    const/4 v0, 0x2

    const-string v2, " is excluded"

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aR()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/jq$a;->g(Landroid/app/Activity;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/jq$a;->handler:Landroid/os/Handler;

    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final f(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/jq$a;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/jq$a;->xn:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/bugly/proguard/jt;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aL()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method final g(Landroid/app/Activity;)V
    .locals 5

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/tencent/bugly/proguard/jt;

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/ks;->a(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/tencent/bugly/proguard/jq$a;->xo:Lcom/tencent/bugly/proguard/jq;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/jq;->a(Lcom/tencent/bugly/proguard/jq;)Lcom/tencent/bugly/proguard/jp;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/bugly/proguard/jq$a;->xo:Lcom/tencent/bugly/proguard/jq;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/jq;->b(Lcom/tencent/bugly/proguard/jq;)Lcom/tencent/bugly/proguard/jr;

    move-result-object v4

    invoke-direct {v2, p1, v0, v3, v4}, Lcom/tencent/bugly/proguard/jt;-><init>(Ljava/lang/String;Landroid/view/View;Lcom/tencent/bugly/proguard/jp;Lcom/tencent/bugly/proguard/jr;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/jq$a;->xn:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
