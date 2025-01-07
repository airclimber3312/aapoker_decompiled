.class public Lio/agora/rtc2/extensions/AudioCapture;
.super Ljava/lang/Object;
.source "AudioCapture.java"

# interfaces
.implements Lio/agora/rtc2/extensions/MediaProjectionMgr$IAudioCapture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;,
        Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;
    }
.end annotation


# static fields
.field private static final AUDIO_RECORD_THREAD_JOIN_TIMEOUT_MS:J = 0x7d0L

.field private static final BITS_PER_SAMPLE:I = 0x10

.field private static final BUFFERS_PER_SECOND:I = 0x64

.field private static final BUFFER_SIZE_FACTOR:I = 0x2

.field private static final CALLBACK_BUFFER_SIZE_MS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "AudioCapture"


# instance fields
.field private final audioFrameListener:Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioFrameListener;

.field private audioRecord:Landroid/media/AudioRecord;

.field private audioThread:Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private final channels:I

.field private emptyBytes:[B

.field private final errorCallback:Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioRecordErrorCallback;

.field private final mediaProjection:Landroid/media/projection/MediaProjection;

.field private volatile microphoneMute:Z

.field private final sampleRate:I


# direct methods
.method public constructor <init>(IILandroid/media/projection/MediaProjection;Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioRecordErrorCallback;Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioFrameListener;)V
    .locals 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lio/agora/rtc2/extensions/AudioCapture;->audioThread:Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lio/agora/rtc2/extensions/AudioCapture;->microphoneMute:Z

    .line 130
    iput-object p3, p0, Lio/agora/rtc2/extensions/AudioCapture;->mediaProjection:Landroid/media/projection/MediaProjection;

    .line 131
    iput p1, p0, Lio/agora/rtc2/extensions/AudioCapture;->channels:I

    .line 132
    iput p2, p0, Lio/agora/rtc2/extensions/AudioCapture;->sampleRate:I

    .line 133
    iput-object p5, p0, Lio/agora/rtc2/extensions/AudioCapture;->audioFrameListener:Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioFrameListener;

    .line 134
    iput-object p4, p0, Lio/agora/rtc2/extensions/AudioCapture;->errorCallback:Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioRecordErrorCallback;

    return-void
.end method

.method static synthetic access$000(Lio/agora/rtc2/extensions/AudioCapture;)Landroid/media/AudioRecord;
    .locals 0

    .line 19
    iget-object p0, p0, Lio/agora/rtc2/extensions/AudioCapture;->audioRecord:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$100(Z)V
    .locals 0

    .line 19
    invoke-static {p0}, Lio/agora/rtc2/extensions/AudioCapture;->assertTrue(Z)V

    return-void
.end method

.method static synthetic access$200(Lio/agora/rtc2/extensions/AudioCapture;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 19
    iget-object p0, p0, Lio/agora/rtc2/extensions/AudioCapture;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$300(Lio/agora/rtc2/extensions/AudioCapture;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lio/agora/rtc2/extensions/AudioCapture;->microphoneMute:Z

    return p0
.end method

.method static synthetic access$400(Lio/agora/rtc2/extensions/AudioCapture;)[B
    .locals 0

    .line 19
    iget-object p0, p0, Lio/agora/rtc2/extensions/AudioCapture;->emptyBytes:[B

    return-object p0
.end method

.method static synthetic access$500(Lio/agora/rtc2/extensions/AudioCapture;)Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioFrameListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lio/agora/rtc2/extensions/AudioCapture;->audioFrameListener:Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioFrameListener;

    return-object p0
.end method

.method static synthetic access$600(Lio/agora/rtc2/extensions/AudioCapture;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lio/agora/rtc2/extensions/AudioCapture;->reportWebRtcAudioRecordError(Ljava/lang/String;)V

    return-void
.end method

.method private static assertTrue(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 249
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Expected condition to be true"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method private channelCountToConfiguration(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/16 p1, 0xc

    :goto_0
    return p1
.end method

.method private logMainParameters()V
    .locals 2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioRecord: session ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/agora/rtc2/extensions/AudioCapture;->audioRecord:Landroid/media/AudioRecord;

    .line 241
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channels: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc2/extensions/AudioCapture;->audioRecord:Landroid/media/AudioRecord;

    .line 242
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sample rate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc2/extensions/AudioCapture;->audioRecord:Landroid/media/AudioRecord;

    .line 243
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCapture"

    .line 239
    invoke-static {v1, v0}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private releaseAudioResources()V
    .locals 2

    const-string v0, "AudioCapture"

    const-string v1, "releaseAudioResources"

    .line 266
    invoke-static {v0, v1}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lio/agora/rtc2/extensions/AudioCapture;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lio/agora/rtc2/extensions/AudioCapture;->audioRecord:Landroid/media/AudioRecord;

    :cond_0
    return-void
.end method

.method private reportWebRtcAudioRecordError(Ljava/lang/String;)V
    .locals 2

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Run-time recording error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCapture"

    invoke-static {v1, v0}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lio/agora/rtc2/extensions/AudioCapture;->errorCallback:Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioRecordErrorCallback;

    if-eqz v0, :cond_0

    .line 291
    invoke-interface {v0, p1}, Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioRecordErrorCallback;->onWebRtcAudioRecordError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reportWebRtcAudioRecordInitError(Ljava/lang/String;)V
    .locals 2

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Init recording error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCapture"

    invoke-static {v1, v0}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lio/agora/rtc2/extensions/AudioCapture;->errorCallback:Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioRecordErrorCallback;

    if-eqz v0, :cond_0

    .line 276
    invoke-interface {v0, p1}, Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioRecordErrorCallback;->onWebRtcAudioRecordInitError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reportWebRtcAudioRecordStartError(Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;Ljava/lang/String;)V
    .locals 2

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Start recording error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCapture"

    invoke-static {v1, v0}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lio/agora/rtc2/extensions/AudioCapture;->errorCallback:Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioRecordErrorCallback;

    if-eqz v0, :cond_0

    .line 284
    invoke-interface {v0, p1, p2}, Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioRecordErrorCallback;->onWebRtcAudioRecordStartError(Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method initRecording()I
    .locals 8

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initRecording(sampleRate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/agora/rtc2/extensions/AudioCapture;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc2/extensions/AudioCapture;->channels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCapture"

    invoke-static {v1, v0}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lio/agora/rtc2/extensions/AudioCapture;->audioRecord:Landroid/media/AudioRecord;

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    const-string v0, "InitRecording called twice without StopRecording."

    .line 166
    invoke-direct {p0, v0}, Lio/agora/rtc2/extensions/AudioCapture;->reportWebRtcAudioRecordInitError(Ljava/lang/String;)V

    return v2

    .line 169
    :cond_0
    iget v0, p0, Lio/agora/rtc2/extensions/AudioCapture;->channels:I

    const/4 v3, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 170
    iget v4, p0, Lio/agora/rtc2/extensions/AudioCapture;->sampleRate:I

    div-int/lit8 v4, v4, 0x64

    mul-int v0, v0, v4

    .line 171
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc2/extensions/AudioCapture;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 172
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ByteBuffer does not have backing array."

    .line 173
    invoke-direct {p0, v0}, Lio/agora/rtc2/extensions/AudioCapture;->reportWebRtcAudioRecordInitError(Ljava/lang/String;)V

    return v2

    .line 176
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "byteBuffer.capacity: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lio/agora/rtc2/extensions/AudioCapture;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lio/agora/rtc2/extensions/AudioCapture;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lio/agora/rtc2/extensions/AudioCapture;->emptyBytes:[B

    .line 181
    iget-object v0, p0, Lio/agora/rtc2/extensions/AudioCapture;->audioFrameListener:Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioFrameListener;

    iget-object v5, p0, Lio/agora/rtc2/extensions/AudioCapture;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v5}, Lio/agora/rtc2/extensions/MediaProjectionMgr$AudioFrameListener;->onCacheBufferReady(Ljava/nio/ByteBuffer;)V

    .line 186
    iget v0, p0, Lio/agora/rtc2/extensions/AudioCapture;->channels:I

    invoke-direct {p0, v0}, Lio/agora/rtc2/extensions/AudioCapture;->channelCountToConfiguration(I)I

    move-result v0

    .line 187
    iget v5, p0, Lio/agora/rtc2/extensions/AudioCapture;->sampleRate:I

    .line 188
    invoke-static {v5, v0, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    if-eq v5, v2, :cond_5

    const/4 v6, -0x2

    if-ne v5, v6, :cond_2

    goto/16 :goto_1

    .line 193
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AudioRecord.getMinBufferSize: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logD(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v5, v5, 0x2

    .line 198
    iget-object v6, p0, Lio/agora/rtc2/extensions/AudioCapture;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bufferSizeInBytes: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    new-instance v1, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    iget-object v6, p0, Lio/agora/rtc2/extensions/AudioCapture;->mediaProjection:Landroid/media/projection/MediaProjection;

    invoke-direct {v1, v6}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;-><init>(Landroid/media/projection/MediaProjection;)V

    const/4 v6, 0x1

    .line 203
    invoke-virtual {v1, v6}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    move-result-object v1

    .line 204
    invoke-virtual {v1}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->build()Landroid/media/AudioPlaybackCaptureConfiguration;

    move-result-object v1

    .line 205
    new-instance v7, Landroid/media/AudioFormat$Builder;

    invoke-direct {v7}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 206
    invoke-virtual {v7, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    iget v7, p0, Lio/agora/rtc2/extensions/AudioCapture;->sampleRate:I

    .line 207
    invoke-virtual {v3, v7}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    .line 208
    invoke-virtual {v3, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    .line 210
    new-instance v3, Landroid/media/AudioRecord$Builder;

    invoke-direct {v3}, Landroid/media/AudioRecord$Builder;-><init>()V

    .line 211
    invoke-virtual {v3, v0}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {v0, v5}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object v0

    .line 213
    invoke-virtual {v0, v1}, Landroid/media/AudioRecord$Builder;->setAudioPlaybackCaptureConfig(Landroid/media/AudioPlaybackCaptureConfiguration;)Landroid/media/AudioRecord$Builder;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc2/extensions/AudioCapture;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_4

    .line 216
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v6, :cond_3

    goto :goto_0

    .line 221
    :cond_3
    invoke-direct {p0}, Lio/agora/rtc2/extensions/AudioCapture;->logMainParameters()V

    return v4

    :cond_4
    :goto_0
    const-string v0, "Failed to create a new AudioRecord instance"

    .line 217
    invoke-direct {p0, v0}, Lio/agora/rtc2/extensions/AudioCapture;->reportWebRtcAudioRecordInitError(Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Lio/agora/rtc2/extensions/AudioCapture;->releaseAudioResources()V

    return v2

    .line 190
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioRecord.getMinBufferSize failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/agora/rtc2/extensions/AudioCapture;->reportWebRtcAudioRecordInitError(Ljava/lang/String;)V

    return v2
.end method

.method public setMicrophoneMute(Z)V
    .locals 2

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setMicrophoneMute("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCapture"

    invoke-static {v1, v0}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iput-boolean p1, p0, Lio/agora/rtc2/extensions/AudioCapture;->microphoneMute:Z

    return-void
.end method

.method public startRecording()Z
    .locals 5

    const-string v0, "AudioCapture"

    const-string v1, "startRecording"

    .line 140
    invoke-static {v0, v1}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lio/agora/rtc2/extensions/AudioCapture;->initRecording()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 145
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc2/extensions/AudioCapture;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    iget-object v0, p0, Lio/agora/rtc2/extensions/AudioCapture;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 152
    sget-object v0, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;->AUDIO_RECORD_START_STATE_MISMATCH:Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AudioRecord.startRecording failed - incorrect state :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/agora/rtc2/extensions/AudioCapture;->audioRecord:Landroid/media/AudioRecord;

    .line 154
    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-direct {p0, v0, v2}, Lio/agora/rtc2/extensions/AudioCapture;->reportWebRtcAudioRecordStartError(Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;Ljava/lang/String;)V

    return v1

    .line 157
    :cond_1
    new-instance v0, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;

    const-string v1, "AudioRecordJavaThread"

    invoke-direct {v0, p0, v1}, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;-><init>(Lio/agora/rtc2/extensions/AudioCapture;Ljava/lang/String;)V

    iput-object v0, p0, Lio/agora/rtc2/extensions/AudioCapture;->audioThread:Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;

    .line 158
    invoke-virtual {v0}, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;->start()V

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 147
    sget-object v2, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;->AUDIO_RECORD_START_EXCEPTION:Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AudioRecord.startRecording failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-direct {p0, v2, v0}, Lio/agora/rtc2/extensions/AudioCapture;->reportWebRtcAudioRecordStartError(Lio/agora/rtc2/extensions/AudioCapture$AudioRecordStartErrorCode;Ljava/lang/String;)V

    return v1
.end method

.method public stopRecording()V
    .locals 4

    const-string v0, "stopRecording"

    const-string v1, "AudioCapture"

    .line 227
    invoke-static {v1, v0}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lio/agora/rtc2/extensions/AudioCapture;->audioThread:Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {v0}, Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;->stopThread()V

    .line 230
    iget-object v0, p0, Lio/agora/rtc2/extensions/AudioCapture;->audioThread:Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Lio/agora/base/internal/ThreadUtils;->joinUninterruptibly(Ljava/lang/Thread;J)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Join of AudioRecordJavaThread timed out"

    .line 231
    invoke-static {v1, v0}, Lio/agora/rtc2/extensions/MediaProjectionSource;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lio/agora/rtc2/extensions/AudioCapture;->audioThread:Lio/agora/rtc2/extensions/AudioCapture$AudioRecordThread;

    .line 235
    :cond_1
    invoke-direct {p0}, Lio/agora/rtc2/extensions/AudioCapture;->releaseAudioResources()V

    return-void
.end method
