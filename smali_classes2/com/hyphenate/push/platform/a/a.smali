.class public Lcom/hyphenate/push/platform/a/a;
.super Lcom/hyphenate/push/platform/a;


# static fields
.field private static final a:Ljava/lang/String; = "EMFCMPush"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/push/platform/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hyphenate/push/EMPushConfig;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lcom/hyphenate/push/EMPushConfig;->getFcmSenderId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/hyphenate/push/EMPushType;
    .locals 1

    sget-object v0, Lcom/hyphenate/push/EMPushType;->FCM:Lcom/hyphenate/push/EMPushType;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/hyphenate/push/EMPushConfig;Lcom/hyphenate/push/PushListener;)V
    .locals 2

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/hyphenate/push/platform/a/a;->b()Lcom/hyphenate/push/EMPushType;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/hyphenate/push/PushListener;->isSupportPush(Lcom/hyphenate/push/EMPushType;Lcom/hyphenate/push/EMPushConfig;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hyphenate/push/platform/a/a;->b()Lcom/hyphenate/push/EMPushType;

    move-result-object p2

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, p2, v0, v1}, Lcom/hyphenate/push/EMPushHelper;->onErrorResponse(Lcom/hyphenate/push/EMPushType;J)V

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hyphenate/push/EMPushHelper;->getFCMPushToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/hyphenate/push/platform/a/a;->b()Lcom/hyphenate/push/EMPushType;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/hyphenate/push/PushListener;->getPushToken(Lcom/hyphenate/push/EMPushType;Lcom/hyphenate/push/EMPushConfig;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    :try_start_0
    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/hyphenate/push/EMPushHelper;->setFCMPushToken(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object p2

    invoke-virtual {p0}, Lcom/hyphenate/push/platform/a/a;->b()Lcom/hyphenate/push/EMPushType;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/hyphenate/push/EMPushHelper;->onReceiveToken(Lcom/hyphenate/push/EMPushType;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method
