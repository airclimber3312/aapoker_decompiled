.class public final Lcom/tencent/bugly/proguard/kd;
.super Ljava/lang/Object;


# static fields
.field private static final xN:Lcom/tencent/bugly/proguard/kd;


# instance fields
.field private rL:Ljava/lang/String;

.field public final xO:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/tencent/bugly/proguard/kf;",
            ">;"
        }
    .end annotation
.end field

.field public final xP:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/tencent/bugly/proguard/kg;",
            ">;"
        }
    .end annotation
.end field

.field private xQ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private xR:Ljava/lang/String;

.field public xS:Ljava/lang/String;

.field public xT:Ljava/lang/String;

.field private final xU:[Ljava/lang/String;

.field private xV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/kd;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/kd;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/kd;->xN:Lcom/tencent/bugly/proguard/kd;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/kd;->xQ:Ljava/lang/ref/WeakReference;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/kd;->xR:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/kd;->xS:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/kd;->xT:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/bugly/proguard/kd;->xV:I

    iput-object v0, p0, Lcom/tencent/bugly/proguard/kd;->rL:Ljava/lang/String;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/proguard/kd;->xO:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/proguard/kd;->xP:Ljava/util/concurrent/CopyOnWriteArraySet;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/kd;->xU:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static gb()Lcom/tencent/bugly/proguard/kd;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/kd;->xN:Lcom/tencent/bugly/proguard/kd;

    return-object v0
.end method

.method private gd()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/kd;->xT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/kd;->xR:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static ge()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/kd;->xN:Lcom/tencent/bugly/proguard/kd;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/kd;->gd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentActivity()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/kd;->xN:Lcom/tencent/bugly/proguard/kd;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/kd;->xQ:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public static gf()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/kd;->xN:Lcom/tencent/bugly/proguard/kd;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/kd;->xR:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/kf;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/kd;->xO:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final aV(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/tencent/bugly/proguard/kd;->xV:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/kd;->xU:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/tencent/bugly/proguard/kd;->xV:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/tencent/bugly/proguard/kd;->xV:I

    iget-object v1, p0, Lcom/tencent/bugly/proguard/kd;->xU:[Ljava/lang/String;

    aput-object p1, v1, v0

    return-void
.end method

.method public final gc()V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/kd;->gd()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/kd;->rL:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/kd;->rL:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/kd;->xP:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/kg;

    invoke-interface {v2, v0}, Lcom/tencent/bugly/proguard/kg;->au(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/kd;->xQ:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/kd;->xQ:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/kd;->xS:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/kd;->xR:Ljava/lang/String;

    iget-object p1, p0, Lcom/tencent/bugly/proguard/kd;->xT:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tencent/bugly/proguard/kd;->xS:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/kd;->aV(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/kd;->gc()V

    :cond_2
    :goto_0
    return-void
.end method
