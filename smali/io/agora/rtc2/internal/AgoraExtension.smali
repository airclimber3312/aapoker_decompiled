.class public Lio/agora/rtc2/internal/AgoraExtension;
.super Ljava/lang/Object;


# instance fields
.field private nativeProvider:J

.field private vendor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vendor",
            "nativeProvider"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/agora/rtc2/internal/AgoraExtension;->vendor:Ljava/lang/String;

    iput-wide p2, p0, Lio/agora/rtc2/internal/AgoraExtension;->nativeProvider:J

    return-void
.end method


# virtual methods
.method public getNativeProvider()J
    .locals 2

    iget-wide v0, p0, Lio/agora/rtc2/internal/AgoraExtension;->nativeProvider:J

    return-wide v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/agora/rtc2/internal/AgoraExtension;->vendor:Ljava/lang/String;

    return-object v0
.end method
