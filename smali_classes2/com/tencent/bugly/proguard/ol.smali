.class public final Lcom/tencent/bugly/proguard/ol;
.super Lcom/tencent/bugly/proguard/oj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/ol$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000 $2\u00020\u0001:\u0001$B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000bH\u0016J\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0002J%\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0019H\u0002\u00a2\u0006\u0002\u0010\u001bJ\u0018\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J#\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019H\u0016\u00a2\u0006\u0002\u0010 J\u0006\u0010!\u001a\u00020\u000bJ\u0010\u0010\"\u001a\u00020\u000b2\u0006\u0010#\u001a\u00020\u0008H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/tencent/rmonitor/looper/provider/StackQueueProvider;",
        "Lcom/tencent/rmonitor/looper/provider/MultiStackProvider;",
        "()V",
        "realRecycleStackQueueCount",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "stackQueueMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "Lcom/tencent/rmonitor/looper/meta/StackQueue;",
        "tryRecycleStackQueueCount",
        "beginTrace",
        "",
        "monitorInfo",
        "Lcom/tencent/rmonitor/looper/MonitorInfo;",
        "checkStackTraceNormal",
        "dealStackFrameQueue",
        "Lorg/json/JSONObject;",
        "stackFrameQueue",
        "",
        "Lcom/tencent/rmonitor/looper/meta/StackFrame;",
        "dealStackTrace",
        "",
        "buffer",
        "Ljava/lang/StringBuffer;",
        "stackTrace",
        "",
        "Ljava/lang/StackTraceElement;",
        "(Ljava/lang/StringBuffer;[Ljava/lang/StackTraceElement;)Ljava/lang/String;",
        "endTrace",
        "isOverThreshold",
        "",
        "onTrace",
        "(Lcom/tencent/rmonitor/looper/MonitorInfo;[Ljava/lang/StackTraceElement;)V",
        "recycleRemainStackQueue",
        "recycleStackQueue",
        "stackQueue",
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
.field public static final DA:Lcom/tencent/bugly/proguard/ol$a;


# instance fields
.field private final Dx:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/tencent/bugly/proguard/of;",
            ">;"
        }
    .end annotation
.end field

.field private final Dy:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final Dz:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/ol$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/ol$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/ol;->DA:Lcom/tencent/bugly/proguard/ol$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/oj;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ol;->Dx:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ol;->Dy:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ol;->Dz:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;[Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_0

    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "buffer.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final synthetic a(Lcom/tencent/bugly/proguard/ol;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 9

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x800

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/bugly/proguard/oe;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "type"

    const-string v7, "normal"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "thread_name"

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ol;->hZ()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "thread_id"

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ol;->ia()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "index"

    iget v7, v4, Lcom/tencent/bugly/proguard/oe;->CU:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "repeat_count"

    iget v7, v4, Lcom/tencent/bugly/proguard/oe;->CV:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "timestamp"

    iget-wide v7, v4, Lcom/tencent/bugly/proguard/oe;->startTime:J

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "end_time"

    iget-wide v7, v4, Lcom/tencent/bugly/proguard/oe;->CT:J

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/oe;->CW:[Ljava/lang/StackTraceElement;

    invoke-static {v1, v4}, Lcom/tencent/bugly/proguard/ol;->a(Ljava/lang/StringBuffer;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "call_stack"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_1

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "stacks"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static final synthetic a(Lcom/tencent/bugly/proguard/ol;Lcom/tencent/bugly/proguard/of;)V
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/of;->Dc:Lcom/tencent/bugly/proguard/of$a;

    invoke-static {p1}, Lcom/tencent/bugly/proguard/of$a;->a(Lcom/tencent/bugly/proguard/of;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ol;->Dz:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ol;->Dx:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/tencent/bugly/proguard/ol;->Dx:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object p1

    const-string v0, "stackQueueMap.keys()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->iterator(Ljava/util/Enumeration;)Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ol;->Dx:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/of;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ol;->Dy:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    sget-object v1, Lcom/tencent/bugly/proguard/of;->Dc:Lcom/tencent/bugly/proguard/of$a;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/of$a;->a(Lcom/tencent/bugly/proguard/of;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ol;->Dz:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ol;->hY()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/nz;Z)V
    .locals 4

    const-string v0, "monitorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/tencent/bugly/proguard/nz;->CJ:Z

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ol;->Dx:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p1, Lcom/tencent/bugly/proguard/nz;->CE:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Lcom/tencent/bugly/proguard/of;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v2, "(if (isDetectedLongLag) \u2026ime)\n        }) ?: return"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    new-instance p2, Lcom/tencent/bugly/proguard/ol$b;

    invoke-direct {p2, p0, p1}, Lcom/tencent/bugly/proguard/ol$b;-><init>(Lcom/tencent/bugly/proguard/ol;Lcom/tencent/bugly/proguard/nz;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    const-string p1, "callback"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, v1, Lcom/tencent/bugly/proguard/of;->Da:Lcom/tencent/bugly/proguard/oe;

    invoke-virtual {v1, p1}, Lcom/tencent/bugly/proguard/of;->b(Lcom/tencent/bugly/proguard/oe;)V

    const/4 p1, 0x0

    iput-object p1, v1, Lcom/tencent/bugly/proguard/of;->Da:Lcom/tencent/bugly/proguard/oe;

    iget-object p1, v1, Lcom/tencent/bugly/proguard/of;->CZ:Ljava/util/List;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/tencent/bugly/proguard/oj;->Dm:Landroid/os/Handler;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/tencent/bugly/proguard/ol;->Dy:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance p2, Lcom/tencent/bugly/proguard/ol$c;

    invoke-direct {p2, p0, v1}, Lcom/tencent/bugly/proguard/ol$c;-><init>(Lcom/tencent/bugly/proguard/ol;Lcom/tencent/bugly/proguard/of;)V

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ol;->hY()V

    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/nz;[Ljava/lang/StackTraceElement;)V
    .locals 6

    const-string v0, "monitorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stackTrace"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ol;->Dx:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v1, p1, Lcom/tencent/bugly/proguard/nz;->CE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/of;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/ol;->f(Lcom/tencent/bugly/proguard/nz;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/tencent/bugly/proguard/of;->Dc:Lcom/tencent/bugly/proguard/of$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/of;->hV()Lcom/tencent/bugly/proguard/od;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/od;->hU()Lcom/tencent/bugly/proguard/ck;

    move-result-object v0

    const-string v1, "poolProvider.pool"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lcom/tencent/bugly/proguard/of;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ck;->a(Ljava/lang/Class;)Lcom/tencent/bugly/proguard/ck$b;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/tencent/bugly/proguard/of;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ol;->Dx:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v1, Ljava/util/Map;

    iget-wide v2, p1, Lcom/tencent/bugly/proguard/nz;->CE:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "RMonitor_looper_StackProvider"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deal msg not latest msg on trace, deal: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p1, Lcom/tencent/bugly/proguard/nz;->CE:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Lcom/tencent/bugly/proguard/of;->c([Ljava/lang/StackTraceElement;)V

    :cond_3
    return-void
.end method

.method public final g(Lcom/tencent/bugly/proguard/nz;)V
    .locals 1

    const-string v0, "monitorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final hY()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ol;->Dx:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ol;->Dy:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/bugly/proguard/ol;->Dz:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x14

    if-gt v0, v2, :cond_2

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    const/16 v0, 0x32

    if-ge v1, v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/ol;->D(Z)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/ol;->D(Z)V

    return-void
.end method
