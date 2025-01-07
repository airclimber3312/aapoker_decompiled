.class public final Lcom/tencent/bugly/proguard/qt;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0014\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008J\"\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u000e\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\rH\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/tencent/rmonitor/sla/AttaEventHelper;",
        "",
        "()V",
        "fillBaseInfo",
        "",
        "attaEvent",
        "Lcom/tencent/rmonitor/sla/AttaEvent;",
        "list",
        "",
        "fillFieldIfEmpty",
        "",
        "field",
        "block",
        "Lkotlin/Function0;",
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
.field public static final Hf:Lcom/tencent/bugly/proguard/qt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/qt;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/qt;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/qt;->Hf:Lcom/tencent/bugly/proguard/qt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static G(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/qs;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/qs;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/qt;->c(Lcom/tencent/bugly/proguard/qs;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0

    :cond_1
    if-nez p0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    return-object p0
.end method

.method public static c(Lcom/tencent/bugly/proguard/qs;)V
    .locals 5

    const-string v0, "attaEvent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qs;->appVersion:Ljava/lang/String;

    sget-object v1, Lcom/tencent/bugly/proguard/qt$a;->Hg:Lcom/tencent/bugly/proguard/qt$a;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/qt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/qs;->aS(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qs;->hq:Ljava/lang/String;

    sget-object v1, Lcom/tencent/bugly/proguard/qt$e;->Hk:Lcom/tencent/bugly/proguard/qt$e;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/qt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/qs;->bD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qs;->GJ:Ljava/lang/String;

    sget-object v1, Lcom/tencent/bugly/proguard/qt$f;->Hl:Lcom/tencent/bugly/proguard/qt$f;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/qt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/qs;->bE(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qs;->appKey:Ljava/lang/String;

    sget-object v1, Lcom/tencent/bugly/proguard/qt$g;->Hm:Lcom/tencent/bugly/proguard/qt$g;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/qt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/qs;->bF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qs;->userId:Ljava/lang/String;

    sget-object v1, Lcom/tencent/bugly/proguard/qt$h;->Hn:Lcom/tencent/bugly/proguard/qt$h;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/qt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/qs;->bG(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qs;->bD:Ljava/lang/String;

    sget-object v1, Lcom/tencent/bugly/proguard/qt$i;->Ho:Lcom/tencent/bugly/proguard/qt$i;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/qt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/qs;->bH(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/qs;->dw:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/qs;->dw:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/tencent/bugly/proguard/qs;->dw:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/qs;->fw:J

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qs;->K:Ljava/lang/String;

    sget-object v1, Lcom/tencent/bugly/proguard/qt$j;->Hp:Lcom/tencent/bugly/proguard/qt$j;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/qt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/qs;->L(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qs;->cD:Ljava/lang/String;

    sget-object v1, Lcom/tencent/bugly/proguard/qt$k;->Hq:Lcom/tencent/bugly/proguard/qt$k;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/qt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/qs;->bI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qs;->GL:Ljava/lang/String;

    sget-object v1, Lcom/tencent/bugly/proguard/qt$l;->Hr:Lcom/tencent/bugly/proguard/qt$l;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/qt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/qs;->bJ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qs;->bx:Ljava/lang/String;

    sget-object v1, Lcom/tencent/bugly/proguard/qt$b;->Hh:Lcom/tencent/bugly/proguard/qt$b;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/qt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/qs;->m(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qs;->vd:Ljava/lang/String;

    sget-object v1, Lcom/tencent/bugly/proguard/qt$c;->Hi:Lcom/tencent/bugly/proguard/qt$c;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/qt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/qs;->bK(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/qs;->GM:Ljava/lang/String;

    sget-object v1, Lcom/tencent/bugly/proguard/qt$d;->Hj:Lcom/tencent/bugly/proguard/qt$d;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/qt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/qs;->bL(Ljava/lang/String;)V

    return-void
.end method
