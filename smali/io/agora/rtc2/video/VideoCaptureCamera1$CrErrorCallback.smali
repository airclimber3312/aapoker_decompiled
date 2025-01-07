.class Lio/agora/rtc2/video/VideoCaptureCamera1$CrErrorCallback;
.super Ljava/lang/Object;
.source "VideoCaptureCamera1.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/video/VideoCaptureCamera1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CrErrorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;


# direct methods
.method constructor <init>(Lio/agora/rtc2/video/VideoCaptureCamera1;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$CrErrorCallback;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 4

    .line 170
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera1;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Camera ErrorCallback id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x64

    const/4 v0, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    if-eq p1, p2, :cond_0

    if-eq p1, v2, :cond_0

    if-ne p1, v0, :cond_4

    :cond_0
    if-ne p1, v3, :cond_1

    .line 181
    iget-object p2, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$CrErrorCallback;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    invoke-static {p2, v2}, Lio/agora/rtc2/video/VideoCaptureCamera1;->access$102(Lio/agora/rtc2/video/VideoCaptureCamera1;Z)Z

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    if-ne p1, p2, :cond_2

    .line 184
    iget-object p2, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$CrErrorCallback;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    invoke-virtual {p2}, Lio/agora/rtc2/video/VideoCaptureCamera1;->deallocate()V

    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    .line 187
    iget-object p2, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$CrErrorCallback;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    invoke-static {p2, v2}, Lio/agora/rtc2/video/VideoCaptureCamera1;->access$102(Lio/agora/rtc2/video/VideoCaptureCamera1;Z)Z

    goto :goto_0

    .line 190
    :cond_3
    iget-object p2, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$CrErrorCallback;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    invoke-virtual {p2}, Lio/agora/rtc2/video/VideoCaptureCamera1;->deallocate()V

    const/16 v0, 0x385

    .line 198
    :goto_0
    iget-object p2, p0, Lio/agora/rtc2/video/VideoCaptureCamera1$CrErrorCallback;->this$0:Lio/agora/rtc2/video/VideoCaptureCamera1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lio/agora/rtc2/video/VideoCaptureCamera1;->onError(ILjava/lang/String;)V

    :cond_4
    return-void
.end method
