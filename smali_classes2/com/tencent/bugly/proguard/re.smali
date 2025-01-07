.class public final Lcom/tencent/bugly/proguard/re;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/re$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 !2\u00020\u0001:\u0001!B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0002J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0006H\u0002J\u0018\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0005H\u0002J\u001e\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0016J \u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J.\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cJ0\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u0010\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0006H\u0002J\u0008\u0010 \u001a\u00020\u000bH\u0002R*\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/tencent/rmonitor/sla/StatisticsReporter;",
        "",
        "()V",
        "eventMap",
        "Ljava/util/HashMap;",
        "",
        "Lcom/tencent/rmonitor/sla/StatisticsEvent;",
        "Lkotlin/collections/HashMap;",
        "uploadRunnable",
        "Ljava/lang/Runnable;",
        "deleteDataInDB",
        "",
        "list",
        "",
        "Lcom/tencent/rmonitor/sla/AttaEvent;",
        "fillAttaEvent",
        "statisticsEvent",
        "getEvent",
        "baseType",
        "subType",
        "recordDiscard",
        "discardReason",
        "Lcom/tencent/rmonitor/base/reporter/DiscardReason;",
        "recordDiscardInternal",
        "recordUpload",
        "success",
        "",
        "contentLength",
        "",
        "cost",
        "recordUploadInternal",
        "saveDataToDB",
        "upload",
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
.field public static final Ic:Lcom/tencent/bugly/proguard/re$a;

.field private static final uT:Lkotlin/Lazy;


# instance fields
.field private final Ia:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/rd;",
            ">;"
        }
    .end annotation
.end field

