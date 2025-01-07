.class public final Lcom/tencent/bugly/proguard/jj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/jj$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0006J\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0006J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0006\u0010\r\u001a\u00020\u000eJJ\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u00132\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00062\u0016\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00080\u0015j\u0008\u0012\u0004\u0012\u00020\u0008`\u0016H\u0002J2\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u000c2\"\u0010\u0019\u001a\u001e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000c0\u001aj\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000c`\u001bJ \u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00062\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006H\u0002\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/tencent/rmonitor/base/reporter/builder/LooperMetricReportDataBuilder;",
        "",
        "()V",
        "buildLooperMetricData",
        "Lorg/json/JSONObject;",
        "list",
        "",
        "buildLooperMetricReportDataAndClearCache",
        "Lcom/tencent/bugly/common/reporter/data/ReportData;",
        "checkMeta",
        "",
        "meta",
        "Lcom/tencent/rmonitor/base/meta/DropFrameResultMeta;",
        "deleteExpiredLooperMetricData",
        "",
        "makeReportData",
        "pluginName",
        "",
        "launchID",
        "Lkotlin/Pair;",
        "result",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "mergeSceneData",
        "data",
        "sceneMap",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
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
.field public static final wM:Lcom/tencent/bugly/proguard/jj$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/jj$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/jj$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/jj;->wM:Lcom/tencent/bugly/proguard/jj$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lkotlin/Pair;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/bg;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x64

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v2, v4}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v2

    invoke-interface {p2, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    const-string v4, "list"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_0
    const-string v1, "metrics"

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "stage"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/bb;->a([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v5, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    check-cast v5, Landroid/content/Context;

    const-string v6, "looper"

    sget-object v7, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    invoke-static {v5, v6, p0, v7}, Lcom/tencent/bugly/proguard/bb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/am;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "launch_id"

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "process_launch_id"

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "Attributes"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Body"

    invoke-virtual {v5, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lcom/tencent/bugly/proguard/bg;

    sget-object v4, Lcom/tencent/bugly/proguard/id;->uv:Lcom/tencent/bugly/proguard/am;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/am;->bA:Ljava/lang/String;

    const-string v6, "params"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v4, v3, p0, v5}, Lcom/tencent/bugly/proguard/bg;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto/16 :goto_0

    :cond_1
    sget-boolean v1, Lcom/tencent/bugly/proguard/km;->yv:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "RMonitor_looper"

    aput-object v4, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "makeReportData, pluginName: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", launchID: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", listSize: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", resultSize: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static fS()V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf731400

    sub-long/2addr v0, v2

    sget-object v2, Lcom/tencent/bugly/proguard/id;->uK:Lcom/tencent/bugly/proguard/hw;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v5, "plugin_name=? AND occur_time<?"

    const-string v6, "drop_frame"

    const-string v7, "looper_metric"

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/tencent/bugly/proguard/hw;->uO:Lcom/tencent/bugly/proguard/hv;

    if-eqz v2, :cond_0

    sget-object v9, Lcom/tencent/bugly/proguard/hz;->va:Lcom/tencent/bugly/proguard/hz$a;

    new-array v9, v4, [Ljava/lang/String;

    aput-object v7, v9, v8

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-virtual {v2, v6, v5, v9}, Lcom/tencent/bugly/proguard/hv;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v9, "looper"

    if-lez v2, :cond_1

    sget-object v2, Lcom/tencent/bugly/proguard/re;->Ic:Lcom/tencent/bugly/proguard/re$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/re$a;->js()Lcom/tencent/bugly/proguard/re;

    move-result-object v2

    sget-object v10, Lcom/tencent/bugly/proguard/jb;->wi:Lcom/tencent/bugly/proguard/jb;

    invoke-virtual {v2, v9, v7, v10}, Lcom/tencent/bugly/proguard/re;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/jb;)V

    :cond_1
    sget-object v2, Lcom/tencent/bugly/proguard/id;->uK:Lcom/tencent/bugly/proguard/hw;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/tencent/bugly/proguard/hw;->uO:Lcom/tencent/bugly/proguard/hv;

    if-eqz v2, :cond_2

    sget-object v10, Lcom/tencent/bugly/proguard/hz;->va:Lcom/tencent/bugly/proguard/hz$a;

    new-array v4, v4, [Ljava/lang/String;

    aput-object v7, v4, v8

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {v2, v6, v5, v4}, Lcom/tencent/bugly/proguard/hv;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    :cond_2
    if-lez v8, :cond_3

    sget-object v0, Lcom/tencent/bugly/proguard/re;->Ic:Lcom/tencent/bugly/proguard/re$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/re$a;->js()Lcom/tencent/bugly/proguard/re;

    move-result-object v0

    sget-object v1, Lcom/tencent/bugly/proguard/jb;->wi:Lcom/tencent/bugly/proguard/jb;

    invoke-virtual {v0, v9, v7, v1}, Lcom/tencent/bugly/proguard/re;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/jb;)V

    :cond_3
    return-void
.end method

.method public static u(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    new-instance v2, Lcom/tencent/bugly/proguard/ie;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/ie;-><init>()V

    invoke-virtual {v2, v1}, Lcom/tencent/bugly/proguard/ie;->h(Lorg/json/JSONObject;)V

    const-string v1, "data"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sceneMap"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v2, Lcom/tencent/bugly/proguard/ie;->vs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v2, Lcom/tencent/bugly/proguard/ie;->vs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/ie;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/ie;->b(Lcom/tencent/bugly/proguard/ie;)V

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/ie;->vs:Ljava/lang/String;

    const-string v4, "dropFrameResult"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    iget-object v3, v2, Lcom/tencent/bugly/proguard/ie;->vs:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/ie;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/pw;->d(Lcom/tencent/bugly/proguard/ie;)I

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/ie;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ie;->fG()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_7
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method
