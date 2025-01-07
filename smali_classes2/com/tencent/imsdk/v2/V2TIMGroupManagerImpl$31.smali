.class Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$31;
.super Ljava/lang/Object;
.source "V2TIMGroupManagerImpl.java"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;->getGroupApplicationList(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
        "Lcom/tencent/imsdk/group/GroupApplicationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;

.field final synthetic val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 0

    .line 808
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$31;->this$0:Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl;

    iput-object p2, p0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$31;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$31;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    if-eqz v0, :cond_0

    .line 821
    invoke-interface {v0, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/tencent/imsdk/group/GroupApplicationResult;)V
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$31;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    if-eqz v0, :cond_0

    .line 812
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupApplicationResult;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMGroupApplicationResult;-><init>()V

    .line 813
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/v2/V2TIMGroupApplicationResult;->setGroupApplicationResult(Lcom/tencent/imsdk/group/GroupApplicationResult;)V

    .line 814
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$31;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    invoke-interface {p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 808
    check-cast p1, Lcom/tencent/imsdk/group/GroupApplicationResult;

    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMGroupManagerImpl$31;->onSuccess(Lcom/tencent/imsdk/group/GroupApplicationResult;)V

    return-void
.end method
