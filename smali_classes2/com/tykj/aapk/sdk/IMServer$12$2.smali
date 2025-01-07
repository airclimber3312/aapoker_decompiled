.class Lcom/tykj/aapk/sdk/IMServer$12$2;
.super Ljava/lang/Object;
.source "IMServer.java"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tykj/aapk/sdk/IMServer$12;->onSuccess(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tykj/aapk/sdk/IMServer$12;


# direct methods
.method constructor <init>(Lcom/tykj/aapk/sdk/IMServer$12;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lcom/tykj/aapk/sdk/IMServer$12$2;->this$1:Lcom/tykj/aapk/sdk/IMServer$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u83b7\u53d6\u5386\u53f2\u8bed\u97f3\u6d88\u606f\u5931\u8d25\uff1a, code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", desc:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IMServer"

    invoke-static {p2, p1}, Lcom/tykj/aapk/sdk/SdkServer;->LogUnity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(Lcom/tencent/imsdk/v2/V2TIMElem$V2ProgressInfo;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
