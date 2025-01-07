.class public abstract Lcom/tencent/imsdk/common/IMCallback;
.super Ljava/lang/Object;
.source "IMCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected callback:Lcom/tencent/imsdk/v2/V2TIMCallback;

.field protected completeCallback:Lcom/tencent/imsdk/v2/V2TIMCompleteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/imsdk/v2/V2TIMCompleteCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected valueCallback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/tencent/imsdk/common/IMCallback;->callback:Lcom/tencent/imsdk/v2/V2TIMCallback;

    return-void
.end method

.method protected constructor <init>(Lcom/tencent/imsdk/v2/V2TIMCompleteCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMCompleteCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/tencent/imsdk/common/IMCallback;->completeCallback:Lcom/tencent/imsdk/v2/V2TIMCompleteCallback;

    return-void
.end method

.method protected constructor <init>(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/tencent/imsdk/common/IMCallback;->valueCallback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2

    .line 41
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/common/IMCallback$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/imsdk/common/IMCallback$2;-><init>(Lcom/tencent/imsdk/common/IMCallback;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fail(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 54
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/common/IMCallback$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/imsdk/common/IMCallback$3;-><init>(Lcom/tencent/imsdk/common/IMCallback;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 26
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    new-instance v1, Lcom/tencent/imsdk/common/IMCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/imsdk/common/IMCallback$1;-><init>(Lcom/tencent/imsdk/common/IMCallback;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/common/IMContext;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
