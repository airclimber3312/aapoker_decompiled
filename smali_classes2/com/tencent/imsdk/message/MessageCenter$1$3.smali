.class Lcom/tencent/imsdk/message/MessageCenter$1$3;
.super Ljava/lang/Object;
.source "MessageCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/message/MessageCenter$1;->onReceiveGroupMessageReceipt(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/imsdk/message/MessageCenter$1;

.field final synthetic val$receiptList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/message/MessageCenter$1;Ljava/util/List;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/tencent/imsdk/message/MessageCenter$1$3;->this$1:Lcom/tencent/imsdk/message/MessageCenter$1;

    iput-object p2, p0, Lcom/tencent/imsdk/message/MessageCenter$1$3;->val$receiptList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/tencent/imsdk/message/MessageCenter$1$3;->this$1:Lcom/tencent/imsdk/message/MessageCenter$1;

    iget-object v0, v0, Lcom/tencent/imsdk/message/MessageCenter$1;->this$0:Lcom/tencent/imsdk/message/MessageCenter;

    invoke-static {v0}, Lcom/tencent/imsdk/message/MessageCenter;->access$200(Lcom/tencent/imsdk/message/MessageCenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/message/MessageListener;

    .line 71
    iget-object v2, p0, Lcom/tencent/imsdk/message/MessageCenter$1$3;->val$receiptList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/message/MessageListener;->onReceiveGroupMessageReceipt(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method
