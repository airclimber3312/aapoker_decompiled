.class public final Lcom/tencent/bugly/proguard/kh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u00c6\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010.\u001a\u00020/H\u0007J\u0008\u00100\u001a\u00020/H\u0002J\n\u00101\u001a\u0004\u0018\u000102H\u0002J\u0006\u00103\u001a\u000204J\u0010\u00105\u001a\u00020/2\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0018\u00105\u001a\u00020/2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u00106\u001a\u000207H\u0007J\u0010\u00108\u001a\u00020/2\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0010\u00109\u001a\u0002072\u0008\u0010:\u001a\u0004\u0018\u00010;J\u0006\u0010<\u001a\u000207J\u0010\u0010=\u001a\u0002072\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u001a\u0010>\u001a\u00020/2\u0008\u0010?\u001a\u0004\u0018\u00010!2\u0006\u0010@\u001a\u00020\u0005H\u0002J\"\u0010>\u001a\u00020/2\u0008\u0010?\u001a\u0004\u0018\u00010!2\u0006\u0010@\u001a\u00020\u00052\u0006\u0010A\u001a\u00020\u001cH\u0002J\u001a\u0010B\u001a\u00020/2\u0006\u0010?\u001a\u00020!2\u0008\u0010C\u001a\u0004\u0018\u00010DH\u0016J\u0010\u0010E\u001a\u00020/2\u0006\u0010?\u001a\u00020!H\u0016J\u0010\u0010F\u001a\u00020/2\u0006\u0010?\u001a\u00020!H\u0016J\u001a\u0010G\u001a\u00020/2\u0006\u0010?\u001a\u00020!2\u0008\u0010C\u001a\u0004\u0018\u00010DH\u0016J\u0010\u0010H\u001a\u00020/2\u0006\u0010?\u001a\u00020!H\u0016J\u001a\u0010I\u001a\u00020/2\u0006\u0010?\u001a\u00020!2\u0008\u0010J\u001a\u0004\u0018\u00010DH\u0016J\u0010\u0010K\u001a\u00020/2\u0006\u0010?\u001a\u00020!H\u0016J\u0010\u0010L\u001a\u00020/2\u0006\u0010?\u001a\u00020!H\u0016J\u0010\u0010M\u001a\u00020/2\u0006\u0010N\u001a\u00020OH\u0016J\u0008\u0010P\u001a\u00020/H\u0016J\u0010\u0010Q\u001a\u00020/2\u0006\u0010R\u001a\u00020\u0005H\u0016J\u0018\u0010S\u001a\u00020/2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u00106\u001a\u000207H\u0002J\u0010\u0010T\u001a\u00020/2\u0006\u0010A\u001a\u00020\u001cH\u0007J\u0006\u0010U\u001a\u00020/J\u0010\u0010V\u001a\u00020/2\u0006\u0010A\u001a\u00020\u001cH\u0007J\u0018\u0010W\u001a\u00020/2\u0006\u0010X\u001a\u00020\u00052\u0006\u00106\u001a\u000207H\u0002J\u0010\u0010Y\u001a\u00020/2\u0006\u0010Z\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\u0008\u0012\u0004\u0012\u00020\u000e`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\u0008\u0012\u0004\u0012\u00020\u000e`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u000eX\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u001d\u001a\u0012\u0012\u0004\u0012\u00020\u00050\rj\u0008\u0012\u0004\u0012\u00020\u0005`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\"\u0010&\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010#\"\u0004\u0008(\u0010%R\"\u0010)\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010#\"\u0004\u0008+\u0010%R\u000e\u0010,\u001a\u00020-X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006["
    }
    d2 = {
        "Lcom/tencent/rmonitor/common/lifecycle/LifecycleCallback;",
        "Landroid/app/Application$ActivityLifecycleCallbacks;",
        "Landroid/content/ComponentCallbacks2;",
        "()V",
        "ACTIVITY_ON_CREATE",
        "",
        "ACTIVITY_ON_DESTROY",
        "ACTIVITY_ON_PAUSE",
        "ACTIVITY_ON_POST_CREATE",
        "ACTIVITY_ON_RESUME",
        "ACTIVITY_ON_START",
        "ACTIVITY_ON_STOP",
        "APP_LIFECYCLE_DES",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "APP_STATE_BACKGROUND",
        "APP_STATE_DESC",
        "APP_STATE_FOREGROUND",
        "APP_STATE_UNKNOWN",
        "BACKGROUND",
        "FOREGROUND",
        "INIT_HASH",
        "TAG",
        "application",
        "Landroid/app/Application;",
        "callbackSet",
        "Ljava/util/concurrent/CopyOnWriteArraySet;",
        "Lcom/tencent/rmonitor/common/lifecycle/IActivityStateCallback;",
        "foregroundActivityList",
        "lastAppState",
        "lastResumeActivityRef",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/app/Activity;",
        "getLastResumeActivityRef",
        "()Ljava/lang/ref/WeakReference;",
        "setLastResumeActivityRef",
        "(Ljava/lang/ref/WeakReference;)V",
        "lastStartActivityRef",
        "getLastStartActivityRef",
        "setLastStartActivityRef",
        "lastStopActivityRef",
        "getLastStopActivityRef",
        "setLastStopActivityRef",
        "operationLog",
        "Lcom/tencent/rmonitor/common/lifecycle/OperationLog;",
        "clear",
        "",
        "clearAllForegroundActivity",
        "getHandler",
        "Landroid/os/Handler;",
        "getOperationLog",
        "Lorg/json/JSONArray;",
        "init",
        "isForeground",
        "",
        "initOnApplicationOnCreate",
        "isCurrentAppOnForeground",
        "context",
        "Landroid/content/Context;",
        "isCurrentForeground",
        "isInitWithSameContextBefore",
        "notify",
        "activity",
        "state",
        "callback",
        "onActivityCreated",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onActivityDestroyed",
        "onActivityPaused",
        "onActivityPostCreated",
        "onActivityResumed",
        "onActivitySaveInstanceState",
        "outState",
        "onActivityStarted",
        "onActivityStopped",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onLowMemory",
        "onTrimMemory",
        "level",
        "realInit",
        "register",
        "reset",
        "unRegister",
        "updateAppForegroundState",
        "activityHash",
        "updateAppState",
        "appState",
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
.field private static xQ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static final xW:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final xX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final xY:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/tencent/bugly/proguard/ke;",
            ">;"
        }
    .end annotation
