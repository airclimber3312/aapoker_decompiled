.class public Ljp/ne/donuts/uniclipboard/Clipboard;
.super Ljava/lang/Object;
.source "Clipboard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getText()Ljava/lang/String;
    .locals 3

    .line 32
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 33
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Ljp/ne/donuts/uniclipboard/Clipboard$2;

    invoke-direct {v2, v0}, Ljp/ne/donuts/uniclipboard/Clipboard$2;-><init>(Landroid/app/Activity;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 45
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 48
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public static setText(Ljava/lang/String;)V
    .locals 2

    .line 17
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 18
    new-instance v1, Ljp/ne/donuts/uniclipboard/Clipboard$1;

    invoke-direct {v1, p0, v0}, Ljp/ne/donuts/uniclipboard/Clipboard$1;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
