.class public Lio/agora/rtc2/DeviceInfo;
.super Ljava/lang/Object;


# instance fields
.field public isLowLatencyAudioSupported:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLowLatencyAudioSupported"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/agora/rtc2/DeviceInfo;->isLowLatencyAudioSupported:Z

    return-void
.end method
