.class Lcom/tencent/imsdk/v2/V2TIMManagerImpl$12;
.super Ljava/lang/Object;
.source "V2TIMManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->setGroupListener(Lcom/tencent/imsdk/v2/V2TIMGroupListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

.field final synthetic val$listener:Lcom/tencent/imsdk/v2/V2TIMGroupListener;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMGroupListener;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$12;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    iput-object p2, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$12;->val$listener:Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$12;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$300(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$12;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$400(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$12;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$300(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$12;->val$listener:Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$12;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$400(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$12;->val$listener:Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    :cond_1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$12;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$12;->val$listener:Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    invoke-static {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$302(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMGroupListener;)Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    return-void
.end method
