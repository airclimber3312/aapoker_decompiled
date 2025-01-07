.class final Lcom/tencent/bugly/proguard/dt$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/dt;->v(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/tencent/bugly/proguard/dt$1;->fs:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const-string v0, "emulator_modify_time"

    :try_start_0
    const-string v1, "Start to check emulator."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/du;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/bugly/proguard/dh;->bG()Lcom/tencent/bugly/proguard/dh;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/bugly/proguard/dh;->hN:Landroid/content/SharedPreferences;

    const-wide/16 v2, -0x1

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    const-wide/32 v1, 0xf731400

    sub-long v1, v6, v1

    cmp-long v3, v1, v4

    if-ltz v3, :cond_2

    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/gf;->eO()Lcom/tencent/bugly/proguard/gf;

    move-result-object v1

    const-string v2, "emulator"

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/gf;->aB(Ljava/lang/String;)Lcom/tencent/bugly/proguard/ha;

    move-result-object v1

    instance-of v2, v1, Lcom/tencent/bugly/proguard/cw;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/tencent/bugly/proguard/cw;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/cw;->fW:Ljava/lang/String;

    check-cast v1, Lcom/tencent/bugly/proguard/cw;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/cw;->fX:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/dt;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/proguard/dt$1;->fs:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/dt;->u(Landroid/content/Context;)V

    invoke-static {}, Lcom/tencent/bugly/proguard/dh;->bG()Lcom/tencent/bugly/proguard/dh;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/bugly/proguard/dh;->hN:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/tencent/bugly/proguard/dh;->bG()Lcom/tencent/bugly/proguard/dh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/proguard/dh;->hN:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "emulator_confidence"

    invoke-static {}, Lcom/tencent/bugly/proguard/dt;->cQ()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "emulator_reason"

    invoke-static {}, Lcom/tencent/bugly/proguard/dt;->cR()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/dz;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
