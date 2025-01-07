.class public Lcom/hyphenate/push/platform/b/a;
.super Lcom/hyphenate/push/platform/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/push/platform/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hyphenate/push/EMPushConfig;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lcom/hyphenate/push/EMPushConfig;->getHwAppId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/hyphenate/push/EMPushType;
    .locals 1

    sget-object v0, Lcom/hyphenate/push/EMPushType;->HMSPUSH:Lcom/hyphenate/push/EMPushType;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/hyphenate/push/EMPushConfig;Lcom/hyphenate/push/PushListener;)V
    .locals 0

    return-void
.end method
