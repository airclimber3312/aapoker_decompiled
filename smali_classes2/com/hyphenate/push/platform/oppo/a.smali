.class public Lcom/hyphenate/push/platform/oppo/a;
.super Lcom/hyphenate/push/platform/a;


# static fields
.field private static final a:Ljava/lang/String; = "EMOppoPush"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/push/platform/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hyphenate/push/EMPushConfig;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lcom/hyphenate/push/EMPushConfig;->getOppoAppKey()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/hyphenate/push/EMPushType;
    .locals 1

    sget-object v0, Lcom/hyphenate/push/EMPushType;->OPPOPUSH:Lcom/hyphenate/push/EMPushType;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/hyphenate/push/EMPushConfig;Lcom/hyphenate/push/PushListener;)V
    .locals 2

    invoke-static {p1}, Lcom/heytap/msp/push/HeytapPushManager;->isSupportPush(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hyphenate/push/platform/oppo/a;->b()Lcom/hyphenate/push/EMPushType;

    move-result-object p2

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, p2, v0, v1}, Lcom/hyphenate/push/EMPushHelper;->onErrorResponse(Lcom/hyphenate/push/EMPushType;J)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/hyphenate/push/EMPushConfig;->getOppoAppKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/hyphenate/push/EMPushConfig;->getOppoAppSecret()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/hyphenate/push/platform/oppo/EMOppoPush$1;

    invoke-direct {v0, p0}, Lcom/hyphenate/push/platform/oppo/EMOppoPush$1;-><init>(Lcom/hyphenate/push/platform/oppo/a;)V

    invoke-static {p1, p3, p2, v0}, Lcom/heytap/msp/push/HeytapPushManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/heytap/msp/push/callback/ICallBackResultService;)V

    return-void
.end method
