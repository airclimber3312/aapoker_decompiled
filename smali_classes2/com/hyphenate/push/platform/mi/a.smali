.class public Lcom/hyphenate/push/platform/mi/a;
.super Lcom/hyphenate/push/platform/a;


# static fields
.field private static final a:Ljava/lang/String; = "EMMiPush"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/push/platform/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hyphenate/push/EMPushConfig;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lcom/hyphenate/push/EMPushConfig;->getMiAppId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/hyphenate/push/EMPushType;
    .locals 1

    sget-object v0, Lcom/hyphenate/push/EMPushType;->MIPUSH:Lcom/hyphenate/push/EMPushType;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/hyphenate/push/EMPushConfig;Lcom/hyphenate/push/PushListener;)V
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->getRegId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/hyphenate/push/EMPushConfig;->getMiAppId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/hyphenate/push/EMPushConfig;->getMiAppKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->registerPush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hyphenate/push/platform/mi/a;->b()Lcom/hyphenate/push/EMPushType;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/hyphenate/push/EMPushHelper;->onReceiveToken(Lcom/hyphenate/push/EMPushType;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
