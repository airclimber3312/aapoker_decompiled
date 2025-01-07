.class Lcom/tencent/imsdk/common/IMCallback$2;
.super Ljava/lang/Object;
.source "IMCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/common/IMCallback;

.field final synthetic val$code:I

.field final synthetic val$errorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/common/IMCallback;ILjava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/tencent/imsdk/common/IMCallback$2;->this$0:Lcom/tencent/imsdk/common/IMCallback;

    iput p2, p0, Lcom/tencent/imsdk/common/IMCallback$2;->val$code:I

    iput-object p3, p0, Lcom/tencent/imsdk/common/IMCallback$2;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/tencent/imsdk/common/IMCallback$2;->this$0:Lcom/tencent/imsdk/common/IMCallback;

    iget-object v0, v0, Lcom/tencent/imsdk/common/IMCallback;->callback:Lcom/tencent/imsdk/v2/V2TIMCallback;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/tencent/imsdk/common/IMCallback$2;->this$0:Lcom/tencent/imsdk/common/IMCallback;

    iget-object v0, v0, Lcom/tencent/imsdk/common/IMCallback;->callback:Lcom/tencent/imsdk/v2/V2TIMCallback;

    iget v1, p0, Lcom/tencent/imsdk/common/IMCallback$2;->val$code:I

    iget-object v2, p0, Lcom/tencent/imsdk/common/IMCallback$2;->val$errorMessage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/common/IMCallback$2;->this$0:Lcom/tencent/imsdk/common/IMCallback;

    iget-object v0, v0, Lcom/tencent/imsdk/common/IMCallback;->valueCallback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/tencent/imsdk/common/IMCallback$2;->this$0:Lcom/tencent/imsdk/common/IMCallback;

    iget-object v0, v0, Lcom/tencent/imsdk/common/IMCallback;->valueCallback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    iget v1, p0, Lcom/tencent/imsdk/common/IMCallback$2;->val$code:I

    iget-object v2, p0, Lcom/tencent/imsdk/common/IMCallback$2;->val$errorMessage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
