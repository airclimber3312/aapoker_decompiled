.class public Lcom/tencent/bugly/launch/AppLaunchProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/launch/AppLaunch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/launch/AppLaunchProxy$a;
    }
.end annotation


# instance fields
.field private final on:Lcom/tencent/bugly/launch/AppLaunch;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/bugly/proguard/ex;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ex;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/launch/AppLaunchProxy;->on:Lcom/tencent/bugly/launch/AppLaunch;

    return-void
.end method

.method public static getAppLaunch()Lcom/tencent/bugly/launch/AppLaunch;
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/launch/AppLaunchProxy$a;->dS()Lcom/tencent/bugly/launch/AppLaunchProxy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addTag(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/launch/AppLaunchProxy;->on:Lcom/tencent/bugly/launch/AppLaunch;

    invoke-interface {v0, p1}, Lcom/tencent/bugly/launch/AppLaunch;->addTag(Ljava/lang/String;)V

    return-void
.end method

.method public install(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/launch/AppLaunchProxy;->on:Lcom/tencent/bugly/launch/AppLaunch;

    invoke-interface {v0, p1}, Lcom/tencent/bugly/launch/AppLaunch;->install(Landroid/content/Context;)V

    return-void
.end method

.method public reportAppFullLaunch()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/launch/AppLaunchProxy;->on:Lcom/tencent/bugly/launch/AppLaunch;

    invoke-interface {v0}, Lcom/tencent/bugly/launch/AppLaunch;->reportAppFullLaunch()V

    return-void
.end method

.method public spanEnd(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/launch/AppLaunchProxy;->on:Lcom/tencent/bugly/launch/AppLaunch;

    invoke-interface {v0, p1}, Lcom/tencent/bugly/launch/AppLaunch;->spanEnd(Ljava/lang/String;)V

    return-void
.end method

.method public spanStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/launch/AppLaunchProxy;->on:Lcom/tencent/bugly/launch/AppLaunch;

    invoke-interface {v0, p1, p2}, Lcom/tencent/bugly/launch/AppLaunch;->spanStart(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
