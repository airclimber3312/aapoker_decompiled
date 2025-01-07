.class public Lcom/tykj/aapk/sdk/UrlAwakeServer;
.super Ljava/lang/Object;
.source "UrlAwakeServer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UrlAwakeServer"


# instance fields
.field activity:Landroid/app/Activity;

.field private activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/tykj/aapk/sdk/UrlAwakeServer$1;

    invoke-direct {v0, p0}, Lcom/tykj/aapk/sdk/UrlAwakeServer$1;-><init>(Lcom/tykj/aapk/sdk/UrlAwakeServer;)V

    iput-object v0, p0, Lcom/tykj/aapk/sdk/UrlAwakeServer;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method


# virtual methods
.method public OnPraseUrl()V
    .locals 6

    .line 17
    sget-object v0, Lcom/tykj/aapk/sdk/UrlAwakeServer;->TAG:Ljava/lang/String;

    const-string v1, "OnPraseUrl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v0, p0, Lcom/tykj/aapk/sdk/UrlAwakeServer;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 22
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 23
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "scheme:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    .line 38
    invoke-virtual {v2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 47
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "queryString:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    invoke-static {v1}, Lcom/tykj/aapk/sdk/SdkServer;->GetUrlInfo(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-void
.end method

.method public register(Landroid/app/Activity;)V
    .locals 1

    .line 55
    iput-object p1, p0, Lcom/tykj/aapk/sdk/UrlAwakeServer;->activity:Landroid/app/Activity;

    .line 56
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    iget-object v0, p0, Lcom/tykj/aapk/sdk/UrlAwakeServer;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public unRegister()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/tykj/aapk/sdk/UrlAwakeServer;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/tykj/aapk/sdk/UrlAwakeServer;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/tykj/aapk/sdk/UrlAwakeServer;->activity:Landroid/app/Activity;

    return-void
.end method
