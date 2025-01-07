.class public final Lcom/tencent/bugly/proguard/ex;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/launch/AppLaunch;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addTag(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/nn;->hw()Lcom/tencent/bugly/proguard/nn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/nn;->addTag(Ljava/lang/String;)V

    return-void
.end method

.method public final install(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/tencent/rmonitor/launch/AppLaunchMonitorInstaller;->install(Landroid/content/Context;)V

    return-void
.end method

.method public final reportAppFullLaunch()V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/nn;->hw()Lcom/tencent/bugly/proguard/nn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/nn;->reportAppFullLaunch()V

    return-void
.end method

.method public final spanEnd(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/nn;->hw()Lcom/tencent/bugly/proguard/nn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/nn;->spanEnd(Ljava/lang/String;)V

    return-void
.end method

.method public final spanStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/proguard/nn;->hw()Lcom/tencent/bugly/proguard/nn;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/bugly/proguard/nn;->spanStart(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
