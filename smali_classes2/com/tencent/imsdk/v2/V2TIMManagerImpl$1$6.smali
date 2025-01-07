.class Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$6;
.super Ljava/lang/Object;
.source "V2TIMManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;->onSelfInfoUpdated(Lcom/tencent/imsdk/relationship/UserInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;

.field final synthetic val$info:Lcom/tencent/imsdk/relationship/UserInfo;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;Lcom/tencent/imsdk/relationship/UserInfo;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$6;->this$1:Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;

    iput-object p2, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$6;->val$info:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$6;->this$1:Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;

    iget-object v0, v0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$100(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMSDKListener;

    .line 156
    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;

    invoke-direct {v2}, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;-><init>()V

    .line 157
    iget-object v3, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$6;->val$info:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {v2, v3}, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->setUserInfo(Lcom/tencent/imsdk/relationship/UserInfo;)V

    .line 158
    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMSDKListener;->onSelfInfoUpdated(Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method
