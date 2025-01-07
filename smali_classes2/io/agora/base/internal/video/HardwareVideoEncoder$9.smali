.class Lio/agora/base/internal/video/HardwareVideoEncoder$9;
.super Ljava/lang/Thread;
.source "HardwareVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/internal/video/HardwareVideoEncoder;->createOutputThread()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;


# direct methods
.method constructor <init>(Lio/agora/base/internal/video/HardwareVideoEncoder;)V
    .locals 0

    .line 1153
    iput-object p1, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$9;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1156
    :goto_0
    iget-object v0, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$9;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-static {v0}, Lio/agora/base/internal/video/HardwareVideoEncoder;->access$1700(Lio/agora/base/internal/video/HardwareVideoEncoder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lio/agora/base/internal/video/HardwareVideoEncoder$9;->this$0:Lio/agora/base/internal/video/HardwareVideoEncoder;

    invoke-virtual {v0}, Lio/agora/base/internal/video/HardwareVideoEncoder;->deliverEncodedImage()V

    goto :goto_0

    :cond_0
    return-void
.end method
