.class Lcom/tykj/aapk/sdk/AppFrontBackHelper$1;
.super Ljava/lang/Object;
.source "AppFrontBackHelper.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tykj/aapk/sdk/AppFrontBackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private activityStartCount:I

.field final synthetic this$0:Lcom/tykj/aapk/sdk/AppFrontBackHelper;


# direct methods
.method constructor <init>(Lcom/tykj/aapk/sdk/AppFrontBackHelper;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/tykj/aapk/sdk/AppFrontBackHelper$1;->this$0:Lcom/tykj/aapk/sdk/AppFrontBackHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/tykj/aapk/sdk/AppFrontBackHelper$1;->activityStartCount:I

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 39
    sget-object p1, Lcom/tykj/aapk/sdk/AppFrontBackHelper;->TAG:Ljava/lang/String;

    const-string p2, "onActivityCreated"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 93
    sget-object p1, Lcom/tykj/aapk/sdk/AppFrontBackHelper;->TAG:Ljava/lang/String;

    const-string v0, "onActivityDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 67
    sget-object p1, Lcom/tykj/aapk/sdk/AppFrontBackHelper;->TAG:Ljava/lang/String;

    const-string v0, "onActivityPaused"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 61
    sget-object p1, Lcom/tykj/aapk/sdk/AppFrontBackHelper;->TAG:Ljava/lang/String;

    const-string v0, "onActivityResumed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 87
    sget-object p1, Lcom/tykj/aapk/sdk/AppFrontBackHelper;->TAG:Ljava/lang/String;

    const-string p2, "onActivitySaveInstanceState"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 45
    sget-object p1, Lcom/tykj/aapk/sdk/AppFrontBackHelper;->TAG:Ljava/lang/String;

    const-string v0, "onActivityStarted"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 73
    sget-object p1, Lcom/tykj/aapk/sdk/AppFrontBackHelper;->TAG:Ljava/lang/String;

    const-string v0, "onActivityStopped"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
