.class Lcom/tykj/aapk/sdk/IMServer$11;
.super Ljava/lang/Object;
.source "IMServer.java"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tykj/aapk/sdk/IMServer;->SetConversation(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
        "Lcom/tencent/imsdk/v2/V2TIMConversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tykj/aapk/sdk/IMServer;


# direct methods
.method constructor <init>(Lcom/tykj/aapk/sdk/IMServer;)V
    .locals 0

    .line 629
    iput-object p1, p0, Lcom/tykj/aapk/sdk/IMServer$11;->this$0:Lcom/tykj/aapk/sdk/IMServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failure, code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", desc:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "imsdk"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Lcom/tencent/imsdk/v2/V2TIMConversation;)V
    .locals 2

    const-string v0, "imsdk"

    const-string/jumbo v1, "\u4f1a\u8bdd\u5355\u5143\u83b7\u53d6\u6210\u529f"

    .line 632
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v0, p0, Lcom/tykj/aapk/sdk/IMServer$11;->this$0:Lcom/tykj/aapk/sdk/IMServer;

    iput-object p1, v0, Lcom/tykj/aapk/sdk/IMServer;->timConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 629
    check-cast p1, Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-virtual {p0, p1}, Lcom/tykj/aapk/sdk/IMServer$11;->onSuccess(Lcom/tencent/imsdk/v2/V2TIMConversation;)V

    return-void
.end method
