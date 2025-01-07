.class Lcom/tykj/aapk/sdk/IMServer$9;
.super Ljava/lang/Object;
.source "IMServer.java"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tykj/aapk/sdk/IMServer;->ApplyJoinGroup(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tykj/aapk/sdk/IMServer;


# direct methods
.method constructor <init>(Lcom/tykj/aapk/sdk/IMServer;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/tykj/aapk/sdk/IMServer$9;->this$0:Lcom/tykj/aapk/sdk/IMServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u52a0\u5165\u7fa4\u7ec4\u5931\u8d25 = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", desc = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IMServer"

    invoke-static {p2, p1}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    const-string v0, "IMServer"

    const-string/jumbo v1, "\u52a0\u5165\u7fa4\u7ec4\u6210\u529f"

    .line 592
    invoke-static {v0, v1}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    new-instance v0, Lcom/tykj/aapk/sdk/protocal/ProtocalIMOperateMes;

    invoke-direct {v0}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMOperateMes;-><init>()V

    const/4 v1, 0x0

    .line 594
    invoke-virtual {v0, v1}, Lcom/tykj/aapk/sdk/protocal/ProtocalIMOperateMes;->setOpearteType(I)V

    .line 595
    new-instance v1, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;

    invoke-direct {v1}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;-><init>()V

    const/16 v2, 0x65

    .line 596
    invoke-virtual {v1, v2}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;->setType(I)V

    .line 597
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tykj/aapk/sdk/protocal/ProtocalRespond;->setContent(Ljava/lang/String;)V

    .line 598
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tykj/aapk/sdk/SdkServer;->CallRespond(Ljava/lang/String;)V

    return-void
.end method