.end field

.field private static xZ:I

.field private static final ya:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static yb:Landroid/app/Application;

.field private static final yc:Lcom/tencent/bugly/proguard/ki;

.field private static yd:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static ye:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public static final yf:Lcom/tencent/bugly/proguard/kh;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/tencent/bugly/proguard/kh;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/kh;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/kh;->yf:Lcom/tencent/bugly/proguard/kh;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/kh;->xW:Ljava/util/ArrayList;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "created"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "started"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "resumed"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "paused"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "stopped"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "destroyed"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "foreground"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "background"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "postCreated"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/kh;->xX:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/kh;->xY:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/kh;->ya:Ljava/util/ArrayList;

    new-instance v0, Lcom/tencent/bugly/proguard/ki;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ki;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/kh;->yc:Lcom/tencent/bugly/proguard/ki;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static P(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_6

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    const/4 v2, 0x1

    if-eqz p0, :cond_3

    check-cast p0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v5, :cond_1

    iget v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v1, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    check-cast v3, Ljava/util/List;

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_7

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_4
    const/4 v1, 0x0

    :goto_3
    :try_start_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_5

    :catchall_0
    move v0, v1

    goto :goto_4

    :cond_6
    :try_start_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-direct {p0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_7
    :goto_5
    return v0
.end method

.method private static a(Landroid/app/Activity;I)V
    .locals 4

    :try_start_0
    const-string v0, ""

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "activity.javaClass.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/tencent/bugly/proguard/kh;->yc:Lcom/tencent/bugly/proguard/ki;

    sget-object v2, Lcom/tencent/bugly/proguard/kh;->xW:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "APP_LIFECYCLE_DES[state]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/tencent/bugly/proguard/ki;->D(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/kh;->xY:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/ke;

    const-string v2, "callback"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/tencent/bugly/proguard/kh;->a(Landroid/app/Activity;ILcom/tencent/bugly/proguard/ke;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v0, "RMonitor_looper_lifecycle"

    const-string v1, "notify"

    invoke-virtual {p1, v0, v1, p0}, Lcom/tencent/bugly/proguard/km;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private static a(Landroid/app/Activity;ILcom/tencent/bugly/proguard/ke;)V
    .locals 1

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p2, p0}, Lcom/tencent/bugly/proguard/ke;->b(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_1
    invoke-interface {p2, p0}, Lcom/tencent/bugly/proguard/ke;->f(Landroid/app/Activity;)V

    return-void

    :cond_2
    invoke-interface {p2, p0}, Lcom/tencent/bugly/proguard/ke;->e(Landroid/app/Activity;)V

    return-void

    :cond_3
    invoke-interface {p2, p0}, Lcom/tencent/bugly/proguard/ke;->d(Landroid/app/Activity;)V

    return-void

    :cond_4
    invoke-interface {p2, p0}, Lcom/tencent/bugly/proguard/ke;->c(Landroid/app/Activity;)V

    return-void

    :cond_5
    invoke-interface {p2, p0}, Lcom/tencent/bugly/proguard/ke;->a(Landroid/app/Activity;)V

    return-void

    :cond_6
    const/4 p0, 0x7

    if-eq p1, p0, :cond_8

    const/16 p0, 0x8

    if-eq p1, p0, :cond_7

    goto :goto_1

    :cond_7
    invoke-interface {p2}, Lcom/tencent/bugly/proguard/ke;->eh()V

    :goto_1
    return-void

    :cond_8
    invoke-interface {p2}, Lcom/tencent/bugly/proguard/ke;->eg()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string p2, "RMonitor_looper_lifecycle"

    const-string v0, "notify"

    invoke-virtual {p1, p2, v0, p0}, Lcom/tencent/bugly/proguard/km;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final a(Landroid/app/Application;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "application"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/kh;->a(Landroid/app/Application;Z)V

    return-void
.end method

.method private static a(Landroid/app/Application;Z)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "application"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/cn;->bk()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/kh;->b(Landroid/app/Application;Z)V

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/kh;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/tencent/bugly/proguard/kh$a;

    invoke-direct {v1, p0, p1}, Lcom/tencent/bugly/proguard/kh$a;-><init>(Landroid/app/Application;Z)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public static final a(Lcom/tencent/bugly/proguard/ke;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/proguard/kh;->xY:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_looper_lifecycle"

    const-string v2, "register"

    invoke-virtual {v0, v1, v2, p0}, Lcom/tencent/bugly/proguard/km;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic a(Lcom/tencent/bugly/proguard/kh;Landroid/app/Application;Z)V
    .locals 0

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/kh;->b(Landroid/app/Application;Z)V

    return-void
.end method

.method public static final b(Landroid/app/Application;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "application"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/kh;->yb:Landroid/app/Application;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/kh;->P(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/kh;->a(Landroid/app/Application;Z)V

    return-void
.end method

.method private static b(Landroid/app/Application;Z)V
    .locals 5

    sget-object v0, Lcom/tencent/bugly/proguard/kh;->yb:Landroid/app/Application;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/kh;->yb:Landroid/app/Application;

    sput-object p0, Lcom/tencent/bugly/proguard/kh;->yb:Landroid/app/Application;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/tencent/bugly/proguard/kh;->yf:Lcom/tencent/bugly/proguard/kh;

    move-object v2, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    check-cast v1, Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/kh;->m(IZ)V

    sget-boolean v1, Lcom/tencent/bugly/proguard/km;->yv:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "RMonitor_looper_lifecycle"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "realInit, appState: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/tencent/bugly/proguard/kh;->xX:Ljava/util/ArrayList;

    sget v4, Lcom/tencent/bugly/proguard/kh;->xZ:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isForeground: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_2
    sget-object p1, Lcom/tencent/bugly/proguard/kh;->yf:Lcom/tencent/bugly/proguard/kh;

    move-object v0, p1

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    check-cast p1, Landroid/content/ComponentCallbacks;

    invoke-virtual {p0, p1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public static final b(Lcom/tencent/bugly/proguard/ke;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/proguard/kh;->xY:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_looper_lifecycle"

    const-string v2, "unRegister"

    invoke-virtual {v0, v1, v2, p0}, Lcom/tencent/bugly/proguard/km;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static getHandler()Landroid/os/Handler;
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static gg()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/tencent/bugly/proguard/kh;->xQ:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static gh()Z
    .locals 2

    sget v0, Lcom/tencent/bugly/proguard/kh;->xZ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static gi()Lorg/json/JSONArray;
    .locals 6

    sget-object v0, Lcom/tencent/bugly/proguard/kh;->yc:Lcom/tencent/bugly/proguard/ki;

    iget v1, v0, Lcom/tencent/bugly/proguard/ki;->yj:I

    const/16 v2, 0x1e

    if-le v1, v2, :cond_0

    add-int/lit8 v2, v1, -0x1e

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v1, -0x1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    if-lt v1, v2, :cond_1

    :goto_1
    rem-int/lit8 v4, v1, 0x1e

    iget-object v5, v0, Lcom/tencent/bugly/proguard/ki;->yi:[Ljava/lang/String;

    aget-object v4, v5, v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method private static m(IZ)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/tencent/bugly/proguard/kh;->ya:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/tencent/bugly/proguard/kh;->ya:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    sget-object p0, Lcom/tencent/bugly/proguard/kh;->ya:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Lcom/tencent/bugly/proguard/kh;->z(I)V

    return-void
.end method

.method private static z(I)V
    .locals 5

    sget v0, Lcom/tencent/bugly/proguard/kh;->xZ:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v0, :cond_1

    sput p0, Lcom/tencent/bugly/proguard/kh;->xZ:I

    const/4 v3, 0x0

    if-ne p0, v2, :cond_0

    const/4 p0, 0x7

    :goto_0
    invoke-static {v3, p0}, Lcom/tencent/bugly/proguard/kh;->a(Landroid/app/Activity;I)V

    goto :goto_1

    :cond_0
    if-ne p0, v1, :cond_1

    const/16 p0, 0x8

    goto :goto_0

    :cond_1
    :goto_1
    sget-boolean p0, Lcom/tencent/bugly/proguard/km;->yv:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "RMonitor_looper_lifecycle"

    aput-object v4, v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateAppState, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/tencent/bugly/proguard/kh;->xX:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/tencent/bugly/proguard/kh;->xZ:I

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", curForeCount: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/bugly/proguard/kh;->ya:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/kh;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/kh;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/kh;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public final onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x9

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/kh;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/kd;->gb()Lcom/tencent/bugly/proguard/kd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/kd;->h(Landroid/app/Activity;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/tencent/bugly/proguard/kh;->xQ:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/kh;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/tencent/bugly/proguard/kh;->yd:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/app/Activity;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/kh;->m(IZ)V

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/kh;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/tencent/bugly/proguard/kh;->ye:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/app/Activity;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/kh;->m(IZ)V

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/kh;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 5

    const/16 v0, 0x14

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq p1, v0, :cond_0

    const/16 v0, 0x28

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    if-ne v0, v2, :cond_2

    sget-boolean v0, Lcom/tencent/bugly/proguard/km;->yv:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "RMonitor_looper_lifecycle"

    aput-object v4, v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "onTrimMemory, appState: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/tencent/bugly/proguard/kh;->xX:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", level: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    :cond_1
    sget-object p1, Lcom/tencent/bugly/proguard/kh;->ya:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-static {v2}, Lcom/tencent/bugly/proguard/kh;->z(I)V

    :cond_2
    return-void
.end method