.field private final Ib:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/re$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/re$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/re;->Ic:Lcom/tencent/bugly/proguard/re$a;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/tencent/bugly/proguard/re$b;->Id:Lcom/tencent/bugly/proguard/re$b;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/proguard/re;->uT:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/re;->Ia:Ljava/util/HashMap;

    new-instance v0, Lcom/tencent/bugly/proguard/re$e;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/re$e;-><init>(Lcom/tencent/bugly/proguard/re;)V

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/re;->Ib:Ljava/lang/Runnable;

    sget-object v1, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    const-wide/32 v1, 0x927c0

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/je;->f(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/re;-><init>()V

    return-void
.end method

.method private final K(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/rd;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/re;->Ia:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/rd;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/bugly/proguard/rd;

    invoke-direct {v1, p1, p2}, Lcom/tencent/bugly/proguard/rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/tencent/bugly/proguard/re;->Ia:Ljava/util/HashMap;

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private static a(Lcom/tencent/bugly/proguard/rd;)V
    .locals 4

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RMonitor_sla_StatisticsReporter"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveDataToDB baseType:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/bugly/proguard/rd;->dr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " subType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/rd;->ds:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/rd;->HZ:Lcom/tencent/bugly/proguard/qs;

    sget-object v1, Lcom/tencent/bugly/proguard/qt;->Hf:Lcom/tencent/bugly/proguard/qt;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/qt;->c(Lcom/tencent/bugly/proguard/qs;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/rd;->dr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/qs;->bM(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/rd;->ds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/qs;->bN(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/bugly/proguard/rd;->HR:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/qs;->bO(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/bugly/proguard/rd;->HS:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/qs;->bP(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/bugly/proguard/rd;->HT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/qs;->bQ(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/bugly/proguard/rd;->HY:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/qs;->bR(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/bugly/proguard/rd;->HU:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/qs;->bV(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/bugly/proguard/rd;->HV:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/qs;->bW(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/bugly/proguard/rd;->HW:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/qs;->bX(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/bugly/proguard/rd;->HX:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/qs;->bY(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/qr;->GI:Lcom/tencent/bugly/proguard/qr;

    iget-object p0, p0, Lcom/tencent/bugly/proguard/rd;->HZ:Lcom/tencent/bugly/proguard/qs;

    invoke-static {p0}, Lcom/tencent/bugly/proguard/qr;->b(Lcom/tencent/bugly/proguard/qs;)V

    return-void
.end method

.method public static final synthetic a(Lcom/tencent/bugly/proguard/re;)V
    .locals 3

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "upload statistics data"

    const-string v2, "RMonitor_sla_StatisticsReporter"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/re;->Ia:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "statistics data is empty , wait next upload"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/re;->Ia:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "eventMap.values"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/rd;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/rd;->HZ:Lcom/tencent/bugly/proguard/qs;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/tencent/bugly/proguard/qv;->Hw:Lcom/tencent/bugly/proguard/qv$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/qv$a;->jg()Lcom/tencent/bugly/proguard/qv;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/qv;->I(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/bugly/proguard/re;->Ia:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    sget-object v1, Lcom/tencent/bugly/proguard/qr;->GI:Lcom/tencent/bugly/proguard/qr;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/qr;->F(Ljava/util/List;)I

    :cond_2
    :goto_1
    sget-object v0, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    iget-object p0, p0, Lcom/tencent/bugly/proguard/re;->Ib:Ljava/lang/Runnable;

    const-wide/32 v0, 0x927c0

    invoke-static {p0, v0, v1}, Lcom/tencent/bugly/proguard/je;->f(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static final synthetic a(Lcom/tencent/bugly/proguard/re;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/jb;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/re;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/rd;

    move-result-object p0

    sget-object p1, Lcom/tencent/bugly/proguard/jb;->wi:Lcom/tencent/bugly/proguard/jb;

    if-ne p3, p1, :cond_0

    iget p1, p0, Lcom/tencent/bugly/proguard/rd;->HY:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/tencent/bugly/proguard/rd;->HY:I

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/tencent/bugly/proguard/jb;->wj:Lcom/tencent/bugly/proguard/jb;

    if-ne p3, p1, :cond_1

    iget p1, p0, Lcom/tencent/bugly/proguard/rd;->HR:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/tencent/bugly/proguard/rd;->HR:I

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/tencent/bugly/proguard/re;->a(Lcom/tencent/bugly/proguard/rd;)V

    return-void
.end method

.method public static final synthetic a(Lcom/tencent/bugly/proguard/re;Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/re;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/rd;

    move-result-object p0

    if-eqz p3, :cond_0

    iget p1, p0, Lcom/tencent/bugly/proguard/rd;->HT:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/tencent/bugly/proguard/rd;->HT:I

    iget p1, p0, Lcom/tencent/bugly/proguard/rd;->HU:I

    add-int/2addr p1, p4

    iput p1, p0, Lcom/tencent/bugly/proguard/rd;->HU:I

    iget p1, p0, Lcom/tencent/bugly/proguard/rd;->HW:I

    add-int/2addr p1, p5

    iput p1, p0, Lcom/tencent/bugly/proguard/rd;->HW:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/tencent/bugly/proguard/rd;->HS:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/tencent/bugly/proguard/rd;->HS:I

    iget p1, p0, Lcom/tencent/bugly/proguard/rd;->HV:I

    add-int/2addr p1, p4

    iput p1, p0, Lcom/tencent/bugly/proguard/rd;->HV:I

    iget p1, p0, Lcom/tencent/bugly/proguard/rd;->HX:I

    add-int/2addr p1, p5

    iput p1, p0, Lcom/tencent/bugly/proguard/rd;->HX:I

    :goto_0
    invoke-static {p0}, Lcom/tencent/bugly/proguard/re;->a(Lcom/tencent/bugly/proguard/rd;)V

    return-void
.end method

.method public static final synthetic fy()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/re;->uT:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/jb;)V
    .locals 5

    const-string v0, "baseType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discardReason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/qy;->ji()Lcom/tencent/bugly/proguard/qy;

    move-result-object v0

    const-string v1, "RMRecordReport"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/qy;->cb(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "RMonitor_sla_StatisticsReporter"

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v0, :cond_0

    sget-object p3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v0, v4, [Ljava/lang/String;

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "recordDiscard, ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] miss hit"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p3, v0}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "recordDiscard baseType:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", subType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-virtual {v0, v4}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    new-instance v0, Lcom/tencent/bugly/proguard/re$c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/re$c;-><init>(Lcom/tencent/bugly/proguard/re;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/jb;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/je;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 8

    const-string v0, "baseType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/qy;->ji()Lcom/tencent/bugly/proguard/qy;

    move-result-object v0

    const-string v1, "RMRecordReport"

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/qy;->cb(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ", "

    const/4 v2, 0x1

    const-string v3, "RMonitor_sla_StatisticsReporter"

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-nez v0, :cond_0

    sget-object p3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array p4, v5, [Ljava/lang/String;

    aput-object v3, p4, v4

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "recordUpload, ["

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] miss hit"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v2

    invoke-virtual {p3, p4}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "recordUpload ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], success:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", length:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cost:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    new-instance v0, Lcom/tencent/bugly/proguard/re$d;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/tencent/bugly/proguard/re$d;-><init>(Lcom/tencent/bugly/proguard/re;Ljava/lang/String;Ljava/lang/String;ZII)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/je;->c(Ljava/lang/Runnable;)V

    return-void
.end method
