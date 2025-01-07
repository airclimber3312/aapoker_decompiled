.class Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$7;
.super Ljava/lang/Object;
.source "V2TIMManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;->onLog(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;

.field final synthetic val$logContent:Ljava/lang/String;

.field final synthetic val$logLevel:I


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;ILjava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$7;->this$1:Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;

    iput p2, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$7;->val$logLevel:I

    iput-object p3, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$7;->val$logContent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$7;->this$1:Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;

    iget-object v0, v0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;->val$logListener:Lcom/tencent/imsdk/v2/V2TIMLogListener;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$7;->this$1:Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;

    iget-object v0, v0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1;->val$logListener:Lcom/tencent/imsdk/v2/V2TIMLogListener;

    iget v1, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$7;->val$logLevel:I

    iget-object v2, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$1$7;->val$logContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/imsdk/v2/V2TIMLogListener;->onLog(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
