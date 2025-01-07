.class Lcom/tykj/aapk/sdk/IMServer$2;
.super Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;
.source "IMServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tykj/aapk/sdk/IMServer;->Init(Landroid/app/Activity;ILjava/lang/String;)V
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

    .line 184
    iput-object p1, p0, Lcom/tykj/aapk/sdk/IMServer$2;->this$0:Lcom/tykj/aapk/sdk/IMServer;

    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecvMessageModified(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 1

    const-string p1, "IMServer"

    const-string v0, "im \u76d1\u542c\u63a5\u53e3\u63a5\u6536\u5230\u4e00\u6761\u6d88\u606f,\u88ab\u4fee\u6539"

    .line 195
    invoke-static {p1, v0}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRecvNewMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 2

    const-string v0, "IMServer"

    const-string v1, "im \u76d1\u542c\u63a5\u53e3\u63a5\u6536\u5230\u4e00\u6761\u6d88\u606f"

    .line 187
    invoke-static {v0, v1}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/tykj/aapk/sdk/IMServer$2;->this$0:Lcom/tykj/aapk/sdk/IMServer;

    invoke-virtual {v0, p1}, Lcom/tykj/aapk/sdk/IMServer;->MessageText(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    .line 189
    iget-object v0, p0, Lcom/tykj/aapk/sdk/IMServer$2;->this$0:Lcom/tykj/aapk/sdk/IMServer;

    invoke-virtual {v0, p1}, Lcom/tykj/aapk/sdk/IMServer;->EmojiCall(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    .line 190
    iget-object v0, p0, Lcom/tykj/aapk/sdk/IMServer$2;->this$0:Lcom/tykj/aapk/sdk/IMServer;

    invoke-virtual {v0, p1}, Lcom/tykj/aapk/sdk/IMServer;->MessageSound(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    .line 191
    iget-object v0, p0, Lcom/tykj/aapk/sdk/IMServer$2;->this$0:Lcom/tykj/aapk/sdk/IMServer;

    invoke-virtual {v0, p1}, Lcom/tykj/aapk/sdk/IMServer;->MessageSystem(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-void
.end method
