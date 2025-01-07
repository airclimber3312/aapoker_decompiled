.class Lcom/hyphenate/chat/EMSmartHeartBeat$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hyphenate/EMMessageListener;


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

    iput-object p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$2;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCmdMessageReceived(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$2;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$402(Lcom/hyphenate/chat/EMSmartHeartBeat;Z)Z

    iget-object p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$2;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMSmartHeartBeat;->scheduleNextAlarm()V

    return-void
.end method

.method public onGroupMessageRead(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMGroupReadAck;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onMessageChanged(Lcom/hyphenate/chat/EMMessage;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public synthetic onMessageContentChanged(Lcom/hyphenate/chat/EMMessage;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/hyphenate/EMMessageListener$-CC;->$default$onMessageContentChanged(Lcom/hyphenate/EMMessageListener;Lcom/hyphenate/chat/EMMessage;Ljava/lang/String;J)V

    return-void
.end method

.method public onMessageDelivered(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$2;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$402(Lcom/hyphenate/chat/EMSmartHeartBeat;Z)Z

    iget-object p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$2;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMSmartHeartBeat;->scheduleNextAlarm()V

    return-void
.end method

.method public synthetic onMessagePinChanged(Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;Lcom/hyphenate/chat/EMMessagePinInfo;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/hyphenate/EMMessageListener$-CC;->$default$onMessagePinChanged(Lcom/hyphenate/EMMessageListener;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/chat/EMMessagePinInfo$PinOperation;Lcom/hyphenate/chat/EMMessagePinInfo;)V

    return-void
.end method

.method public onMessageRead(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$2;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$402(Lcom/hyphenate/chat/EMSmartHeartBeat;Z)Z

    iget-object p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$2;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMSmartHeartBeat;->scheduleNextAlarm()V

    return-void
.end method

.method public onMessageRecalled(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$2;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$402(Lcom/hyphenate/chat/EMSmartHeartBeat;Z)Z

    iget-object p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$2;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMSmartHeartBeat;->scheduleNextAlarm()V

    return-void
.end method

.method public synthetic onMessageRecalledWithExt(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/hyphenate/EMMessageListener$-CC;->$default$onMessageRecalledWithExt(Lcom/hyphenate/EMMessageListener;Ljava/util/List;)V

    return-void
.end method

.method public onMessageReceived(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyphenate/chat/EMMessage;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$2;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/hyphenate/chat/EMSmartHeartBeat;->access$402(Lcom/hyphenate/chat/EMSmartHeartBeat;Z)Z

    iget-object p1, p0, Lcom/hyphenate/chat/EMSmartHeartBeat$2;->this$0:Lcom/hyphenate/chat/EMSmartHeartBeat;

    invoke-virtual {p1}, Lcom/hyphenate/chat/EMSmartHeartBeat;->scheduleNextAlarm()V

    return-void
.end method

.method public synthetic onReactionChanged(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/hyphenate/EMMessageListener$-CC;->$default$onReactionChanged(Lcom/hyphenate/EMMessageListener;Ljava/util/List;)V

    return-void
.end method

.method public onReadAckForGroupMessageUpdated()V
    .locals 0

    return-void
.end method
