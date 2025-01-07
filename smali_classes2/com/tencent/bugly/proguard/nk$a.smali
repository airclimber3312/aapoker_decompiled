.class public final Lcom/tencent/bugly/proguard/nk$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/nk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field protected static Be:I = 0xa


# instance fields
.field final Bf:Landroid/os/Handler$Callback;

.field private final Bg:Lcom/tencent/bugly/proguard/nk;

.field private Bh:Z

.field private method:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/os/Handler$Callback;Lcom/tencent/bugly/proguard/nk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/nk$a;->Bh:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/nk$a;->method:Ljava/lang/reflect/Method;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/nk$a;->Bf:Landroid/os/Handler$Callback;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/nk$a;->Bg:Lcom/tencent/bugly/proguard/nk;

    return-void
.end method

.method private a(Landroid/os/Message;)Z
    .locals 5

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nk$a;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/nk$a;->Bh:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    const-string v2, "android.app.servertransaction.ClientTransaction"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getCallbacks"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/proguard/nk$a;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/nk$a;->Bh:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/nk$a;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".LaunchActivityItem"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v1, p1

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string v2, "RMonitor_launch_Hacker"

    const-string v3, "isLaunchActivity"

    invoke-virtual {v0, v2, v3, p1}, Lcom/tencent/bugly/proguard/km;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return v1
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 12

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nk$a;->Bg:Lcom/tencent/bugly/proguard/nk;

    iget-boolean v0, v0, Lcom/tencent/bugly/proguard/nk;->Bb:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/nk$a;->Bf:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    invoke-static {}, Lcom/tencent/bugly/proguard/cb;->aT()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x9f

    if-ne v0, v3, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/nk$a;->a(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x64

    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    :goto_2
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x72

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x71

    if-ne v4, v5, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    sget v5, Lcom/tencent/bugly/proguard/nk$a;->Be:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const-string v8, "RMonitor_launch_Hacker"

    if-lez v5, :cond_7

    sget-object v5, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/16 v9, 0x9

    new-array v9, v9, [Ljava/lang/String;

    aput-object v8, v9, v2

    const-string v10, "handleMessage, msg.what: "

    aput-object v10, v9, v1

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    const-string v10, ", isLaunchActivity: "

    aput-object v10, v9, v6

    const/4 v10, 0x4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, ", isLaunchService: "

    aput-object v11, v9, v10

    const/4 v10, 0x6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, ", isLaunchBroadcastReceiver: "

    aput-object v11, v9, v10

    const/16 v10, 0x8

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v5, v9}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V

    sget v5, Lcom/tencent/bugly/proguard/nk$a;->Be:I

    sub-int/2addr v5, v1

    sput v5, Lcom/tencent/bugly/proguard/nk$a;->Be:I

    :cond_7
    if-eqz v0, :cond_8

    iget-object v5, p0, Lcom/tencent/bugly/proguard/nk$a;->Bg:Lcom/tencent/bugly/proguard/nk;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, v5, Lcom/tencent/bugly/proguard/nk;->Bc:J

    :cond_8
    if-nez v0, :cond_9

    if-nez v3, :cond_9

    if-eqz v4, :cond_d

    :cond_9
    if-eqz v0, :cond_a

    sget-object v0, Lcom/tencent/bugly/proguard/nm;->Bm:Lcom/tencent/bugly/proguard/nm;

    goto :goto_5

    :cond_a
    if-eqz v3, :cond_b

    sget-object v0, Lcom/tencent/bugly/proguard/nm;->Bn:Lcom/tencent/bugly/proguard/nm;

    goto :goto_5

    :cond_b
    if-eqz v4, :cond_c

    sget-object v0, Lcom/tencent/bugly/proguard/nm;->Bo:Lcom/tencent/bugly/proguard/nm;

    goto :goto_5

    :cond_c
    sget-object v0, Lcom/tencent/bugly/proguard/nm;->Bp:Lcom/tencent/bugly/proguard/nm;

    :goto_5
    iget-object v3, p0, Lcom/tencent/bugly/proguard/nk$a;->Bg:Lcom/tencent/bugly/proguard/nk;

    sget-object v4, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    new-array v5, v6, [Ljava/lang/String;

    aput-object v8, v5, v2

    const-string v6, "notifyOnApplicationCreateEnd, isLaunchActivity: "

    aput-object v6, v5, v1

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/nm;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/tencent/bugly/proguard/km;->w([Ljava/lang/String;)V

    iget-object v4, v3, Lcom/tencent/bugly/proguard/nk;->Ba:Lcom/tencent/bugly/proguard/nk$b;

    if-eqz v4, :cond_d

    iget-object v3, v3, Lcom/tencent/bugly/proguard/nk;->Ba:Lcom/tencent/bugly/proguard/nk$b;

    invoke-interface {v3, v0}, Lcom/tencent/bugly/proguard/nk$b;->a(Lcom/tencent/bugly/proguard/nm;)V

    :cond_d
    iget-object v0, p0, Lcom/tencent/bugly/proguard/nk$a;->Bf:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_e

    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result p1

    if-eqz p1, :cond_e

    return v1

    :cond_e
    return v2
.end method
