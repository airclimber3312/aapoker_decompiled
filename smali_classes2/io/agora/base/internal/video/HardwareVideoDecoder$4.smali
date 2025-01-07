.class Lio/agora/base/internal/video/HardwareVideoDecoder$4;
.super Ljava/lang/Thread;
.source "HardwareVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/internal/video/HardwareVideoDecoder;->createOutputThread()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/base/internal/video/HardwareVideoDecoder;


# direct methods
.method constructor <init>(Lio/agora/base/internal/video/HardwareVideoDecoder;Ljava/lang/String;)V
    .locals 0

    .line 693
    iput-object p1, p0, Lio/agora/base/internal/video/HardwareVideoDecoder$4;->this$0:Lio/agora/base/internal/video/HardwareVideoDecoder;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 696
    iget-object v0, p0, Lio/agora/base/internal/video/HardwareVideoDecoder$4;->this$0:Lio/agora/base/internal/video/HardwareVideoDecoder;

    new-instance v1, Lio/agora/base/internal/ThreadUtils$ThreadChecker;

    invoke-direct {v1}, Lio/agora/base/internal/ThreadUtils$ThreadChecker;-><init>()V

    invoke-static {v0, v1}, Lio/agora/base/internal/video/HardwareVideoDecoder;->access$1102(Lio/agora/base/internal/video/HardwareVideoDecoder;Lio/agora/base/internal/ThreadUtils$ThreadChecker;)Lio/agora/base/internal/ThreadUtils$ThreadChecker;

    .line 697
    :goto_0
    iget-object v0, p0, Lio/agora/base/internal/video/HardwareVideoDecoder$4;->this$0:Lio/agora/base/internal/video/HardwareVideoDecoder;

    invoke-static {v0}, Lio/agora/base/internal/video/HardwareVideoDecoder;->access$1200(Lio/agora/base/internal/video/HardwareVideoDecoder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lio/agora/base/internal/video/HardwareVideoDecoder$4;->this$0:Lio/agora/base/internal/video/HardwareVideoDecoder;

    invoke-virtual {v0}, Lio/agora/base/internal/video/HardwareVideoDecoder;->deliverDecodedFrame()V

    goto :goto_0

    .line 700
    :cond_0
    iget-object v0, p0, Lio/agora/base/internal/video/HardwareVideoDecoder$4;->this$0:Lio/agora/base/internal/video/HardwareVideoDecoder;

    invoke-static {v0}, Lio/agora/base/internal/video/HardwareVideoDecoder;->access$1300(Lio/agora/base/internal/video/HardwareVideoDecoder;)V

    return-void
.end method
