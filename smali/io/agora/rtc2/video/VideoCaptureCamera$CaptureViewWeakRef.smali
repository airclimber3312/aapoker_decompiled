.class public Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;
.super Ljava/lang/ref/WeakReference;
.source "VideoCaptureCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/video/VideoCaptureCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CaptureViewWeakRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc2/video/VideoCaptureCamera;


# direct methods
.method public constructor <init>(Lio/agora/rtc2/video/VideoCaptureCamera;Landroid/view/View;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera;

    .line 427
    invoke-direct {p0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    .line 436
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera;

    iget-object v0, v0, Lio/agora/rtc2/video/VideoCaptureCamera;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera;

    iget-object v0, v0, Lio/agora/rtc2/video/VideoCaptureCamera;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    iget v0, v0, Lio/agora/rtc2/video/VideoCaptureFormat;->mHeight:I

    .line 437
    :goto_0
    invoke-virtual {p0}, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_1
    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 431
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera;

    iget-object v0, v0, Lio/agora/rtc2/video/VideoCaptureCamera;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera;

    iget-object v0, v0, Lio/agora/rtc2/video/VideoCaptureCamera;->mCaptureFormat:Lio/agora/rtc2/video/VideoCaptureFormat;

    iget v0, v0, Lio/agora/rtc2/video/VideoCaptureFormat;->mWidth:I

    .line 432
    :goto_0
    invoke-virtual {p0}, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lio/agora/rtc2/video/VideoCaptureCamera$CaptureViewWeakRef;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_1
    return v0
.end method
