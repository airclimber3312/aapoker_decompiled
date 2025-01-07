.class public final Lcom/tencent/bugly/proguard/pi;
.super Lcom/tencent/bugly/proguard/pk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/pi$a;
    }
.end annotation


# static fields
.field private static EF:Landroid/app/Instrumentation;

.field private static EG:Ljava/lang/Object;

.field private static EH:Ljava/lang/reflect/Field;


# instance fields
.field private EE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/tencent/bugly/proguard/pc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/pk;-><init>(Lcom/tencent/bugly/proguard/pc;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/pi;->EE:Z

    return-void
.end method

.method private static a(Landroid/app/Instrumentation;)Z
    .locals 2

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/proguard/pi;->EH:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/tencent/bugly/proguard/pi;->EG:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "RMonitor_MemoryLeak_ActivityIceWatcher"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic ix()Landroid/app/Instrumentation;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/pi;->EF:Landroid/app/Instrumentation;

    return-object v0
.end method


# virtual methods
.method public final iu()Z
    .locals 6

    const-string v0, "mInstrumentation"

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/pi;->EE:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    sget-object v1, Lcom/tencent/bugly/proguard/pi;->EH:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tencent/bugly/proguard/pi;->EG:Ljava/lang/Object;

    if-nez v1, :cond_6

    :cond_1
    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "currentActivityThread"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/tencent/bugly/proguard/pi;->EG:Ljava/lang/Object;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v4, Lcom/tencent/bugly/proguard/pi;->EG:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Landroid/app/Instrumentation;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/tencent/bugly/proguard/pi$a;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sput-object v1, Lcom/tencent/bugly/proguard/pi;->EF:Landroid/app/Instrumentation;

    sget-object v1, Lcom/tencent/bugly/proguard/pi;->EG:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/proguard/pi;->EH:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Buddy you already hacked the system."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an Instrumentation instance. Maybe something is modified in this system."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to get mInstrumentation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to invoke currentActivityThread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v4, "RMonitor_MemoryLeak_ActivityIceWatcher"

    invoke-virtual {v1, v4, v0}, Lcom/tencent/bugly/proguard/km;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    new-instance v0, Lcom/tencent/bugly/proguard/pi$a;

    invoke-direct {v0, p0, v2}, Lcom/tencent/bugly/proguard/pi$a;-><init>(Lcom/tencent/bugly/proguard/pi;B)V

    invoke-static {v0}, Lcom/tencent/bugly/proguard/pi;->a(Landroid/app/Instrumentation;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v3, p0, Lcom/tencent/bugly/proguard/pi;->EE:Z

    const/4 v2, 0x1

    :cond_7
    return v2
.end method

.method public final iv()V
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/pi;->EF:Landroid/app/Instrumentation;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/pi;->iw()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/pi;->EF:Landroid/app/Instrumentation;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/pi;->a(Landroid/app/Instrumentation;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/pi;->EE:Z

    :cond_0
    return-void
.end method

.method public final iw()Z
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aK()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
