.class public final Lcom/tencent/bugly/proguard/qv;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/qv$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0005J\u001e\u0010\n\u001a\u00020\u00082\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eJ\u001e\u0010\u000f\u001a\u00020\u000e2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eJ\u001e\u0010\u0010\u001a\u00020\u000e2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0002J\u001e\u0010\u0013\u001a\u00020\u000e2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u00052\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eJ\u0018\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00052\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eR\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/tencent/rmonitor/sla/AttaEventReporter;",
        "",
        "()V",
        "cache",
        "Ljava/util/ArrayList;",
        "Lcom/tencent/rmonitor/sla/AttaEvent;",
        "Lkotlin/collections/ArrayList;",
        "addEvent",
        "",
        "attaEvent",
        "batchReportAsync",
        "eventList",
        "",
        "cacheToDb",
        "",
        "batchReportSync",
        "doReport",
        "getAttaUrl",
        "Ljava/net/URL;",
        "prepareReport",
        "reportAsync",
        "event",
        "reportSync",
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
.field public static final Hw:Lcom/tencent/bugly/proguard/qv$a;

.field private static final uT:Lkotlin/Lazy;


# instance fields
.field private final Hv:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/qs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/qv$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/qv$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/qv;->Hw:Lcom/tencent/bugly/proguard/qv$a;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/tencent/bugly/proguard/qv$b;->Hx:Lcom/tencent/bugly/proguard/qv$b;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/proguard/qv;->uT:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/qv;->Hv:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/qv;-><init>()V

    return-void
.end method

.method public static I(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/qs;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "eventList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "RMonitor_sla_AttaEventReporter"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "reportSync size:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/tencent/bugly/proguard/qv;->b(Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v3}, Lcom/tencent/bugly/proguard/qv;->c(Ljava/util/List;Z)Z

    move-result p0

    return p0

    :cond_0
    return v3
.end method

.method private J(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/qs;",
            ">;)V"
        }
    .end annotation

    const-string v0, "eventList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RMonitor_sla_AttaEventReporter"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reportAsync size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/qv;->b(Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    new-instance v0, Lcom/tencent/bugly/proguard/qv$d;

    invoke-direct {v0, p0, p1}, Lcom/tencent/bugly/proguard/qv$d;-><init>(Lcom/tencent/bugly/proguard/qv;Ljava/util/List;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/je;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static b(Ljava/util/List;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/qs;",
            ">;Z)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/qt;->Hf:Lcom/tencent/bugly/proguard/qt;

    invoke-static {p0}, Lcom/tencent/bugly/proguard/qt;->G(Ljava/util/List;)V

    if-eqz p1, :cond_1

    sget-object p1, Lcom/tencent/bugly/proguard/qr;->GI:Lcom/tencent/bugly/proguard/qr;

    invoke-static {p0}, Lcom/tencent/bugly/proguard/qr;->E(Ljava/util/List;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static c(Ljava/util/List;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/qs;",
            ">;Z)Z"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/bugly/proguard/qv;->jf()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/tencent/bugly/proguard/qu;

    invoke-direct {v1, v0, p0}, Lcom/tencent/bugly/proguard/qu;-><init>(Ljava/net/URL;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/qu;->je()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/tencent/bugly/proguard/qr;->GI:Lcom/tencent/bugly/proguard/qr;

    invoke-static {p0}, Lcom/tencent/bugly/proguard/qr;->F(Ljava/util/List;)I

    :cond_0
    return v0

    :cond_1
    sget-object p0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string p1, "RMonitor_sla_AttaEventReporter"

    const-string v0, "can not get atta url"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static final synthetic d(Ljava/util/List;Z)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/qv;->c(Ljava/util/List;Z)Z

    move-result p0

    return p0
.end method

.method public static final synthetic fy()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/qv;->uT:Lkotlin/Lazy;

    return-object v0
.end method

.method private static jf()Ljava/net/URL;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/URL;

    sget-object v1, Lcom/tencent/bugly/proguard/id;->vm:Lcom/tencent/bugly/proguard/ij;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/ij;->vM:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "RMonitor_sla_AttaEventReporter"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final d(Lcom/tencent/bugly/proguard/qs;)V
    .locals 5

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "RMonitor_sla_AttaEventReporter"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "reportAsync , eventCode:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/tencent/bugly/proguard/qs;->He:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    new-array v0, v4, [Lcom/tencent/bugly/proguard/qs;

    aput-object p1, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/qv;->J(Ljava/util/List;)V

    return-void
.end method

.method public final e(Lcom/tencent/bugly/proguard/qs;)V
    .locals 6

    const-string v0, "attaEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "RMonitor_sla_AttaEventReporter"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "addEvent, eventCode:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/tencent/bugly/proguard/qs;->He:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/qt;->Hf:Lcom/tencent/bugly/proguard/qt;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/qt;->c(Lcom/tencent/bugly/proguard/qs;)V

    sget-object v0, Lcom/tencent/bugly/proguard/qr;->GI:Lcom/tencent/bugly/proguard/qr;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/qr;->b(Lcom/tencent/bugly/proguard/qs;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qv;->Hv:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "RMonitor_sla_AttaEventReporter"

    aput-object v3, v1, v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "current cache size:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/bugly/proguard/qv;->Hv:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , do add event"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {v2, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/qv;->Hv:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/bugly/proguard/qv;->Hv:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/tencent/bugly/proguard/qv;->Hv:Ljava/util/ArrayList;

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    new-instance v2, Lcom/tencent/bugly/proguard/qv$c;

    invoke-direct {v2, v1, p0, p1}, Lcom/tencent/bugly/proguard/qv$c;-><init>(Ljava/util/ArrayList;Lcom/tencent/bugly/proguard/qv;Lcom/tencent/bugly/proguard/qs;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/je;->c(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/qv;->Hv:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
