.class public Lio/agora/rtc2/RecorderStreamInfo;
.super Ljava/lang/Object;


# instance fields
.field public channelId:Ljava/lang/String;

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/agora/rtc2/RecorderStreamInfo;->uid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lio/agora/rtc2/RecorderStreamInfo;->channelId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channelId",
            "uid"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lio/agora/rtc2/RecorderStreamInfo;->uid:I

    iput-object p1, p0, Lio/agora/rtc2/RecorderStreamInfo;->channelId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "channelId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/agora/rtc2/RecorderStreamInfo;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
