.class Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;
.super Ljava/lang/Thread;
.source "AudioCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/extensions/AudioCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioRecordThread"
.end annotation


# instance fields
.field private volatile keepAlive:Z

.field final synthetic this$0:Lio/agora/rtc2/extensions/AudioCapture;


# direct methods
.method public constructor <init>(Lio/agora/rtc2/extensions/AudioCapture;Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;->this$0:Lio/agora/rtc2/extensions/AudioCapture;

    .line 73
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 70
    iput-boolean p1, p0, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;->keepAlive:Z

    return-void
.end method


# virtual methods
.method getThreadInfo()Ljava/lang/String;
    .locals 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@[name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 5

    const/16 v0, -0x13

    .line 84
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioRecordThread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;->getThreadInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCapture"

    invoke-static {v1, v0}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;->this$0:Lio/agora/rtc2/extensions/AudioCapture;

    invoke-static {v0}, Lio/agora/rtc2/extensions/AudioCapture;->access$000(Lio/agora/rtc2/extensions/AudioCapture;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lio/agora/rtc2/extensions/AudioCapture;->access$100(Z)V

    .line 87
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;->keepAlive:Z

    if-eqz v0, :cond_4

    .line 88
    iget-object v0, p0, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;->this$0:Lio/agora/rtc2/extensions/AudioCapture;

    invoke-static {v0}, Lio/agora/rtc2/extensions/AudioCapture;->access$000(Lio/agora/rtc2/extensions/AudioCapture;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v2, p0, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;->this$0:Lio/agora/rtc2/extensions/AudioCapture;

    invoke-static {v2}, Lio/agora/rtc2/extensions/AudioCapture;->access$200(Lio/agora/rtc2/extensions/AudioCapture;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v4, p0, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;->this$0:Lio/agora/rtc2/extensions/AudioCapture;

    invoke-static {v4}, Lio/agora/rtc2/extensions/AudioCapture;->access$200(Lio/agora/rtc2/extensions/AudioCapture;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 89
    iget-object v2, p0, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;->this$0:Lio/agora/rtc2/extensions/AudioCapture;

    invoke-static {v2}, Lio/agora/rtc2/extensions/AudioCapture;->access$200(Lio/agora/rtc2/extensions/AudioCapture;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 90
    iget-object v2, p0, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;->this$0:Lio/agora/rtc2/extensions/AudioCapture;

    invoke-static {v2}, Lio/agora/rtc2/extensions/AudioCapture;->access$300(Lio/agora/rtc2/extensions/AudioCapture;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    iget-object v2, p0, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;->this$0:Lio/agora/rtc2/extensions/AudioCapture;

    invoke-static {v2}, Lio/agora/rtc2/extensions/AudioCapture;->access$200(Lio/agora/rtc2/extensions/AudioCapture;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 92
    iget-object v2, p0, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;->this$0:Lio/agora/rtc2/extensions/AudioCapture;

    invoke-static {v2}, Lio/agora/rtc2/extensions/AudioCapture;->access$200(Lio/agora/rtc2/extensions/AudioCapture;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v4, p0, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;->this$0:Lio/agora/rtc2/extensions/AudioCapture;

    invoke-static {v4}, Lio/agora/rtc2/extensions/AudioCapture;->access$400(Lio/agora/rtc2/extensions/AudioCapture;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 97
    :cond_2
    iget-boolean v2, p0, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;->keepAlive:Z

    if-eqz v2, :cond_1

    .line 98
    iget-object v2, p0, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;->this$0:Lio/agora/rtc2/extensions/AudioCapture;

    invoke-static {v2}, Lio/agora/rtc2/extensions/AudioCapture;->access$500(Lio/agora/rtc2/extensions/AudioCapture;)Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioFrameListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioFrameListener;->onDataIsRecorded(I)V

    goto :goto_1

    .line 101
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "AudioRecord.read failed: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-static {v1, v2}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x3

    if-ne v0, v4, :cond_1

    .line 104
    iput-boolean v3, p0, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;->keepAlive:Z

    .line 105
    iget-object v0, p0, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;->this$0:Lio/agora/rtc2/extensions/AudioCapture;

    invoke-static {v0, v2}, Lio/agora/rtc2/extensions/AudioCapture;->access$600(Lio/agora/rtc2/extensions/AudioCapture;Ljava/lang/String;)V

    goto :goto_1

    .line 111
    :cond_4
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;->this$0:Lio/agora/rtc2/extensions/AudioCapture;

    invoke-static {v0}, Lio/agora/rtc2/extensions/AudioCapture;->access$000(Lio/agora/rtc2/extensions/AudioCapture;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 112
    iget-object v0, p0, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;->this$0:Lio/agora/rtc2/extensions/AudioCapture;

    invoke-static {v0}, Lio/agora/rtc2/extensions/AudioCapture;->access$000(Lio/agora/rtc2/extensions/AudioCapture;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AudioRecord.stop failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public stopThread()V
    .locals 2

    const-string v0, "AudioCapture"

    const-string v1, "stopThread"

    .line 122
    invoke-static {v0, v1}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;->keepAlive:Z

    return-void
.end method
