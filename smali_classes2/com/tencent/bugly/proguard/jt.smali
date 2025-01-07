.class public final Lcom/tencent/bugly/proguard/jt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# static fields
.field private static final xu:Ljava/lang/Long;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final xk:Lcom/tencent/bugly/proguard/jp;

.field private final xl:Lcom/tencent/bugly/proguard/jr;

.field private final xv:Ljava/lang/String;

.field private final xw:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/proguard/jt;->xu:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/view/View;Lcom/tencent/bugly/proguard/jp;Lcom/tencent/bugly/proguard/jr;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/bugly/proguard/jt$1;

    invoke-static {}, Lcom/tencent/bugly/proguard/by;->aF()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/bugly/proguard/jt$1;-><init>(Lcom/tencent/bugly/proguard/jt;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/jt;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/jt;->xv:Ljava/lang/String;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/jt;->xw:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/tencent/bugly/proguard/jt;->xk:Lcom/tencent/bugly/proguard/jp;

    iput-object p4, p0, Lcom/tencent/bugly/proguard/jt;->xl:Lcom/tencent/bugly/proguard/jr;

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/jt;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/tencent/bugly/proguard/jt;->xw:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/jt;Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/bugly/proguard/jt;->xl:Lcom/tencent/bugly/proguard/jr;

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/jr;->x(Ljava/util/List;)Lcom/tencent/bugly/proguard/bg;

    sget-object p0, Lcom/tencent/bugly/proguard/iv;->vS:Lcom/tencent/bugly/proguard/iw;

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/iw;->fJ()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/jt;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/jt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/jx;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/jt;->xk:Lcom/tencent/bugly/proguard/jp;

    invoke-virtual {p4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    instance-of v1, p4, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    move-object v1, p4

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move-object v8, v1

    iget-object v1, v0, Lcom/tencent/bugly/proguard/jp;->xg:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/tencent/bugly/proguard/jy;

    invoke-virtual {v10, v7}, Lcom/tencent/bugly/proguard/jy;->a(Landroid/graphics/drawable/Drawable;)Lcom/tencent/bugly/proguard/jw;

    move-result-object v6

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/bugly/proguard/jp;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Lcom/tencent/bugly/proguard/jw;)V

    invoke-virtual {v10, v8}, Lcom/tencent/bugly/proguard/jy;->b(Landroid/graphics/drawable/Drawable;)Lcom/tencent/bugly/proguard/jw;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/bugly/proguard/jp;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Lcom/tencent/bugly/proguard/jw;)V

    goto :goto_1

    :cond_2
    instance-of v0, p4, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    check-cast p4, Landroid/view/ViewGroup;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \n "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/ks;->a(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/tencent/bugly/proguard/jt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method static synthetic b(Lcom/tencent/bugly/proguard/jt;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/bugly/proguard/jt;->xv:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/bugly/proguard/jt;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/jt;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/tencent/bugly/proguard/jt;->xu:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
