.class public final Lcom/tencent/bugly/proguard/nl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/nl$a;
    }
.end annotation


# instance fields
.field private Bi:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/nl;->Bi:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/nl;-><init>()V

    return-void
.end method

.method private I(I)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/nl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "launcher_not_safe_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private static a(Landroid/app/Application;Ljava/lang/Class;)V
    .locals 6

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v0, "rmonitor_app_launch_monitor_landing_activity"

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/cl;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 p0, 0x0

    const/4 p1, 0x0

    :goto_0
    if-eqz v0, :cond_3

    array-length v1, v0

    if-ge p1, v1, :cond_3

    invoke-static {}, Lcom/tencent/bugly/proguard/nn;->hw()Lcom/tencent/bugly/proguard/nn;

    move-result-object v1

    aget-object v2, v0, p1

    iget-object v1, v1, Lcom/tencent/bugly/proguard/nn;->Bz:Lcom/tencent/bugly/proguard/nt;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v1, v1, Lcom/tencent/bugly/proguard/nt;->Cd:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "RMonitor_launch_landingPage"

    aput-object v4, v3, p0

    const-string v4, "addLandingActivityName, activityName: "

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-virtual {v1, v3}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v0, "RMonitor_launch_installer"

    const-string v1, "get rmonitor config fail "

    invoke-virtual {p1, v0, v1, p0}, Lcom/tencent/bugly/proguard/km;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RMonitor_launch_installer"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    const-string v2, ", fileName: "

    aput-object v2, v1, p0

    const/4 p0, 0x3

    aput-object p1, v1, p0

    const/4 p0, 0x4

    const-string p1, ", ret: "

    aput-object p1, v1, p0

    const/4 p0, 0x5

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x6

    const-string p1, ", context: "

    aput-object p1, v1, p0

    if-nez p3, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    const-string p0, "not null"

    :goto_0
    const/4 p1, 0x7

    aput-object p0, v1, p1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/app/Application;Ljava/lang/Class;)V
    .locals 9

    const-string v0, "RMonitor_launch_landingPage"

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    const-string v1, "rmonitor_app_launch_monitor_activity_before_landing"

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/cl;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/proguard/nn;->hw()Lcom/tencent/bugly/proguard/nn;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    array-length v3, v1

    if-lez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iget-object p0, p0, Lcom/tencent/bugly/proguard/nn;->Bz:Lcom/tencent/bugly/proguard/nt;

    iput-boolean v3, p0, Lcom/tencent/bugly/proguard/nt;->Cb:Z

    sget-object p0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/String;

    aput-object v0, v5, v2

    const-string v6, "enableCheckActivityBeforeLanding, enable: "

    aput-object v6, v5, p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-virtual {p0, v5}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_1
    if-eqz v1, :cond_4

    array-length v3, v1

    if-ge p0, v3, :cond_4

    invoke-static {}, Lcom/tencent/bugly/proguard/nn;->hw()Lcom/tencent/bugly/proguard/nn;

    move-result-object v3

    aget-object v5, v1, p0

    iget-object v3, v3, Lcom/tencent/bugly/proguard/nn;->Bz:Lcom/tencent/bugly/proguard/nt;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v3, v3, Lcom/tencent/bugly/proguard/nt;->Cc:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v7, v4, [Ljava/lang/String;

    aput-object v0, v7, v2

    const-string v8, "addActivityNameBeforeLanding, activityName: "

    aput-object v8, v7, p1

    aput-object v5, v7, v6

    invoke-virtual {v3, v7}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v0, "RMonitor_launch_installer"

    const-string v1, "get rmonitor config fail "

    invoke-virtual {p1, v0, v1, p0}, Lcom/tencent/bugly/proguard/km;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private bq(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/nl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    sget-object v3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v4, "RMonitor_launch_installer"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const-string v2, "createFile"

    invoke-static {v2, p1, v1, v0}, Lcom/tencent/bugly/proguard/nl;->a(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V

    return-void
.end method

.method private br(Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/nl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "isFileExist"

    invoke-static {v2, p1, v1, v0}, Lcom/tencent/bugly/proguard/nl;->a(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V

    return v1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nl;->Bi:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/nl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "RMonitor_SP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static hu()Ljava/lang/Class;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.tencent.bugly.library.R$array"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    :try_start_1
    const-string v1, "com.tencent.bugly.common.R$array"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_0
    move-object v0, v1

    :catchall_1
    :goto_1
    return-object v0
.end method

.method public static install(Landroid/content/Context;)V
    .locals 5

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    move-object v0, p0

    :cond_1
    instance-of v1, v0, Landroid/app/Application;

    const-string v2, "RMonitor_launch_installer"

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    check-cast v0, Landroid/app/Application;

    invoke-static {}, Lcom/tencent/bugly/proguard/nl$a;->hv()Lcom/tencent/bugly/proguard/nl;

    move-result-object p0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/tencent/bugly/proguard/nl;->Bi:Ljava/lang/ref/WeakReference;

    :cond_2
    invoke-static {}, Lcom/tencent/bugly/proguard/nl$a;->hv()Lcom/tencent/bugly/proguard/nl;

    move-result-object p0

    const-string v1, "RMonitor_launch_monitor"

    invoke-direct {p0, v1}, Lcom/tencent/bugly/proguard/nl;->br(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v3}, Lcom/tencent/bugly/proguard/nl;->A(Z)V

    const-string v1, "RMonitor_enable_protect"

    invoke-direct {p0, v1}, Lcom/tencent/bugly/proguard/nl;->br(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/tencent/bugly/proguard/nl$1;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/nl$1;-><init>(Lcom/tencent/bugly/proguard/nl;)V

    const-wide/16 v3, 0x4e20

    invoke-static {v1, v3, v4}, Lcom/tencent/bugly/proguard/by;->c(Ljava/lang/Runnable;J)V

    :cond_3
    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aN()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/tencent/bugly/proguard/nl;->hu()Ljava/lang/Class;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/bugly/proguard/nl;->a(Landroid/app/Application;Ljava/lang/Class;)V

    invoke-static {v0, p0}, Lcom/tencent/bugly/proguard/nl;->b(Landroid/app/Application;Ljava/lang/Class;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/nn;->hw()Lcom/tencent/bugly/proguard/nn;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/nn;->d(Landroid/app/Application;)V

    return-void

    :cond_4
    sget-object p0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v0, "installAppLaunchMonitor fail for api level below JellyBeanMr2."

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/km;->i([Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "install fail for application context is null, context: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return-void
.end method

.method private x(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/nl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    sget-object v3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v4, "RMonitor_launch_installer"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const-string v2, "deleteFile"

    invoke-static {v2, p1, v1, v0}, Lcom/tencent/bugly/proguard/nl;->a(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final A(Z)V
    .locals 1

    const-string v0, "RMonitor_launch_monitor"

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/nl;->bq(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/nl;->x(Ljava/lang/String;)V

    return-void
.end method

.method public final B(Z)V
    .locals 1

    const-string v0, "RMonitor_enable_protect"

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/nl;->bq(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/nl;->x(Ljava/lang/String;)V

    return-void
.end method

.method public final C(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/nl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "launcher_is_safe"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public final ht()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/nl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "launcher_is_safe"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/tencent/bugly/proguard/nl;->I(I)V

    const/4 v0, 0x0

    goto :goto_3

    :cond_1
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/nl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "launcher_not_safe_count"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v2, v0

    const/4 v3, 0x4

    if-le v2, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-direct {p0, v2}, Lcom/tencent/bugly/proguard/nl;->I(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    goto :goto_3

    :catchall_0
    move-exception v2

    sget-object v3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "RMonitor_launch_installer"

    aput-object v5, v4, v1

    const-string v1, "isLastLaunchMonitorUnSafe, t: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {v3, v4}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    :goto_3
    return v0
.end method
