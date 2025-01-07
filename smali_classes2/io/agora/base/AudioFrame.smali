.class public Lio/agora/base/AudioFrame;
.super Ljava/lang/Object;


# instance fields
.field public buffer:Ljava/nio/ByteBuffer;

.field public bytesPerSample:I

.field public channelNums:I

.field public sampleRataHz:I

.field public samplesPerChannel:I

.field public timestamp:J


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;IIIIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "sampleRataHz",
            "bytesPerSample",
            "channelNums",
            "samplesPerChannel",
            "timestamp"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lio/agora/base/AudioFrame;->sampleRataHz:I

    iput p3, p0, Lio/agora/base/AudioFrame;->bytesPerSample:I

    iput p4, p0, Lio/agora/base/AudioFrame;->channelNums:I

    iput p5, p0, Lio/agora/base/AudioFrame;->samplesPerChannel:I

    iput-wide p6, p0, Lio/agora/base/AudioFrame;->timestamp:J

    iput-object p1, p0, Lio/agora/base/AudioFrame;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lio/agora/base/AudioFrame;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getBytesPerSample()I
    .locals 1

    iget v0, p0, Lio/agora/base/AudioFrame;->bytesPerSample:I

    return v0
.end method

.method public getChannelNums()I
    .locals 1

    iget v0, p0, Lio/agora/base/AudioFrame;->channelNums:I

    return v0
.end method

.method public getSampleRataHz()I
    .locals 1

    iget v0, p0, Lio/agora/base/AudioFrame;->sampleRataHz:I

    return v0
.end method

.method public getSamplesPerChannel()I
    .locals 1

    iget v0, p0, Lio/agora/base/AudioFrame;->samplesPerChannel:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lio/agora/base/AudioFrame;->timestamp:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioFrame{sampleRataHz="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/agora/base/AudioFrame;->sampleRataHz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bytesPerSample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/base/AudioFrame;->bytesPerSample:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channelNums="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/base/AudioFrame;->channelNums:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", samplesPerChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/base/AudioFrame;->samplesPerChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/agora/base/AudioFrame;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
