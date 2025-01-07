.class public final Lcom/tencent/bugly/proguard/jg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/jg$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0007H\u0002J\u0008\u0010\u000c\u001a\u00020\nH\u0002J\u0008\u0010\r\u001a\u00020\nH\u0002J\u0018\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0008\u0010\u0013\u001a\u00020\nH\u0002J\u0008\u0010\u0014\u001a\u00020\nH\u0002J\u0008\u0010\u0015\u001a\u00020\nH\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/tencent/rmonitor/base/reporter/batch/CollectRecordDataRunnable;",
        "Ljava/lang/Runnable;",
        "()V",
        "listIndex",
        "",
        "reportDataList",
        "Ljava/util/ArrayList;",
        "Lcom/tencent/bugly/common/reporter/data/ReportData;",
        "reportDbDataRunnable",
        "checkFileBeforeReport",
        "",
        "reportData",
        "collectDbDataAndDeleteFile",
        "deleteAllSentOrOverTime",
        "recordDiscardData",
        "dbDataStatus",
        "Lcom/tencent/rmonitor/base/db/DBDataStatus;",
        "discardReason",
        "Lcom/tencent/rmonitor/base/reporter/DiscardReason;",
        "reportDbData",
        "reportDbDataOneByOne",
        "run",
        "shouldReportCachedData",
        "",
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
.field public static final wE:Lcom/tencent/bugly/proguard/jg$a;


# instance fields
.field private final wB:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/bg;",
            ">;"
        }
    .end annotation
.end field

.field private wC:I

.field private final wD:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/jg$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/jg$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/jg;->wE:Lcom/tencent/bugly/proguard/jg$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/jg;->wB:Ljava/util/ArrayList;

    new-instance v0, Lcom/tencent/bugly/proguard/jg$c;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/jg$c;-><init>(Lcom/tencent/bugly/proguard/jg;)V

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/jg;->wD:Ljava/lang/Runnable;

    return-void
.end method

.method private static a(Lcom/tencent/bugly/proguard/hu;Lcom/tencent/bugly/proguard/jb;)V
    .locals 8

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_report_cache"

    const-string v2, "recordDiscardData"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf731400

    sub-long/2addr v0, v2

    sget-object v2, Lcom/tencent/bugly/proguard/id;->uK:Lcom/tencent/bugly/proguard/hw;

    const-string v3, "params"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/tencent/bugly/proguard/hw;->uO:Lcom/tencent/bugly/proguard/hv;

    if-eqz v2, :cond_0

    sget-object v5, Lcom/tencent/bugly/proguard/ib;->vh:Lcom/tencent/bugly/proguard/ib$a;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    iget p0, p0, Lcom/tencent/bugly/proguard/hu;->value:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 p0, 0x1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, p0

    const-string p0, "report_data"

    const-string v0, "status=? AND occur_time<?"

    invoke-static {v2, p0, v5, v0, v6}, Lcom/tencent/bugly/proguard/hv;->a(Lcom/tencent/bugly/proguard/hv;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v4

    :goto_0
    if-eqz p0, :cond_4

    check-cast p0, Ljava/io/Closeable;

    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lorg/json/JSONObject;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/bugly/proguard/kv;->zh:Lcom/tencent/bugly/proguard/kv;

    const-string v2, "base_type"

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/kv;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/tencent/bugly/proguard/kv;->zh:Lcom/tencent/bugly/proguard/kv;

    const-string v5, "sub_type"

    invoke-static {v1, v5}, Lcom/tencent/bugly/proguard/kv;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/tencent/bugly/proguard/re;->Ic:Lcom/tencent/bugly/proguard/re$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/re$a;->js()Lcom/tencent/bugly/proguard/re;

    move-result-object v5

    invoke-virtual {v5, v2, v1, p1}, Lcom/tencent/bugly/proguard/re;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/jb;)V

    goto :goto_1

    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    return-void
.end method

