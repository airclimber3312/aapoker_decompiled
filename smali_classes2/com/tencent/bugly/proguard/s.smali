.class public Lcom/tencent/bugly/proguard/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/s$a;
    }
.end annotation


# static fields
.field private static ah:I = 0x0

.field private static ai:J = 0x0L

.field public static aj:Landroid/os/Handler; = null

.field private static ak:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static al:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static am:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 4

    sget-object v0, Lcom/tencent/bugly/proguard/s;->al:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/s;->ak:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_1
    sget v0, Lcom/tencent/bugly/proguard/s;->ah:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const-string v0, "CrashReport-GameAgent"

    const-string v3, "Game type has not been set."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/tencent/bugly/proguard/s;->am:Z

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    sput-boolean v2, Lcom/tencent/bugly/proguard/s;->am:Z

    invoke-static {}, Lcom/tencent/bugly/proguard/s;->v()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_3
    invoke-static {}, Lcom/tencent/bugly/proguard/s;->u()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/tencent/bugly/proguard/s;->v()Landroid/app/Activity;

    move-result-object v0

    :cond_5
    :goto_0
    if-eqz v0, :cond_6

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/tencent/bugly/proguard/s;->ak:Ljava/lang/ref/WeakReference;

    :cond_6
    sget-object v0, Lcom/tencent/bugly/proguard/s;->ak:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_1

    :cond_7
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_8

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/tencent/bugly/proguard/s;->al:Ljava/lang/ref/WeakReference;

    :cond_8
    sget-object v0, Lcom/tencent/bugly/proguard/s;->al:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    :cond_9
    return-object v1
.end method

.method public static setGameType(I)V
    .locals 0

    sput p0, Lcom/tencent/bugly/proguard/s;->ah:I

    return-void
.end method

.method private static u()Landroid/app/Activity;
    .locals 2

    :try_start_0
    const-string v0, "com.unity3d.player.UnityPlayer"

    const-string v1, "currentActivity"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/s$a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "CrashReport-GameAgent"

    const-string v1, "Failed to get activity of Unity."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static v()Landroid/app/Activity;
    .locals 3

    :try_start_0
    const-string v0, "org.cocos2dx.lib.Cocos2dxActivity"

    const-string v1, "getContext"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/s$a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "CrashReport-GameAgent"

    const-string v1, "Failed to get activity of Cocos."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static w()V
    .locals 5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Exit application by kill process[%d]"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CrashReport-GameAgent"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/co;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public static x()V
    .locals 4

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0xbb8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-object v2, Lcom/tencent/bugly/proguard/s;->aj:Landroid/os/Handler;

    if-eqz v2, :cond_0

    new-instance v3, Lcom/tencent/bugly/proguard/s$1;

    invoke-direct {v3}, Lcom/tencent/bugly/proguard/s$1;-><init>()V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lcom/tencent/bugly/proguard/s;->w()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method

.method static synthetic y()V
    .locals 0

    invoke-static {}, Lcom/tencent/bugly/proguard/s;->w()V

    return-void
.end method
