.class Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$4;
.super Ljava/lang/Object;
.source "V2TIMManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;->onKickedOffline()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$4;->this$1:Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$4;->this$1:Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;

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

    .line 132
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMSDKListener;->onKickedOffline()V

    goto :goto_0

    :cond_0
    return-void
.end method
