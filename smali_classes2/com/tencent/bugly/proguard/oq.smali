.class public final Lcom/tencent/bugly/proguard/oq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/bj;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\n\u0010\t\u001a\u0004\u0018\u00010\u0006H\u0002J0\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\u000c\u0018\u0001`\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000cH\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/tencent/rmonitor/manager/LinkDataDBCacheMngImpl;",
        "Lcom/tencent/bugly/common/reporter/link/LinkDataDBCacheMng;",
        "productID",
        "",
        "(Ljava/lang/String;)V",
        "dbHelper",
        "Lcom/tencent/rmonitor/base/db/DBHelper;",
        "maxReadDataCount",
        "",
        "getDBHelper",
        "loadFromDB",
        "Ljava/util/ArrayList;",
        "Lcom/tencent/bugly/common/reporter/link/LinkData;",
        "Lkotlin/collections/ArrayList;",
        "launchID",
        "processLaunchID",
        "makeBaseDBParam",
        "Lcom/tencent/rmonitor/base/db/BaseDBParam;",
        "saveToDB",
        "",
        "linkData",
        "bugly-pro_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final DI:I

.field private final uD:Ljava/lang/String;

.field private uK:Lcom/tencent/bugly/proguard/hw;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "productID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/oq;->uD:Ljava/lang/String;

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/tencent/bugly/proguard/oq;->DI:I

    return-void
.end method

.method private final fE()Lcom/tencent/bugly/proguard/hs;
    .locals 3

    invoke-static {}, Lcom/tencent/bugly/proguard/cc;->aX()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/proguard/hs;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/hs;-><init>()V

    sget-object v2, Lcom/tencent/bugly/proguard/kp;->yL:Lcom/tencent/bugly/proguard/kp$a;

    sget-object v2, Lcom/tencent/bugly/proguard/ci;->eG:Lcom/tencent/bugly/proguard/ci$a;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ci$a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/hs;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/oq;->uD:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/bugly/proguard/hs;->uD:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/bz;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/proguard/hs;->dt:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/proguard/bz;->aI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/proguard/hs;->du:Ljava/lang/String;

    return-object v1
.end method

.method private final ie()Lcom/tencent/bugly/proguard/hw;
    .locals 3

    invoke-static {}, Lcom/tencent/bugly/proguard/cc;->aX()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/oq;->uK:Lcom/tencent/bugly/proguard/hw;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/hw;->uQ:Lcom/tencent/bugly/proguard/hw$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/cc;->aX()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ContextUtil.getGlobalContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/hw$a;->O(Landroid/content/Context;)Lcom/tencent/bugly/proguard/hw;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/oq;->uK:Lcom/tencent/bugly/proguard/hw;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/tencent/bugly/proguard/hw;->uO:Lcom/tencent/bugly/proguard/hv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/hv;->open()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/oq;->uK:Lcom/tencent/bugly/proguard/hw;

    return-object v0
.end method


# virtual methods
.method public final b(Lcom/tencent/bugly/proguard/bi;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/oq;->ie()Lcom/tencent/bugly/proguard/hw;

    move-result-object v1

    const-string v2, ", "

    const-string v3, "save record {"

    const-string v4, "RMonitor_link"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v1, :cond_1

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v5, v5, [Ljava/lang/String;

    aput-object v4, v5, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/tencent/bugly/proguard/bi;->ds:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/tencent/bugly/proguard/bi;->dv:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "} to db fail for db helper is null."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v6

    invoke-virtual {v1, v5}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/oq;->fE()Lcom/tencent/bugly/proguard/hs;

    move-result-object v7

    new-instance v8, Lcom/tencent/bugly/proguard/ia;

    invoke-direct {v8, v7, p1}, Lcom/tencent/bugly/proguard/ia;-><init>(Lcom/tencent/bugly/proguard/hs;Lcom/tencent/bugly/proguard/bi;)V

    iget-object v1, v1, Lcom/tencent/bugly/proguard/hw;->uO:Lcom/tencent/bugly/proguard/hv;

    check-cast v8, Lcom/tencent/bugly/proguard/ht;

    sget-object v7, Lcom/tencent/bugly/proguard/oq$b;->DK:Lcom/tencent/bugly/proguard/oq$b;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v8, v7}, Lcom/tencent/bugly/proguard/hv;->a(Lcom/tencent/bugly/proguard/ht;Lkotlin/jvm/functions/Function0;)I

    move-result v1

    const/4 v7, -0x2

    const/4 v8, -0x1

    if-eq v1, v8, :cond_2

    if-ne v1, v7, :cond_3

    :cond_2
    sget-object v9, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v5, v5, [Ljava/lang/String;

    aput-object v4, v5, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/tencent/bugly/proguard/bi;->ds:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/tencent/bugly/proguard/bi;->dv:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "} to db fail for ret = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v6

    invoke-virtual {v9, v5}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    :cond_3
    if-eq v1, v8, :cond_4

    if-eq v1, v7, :cond_4

    return v6

    :cond_4
    return v0
.end method

.method public final synthetic h(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "RMonitor_link"

    if-nez v0, :cond_3

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/oq;->ie()Lcom/tencent/bugly/proguard/hw;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string p2, "load from db fail for db helper is null."

    filled-new-array {v2, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/oq;->fE()Lcom/tencent/bugly/proguard/hs;

    move-result-object v1

    iput-object p1, v1, Lcom/tencent/bugly/proguard/hs;->dt:Ljava/lang/String;

    iput-object p2, v1, Lcom/tencent/bugly/proguard/hs;->du:Ljava/lang/String;

    new-instance p1, Lcom/tencent/bugly/proguard/ia;

    invoke-direct {p1, v1}, Lcom/tencent/bugly/proguard/ia;-><init>(Lcom/tencent/bugly/proguard/hs;)V

    iget-object p2, v0, Lcom/tencent/bugly/proguard/hw;->uO:Lcom/tencent/bugly/proguard/hv;

    check-cast p1, Lcom/tencent/bugly/proguard/ht;

    new-instance v0, Lcom/tencent/bugly/proguard/oq$a;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/oq$a;-><init>(Lcom/tencent/bugly/proguard/oq;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, p1, v0}, Lcom/tencent/bugly/proguard/hv;->b(Lcom/tencent/bugly/proguard/ht;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.collections.ArrayList<com.tencent.bugly.common.reporter.link.LinkData> /* = java.util.ArrayList<com.tencent.bugly.common.reporter.link.LinkData> */"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string p2, "load from db fail for invalid params."

    filled-new-array {v2, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    :goto_1
    check-cast v1, Ljava/util/List;

    return-object v1
.end method
