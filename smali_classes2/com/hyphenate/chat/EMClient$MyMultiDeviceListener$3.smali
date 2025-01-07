.class Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener;->onRoamDeleteEvent(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener;

.field final synthetic val$beforeTimeStamp:J

.field final synthetic val$conversation:Ljava/lang/String;

.field final synthetic val$deviceId:Ljava/lang/String;

.field final synthetic val$msgIdList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener;Ljava/util/List;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener$3;->this$1:Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener;

    iput-object p2, p0, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener$3;->val$msgIdList:Ljava/util/List;

    iput-object p3, p0, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener$3;->val$conversation:Ljava/lang/String;

    iput-wide p4, p0, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener$3;->val$beforeTimeStamp:J

    iput-object p6, p0, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener$3;->val$deviceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener$3;->this$1:Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener;

    iget-object v0, v0, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v0}, Lcom/hyphenate/chat/EMClient;->access$600(Lcom/hyphenate/chat/EMClient;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener$3;->val$msgIdList:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener$3;->this$1:Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener;

    iget-object v1, v1, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v1}, Lcom/hyphenate/chat/EMClient;->access$700(Lcom/hyphenate/chat/EMClient;)Lcom/hyphenate/chat/EMChatManager;

    move-result-object v1

    iget-object v2, p0, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener$3;->val$conversation:Ljava/lang/String;

    iget-object v3, p0, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener$3;->val$msgIdList:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/hyphenate/chat/EMChatManager;->clearCaches(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener$3;->this$1:Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener;

    iget-object v1, v1, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v1}, Lcom/hyphenate/chat/EMClient;->access$700(Lcom/hyphenate/chat/EMClient;)Lcom/hyphenate/chat/EMChatManager;

    move-result-object v1

    iget-object v2, p0, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener$3;->val$conversation:Ljava/lang/String;

    iget-wide v3, p0, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener$3;->val$beforeTimeStamp:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/hyphenate/chat/EMChatManager;->clearCaches(Ljava/lang/String;J)V

    :goto_0
    iget-object v1, p0, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener$3;->this$1:Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener;

    iget-object v1, v1, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener;->this$0:Lcom/hyphenate/chat/EMClient;

    invoke-static {v1}, Lcom/hyphenate/chat/EMClient;->access$600(Lcom/hyphenate/chat/EMClient;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyphenate/EMMultiDeviceListener;

    iget-object v3, p0, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener$3;->val$conversation:Ljava/lang/String;

    iget-object v4, p0, Lcom/hyphenate/chat/EMClient$MyMultiDeviceListener$3;->val$deviceId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/hyphenate/EMMultiDeviceListener;->onMessageRemoved(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
