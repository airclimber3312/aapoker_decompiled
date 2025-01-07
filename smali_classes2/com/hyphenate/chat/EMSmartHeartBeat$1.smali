.class Lcom/hyphenate/chat/EMSmartHeartBeat$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hyphenate/EMConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMSmartHeartBeat;->onInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMSmartHeartBeat;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$1;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    const-string v0, "smart ping"

    const-string v1, " onConnectred ..."

    invoke-static {v0, v1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hyphenate/push/EMPushHelper;->getInstance()Lcom/hyphenate/push/EMPushHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/push/EMPushHelper;->getPushType()Lcom/hyphenate/push/EMPushType;

    move-result-object v0

    sget-object v1, Lcom/hyphenate/push/EMPushType;->FCM:Lcom/hyphenate/push/EMPushType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$1;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$200(Lcom/hyphenate/chat/EMSmartHeartBeat;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hyphenate/chat/EMClient;->getInstance()Lcom/hyphenate/chat/EMClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMClient;->disconnect()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$1;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-static {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$300(Lcom/hyphenate/chat/EMSmartHeartBeat;)V

    iget-object v0, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$1;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-virtual {v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->scheduleNextAlarm()V

    return-void
.end method

.method public onDisconnected(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " onDisconnected ..."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "smart ping"

    invoke-static {v0, p1}, Lcom/hyphenate/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onLogout(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/hyphenate/EMConnectionListener$-CC;->$default$onLogout(Lcom/hyphenate/EMConnectionListener;I)V

    return-void
.end method

.method public synthetic onLogout(ILcom/hyphenate/chat/EMLoginExtensionInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/hyphenate/EMConnectionListener$-CC;->$default$onLogout(Lcom/hyphenate/EMConnectionListener;ILcom/hyphenate/chat/EMLoginExtensionInfo;)V

    return-void
.end method

.method public synthetic onLogout(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/hyphenate/EMConnectionListener$-CC;->$default$onLogout(Lcom/hyphenate/EMConnectionListener;ILjava/lang/String;)V

    return-void
.end method

.method public synthetic onTokenExpired()V
    .locals 0

    invoke-static {p0}, Lcom/hyphenate/EMConnectionListener$-CC;->$default$onTokenExpired(Lcom/hyphenate/EMConnectionListener;)V

    return-void
.end method

.method public synthetic onTokenWillExpire()V
    .locals 0

    invoke-static {p0}, Lcom/hyphenate/EMConnectionListener$-CC;->$default$onTokenWillExpire(Lcom/hyphenate/EMConnectionListener;)V

    return-void
.end method