.method public static final synthetic a(Lcom/tencent/bugly/proguard/jg;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/jg;->fR()V

    return-void
.end method

.method private final fQ()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/bugly/proguard/jg;->wB:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/bugly/proguard/jg;->wC:I

    new-instance v2, Lcom/tencent/bugly/proguard/ib;

    sget-object v3, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/am;->appId:Ljava/lang/String;

    sget-object v4, Lcom/tencent/bugly/proguard/kp;->yL:Lcom/tencent/bugly/proguard/kp$a;

    sget-object v4, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    check-cast v4, Landroid/content/Context;

    sget-object v5, Lcom/tencent/bugly/proguard/ci;->eG:Lcom/tencent/bugly/proguard/ci$a;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/ci$a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    iget-object v5, v5, Lcom/tencent/bugly/proguard/am;->appVersion:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/tencent/bugly/proguard/ib;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/tencent/bugly/proguard/id;->uK:Lcom/tencent/bugly/proguard/hw;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/tencent/bugly/proguard/hw;->uO:Lcom/tencent/bugly/proguard/hv;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/tencent/bugly/proguard/ht;

    sget-object v5, Lcom/tencent/bugly/proguard/jg$b;->wF:Lcom/tencent/bugly/proguard/jg$b;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, v2, v5}, Lcom/tencent/bugly/proguard/hv;->b(Lcom/tencent/bugly/proguard/ht;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    instance-of v3, v2, Ljava/util/ArrayList;

    if-nez v3, :cond_1

    move-object v2, v4

    :cond_1
    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    move-object v5, v2

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/bugly/proguard/bg;

    iget-object v7, v6, Lcom/tencent/bugly/proguard/bg;->da:Lorg/json/JSONObject;

    const-string v8, "Attributes"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v6, Lcom/tencent/bugly/proguard/bg;->da:Lorg/json/JSONObject;

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lorg/json/JSONObject;

    if-eqz v8, :cond_2

    check-cast v7, Lorg/json/JSONObject;

    const-string v8, "fileObj"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "attributes.getString(\"fileObj\")"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v3}, Lcom/tencent/bugly/proguard/bg;->a(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/tencent/bugly/proguard/jg;->wB:Ljava/util/ArrayList;

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    new-instance v2, Lcom/tencent/bugly/proguard/jj;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/jj;-><init>()V

    new-instance v2, Lcom/tencent/bugly/proguard/hz;

    sget-object v5, Lcom/tencent/bugly/proguard/id;->vr:Lcom/tencent/bugly/proguard/id$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/id$a;->fE()Lcom/tencent/bugly/proguard/hs;

    move-result-object v5

    const-string v6, "looper_metric"

    invoke-direct {v2, v5, v6}, Lcom/tencent/bugly/proguard/hz;-><init>(Lcom/tencent/bugly/proguard/hs;Ljava/lang/String;)V

    sget-object v5, Lcom/tencent/bugly/proguard/id;->uK:Lcom/tencent/bugly/proguard/hw;

    if-eqz v5, :cond_5

    iget-object v5, v5, Lcom/tencent/bugly/proguard/hw;->uO:Lcom/tencent/bugly/proguard/hv;

    if-eqz v5, :cond_5

    move-object v7, v2

    check-cast v7, Lcom/tencent/bugly/proguard/ht;

    sget-object v8, Lcom/tencent/bugly/proguard/jj$b;->wN:Lcom/tencent/bugly/proguard/jj$b;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v5, v7, v8}, Lcom/tencent/bugly/proguard/hv;->b(Lcom/tencent/bugly/proguard/ht;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_2

    :cond_5
    move-object v5, v4

    :goto_2
    instance-of v7, v5, Ljava/util/HashMap;

    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    move-object v4, v5

    :goto_3
    check-cast v4, Ljava/util/HashMap;

    sget-object v5, Lcom/tencent/bugly/proguard/id;->uK:Lcom/tencent/bugly/proguard/hw;

    if-eqz v5, :cond_7

    iget-object v5, v5, Lcom/tencent/bugly/proguard/hw;->uO:Lcom/tencent/bugly/proguard/hv;

    if-eqz v5, :cond_7

    sget-object v7, Lcom/tencent/bugly/proguard/hz;->va:Lcom/tencent/bugly/proguard/hz$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/hz;->fA()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/hz;->fB()[Ljava/lang/String;

    move-result-object v2

    const-string v8, "drop_frame"

    invoke-virtual {v5, v8, v7, v2}, Lcom/tencent/bugly/proguard/hv;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x2

    if-eqz v4, :cond_b

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v7, 0x0

    :cond_8
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lcom/tencent/bugly/proguard/jj;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_8

    move-object v10, v9

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    xor-int/2addr v10, v3

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v7, v10

    sget-object v10, Lcom/tencent/bugly/proguard/hz;->va:Lcom/tencent/bugly/proguard/hz$a;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, "key"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v8

    check-cast v11, Ljava/lang/CharSequence;

    const-string v8, "_"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    xor-int/2addr v10, v3

    const-string v11, ""

    if-eqz v10, :cond_9

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_5

    :cond_9
    move-object v10, v11

    :goto_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-lt v12, v5, :cond_a

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Ljava/lang/String;

    :cond_a
    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v6, v8, v9, v2}, Lcom/tencent/bugly/proguard/jj;->a(Ljava/lang/String;Lkotlin/Pair;Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_4

    :cond_b
    const/4 v7, 0x0

    :cond_c
    sget-boolean v4, Lcom/tencent/bugly/proguard/km;->yv:Z

    if-eqz v4, :cond_d

    sget-object v4, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "RMonitor_looper"

    aput-object v6, v5, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "getLooperMetricData, pluginName: looper_metric, count: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", result: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-virtual {v4, v5}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_d
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/bg;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/jg;->wB:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    invoke-static {}, Lcom/tencent/bugly/proguard/jk;->fU()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v2, v0, Lcom/tencent/bugly/proguard/jg;->wB:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_f
    return-void
.end method

.method private final fR()V
    .locals 5

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "RMonitor_report_cache"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "reportDbDataOneByOne, size:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/bugly/proguard/jg;->wB:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " listIndex:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/tencent/bugly/proguard/jg;->wC:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/jg;->wB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/tencent/bugly/proguard/jg;->wC:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/tencent/bugly/proguard/jg;->wC:I

    iget-object v1, p0, Lcom/tencent/bugly/proguard/jg;->wB:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/jg;->wB:Ljava/util/ArrayList;

    iget v1, p0, Lcom/tencent/bugly/proguard/jg;->wC:I

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "reportDataList[listIndex - 1]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/tencent/bugly/proguard/bg;

    iget-object v1, v0, Lcom/tencent/bugly/proguard/bg;->cU:Lcom/tencent/bugly/proguard/bh;

    sget-object v2, Lcom/tencent/bugly/proguard/bh$c;->do:Lcom/tencent/bugly/proguard/bh$c;

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/bh;->a(Lcom/tencent/bugly/proguard/bh$c;)V

    iget-object v1, v0, Lcom/tencent/bugly/proguard/bg;->cU:Lcom/tencent/bugly/proguard/bh;

    iput v3, v1, Lcom/tencent/bugly/proguard/bh;->df:I

    iget-object v1, v0, Lcom/tencent/bugly/proguard/bg;->cU:Lcom/tencent/bugly/proguard/bh;

    iput-boolean v3, v1, Lcom/tencent/bugly/proguard/bh;->dc:Z

    sget-object v1, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/tencent/bugly/proguard/je;->a(Lcom/tencent/bugly/proguard/bg;Lcom/tencent/bugly/proguard/ba$a;)Z

    sget-object v0, Lcom/tencent/bugly/proguard/je;->wr:Lcom/tencent/bugly/proguard/je;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/jg;->wD:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/je;->f(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "start collect cached data."

    const-string v2, "RMonitor_report_cache"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "deleteAllSentOrOverTime"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/ku;->zf:Lcom/tencent/bugly/proguard/ku$a;

    sget-object v0, Lcom/tencent/bugly/proguard/ku;->zf:Lcom/tencent/bugly/proguard/ku$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/ku$a;->be()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dir"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, 0x1

    :try_start_0
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v1, v3, v1}, Lkotlin/io/FilesKt;->walk$default(Ljava/io/File;Lkotlin/io/FileWalkDirection;ILjava/lang/Object;)Lkotlin/io/FileTreeWalk;

    move-result-object v0

    check-cast v0, Lkotlin/sequences/Sequence;

    sget-object v6, Lcom/tencent/bugly/proguard/ku$a$a;->zg:Lcom/tencent/bugly/proguard/ku$a$a;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v6}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    sub-long v7, v4, v7

    const-wide/32 v9, 0xf731400

    cmp-long v11, v7, v9

    if-lez v11, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v4, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v5, "RMonitor_common_FileUtil"

    invoke-virtual {v4, v5, v0}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    sget-object v0, Lcom/tencent/bugly/proguard/hu;->uF:Lcom/tencent/bugly/proguard/hu;

    sget-object v4, Lcom/tencent/bugly/proguard/jb;->wi:Lcom/tencent/bugly/proguard/jb;

    invoke-static {v0, v4}, Lcom/tencent/bugly/proguard/jg;->a(Lcom/tencent/bugly/proguard/hu;Lcom/tencent/bugly/proguard/jb;)V

    sget-object v0, Lcom/tencent/bugly/proguard/hu;->uH:Lcom/tencent/bugly/proguard/hu;

    sget-object v4, Lcom/tencent/bugly/proguard/jb;->wj:Lcom/tencent/bugly/proguard/jb;

    invoke-static {v0, v4}, Lcom/tencent/bugly/proguard/jg;->a(Lcom/tencent/bugly/proguard/hu;Lcom/tencent/bugly/proguard/jb;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/jk;->fT()V

    sget-object v0, Lcom/tencent/bugly/proguard/id;->uK:Lcom/tencent/bugly/proguard/hw;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/tencent/bugly/proguard/hw;->uO:Lcom/tencent/bugly/proguard/hv;

    if-eqz v0, :cond_2

    sget-object v4, Lcom/tencent/bugly/proguard/ib;->vh:Lcom/tencent/bugly/proguard/ib$a;

    const-string v4, "report_data"

    invoke-virtual {v0, v4}, Lcom/tencent/bugly/proguard/hv;->aI(Ljava/lang/String;)I

    :cond_2
    new-instance v0, Lcom/tencent/bugly/proguard/jj;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/jj;-><init>()V

    invoke-static {}, Lcom/tencent/bugly/proguard/jj;->fS()V

    sget-object v0, Lcom/tencent/bugly/proguard/id;->uK:Lcom/tencent/bugly/proguard/hw;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/tencent/bugly/proguard/hw;->uO:Lcom/tencent/bugly/proguard/hv;

    if-eqz v0, :cond_3

    sget-object v4, Lcom/tencent/bugly/proguard/ia;->vc:Lcom/tencent/bugly/proguard/ia$a;

    const-string v4, "link_data"

    invoke-virtual {v0, v4}, Lcom/tencent/bugly/proguard/hv;->aI(Ljava/lang/String;)I

    :cond_3
    sget-object v0, Lcom/tencent/bugly/proguard/aq;->cl:Lcom/tencent/bugly/proguard/aq;

    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->Z()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/tencent/bugly/proguard/aq;->cl:Lcom/tencent/bugly/proguard/aq;

    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->aa()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/tencent/bugly/proguard/kq;->yT:Lcom/tencent/bugly/proguard/kq;

    sget-object v0, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/kq;->U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/tencent/bugly/proguard/bm;->as()Lcom/tencent/bugly/proguard/bm;

    move-result-object v0

    const-string v4, "PluginLinkDataProxy.getInstance()"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/bm;->at()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_7

    invoke-static {}, Lcom/tencent/bugly/proguard/bm;->as()Lcom/tencent/bugly/proguard/bm;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/bm;->c(Lcom/tencent/bugly/proguard/bi;)V

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/jg;->fQ()V

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/jg;->fR()V

    return-void

    :cond_7
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "should not report cached data."

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    return-void
.end method
