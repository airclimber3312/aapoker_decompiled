.class Lcom/tencent/imsdk/message/MessageCenter$1$6;
.super Ljava/lang/Object;
.source "MessageCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/message/MessageCenter$1;->onReceiveMessageExtensionsChanged(Lcom/tencent/imsdk/message/MessageKey;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/imsdk/message/MessageCenter$1;

.field final synthetic val$extensions:Ljava/util/List;

.field final synthetic val$messageKey:Lcom/tencent/imsdk/message/MessageKey;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/message/MessageCenter$1;Lcom/tencent/imsdk/message/MessageKey;Ljava/util/List;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/tencent/imsdk/message/MessageCenter$1$6;->this$1:Lcom/tencent/imsdk/message/MessageCenter$1;

    iput-object p2, p0, Lcom/tencent/imsdk/message/MessageCenter$1$6;->val$messageKey:Lcom/tencent/imsdk/message/MessageKey;

    iput-object p3, p0, Lcom/tencent/imsdk/message/MessageCenter$1$6;->val$extensions:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/tencent/imsdk/message/MessageCenter$1$6;->this$1:Lcom/tencent/imsdk/message/MessageCenter$1;

    iget-object v0, v0, Lcom/tencent/imsdk/message/MessageCenter$1;->this$0:Lcom/tencent/imsdk/message/MessageCenter;

    invoke-static {v0}, Lcom/tencent/imsdk/message/MessageCenter;->access$100(Lcom/tencent/imsdk/message/MessageCenter;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/tencent/imsdk/message/MessageCenter$1$6;->this$1:Lcom/tencent/imsdk/message/MessageCenter$1;

    iget-object v1, v1, Lcom/tencent/imsdk/message/MessageCenter$1;->this$0:Lcom/tencent/imsdk/message/MessageCenter;

    invoke-static {v1}, Lcom/tencent/imsdk/message/MessageCenter;->access$200(Lcom/tencent/imsdk/message/MessageCenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/message/MessageListener;

    .line 112
    iget-object v3, p0, Lcom/tencent/imsdk/message/MessageCenter$1$6;->val$messageKey:Lcom/tencent/imsdk/message/MessageKey;

    iget-object v4, p0, Lcom/tencent/imsdk/message/MessageCenter$1$6;->val$extensions:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/tencent/imsdk/message/MessageListener;->onReceiveMessageExtensionsChanged(Lcom/tencent/imsdk/message/MessageKey;Ljava/util/List;)V

    goto :goto_0

    .line 114
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
