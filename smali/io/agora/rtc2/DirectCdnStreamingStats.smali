.class public Lio/agora/rtc2/DirectCdnStreamingStats;
.super Ljava/lang/Object;


# instance fields
.field public audioBitrate:I

.field public fps:I

.field public videoBitrate:I

.field public videoHeight:I

.field public videoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/agora/rtc2/DirectCdnStreamingStats;->videoWidth:I

    iput v0, p0, Lio/agora/rtc2/DirectCdnStreamingStats;->videoHeight:I

    iput v0, p0, Lio/agora/rtc2/DirectCdnStreamingStats;->fps:I

    iput v0, p0, Lio/agora/rtc2/DirectCdnStreamingStats;->videoBitrate:I

    iput v0, p0, Lio/agora/rtc2/DirectCdnStreamingStats;->audioBitrate:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "videoWidth",
            "videoHeight",
            "fps",
            "videoBitrate",
            "audioBitrate"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/agora/rtc2/DirectCdnStreamingStats;->videoWidth:I

    iput p2, p0, Lio/agora/rtc2/DirectCdnStreamingStats;->videoHeight:I

    iput p3, p0, Lio/agora/rtc2/DirectCdnStreamingStats;->fps:I

    iput p4, p0, Lio/agora/rtc2/DirectCdnStreamingStats;->videoBitrate:I

    iput p5, p0, Lio/agora/rtc2/DirectCdnStreamingStats;->audioBitrate:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lio/agora/rtc2/DirectCdnStreamingStats;->videoWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lio/agora/rtc2/DirectCdnStreamingStats;->videoHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lio/agora/rtc2/DirectCdnStreamingStats;->fps:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lio/agora/rtc2/DirectCdnStreamingStats;->videoBitrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lio/agora/rtc2/DirectCdnStreamingStats;->audioBitrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "videoWidth=%d videoHeight=%d fps=%d videoBitrate=%d audioBitrate=%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
