.class Lcom/tykj/aapk/sdk/IMServer$1;
.super Lcom/tencent/imsdk/v2/V2TIMSDKListener;
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

    .line 115
    iput-object p1, p0, Lcom/tykj/aapk/sdk/IMServer$1;->this$0:Lcom/tykj/aapk/sdk/IMServer;

    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMSDKListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailed(ILjava/lang/String;)V
    .locals 0

    .line 132
    invoke-super {p0, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMSDKListener;->onConnectFailed(ILjava/lang/String;)V

    const-string p1, "IMServer"

    const-string p2, "im \u8fde\u63a5\u817e\u8baf\u4e91\u670d\u52a1\u5668\u5931\u8d25"

    .line 134
    invoke-static {p1, p2}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConnectSuccess()V
    .locals 2

    .line 125
    invoke-super {p0}, Lcom/tencent/imsdk/v2/V2TIMSDKListener;->onConnectSuccess()V

    const-string v0, "IMServer"

    const-string v1, "im \u5df2\u7ecf\u6210\u529f\u8fde\u63a5\u5230\u817e\u8baf\u4e91\u670d\u52a1\u5668"

    .line 127
    invoke-static {v0, v1}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConnecting()V
    .locals 2

    .line 118
    invoke-super {p0}, Lcom/tencent/imsdk/v2/V2TIMSDKListener;->onConnecting()V

    const-string v0, "IMServer"

    const-string v1, "im \u6b63\u5728\u8fde\u63a5\u5230\u817e\u8baf\u4e91\u670d\u52a1\u5668"

    .line 120
    invoke-static {v0, v1}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKickedOffline()V
    .locals 2

    .line 139
    invoke-super {p0}, Lcom/tencent/imsdk/v2/V2TIMSDKListener;->onKickedOffline()V

    const-string v0, "IMServer"

    const-string v1, "im \u5f53\u524d\u7528\u6237\u88ab\u8e22\u4e0b\u7ebf"

    .line 141
    invoke-static {v0, v1}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSelfInfoUpdated(Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;)V
    .locals 1

    .line 153
    invoke-super {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMSDKListener;->onSelfInfoUpdated(Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;)V

    const-string p1, "IMServer"

    const-string v0, "im \u5f53\u524d\u7528\u6237\u7684\u8d44\u6599\u53d1\u751f\u4e86\u66f4\u65b0"

    .line 155
    invoke-static {p1, v0}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUserSigExpired()V
    .locals 2

    .line 146
    invoke-super {p0}, Lcom/tencent/imsdk/v2/V2TIMSDKListener;->onUserSigExpired()V

    const-string v0, "IMServer"

    const-string v1, "im \u767b\u5f55\u7968\u636e\u5df2\u7ecf\u8fc7\u671f"

    .line 148
    invoke-static {v0, v1}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUserStatusChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMUserStatus;",
            ">;)V"
        }
    .end annotation

    .line 160
    invoke-super {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMSDKListener;->onUserStatusChanged(Ljava/util/List;)V

    const-string p1, "IMServer"

    const-string v0, "im \u5f53\u524d\u7528\u6237\u7684\u8d44\u6599\u53d1\u751f\u4e86\u6539\u53d8"

    .line 162
    invoke-static {p1, v0}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
