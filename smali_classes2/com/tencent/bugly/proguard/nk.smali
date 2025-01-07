.class final Lcom/tencent/bugly/proguard/nk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/nk$a;,
        Lcom/tencent/bugly/proguard/nk$b;
    }
.end annotation


# instance fields
.field final Ba:Lcom/tencent/bugly/proguard/nk$b;

.field protected Bb:Z

.field Bc:J

.field private Bd:Lcom/tencent/bugly/proguard/nk$a;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/nk$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/nk;->Bb:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/nk;->Bc:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/nk;->Bd:Lcom/tencent/bugly/proguard/nk$a;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/nk;->Ba:Lcom/tencent/bugly/proguard/nk$b;

    return-void
.end method

.method private static d(Ljava/lang/Object;)Ljava/lang/reflect/Field;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/os/Handler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    const-string v0, "mCallback"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-object p0
.end method

.method private static hs()Ljava/lang/Object;
    .locals 4

    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "sCurrentActivityThread"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "mH"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final hq()V
    .locals 5

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/nk;->Bb:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "stopTrace"

    const-string v2, "RMonitor_launch_Hacker"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/nk;->hs()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/nk;->d(Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler$Callback;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/nk;->Bd:Lcom/tencent/bugly/proguard/nk$a;

    if-eqz v4, :cond_1

    if-ne v4, v3, :cond_1

    iget-object v3, v4, Lcom/tencent/bugly/proguard/nk$a;->Bf:Landroid/os/Handler$Callback;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "resetHandlerCallback success."

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v1, "resetHandlerCallback fail for current Callback is not hack Callback"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v3, "stopTrace fail."

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/bugly/proguard/km;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/nk;->Bb:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/nk;->Bd:Lcom/tencent/bugly/proguard/nk$a;

    return-void
.end method

.method public final hr()V
    .locals 6

    const-string v0, "RMonitor_launch_Hacker"

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/nk;->hs()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/nk;->d(Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler$Callback;

    new-instance v4, Lcom/tencent/bugly/proguard/nk$a;

    invoke-direct {v4, v3, p0}, Lcom/tencent/bugly/proguard/nk$a;-><init>(Landroid/os/Handler$Callback;Lcom/tencent/bugly/proguard/nk;)V

    iput-object v4, p0, Lcom/tencent/bugly/proguard/nk;->Bd:Lcom/tencent/bugly/proguard/nk$a;

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "replaceHandlerCallback, originalCallback: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", hackCallback: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/nk;->Bd:Lcom/tencent/bugly/proguard/nk$a;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/tencent/bugly/proguard/nk;->Bb:Z

    sget-object v1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "startTrace success."

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    sget-object v2, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v3, "startTrace fail."

    invoke-virtual {v2, v0, v3, v1}, Lcom/tencent/bugly/proguard/km;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
