.class Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;
.super Ljava/lang/Thread;
.source "WebRtcAudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioTrackThread"
.end annotation


# instance fields
.field private volatile keepAlive:Z

.field final synthetic this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;


# direct methods
.method public constructor <init>(Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;

    .line 194
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 191
    iput-boolean p1, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    return-void
.end method

.method private writeOnLollipop(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1

    const/4 v0, 0x0

    .line 277
    invoke-virtual {p1, p2, p3, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    return p1
.end method

.method private writePreLollipop(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1

    .line 281
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1, v0, p2, p3}, Landroid/media/AudioTrack;->write([BII)I

    move-result p1

    return p1
.end method


# virtual methods
.method public run()V
    .locals 10

    const/16 v0, -0x13

    .line 199
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioTrackThread"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/agora/base/internal/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack [JavaAdm]"

    invoke-static {v1, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;

    invoke-static {v0}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$000(Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

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
    invoke-static {v0}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$100(Z)V

    .line 205
    iget-object v0, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;

    invoke-static {v0}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$200(Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 207
    :goto_1
    iget-boolean v2, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    if-eqz v2, :cond_7

    .line 211
    iget-object v2, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;

    invoke-static {v2}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$300(Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;)I

    move-result v5

    iget-object v6, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;

    invoke-static {v6}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$400(Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;)J

    move-result-wide v6

    invoke-static {v2, v0, v5, v6, v7}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$500(Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;IIJ)V

    .line 215
    iget-object v2, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;

    invoke-static {v2}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$200(Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-gt v0, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$100(Z)V

    .line 216
    invoke-static {}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$600()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 217
    iget-object v2, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;

    invoke-static {v2}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$200(Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 218
    iget-object v2, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;

    invoke-static {v2}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$200(Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v5, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;

    invoke-static {v5}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$700(Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 219
    iget-object v2, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;

    invoke-static {v2}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$200(Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 222
    :cond_2
    invoke-static {}, Lio/agora/base/internal/voiceengine/WebRtcAudioUtils;->runningOnLollipopOrHigher()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 223
    iget-object v2, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;

    invoke-static {v2}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$000(Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v2

    iget-object v5, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;

    invoke-static {v5}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$200(Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-direct {p0, v2, v5, v0}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->writeOnLollipop(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v2

    goto :goto_3

    .line 225
    :cond_3
    iget-object v2, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;

    invoke-static {v2}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$000(Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v2

    iget-object v5, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;

    invoke-static {v5}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$200(Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-direct {p0, v2, v5, v0}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->writePreLollipop(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v2

    :goto_3
    if-eq v2, v0, :cond_4

    .line 228
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AudioTrack.write played invalid number of bytes: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v2, :cond_4

    .line 232
    iput-boolean v4, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    .line 233
    iget-object v5, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AudioTrack.write failed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$800(Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;Ljava/lang/String;)V

    .line 237
    :cond_4
    iget-object v5, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;

    invoke-static {v5}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$900(Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_5

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AudioTrackThread write first frame : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " finished."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_5
    iget-object v5, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;

    invoke-static {v5}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$1000(Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;)I

    move-result v6

    div-int/2addr v2, v6

    int-to-long v6, v2

    invoke-static {v5, v6, v7}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$914(Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;J)J

    .line 244
    :try_start_0
    iget-object v2, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;

    invoke-static {v2}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$1100(Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x28

    if-nez v2, :cond_6

    .line 245
    iget-object v2, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;

    invoke-static {v2}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$1200(Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;)I

    .line 247
    :cond_6
    iget-object v2, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;

    invoke-static {v2}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$1100(Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;)I

    move-result v5

    add-int/2addr v5, v3

    rem-int/lit8 v5, v5, 0x28

    invoke-static {v2, v5}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$1102(Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v2

    .line 249
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "calculateLatencyMillis failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :goto_4
    iget-object v2, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;

    invoke-static {v2}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$200(Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_1

    .line 264
    :cond_7
    iget-object v0, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;

    invoke-static {v0}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$000(Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "Calling AudioTrack.stop..."

    .line 265
    invoke-static {v1, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :try_start_1
    iget-object v0, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;

    invoke-static {v0}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->access$000(Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const-string v0, "AudioTrack.stop is done."

    .line 268
    invoke-static {v1, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AudioTrack.stop failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_5
    return-void
.end method

.method public stopThread()V
    .locals 2

    const-string v0, "WebRtcAudioTrack [JavaAdm]"

    const-string v1, "stopThread"

    .line 287
    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 288
    iput-boolean v0, p0, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    return-void
.end method
