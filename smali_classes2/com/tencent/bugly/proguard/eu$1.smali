.class final Lcom/tencent/bugly/proguard/eu$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/eu;->z(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic fs:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/eu$1;->fs:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Check and upload exit info."

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/bugly/proguard/di;->ce()I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    const-string v1, "Api level is lower than 30, cannot get app exit info."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/gf;->eO()Lcom/tencent/bugly/proguard/gf;

    move-result-object v1

    const-string v2, "application_exit"

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/gf;->aB(Ljava/lang/String;)Lcom/tencent/bugly/proguard/ha;

    move-result-object v1

    instance-of v2, v1, Lcom/tencent/bugly/proguard/cx;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/tencent/bugly/proguard/cx;

    iget-boolean v2, v1, Lcom/tencent/bugly/proguard/cx;->fY:Z

    sput-boolean v2, Lcom/tencent/bugly/proguard/eu;->fY:Z

    iget-wide v1, v1, Lcom/tencent/bugly/proguard/cx;->fZ:D

    sput-wide v1, Lcom/tencent/bugly/proguard/eu;->oj:D

    :cond_1
    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/proguard/eu;->fY:Z

    if-nez v1, :cond_2

    const-string v1, "App exit info disable."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_2
    iget-object v1, p0, Lcom/tencent/bugly/proguard/eu$1;->fs:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setProcessStateSummary"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, [B

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v3, Lcom/tencent/bugly/proguard/dh;->ic:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v0

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v2, p0, Lcom/tencent/bugly/proguard/eu$1;->fs:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/ci;->h(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v1, "Not main process, do not check exit info."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_4
    iget-object v0, p0, Lcom/tencent/bugly/proguard/eu$1;->fs:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/eu;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/bugly/proguard/eu$1;->fs:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/tencent/bugly/proguard/eu;->a(Landroid/content/Context;Landroid/app/ActivityManager;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/Throwable;)Z

    return-void
.end method
