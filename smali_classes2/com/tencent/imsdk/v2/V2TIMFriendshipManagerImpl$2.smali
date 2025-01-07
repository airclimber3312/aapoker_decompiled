.class Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$2;
.super Ljava/lang/Object;
.source "V2TIMFriendshipManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;->addFriendListener(Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;

.field final synthetic val$listener:Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$2;->this$0:Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;

    iput-object p2, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$2;->val$listener:Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$2;->this$0:Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;->access$300(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$2;->val$listener:Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$2;->this$0:Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;->access$300(Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMFriendshipManagerImpl$2;->val$listener:Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
