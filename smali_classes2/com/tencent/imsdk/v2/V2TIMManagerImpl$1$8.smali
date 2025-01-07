.class Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$8;
.super Ljava/lang/Object;
.source "V2TIMManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;->onUserStatusChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;

.field final synthetic val$userStatusList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;Ljava/util/List;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$8;->this$1:Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;

    iput-object p2, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$8;->val$userStatusList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 181
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$8;->this$1:Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;

    iget-object v0, v0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$100(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMSDKListener;

    .line 182
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 183
    iget-object v3, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$8;->val$userStatusList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/imsdk/relationship/UserStatus;

    .line 184
    new-instance v5, Lcom/tencent/imsdk/v2/V2TIMUserStatus;

    invoke-direct {v5}, Lcom/tencent/imsdk/v2/V2TIMUserStatus;-><init>()V

    .line 185
    invoke-virtual {v5, v4}, Lcom/tencent/imsdk/v2/V2TIMUserStatus;->setUserStatus(Lcom/tencent/imsdk/relationship/UserStatus;)V

    .line 186
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 189
    :cond_0
    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMSDKListener;->onUserStatusChanged(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method
