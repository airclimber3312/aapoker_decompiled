.class public abstract Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;
.super Ljava/lang/Object;
.source "V2TIMAdvancedMsgListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecvC2CReadReceipt(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRecvMessageExtensionsChanged(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessageExtension;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRecvMessageExtensionsDeleted(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRecvMessageModified(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 0

    return-void
.end method

.method public onRecvMessageReadReceipts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRecvMessageRevoked(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRecvNewMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 0

    return-void
.end method
