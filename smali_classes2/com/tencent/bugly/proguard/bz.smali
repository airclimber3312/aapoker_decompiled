.class public final Lcom/tencent/bugly/proguard/bz;
.super Ljava/lang/Object;


# static fields
.field private static final ek:Ljava/util/Random;

.field private static final el:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/bz;->ek:Ljava/util/Random;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/proguard/bz;->el:Ljava/lang/String;

    return-void
.end method

.method public static aI()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/bz;->el:Ljava/lang/String;

    return-object v0
.end method

.method public static aJ()Ljava/lang/String;
    .locals 5

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v3, Lcom/tencent/bugly/proguard/bz;->ek:Ljava/util/Random;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/tencent/bugly/proguard/cm;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 9

    invoke-static {p0}, Lcom/tencent/bugly/proguard/ci;->h(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "RMonitor_trace"

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/bx;->az()Lcom/tencent/bugly/proguard/bx;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/tencent/bugly/proguard/bx;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v5, "rmonitor_trace_id"

    sget-object v6, Lcom/tencent/bugly/proguard/bz;->el:Ljava/lang/String;

    invoke-interface {p0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v5, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v6, v4, [Ljava/lang/String;

    aput-object v2, v6, v3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "updateLaunchIdCache, e: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v6, v1

    invoke-virtual {v5, v6}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object p0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateLaunchIdCache, launchId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/tencent/bugly/proguard/bz;->el:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isMainProcess: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {p0, v4}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    return-void
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/tencent/bugly/proguard/ci;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/tencent/bugly/proguard/bz;->el:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/tencent/bugly/proguard/bz;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/bx;->az()Lcom/tencent/bugly/proguard/bx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/bx;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "rmonitor_trace_id"

    sget-object v1, Lcom/tencent/bugly/proguard/bz;->el:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RMonitor_trace"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getLaunchIdFromCache, e: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/tencent/bugly/proguard/bz;->el:Ljava/lang/String;

    :cond_1
    return-object p0
.end method
