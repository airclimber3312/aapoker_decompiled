.class public Lcom/hyphenate/push/platform/vivo/a;
.super Lcom/hyphenate/push/platform/a;


# static fields
.field private static final a:Ljava/lang/String; = "EMVivoPush"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/push/platform/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hyphenate/push/EMPushConfig;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/hyphenate/push/EMPushConfig;->getVivoAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hyphenate/push/EMPushConfig;->getVivoAppKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/hyphenate/push/EMPushType;
    .locals 1

    sget-object v0, Lcom/hyphenate/push/EMPushType;->VIVOPUSH:Lcom/hyphenate/push/EMPushType;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/hyphenate/push/EMPushConfig;Lcom/hyphenate/push/PushListener;)V
    .locals 2

    invoke-static {p1}, Lcom/vivo/push/PushClient;->getInstance(Landroid/content/Context;)Lcom/vivo/push/PushClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/vivo/push/PushClient;->isSupport()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hyphenate/push/platform/vivo/a;->b()Lcom/hyphenate/push/EMPushType;

    move-result-object p2

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, p2, v0, v1}, Lcom/hyphenate/push/EMPushHelper;->onErrorResponse(Lcom/hyphenate/push/EMPushType;J)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/vivo/push/PushClient;->getInstance(Landroid/content/Context;)Lcom/vivo/push/PushClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/vivo/push/PushClient;->initialize()V

    invoke-static {p1}, Lcom/vivo/push/PushClient;->getInstance(Landroid/content/Context;)Lcom/vivo/push/PushClient;

    move-result-object p2

    new-instance p3, Lcom/hyphenate/push/platform/vivo/EMVivoPush$1;

    invoke-direct {p3, p0, p1}, Lcom/hyphenate/push/platform/vivo/EMVivoPush$1;-><init>(Lcom/hyphenate/push/platform/vivo/a;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/vivo/push/PushClient;->turnOnPush(Lcom/vivo/push/IPushActionListener;)V
    :try_end_0
    .catch Lcom/vivo/push/util/VivoPushException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Vivo init failed: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vivo/push/util/VivoPushException;->getCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vivo/push/util/VivoPushException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EMVivoPush"

    invoke-static {p2, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
