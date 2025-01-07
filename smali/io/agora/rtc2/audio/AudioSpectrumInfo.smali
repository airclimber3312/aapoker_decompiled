.class public Lio/agora/rtc2/audio/AudioSpectrumInfo;
.super Ljava/lang/Object;


# instance fields
.field private audioSpectrumData:[F

.field private dataLength:I


# direct methods
.method public constructor <init>([FI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "audioSpectrumData",
            "dataLength"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/agora/rtc2/audio/AudioSpectrumInfo;->audioSpectrumData:[F

    iput p2, p0, Lio/agora/rtc2/audio/AudioSpectrumInfo;->dataLength:I

    return-void
.end method


# virtual methods
.method public getAudioSpectrumData()[F
    .locals 1

    iget-object v0, p0, Lio/agora/rtc2/audio/AudioSpectrumInfo;->audioSpectrumData:[F

    return-object v0
.end method

.method public getDataLength()I
    .locals 1

    iget v0, p0, Lio/agora/rtc2/audio/AudioSpectrumInfo;->dataLength:I

    return v0
.end method
