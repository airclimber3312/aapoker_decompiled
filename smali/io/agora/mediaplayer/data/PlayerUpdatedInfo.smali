.class public Lio/agora/mediaplayer/data/PlayerUpdatedInfo;
.super Ljava/lang/Object;


# instance fields
.field private audioBitsPerSample:J

.field private audioChannels:J

.field private audioSampleRate:J

.field private deviceId:Ljava/lang/String;

.field private internalPlayerUuid:Ljava/lang/String;

.field private videoHeight:J

.field private videoWidth:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/agora/mediaplayer/data/PlayerUpdatedInfo;->internalPlayerUuid:Ljava/lang/String;

    iput-object v0, p0, Lio/agora/mediaplayer/data/PlayerUpdatedInfo;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "internalPlayerUuid",
            "deviceId"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/agora/mediaplayer/data/PlayerUpdatedInfo;->internalPlayerUuid:Ljava/lang/String;

    iput-object p2, p0, Lio/agora/mediaplayer/data/PlayerUpdatedInfo;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "internalPlayerUuid",
            "deviceId",
            "videoHeight",
            "videoWidth",
            "audioSampleRate",
            "audioChannels",
            "audioBitsPerSample"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/agora/mediaplayer/data/PlayerUpdatedInfo;->internalPlayerUuid:Ljava/lang/String;

    iput-object p2, p0, Lio/agora/mediaplayer/data/PlayerUpdatedInfo;->deviceId:Ljava/lang/String;

    iput-wide p3, p0, Lio/agora/mediaplayer/data/PlayerUpdatedInfo;->videoHeight:J

    iput-wide p5, p0, Lio/agora/mediaplayer/data/PlayerUpdatedInfo;->videoWidth:J

    iput-wide p7, p0, Lio/agora/mediaplayer/data/PlayerUpdatedInfo;->audioSampleRate:J

    iput-wide p9, p0, Lio/agora/mediaplayer/data/PlayerUpdatedInfo;->audioChannels:J

    iput-wide p11, p0, Lio/agora/mediaplayer/data/PlayerUpdatedInfo;->audioBitsPerSample:J

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/agora/mediaplayer/data/PlayerUpdatedInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalPlayerUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/agora/mediaplayer/data/PlayerUpdatedInfo;->internalPlayerUuid:Ljava/lang/String;

    return-object v0
.end method

.method public setAudioBitsPerSample(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioBitsPerSample"
        }
    .end annotation

    iput-wide p1, p0, Lio/agora/mediaplayer/data/PlayerUpdatedInfo;->audioBitsPerSample:J

    return-void
.end method

.method public setAudioChannels(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioChannels"
        }
    .end annotation

    iput-wide p1, p0, Lio/agora/mediaplayer/data/PlayerUpdatedInfo;->audioChannels:J

    return-void
.end method

.method public setAudioSampleRate(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioSampleRate"
        }
    .end annotation

    iput-wide p1, p0, Lio/agora/mediaplayer/data/PlayerUpdatedInfo;->audioSampleRate:J

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceId"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/mediaplayer/data/PlayerUpdatedInfo;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setInternalPlayerUuid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "internalPlayerUuid"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/mediaplayer/data/PlayerUpdatedInfo;->internalPlayerUuid:Ljava/lang/String;

    return-void
.end method

.method public setVideoHeight(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoHeight"
        }
    .end annotation

    iput-wide p1, p0, Lio/agora/mediaplayer/data/PlayerUpdatedInfo;->videoHeight:J

    return-void
.end method

.method public setVideoWidth(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoWidth"
        }
    .end annotation

    iput-wide p1, p0, Lio/agora/mediaplayer/data/PlayerUpdatedInfo;->videoWidth:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlayerUpdatedInfo{internalPlayerUuid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/agora/mediaplayer/data/PlayerUpdatedInfo;->internalPlayerUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/mediaplayer/data/PlayerUpdatedInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "videoHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/agora/mediaplayer/data/PlayerUpdatedInfo;->videoHeight:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", videoWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/agora/mediaplayer/data/PlayerUpdatedInfo;->videoWidth:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", audioSampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/agora/mediaplayer/data/PlayerUpdatedInfo;->audioSampleRate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "audioChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/agora/mediaplayer/data/PlayerUpdatedInfo;->audioChannels:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "audioBitsPerSample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/agora/mediaplayer/data/PlayerUpdatedInfo;->audioBitsPerSample:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
