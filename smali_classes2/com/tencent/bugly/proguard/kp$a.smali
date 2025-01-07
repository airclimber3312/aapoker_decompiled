.class public final Lcom/tencent/bugly/proguard/kp$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/kp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\n\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0007J\u0008\u0010\r\u001a\u00020\u0004H\u0007J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J\u0012\u0010\u0010\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000cH\u0007J\u0012\u0010\u0012\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000cH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/tencent/rmonitor/common/util/AppInfo$Companion;",
        "",
        "()V",
        "PSS_INFO_VALIDATE_IN_MILLIS",
        "",
        "TAG",
        "",
        "appName",
        "pssInfo",
        "Lcom/tencent/rmonitor/common/util/AppInfo$PssInfo;",
        "getAppName",
        "context",
        "Landroid/content/Context;",
        "getPssMemory",
        "isApkInDebug",
        "",
        "obtainProcessName",
        "ctx",
        "obtainProcessPackageName",
        "bugly-pro_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/kp$a;-><init>()V

    return-void
.end method

.method public static gr()J
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/tencent/bugly/proguard/kp;->gq()Lcom/tencent/bugly/proguard/kp$b;

    move-result-object v2

    iget-wide v2, v2, Lcom/tencent/bugly/proguard/kp$b;->vy:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    const-wide/16 v6, 0x400

    cmp-long v8, v2, v4

    if-gez v8, :cond_0

    invoke-static {}, Lcom/tencent/bugly/proguard/kp;->gq()Lcom/tencent/bugly/proguard/kp$b;

    move-result-object v0

    iget-wide v0, v0, Lcom/tencent/bugly/proguard/kp$b;->yM:J

    mul-long v0, v0, v6

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/kp;->gq()Lcom/tencent/bugly/proguard/kp$b;

    move-result-object v2

    iput-wide v0, v2, Lcom/tencent/bugly/proguard/kp$b;->vy:J

    invoke-static {}, Lcom/tencent/bugly/proguard/kp;->gq()Lcom/tencent/bugly/proguard/kp$b;

    move-result-object v0

    invoke-static {}, Landroid/os/Debug;->getPss()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/proguard/kp$b;->yM:J

    invoke-static {}, Lcom/tencent/bugly/proguard/kp;->gq()Lcom/tencent/bugly/proguard/kp$b;

    move-result-object v0

    iget-wide v0, v0, Lcom/tencent/bugly/proguard/kp$b;->yM:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-long v0, v0, v6

    return-wide v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "RMonitor_common_AppInfo"

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/tencent/bugly/proguard/kp;->gp()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/bugly/proguard/kp;->gp()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "RMonitor_common_AppInfo"

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    invoke-virtual {v1, v0, p0}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    const-string p0, ""

    check-cast p0, Ljava/lang/CharSequence;

    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/bugly/proguard/kp;->ba(Ljava/lang/String;)V

    sget-object p0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getAppName, name: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/kp;->gp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/kp;->gp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
