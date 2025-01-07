.class public Lcom/netease/nis/alivedetected/c;
.super Ljava/util/TimerTask;
.source "AliveDetector.java"


# instance fields
.field public final synthetic a:Lcom/netease/nis/alivedetected/AliveDetector;


# direct methods
.method public static synthetic $r8$lambda$1kOSBkIqZLatos9G8nsCj5E8WhU(Lcom/netease/nis/alivedetected/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nis/alivedetected/c;->a()V

    return-void
.end method

.method public constructor <init>(Lcom/netease/nis/alivedetected/AliveDetector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/alivedetected/c;->a:Lcom/netease/nis/alivedetected/AliveDetector;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/alivedetected/c;->a:Lcom/netease/nis/alivedetected/AliveDetector;

    .line 2
    iget-object v0, v0, Lcom/netease/nis/alivedetected/AliveDetector;->m:Lcom/netease/nis/alivedetected/DetectedListener;

    .line 3
    invoke-interface {v0}, Lcom/netease/nis/alivedetected/DetectedListener;->onOverTime()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/netease/nis/alivedetected/c;->a:Lcom/netease/nis/alivedetected/AliveDetector;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/nis/alivedetected/AliveDetector;->a(Lcom/netease/nis/alivedetected/AliveDetector;Z)Z

    .line 2
    iget-object v0, p0, Lcom/netease/nis/alivedetected/c;->a:Lcom/netease/nis/alivedetected/AliveDetector;

    invoke-virtual {v0}, Lcom/netease/nis/alivedetected/AliveDetector;->stopDetect()V

    .line 3
    iget-object v0, p0, Lcom/netease/nis/alivedetected/c;->a:Lcom/netease/nis/alivedetected/AliveDetector;

    .line 4
    iget-object v0, v0, Lcom/netease/nis/alivedetected/AliveDetector;->m:Lcom/netease/nis/alivedetected/DetectedListener;

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/netease/nis/alivedetected/AliveDetector;->a:Landroid/os/Handler;

    .line 6
    new-instance v1, Lcom/netease/nis/alivedetected/c$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/netease/nis/alivedetected/c$$ExternalSyntheticLambda0;-><init>(Lcom/netease/nis/alivedetected/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/alivedetected/c;->a:Lcom/netease/nis/alivedetected/AliveDetector;

    .line 17
    iget-object v0, v0, Lcom/netease/nis/alivedetected/AliveDetector;->l:Lcom/netease/nis/alivedetected/NISCameraPreview;

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {v0}, Lcom/netease/nis/alivedetected/NISCameraPreview;->getCurrentAction()Lcom/netease/nis/alivedetected/ActionType;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/netease/nis/alivedetected/c;->a:Lcom/netease/nis/alivedetected/AliveDetector;

    .line 21
    iget-object v1, v1, Lcom/netease/nis/alivedetected/AliveDetector;->s:Lcom/netease/nis/alivedetected/ActionType;

    if-nez v1, :cond_1

    if-eqz v0, :cond_4

    :cond_1
    if-nez v0, :cond_2

    .line 22
    invoke-virtual {v1}, Lcom/netease/nis/alivedetected/ActionType;->getActionTip()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/netease/nis/alivedetected/ActionType;->getActionTip()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v0, :cond_3

    .line 23
    iget-object v0, p0, Lcom/netease/nis/alivedetected/c;->a:Lcom/netease/nis/alivedetected/AliveDetector;

    .line 24
    iget-object v0, v0, Lcom/netease/nis/alivedetected/AliveDetector;->s:Lcom/netease/nis/alivedetected/ActionType;

    .line 25
    :cond_3
    invoke-virtual {v0}, Lcom/netease/nis/alivedetected/ActionType;->getActionID()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {}, Lcom/netease/nis/alivedetected/e/d;->a()Lcom/netease/nis/alivedetected/e/d;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "2"

    :try_start_1
    sget-object v4, Lcom/netease/nis/alivedetected/AliveDetector;->mToken:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/netease/nis/alivedetected/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    sget-boolean v2, Lcom/netease/nis/alivedetected/e/a;->c:Z

    if-eqz v2, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/netease/nis/alivedetected/c;->a:Lcom/netease/nis/alivedetected/AliveDetector;

    .line 29
    iget-object v4, v3, Lcom/netease/nis/alivedetected/AliveDetector;->v:[Ljava/lang/String;

    .line 30
    array-length v4, v4

    if-ge v2, v4, :cond_4

    .line 31
    iget-object v2, v3, Lcom/netease/nis/alivedetected/AliveDetector;->n:Lcom/netease/nis/alivedetected/a;

    if-eqz v2, :cond_4

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/netease/nis/alivedetected/c;->a:Lcom/netease/nis/alivedetected/AliveDetector;

    .line 33
    iget-object v4, v4, Lcom/netease/nis/alivedetected/AliveDetector;->h:Ljava/lang/String;

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/nis/alivedetected/c;->a:Lcom/netease/nis/alivedetected/AliveDetector;

    .line 35
    iget-object v4, v4, Lcom/netease/nis/alivedetected/AliveDetector;->v:[Ljava/lang/String;

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v0, v4, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/nis/alivedetected/c;->a:Lcom/netease/nis/alivedetected/AliveDetector;

    .line 37
    iget-object v3, v3, Lcom/netease/nis/alivedetected/AliveDetector;->l:Lcom/netease/nis/alivedetected/NISCameraPreview;

    .line 38
    invoke-virtual {v3}, Lcom/netease/nis/alivedetected/NISCameraPreview;->getCurrentPassedActionCount()I

    move-result v3

    iget-object v4, p0, Lcom/netease/nis/alivedetected/c;->a:Lcom/netease/nis/alivedetected/AliveDetector;

    .line 39
    iget-object v4, v4, Lcom/netease/nis/alivedetected/AliveDetector;->d:Landroid/content/Context;

    .line 40
    invoke-virtual {v2, v0, v3, v1, v4}, Lcom/netease/nis/alivedetected/a;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
