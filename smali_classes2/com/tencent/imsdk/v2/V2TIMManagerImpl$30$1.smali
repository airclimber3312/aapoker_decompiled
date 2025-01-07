.class Lcom/tencent/imsdk/v2/V2TIMManagerImpl$30$1;
.super Ljava/lang/Object;
.source "V2TIMManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMManagerImpl$30;->success(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/imsdk/v2/V2TIMManagerImpl$30;

.field final synthetic val$openPush:I


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl$30;I)V
    .locals 0

    .line 1061
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$30$1;->this$1:Lcom/tencent/imsdk/v2/V2TIMManagerImpl$30;

    iput p2, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$30$1;->val$openPush:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1064
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$30$1;->this$1:Lcom/tencent/imsdk/v2/V2TIMManagerImpl$30;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$30;->access$500(Lcom/tencent/imsdk/v2/V2TIMManagerImpl$30;)Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$30$1;->this$1:Lcom/tencent/imsdk/v2/V2TIMManagerImpl$30;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$30;->access$600(Lcom/tencent/imsdk/v2/V2TIMManagerImpl$30;)Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    move-result-object v0

    iget v1, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$30$1;->val$openPush:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
