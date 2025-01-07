.class public Lio/agora/rtc2/audio/AudioParams;
.super Ljava/lang/Object;


# instance fields
.field public channel:I

.field public mode:I

.field public sampleRate:I

.field public samplesPerCall:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sampleRate",
            "channelCnt",
            "mode",
            "samplesPerCall"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/agora/rtc2/audio/AudioParams;->sampleRate:I

    iput p2, p0, Lio/agora/rtc2/audio/AudioParams;->channel:I

    iput p3, p0, Lio/agora/rtc2/audio/AudioParams;->mode:I

    iput p4, p0, Lio/agora/rtc2/audio/AudioParams;->samplesPerCall:I

    return-void
.end method


# virtual methods
.method public getChannel()I
    .locals 1

    iget v0, p0, Lio/agora/rtc2/audio/AudioParams;->channel:I

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lio/agora/rtc2/audio/AudioParams;->mode:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    iget v0, p0, Lio/agora/rtc2/audio/AudioParams;->sampleRate:I

    return v0
.end method

.method public getSamplesPerCall()I
    .locals 1

    iget v0, p0, Lio/agora/rtc2/audio/AudioParams;->samplesPerCall:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioParams{sampleRate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/agora/rtc2/audio/AudioParams;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc2/audio/AudioParams;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc2/audio/AudioParams;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", samplesPerCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc2/audio/AudioParams;->samplesPerCall:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
