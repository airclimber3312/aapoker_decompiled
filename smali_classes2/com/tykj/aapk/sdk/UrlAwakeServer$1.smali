.class Lcom/tykj/aapk/sdk/UrlAwakeServer$1;
.super Ljava/lang/Object;
.source "UrlAwakeServer.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tykj/aapk/sdk/UrlAwakeServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tykj/aapk/sdk/UrlAwakeServer;


# direct methods
.method constructor <init>(Lcom/tykj/aapk/sdk/UrlAwakeServer;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/tykj/aapk/sdk/UrlAwakeServer$1;->this$0:Lcom/tykj/aapk/sdk/UrlAwakeServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/tykj/aapk/sdk/UrlAwakeServer$1;->this$0:Lcom/tykj/aapk/sdk/UrlAwakeServer;

    invoke-virtual {p1}, Lcom/tykj/aapk/sdk/UrlAwakeServer;->OnPraseUrl()V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
