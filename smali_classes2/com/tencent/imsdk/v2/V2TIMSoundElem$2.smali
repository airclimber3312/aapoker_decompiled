.class Lcom/tencent/imsdk/v2/V2TIMSoundElem$2;
.super Ljava/lang/Object;
.source "V2TIMSoundElem.java"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMSoundElem;->downloadSound(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMSoundElem;

.field final synthetic val$v2TIMDownloadCallback:Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMSoundElem;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMSoundElem$2;->this$0:Lcom/tencent/imsdk/v2/V2TIMSoundElem;

    iput-object p2, p0, Lcom/tencent/imsdk/v2/V2TIMSoundElem$2;->val$v2TIMDownloadCallback:Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSoundElem$2;->val$v2TIMDownloadCallback:Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMSoundElem$2;->val$v2TIMDownloadCallback:Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0}, Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;->onSuccess()V

    :cond_0
    return-void
.end method
