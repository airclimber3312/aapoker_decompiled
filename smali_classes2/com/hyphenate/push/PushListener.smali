.class public abstract Lcom/hyphenate/push/PushListener;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPushToken(Lcom/hyphenate/push/EMPushType;Lcom/hyphenate/push/EMPushConfig;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public isSupportPush(Lcom/hyphenate/push/EMPushType;Lcom/hyphenate/push/EMPushConfig;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/hyphenate/push/a/a;->a(Lcom/hyphenate/push/EMPushType;Lcom/hyphenate/push/EMPushConfig;)Z

    move-result p1

    return p1
.end method

.method public abstract onBindTokenSuccess(Lcom/hyphenate/push/EMPushType;Ljava/lang/String;)V
.end method

.method public abstract onError(Lcom/hyphenate/push/EMPushType;J)V
.end method
