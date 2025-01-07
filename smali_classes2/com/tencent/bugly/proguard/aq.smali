.class public final Lcom/tencent/bugly/proguard/aq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000[\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008*\u0001\u0019\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u001b\u001a\u00020\u001cH\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0008\u0010\u001f\u001a\u00020\u001eH\u0002J\u000e\u0010 \u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\rJ\u0008\u0010\"\u001a\u0004\u0018\u00010\u0004J\u0006\u0010#\u001a\u00020\u001cJ\u0006\u0010$\u001a\u00020\rJ\u0006\u0010%\u001a\u00020\rJ\u0018\u0010&\u001a\u00020\r2\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*H\u0002J\u0008\u0010+\u001a\u00020\u001cH\u0002J\u0018\u0010,\u001a\u00020\u00072\u0006\u0010-\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u000e\u0010.\u001a\u00020\u001c2\u0006\u0010/\u001a\u00020\u0016J\u0008\u00100\u001a\u00020\u001cH\u0002J\u0006\u00101\u001a\u00020\u001cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u00020\u00078BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000f\"\u0004\u0008\u0013\u0010\u0011R\"\u0010\u0014\u001a\u0016\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015j\n\u0012\u0004\u0012\u00020\u0016\u0018\u0001`\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001a\u00a8\u00062"
    }
    d2 = {
        "Lcom/tencent/bugly/common/network/NetworkWatcher;",
        "",
        "()V",
        "ACTION_CONN_CHANGE",
        "",
        "TAG",
        "apn",
        "Lcom/tencent/bugly/common/network/Apn;",
        "getApn",
        "()Lcom/tencent/bugly/common/network/Apn;",
        "handler",
        "Landroid/os/Handler;",
        "isInited",
        "",
        "isNetAvailable",
        "()Z",
        "setNetAvailable",
        "(Z)V",
        "isWifiAvailable",
        "setWifiAvailable",
        "mListeners",
        "Ljava/util/HashSet;",
        "Lcom/tencent/bugly/common/network/INetworkStateListener;",
        "Lkotlin/collections/HashSet;",
        "netStatusReceive",
        "com/tencent/bugly/common/network/NetworkWatcher$netStatusReceive$1",
        "Lcom/tencent/bugly/common/network/NetworkWatcher$netStatusReceive$1;",
        "checkConnInfo",
        "",
        "networkState",
        "Lcom/tencent/bugly/common/network/NetworkState;",
        "getMobileDetailState",
        "getNetworkState",
        "fetchMobileDetailState",
        "getOperatorName",
        "init",
        "isNetworkConnectedRealtime",
        "isWiFiConnectedRealtime",
        "isWiFiType",
        "connManager",
        "Landroid/net/ConnectivityManager;",
        "activeNetInfo",
        "Landroid/net/NetworkInfo;",
        "notifyListener",
        "processApn",
        "it",
        "registerListener",
        "listener",
        "resetApn",
        "unInit",
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
.field private static volatile ad:Z

.field private static cg:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/tencent/bugly/proguard/ao;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile ch:Lcom/tencent/bugly/proguard/an;

.field private static volatile ci:Z

.field private static volatile cj:Z

.field private static final ck:Lcom/tencent/bugly/proguard/aq$a;

.field public static final cl:Lcom/tencent/bugly/proguard/aq;

.field private static handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/aq;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/aq;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/aq;->cl:Lcom/tencent/bugly/proguard/aq;

    sget-object v0, Lcom/tencent/bugly/proguard/an;->bF:Lcom/tencent/bugly/proguard/an;

    sput-object v0, Lcom/tencent/bugly/proguard/aq;->ch:Lcom/tencent/bugly/proguard/an;

    new-instance v0, Lcom/tencent/bugly/proguard/aq$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/aq$a;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/aq;->ck:Lcom/tencent/bugly/proguard/aq$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static R()Lcom/tencent/bugly/proguard/an;
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/aq;->ch:Lcom/tencent/bugly/proguard/an;

    sget-object v1, Lcom/tencent/bugly/proguard/an;->bF:Lcom/tencent/bugly/proguard/an;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->W()V

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/aq;->ch:Lcom/tencent/bugly/proguard/an;

    return-object v0
.end method

.method public static S()V
    .locals 7

    const-class v0, Lcom/tencent/bugly/proguard/aq;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/proguard/aq;->ad:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/tencent/bugly/proguard/cc;->aX()Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v3, Lcom/tencent/bugly/proguard/aq;->ck:Lcom/tencent/bugly/proguard/aq$a;

    check-cast v3, Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    sget-object v3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "Bugly_NetWatcher"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "unInit, "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-virtual {v3, v4}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    :cond_0
    :goto_0
    new-instance v1, Landroid/os/Handler;

    sget-object v3, Lcom/tencent/bugly/proguard/by;->ej:Lcom/tencent/bugly/proguard/by$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/by$a;->aF()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/tencent/bugly/proguard/aq;->handler:Landroid/os/Handler;

    sput-boolean v2, Lcom/tencent/bugly/proguard/aq;->ad:Z

    sget-object v1, Lcom/tencent/bugly/proguard/aq;->cl:Lcom/tencent/bugly/proguard/aq;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/aq;->V()V

    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static T()V
    .locals 6

    const-class v0, Lcom/tencent/bugly/proguard/aq;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/proguard/aq;->ad:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/proguard/cc;->aX()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/tencent/bugly/proguard/aq;->ck:Lcom/tencent/bugly/proguard/aq$a;

    check-cast v3, Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "Bugly_NetWatcher"

    aput-object v5, v4, v1

    const-string v5, "unInit, "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    :cond_0
    :goto_0
    sput-boolean v1, Lcom/tencent/bugly/proguard/aq;->ad:Z

    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static U()V
    .locals 3

    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->R()Lcom/tencent/bugly/proguard/an;

    move-result-object v0

    sget-object v1, Lcom/tencent/bugly/proguard/ar;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/an;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/bugly/proguard/aq;->cg:Ljava/util/HashSet;

    if-eqz v0, :cond_3

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/ao;

    invoke-interface {v2, v1}, Lcom/tencent/bugly/proguard/ao;->c(I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private final V()V
    .locals 4

    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->W()V

    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->R()Lcom/tencent/bugly/proguard/an;

    move-result-object v0

    sget-object v1, Lcom/tencent/bugly/proguard/ar;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/an;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/bugly/proguard/aq;->ci:Z

    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->R()Lcom/tencent/bugly/proguard/an;

    move-result-object v0

    sget-object v3, Lcom/tencent/bugly/proguard/an;->bG:Lcom/tencent/bugly/proguard/an;

    if-eq v0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    sput-boolean v1, Lcom/tencent/bugly/proguard/aq;->cj:Z

    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->U()V

    return-void
.end method

.method private static W()V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/tencent/bugly/proguard/aq;->e(Z)Lcom/tencent/bugly/proguard/ap;

    move-result-object v1

    sget-object v2, Lcom/tencent/bugly/proguard/ar;->cn:[I

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ap;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_1

    const/4 v0, 0x2

    if-eq v2, v0, :cond_0

    invoke-static {v1}, Lcom/tencent/bugly/proguard/aq;->a(Lcom/tencent/bugly/proguard/ap;)Lcom/tencent/bugly/proguard/an;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/an;->bG:Lcom/tencent/bugly/proguard/an;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/bugly/proguard/an;->bJ:Lcom/tencent/bugly/proguard/an;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": cannot get apn from network state, so use default"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bugly_NetWatcher"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/tencent/bugly/proguard/an;->bG:Lcom/tencent/bugly/proguard/an;

    :goto_0
    sput-object v0, Lcom/tencent/bugly/proguard/aq;->ch:Lcom/tencent/bugly/proguard/an;

    return-void
.end method

.method public static X()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/tencent/bugly/proguard/cc;->aX()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method private static Y()Lcom/tencent/bugly/proguard/ap;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/cc;->aX()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/ce;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/ap;->ce:Lcom/tencent/bugly/proguard/ap;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/cc;->aX()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_2

    move-object v0, v1

    :cond_2
    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_17

    :goto_1
    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_17

    :goto_2
    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_17

    :goto_3
    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_17

    :goto_4
    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_9

    goto/16 :goto_11

    :cond_9
    :goto_5
    if-nez v1, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_16

    :goto_6
    if-nez v1, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_16

    :goto_7
    if-nez v1, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_16

    :goto_8
    if-nez v1, :cond_d

    goto :goto_9

    :cond_d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_16

    :goto_9
    if-nez v1, :cond_e

    goto :goto_a

    :cond_e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_16

    :goto_a
    if-nez v1, :cond_f

    goto :goto_b

    :cond_f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_16

    :goto_b
    if-nez v1, :cond_10

    goto :goto_c

    :cond_10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_16

    :goto_c
    if-nez v1, :cond_11

    goto :goto_d

    :cond_11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xe

    if-eq v0, v2, :cond_16

    :goto_d
    if-nez v1, :cond_12

    goto :goto_e

    :cond_12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_13

    goto :goto_10

    :cond_13
    :goto_e
    if-nez v1, :cond_14

    goto :goto_f

    :cond_14
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_15

    sget-object v0, Lcom/tencent/bugly/proguard/ap;->cd:Lcom/tencent/bugly/proguard/ap;

    return-object v0

    :cond_15
    :goto_f
    sget-object v0, Lcom/tencent/bugly/proguard/ap;->ce:Lcom/tencent/bugly/proguard/ap;

    return-object v0

    :cond_16
    :goto_10
    sget-object v0, Lcom/tencent/bugly/proguard/ap;->cc:Lcom/tencent/bugly/proguard/ap;

    return-object v0

    :cond_17
    :goto_11
    sget-object v0, Lcom/tencent/bugly/proguard/ap;->cb:Lcom/tencent/bugly/proguard/ap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "Bugly_NetWatcher"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/tencent/bugly/proguard/ap;->ce:Lcom/tencent/bugly/proguard/ap;

    return-object v0
.end method

.method public static Z()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/aq;->e(Z)Lcom/tencent/bugly/proguard/ap;

    move-result-object v1

    sget-object v2, Lcom/tencent/bugly/proguard/ap;->ca:Lcom/tencent/bugly/proguard/ap;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static a(Lcom/tencent/bugly/proguard/ap;)Lcom/tencent/bugly/proguard/an;
    .locals 5

    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->X()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x24de73bc

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_6

    const v2, 0x24df0a7d

    if-eq v1, v2, :cond_3

    const v2, 0x24e00cb6

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "\u4e2d\u56fd\u8054\u901a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/tencent/bugly/proguard/ar;->cm:[I

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ap;->ordinal()I

    move-result p0

    aget p0, v0, p0

    if-eq p0, v4, :cond_2

    if-eq p0, v3, :cond_1

    sget-object p0, Lcom/tencent/bugly/proguard/an;->bT:Lcom/tencent/bugly/proguard/an;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/tencent/bugly/proguard/an;->bQ:Lcom/tencent/bugly/proguard/an;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/tencent/bugly/proguard/an;->bP:Lcom/tencent/bugly/proguard/an;

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "\u4e2d\u56fd\u79fb\u52a8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/tencent/bugly/proguard/ar;->$EnumSwitchMapping$2:[I

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ap;->ordinal()I

    move-result p0

    aget p0, v0, p0

    if-eq p0, v4, :cond_5

    if-eq p0, v3, :cond_4

    sget-object p0, Lcom/tencent/bugly/proguard/an;->bU:Lcom/tencent/bugly/proguard/an;

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/tencent/bugly/proguard/an;->bV:Lcom/tencent/bugly/proguard/an;

    goto :goto_1

    :cond_5
    sget-object p0, Lcom/tencent/bugly/proguard/an;->bR:Lcom/tencent/bugly/proguard/an;

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "\u4e2d\u56fd\u7535\u4fe1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/tencent/bugly/proguard/ar;->$EnumSwitchMapping$3:[I

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ap;->ordinal()I

    move-result p0

    aget p0, v0, p0

    if-eq p0, v4, :cond_8

    if-eq p0, v3, :cond_7

    sget-object p0, Lcom/tencent/bugly/proguard/an;->bS:Lcom/tencent/bugly/proguard/an;

    goto :goto_1

    :cond_7
    sget-object p0, Lcom/tencent/bugly/proguard/an;->bO:Lcom/tencent/bugly/proguard/an;

    goto :goto_1

    :cond_8
    sget-object p0, Lcom/tencent/bugly/proguard/an;->bG:Lcom/tencent/bugly/proguard/an;

    goto :goto_1

    :cond_9
    :goto_0
    sget-object p0, Lcom/tencent/bugly/proguard/an;->bH:Lcom/tencent/bugly/proguard/an;

    :goto_1
    if-nez p0, :cond_b

    :cond_a
    sget-object p0, Lcom/tencent/bugly/proguard/an;->bH:Lcom/tencent/bugly/proguard/an;

    :cond_b
    return-object p0
.end method

.method public static a(Lcom/tencent/bugly/proguard/ao;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/bugly/proguard/aq;->cg:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/aq;->cg:Ljava/util/HashSet;

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/aq;->cg:Ljava/util/HashSet;

    if-eqz v0, :cond_3

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/tencent/bugly/proguard/aq;->cg:Ljava/util/HashSet;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public static final synthetic a(Lcom/tencent/bugly/proguard/aq;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/aq;->V()V

    return-void
.end method

.method private static a(Landroid/net/ConnectivityManager;Landroid/net/NetworkInfo;)Z
    .locals 7

    sget-object v0, Lcom/tencent/bugly/proguard/cb;->er:Lcom/tencent/bugly/proguard/cb$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/cb$a;->aP()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, v2, :cond_3

    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object p1

    array-length v0, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p1, v3

    invoke-virtual {p0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v2, :cond_2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static aa()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/aq;->e(Z)Lcom/tencent/bugly/proguard/ap;

    move-result-object v1

    sget-object v2, Lcom/tencent/bugly/proguard/ap;->bZ:Lcom/tencent/bugly/proguard/ap;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static final synthetic ab()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/aq;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static e(Z)Lcom/tencent/bugly/proguard/ap;
    .locals 3

    invoke-static {}, Lcom/tencent/bugly/proguard/cc;->aX()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/net/ConnectivityManager;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_2

    sget-object p0, Lcom/tencent/bugly/proguard/ap;->bZ:Lcom/tencent/bugly/proguard/ap;

    return-object p0

    :cond_2
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/aq;->a(Landroid/net/ConnectivityManager;Landroid/net/NetworkInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/tencent/bugly/proguard/ap;->ca:Lcom/tencent/bugly/proguard/ap;

    return-object p0

    :cond_4
    if-eqz p0, :cond_5

    invoke-static {}, Lcom/tencent/bugly/proguard/aq;->Y()Lcom/tencent/bugly/proguard/ap;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object p0, Lcom/tencent/bugly/proguard/ap;->ce:Lcom/tencent/bugly/proguard/ap;

    return-object p0

    :cond_6
    :goto_2
    sget-object p0, Lcom/tencent/bugly/proguard/ap;->bZ:Lcom/tencent/bugly/proguard/ap;

    return-object p0
.end method
