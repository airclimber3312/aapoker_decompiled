.class public Lio/agora/utils2/internal/RtcSystemEventListener;
.super Ljava/lang/Object;

# interfaces
.implements Lio/agora/utils2/internal/CommonUtility$SystemEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RtcSystemEventListener"


# instance fields
.field private mNativeHandle:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mNativeHandle"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/agora/utils2/internal/RtcSystemEventListener;->mNativeHandle:J

    return-void
.end method

.method private native nativeAudioRoutingPhoneChanged(ZII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enableAudio",
            "event",
            "arg"
        }
    .end annotation
.end method

.method private native nativeNotifyAddressBound(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addr"
        }
    .end annotation
.end method

.method private native nativeNotifyForegroundChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isForeground"
        }
    .end annotation
.end method

.method private native nativeNotifyGravityOriChange(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mOrientation"
        }
    .end annotation
.end method

.method private native nativeNotifyNetworkChange(Lio/agora/utils2/internal/CommonUtility$MediaNetworkInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkInfo"
        }
    .end annotation
.end method


# virtual methods
.method public getNativeHandle()J
    .locals 2

    iget-wide v0, p0, Lio/agora/utils2/internal/RtcSystemEventListener;->mNativeHandle:J

    return-wide v0
.end method

.method public onAddressBound(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addr"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/agora/utils2/internal/RtcSystemEventListener;->nativeNotifyAddressBound(Ljava/lang/String;)V

    return-void
.end method

.method public onAudioRoutingPhoneChanged(ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enableAudio",
            "event",
            "arg"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lio/agora/utils2/internal/RtcSystemEventListener;->nativeAudioRoutingPhoneChanged(ZII)V

    return-void
.end method

.method public onForegroundChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isForeground"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/agora/utils2/internal/RtcSystemEventListener;->nativeNotifyForegroundChanged(Z)V

    return-void
.end method

.method public onGravityOriChange(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mOrientation"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/agora/utils2/internal/RtcSystemEventListener;->nativeNotifyGravityOriChange(I)V

    return-void
.end method

.method public onNetworkChange(Lio/agora/utils2/internal/CommonUtility$MediaNetworkInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkInfo"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/agora/utils2/internal/RtcSystemEventListener;->nativeNotifyNetworkChange(Lio/agora/utils2/internal/CommonUtility$MediaNetworkInfo;)V

    const-string p1, "RtcSystemEventListener"

    const-string v0, "onNetworkChange: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
