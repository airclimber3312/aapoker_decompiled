.class Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$2$1;
.super Ljava/lang/Object;
.source "V2TIMMessageManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$2;->onUploadProgress(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$2;

.field final synthetic val$currentSize:I

.field final synthetic val$totalSize:I


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$2;II)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$2$1;->this$1:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$2;

    iput p2, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$2$1;->val$totalSize:I

    iput p3, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$2$1;->val$currentSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$2$1;->this$1:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$2;

    iget-object v0, v0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$2;->val$sendCallback:Lcom/tencent/imsdk/v2/V2TIMSendCallback;

    if-eqz v0, :cond_1

    .line 541
    iget v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$2$1;->val$totalSize:I

    if-lez v0, :cond_0

    .line 542
    iget v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$2$1;->val$currentSize:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v1, v1, v0

    float-to-int v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 545
    :goto_0
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$2$1;->this$1:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$2;

    iget-object v1, v1, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$2;->val$sendCallback:Lcom/tencent/imsdk/v2/V2TIMSendCallback;

    invoke-interface {v1, v0}, Lcom/tencent/imsdk/v2/V2TIMSendCallback;->onProgress(I)V

    :cond_1
    return-void
.end method
