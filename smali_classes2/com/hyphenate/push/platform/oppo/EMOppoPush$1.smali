.class Lcom/hyphenate/push/platform/oppo/EMOppoPush$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/heytap/msp/push/callback/ICallBackResultService;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/push/platform/oppo/a;->b(Landroid/content/Context;Lcom/hyphenate/push/EMPushConfig;Lcom/hyphenate/push/PushListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/push/platform/oppo/a;


# direct methods
.method constructor <init>(Lcom/hyphenate/push/platform/oppo/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/push/platform/oppo/EMOppoPush$1;->this$0:Lcom/hyphenate/push/platform/oppo/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Oppo init failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EMOppoPush"

    invoke-static {p2, p1}, Lcom/hyphenate/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetNotificationStatus(II)V
    .locals 0

    return-void
.end method

.method public onGetPushStatus(II)V
    .locals 0

    return-void
.end method

.method public onRegister(ILjava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/hyphenate/push/platform/oppo/EMOppoPush$1;->this$0:Lcom/hyphenate/push/platform/oppo/a;

    invoke-virtual {v0}, Lcom/hyphenate/push/platform/oppo/a;->b()Lcom/hyphenate/push/EMPushType;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/hyphenate/push/EMPushHelper;->onReceiveToken(Lcom/hyphenate/push/EMPushType;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/hyphenate/push/platform/oppo/EMOppoPush$1;->this$0:Lcom/hyphenate/push/platform/oppo/a;

    invoke-virtual {v0}, Lcom/hyphenate/push/platform/oppo/a;->b()Lcom/hyphenate/push/EMPushType;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Lcom/hyphenate/push/EMPushHelper;->onErrorResponse(Lcom/hyphenate/push/EMPushType;J)V

    :goto_0
    return-void
.end method

.method public onSetPushTime(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUnRegister(I)V
    .locals 0

    return-void
.end method
