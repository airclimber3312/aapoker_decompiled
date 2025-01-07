.class Lcom/tencent/imsdk/v2/V2TIMManagerImpl$5;
.super Ljava/lang/Object;
.source "V2TIMManagerImpl.java"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->login(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

.field final synthetic val$callback:Lcom/tencent/imsdk/v2/V2TIMCallback;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$5;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    iput-object p2, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$5;->val$callback:Lcom/tencent/imsdk/v2/V2TIMCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$5;->val$callback:Lcom/tencent/imsdk/v2/V2TIMCallback;

    if-eqz v0, :cond_0

    .line 276
    invoke-interface {v0, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$5;->val$callback:Lcom/tencent/imsdk/v2/V2TIMCallback;

    if-eqz v0, :cond_0

    .line 269
    invoke-interface {v0}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onSuccess()V

    :cond_0
    return-void
.end method
