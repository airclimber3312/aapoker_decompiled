.class public final Lcom/tencent/bugly/proguard/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/ag$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0002J\u0008\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0006\u0010\u0012\u001a\u00020\rJ\u0006\u0010\u0013\u001a\u00020\nJ\u000e\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0005J\u000e\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0005R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/tencent/bugly/common/looper/FrameManager;",
        "Landroid/view/Choreographer$FrameCallback;",
        "()V",
        "callbackList",
        "Ljava/util/HashSet;",
        "Lcom/tencent/bugly/common/looper/IFrame;",
        "Lkotlin/collections/HashSet;",
        "choreographer",
        "Lcom/tencent/bugly/common/looper/ChoreographerDelegate;",
        "isInit",
        "",
        "isStart",
        "checkAndStart",
        "",
        "checkAndStop",
        "doFrame",
        "frameTimeNanos",
        "",
        "init",
        "isInitSuccess",
        "register",
        "listener",
        "unRegister",
        "Companion",
        "bugly-pro_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final aL:Lcom/tencent/bugly/proguard/ag;

.field public static final aM:Lcom/tencent/bugly/proguard/ag$a;

.field private static final handler:Landroid/os/Handler;


# instance fields
.field private final aH:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/tencent/bugly/proguard/ah;",
            ">;"
        }
    .end annotation
.end field

.field private aI:Lcom/tencent/bugly/proguard/af;

.field private aJ:Z

.field private aK:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/ag$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/ag$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/ag;->aM:Lcom/tencent/bugly/proguard/ag$a;

    new-instance v0, Lcom/tencent/bugly/proguard/ag;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ag;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/ag;->aL:Lcom/tencent/bugly/proguard/ag;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/bugly/proguard/ag;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ag;->aH:Ljava/util/HashSet;

    return-void
.end method

.method public static final synthetic H()Lcom/tencent/bugly/proguard/ag;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/ag;->aL:Lcom/tencent/bugly/proguard/ag;

    return-object v0
.end method

.method public static final synthetic I()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/ag;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/ah;)V
    .locals 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ag;->aH:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/ag;->aJ:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ag;->aH:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/ag;->aK:Z

    const/4 v0, 0x1

    const-string v1, "RMonitor_looper_FrameManager"

    if-nez p1, :cond_2

    if-nez p1, :cond_2

    sget-object p1, Lcom/tencent/bugly/proguard/cb;->er:Lcom/tencent/bugly/proguard/cb$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/cb$a;->aL()Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_0
    new-instance p1, Lcom/tencent/bugly/proguard/af;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/af;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ag;->aI:Lcom/tencent/bugly/proguard/af;

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "init choreographer success."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v3, "init choreographer error."

    invoke-virtual {v2, v1, v3, p1}, Lcom/tencent/bugly/proguard/km;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "init choreographer build version is low."

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ag;->aK:Z

    :cond_2
    iget-object p1, p0, Lcom/tencent/bugly/proguard/ag;->aI:Lcom/tencent/bugly/proguard/af;

    if-eqz p1, :cond_3

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ag;->aJ:Z

    move-object v0, p0

    check-cast v0, Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/af;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v0, "checkAndStart"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final b(Lcom/tencent/bugly/proguard/ah;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ag;->aH:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/ag;->aJ:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ag;->aH:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/ag;->aJ:Z

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ag;->aI:Lcom/tencent/bugly/proguard/af;

    if-eqz p1, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/af;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_1
    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v0, "RMonitor_looper_FrameManager"

    const-string v1, "checkAndStop"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final doFrame(J)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ag;->aH:Ljava/util/HashSet;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/tencent/bugly/proguard/ah;

    invoke-interface {v3}, Lcom/tencent/bugly/proguard/ah;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/ah;

    invoke-interface {v1, p1, p2}, Lcom/tencent/bugly/proguard/ah;->doFrame(J)V

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/ag;->aJ:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ag;->aI:Lcom/tencent/bugly/proguard/af;

    if-eqz p1, :cond_3

    move-object p2, p0

    check-cast p2, Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, p2}, Lcom/tencent/bugly/proguard/af;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_3
    return-void
.end method
