.class Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;
.super Ljava/lang/Thread;
.source "WebRtcAudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioRecordThread"
.end annotation


# instance fields
.field private volatile keepAlive:Z

.field final synthetic this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;


# direct methods
.method public constructor <init>(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;

    .line 181
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 178
    iput-boolean p1, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/16 v0, -0x13

    .line 188
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioRecordThread"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/agora/base/internal/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioRecord [JavaAdm]"

    invoke-static {v1, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;

    invoke-static {v0}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$000(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$100(Z)V

    .line 192
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 193
    :goto_1
    iget-boolean v0, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    if-eqz v0, :cond_7

    .line 194
    iget-object v0, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;

    invoke-static {v0}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$000(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v2, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;

    invoke-static {v2}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$200(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v5, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;

    invoke-static {v5}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$200(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v0, v2, v5}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 195
    iget-object v2, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;

    invoke-static {v2}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$200(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 196
    invoke-static {}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$300()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    iget-object v2, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;

    invoke-static {v2}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$200(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 198
    iget-object v2, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;

    invoke-static {v2}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$200(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v5, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;

    invoke-static {v5}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$400(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 203
    :cond_1
    iget-boolean v2, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    if-eqz v2, :cond_2

    .line 204
    iget-object v2, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;

    invoke-static {v2}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$500(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;)I

    move-result v5

    iget-object v6, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;

    invoke-static {v6}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$600(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;)J

    move-result-wide v6

    invoke-static {v2, v0, v5, v6, v7}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$700(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;IIJ)V

    .line 206
    :cond_2
    invoke-static {}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$800()Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordSamplesReadyCallback;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 209
    iget-object v2, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;

    invoke-static {v2}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$200(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v5, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;

    invoke-static {v5}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$200(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 210
    invoke-static {}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$800()Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordSamplesReadyCallback;

    move-result-object v5

    new-instance v6, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioSamples;

    iget-object v7, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;

    .line 211
    invoke-static {v7}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$000(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v2, v8}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioSamples;-><init>(Landroid/media/AudioRecord;[BLio/agora/base/internal/voiceengine/WebRtcAudioRecord$1;)V

    .line 210
    invoke-interface {v5, v6}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordSamplesReadyCallback;->onWebRtcAudioRecordSamplesReady(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioSamples;)V

    goto :goto_2

    .line 214
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "AudioRecord.read failed: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-static {v1, v2}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x3

    if-ne v0, v5, :cond_4

    .line 217
    iput-boolean v4, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    .line 218
    iget-object v5, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;

    invoke-static {v5, v2}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$1000(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;Ljava/lang/String;)V

    .line 222
    :cond_4
    :goto_2
    iget-object v2, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;

    invoke-static {v2}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$1100(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_5

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "AudioRecordThread read first frame : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;

    .line 224
    invoke-static {v5}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$1200(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;)I

    move-result v5

    div-int v5, v0, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " finished. "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-static {v1, v2}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_5
    iget-object v2, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;

    invoke-static {v2}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$1200(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;)I

    move-result v5

    div-int/2addr v0, v5

    int-to-long v5, v0

    invoke-static {v2, v5, v6}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$1114(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;J)J

    .line 229
    :try_start_0
    iget-object v0, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;

    invoke-static {v0}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$1300(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x28

    if-nez v0, :cond_6

    .line 230
    iget-object v0, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;

    invoke-static {v0}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$1400(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;)I

    .line 232
    :cond_6
    iget-object v0, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;

    invoke-static {v0}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$1300(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;)I

    move-result v2

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x28

    invoke-static {v0, v2}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$1302(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "calculateLatencyMillis failed: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 245
    :cond_7
    :try_start_1
    iget-object v0, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;

    invoke-static {v0}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$000(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 246
    iget-object v0, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;

    invoke-static {v0}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->access$000(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AudioRecord.stop failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public stopThread()V
    .locals 2

    const-string v0, "WebRtcAudioRecord [JavaAdm]"

    const-string v1, "stopThread"

    .line 256
    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 257
    iput-boolean v0, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    return-void
.end method
