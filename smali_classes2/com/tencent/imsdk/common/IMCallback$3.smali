.class Lcom/tencent/imsdk/common/IMCallback$3;
.super Ljava/lang/Object;
.source "IMCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/common/IMCallback;

.field final synthetic val$code:I

.field final synthetic val$data:Ljava/lang/Object;

.field final synthetic val$errorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/common/IMCallback;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/tencent/imsdk/common/IMCallback$3;->this$0:Lcom/tencent/imsdk/common/IMCallback;

    iput p2, p0, Lcom/tencent/imsdk/common/IMCallback$3;->val$code:I

    iput-object p3, p0, Lcom/tencent/imsdk/common/IMCallback$3;->val$errorMessage:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/imsdk/common/IMCallback$3;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/tencent/imsdk/common/IMCallback$3;->this$0:Lcom/tencent/imsdk/common/IMCallback;

    iget-object v0, v0, Lcom/tencent/imsdk/common/IMCallback;->callback:Lcom/tencent/imsdk/v2/V2TIMCallback;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/tencent/imsdk/common/IMCallback$3;->this$0:Lcom/tencent/imsdk/common/IMCallback;

    iget-object v0, v0, Lcom/tencent/imsdk/common/IMCallback;->callback:Lcom/tencent/imsdk/v2/V2TIMCallback;

    iget v1, p0, Lcom/tencent/imsdk/common/IMCallback$3;->val$code:I

    iget-object v2, p0, Lcom/tencent/imsdk/common/IMCallback$3;->val$errorMessage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/common/IMCallback$3;->this$0:Lcom/tencent/imsdk/common/IMCallback;

    iget-object v0, v0, Lcom/tencent/imsdk/common/IMCallback;->valueCallback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/tencent/imsdk/common/IMCallback$3;->this$0:Lcom/tencent/imsdk/common/IMCallback;

    iget-object v0, v0, Lcom/tencent/imsdk/common/IMCallback;->valueCallback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    iget v1, p0, Lcom/tencent/imsdk/common/IMCallback$3;->val$code:I

    iget-object v2, p0, Lcom/tencent/imsdk/common/IMCallback$3;->val$errorMessage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/tencent/imsdk/common/IMCallback$3;->this$0:Lcom/tencent/imsdk/common/IMCallback;

    iget-object v0, v0, Lcom/tencent/imsdk/common/IMCallback;->completeCallback:Lcom/tencent/imsdk/v2/V2TIMCompleteCallback;

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/tencent/imsdk/common/IMCallback$3;->this$0:Lcom/tencent/imsdk/common/IMCallback;

    iget-object v0, v0, Lcom/tencent/imsdk/common/IMCallback;->completeCallback:Lcom/tencent/imsdk/v2/V2TIMCompleteCallback;

    iget v1, p0, Lcom/tencent/imsdk/common/IMCallback$3;->val$code:I

    iget-object v2, p0, Lcom/tencent/imsdk/common/IMCallback$3;->val$errorMessage:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/imsdk/common/IMCallback$3;->val$data:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/imsdk/v2/V2TIMCompleteCallback;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
