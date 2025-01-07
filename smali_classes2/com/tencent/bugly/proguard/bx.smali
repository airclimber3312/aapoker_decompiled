.class public Lcom/tencent/bugly/proguard/bx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/common/sp/ISharedPreferencesProvider;


# static fields
.field private static ea:Lcom/tencent/bugly/proguard/bx;


# instance fields
.field private eb:Lcom/tencent/bugly/common/sp/ISharedPreferencesProvider;

.field private ec:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bx;->eb:Lcom/tencent/bugly/common/sp/ISharedPreferencesProvider;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bx;->ec:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static az()Lcom/tencent/bugly/proguard/bx;
    .locals 2

    sget-object v0, Lcom/tencent/bugly/proguard/bx;->ea:Lcom/tencent/bugly/proguard/bx;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/bugly/proguard/bx;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/bx;->ea:Lcom/tencent/bugly/proguard/bx;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/bugly/proguard/bx;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/bx;-><init>()V

    sput-object v1, Lcom/tencent/bugly/proguard/bx;->ea:Lcom/tencent/bugly/proguard/bx;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/bugly/proguard/bx;->ea:Lcom/tencent/bugly/proguard/bx;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/common/sp/ISharedPreferencesProvider;)V
    .locals 2

    if-ne p1, p0, :cond_0

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v0, "SPProvider"

    const-string v1, "setProvider fail , can\'t set SharedPreferencesProvider self."

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/tencent/bugly/proguard/bx;->eb:Lcom/tencent/bugly/common/sp/ISharedPreferencesProvider;

    return-void
.end method

.method public final b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/bx;->ec:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "RMonitor_SP"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/bugly/proguard/bx;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/bx;->ec:Landroid/content/SharedPreferences;

    :cond_0
    iget-object p1, p0, Lcom/tencent/bugly/proguard/bx;->ec:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method public getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/bx;->eb:Lcom/tencent/bugly/common/sp/ISharedPreferencesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/bugly/common/sp/ISharedPreferencesProvider;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;

    move-result-object p1

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    const/4 p3, 0x4

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
