.class public interface abstract Lio/agora/utils2/internal/CommonUtility$SystemEventListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/utils2/internal/CommonUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SystemEventListener"
.end annotation


# virtual methods
.method public abstract onAddressBound(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addr"
        }
    .end annotation
.end method

.method public abstract onAudioRoutingPhoneChanged(ZII)V
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

.method public abstract onForegroundChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isForeground"
        }
    .end annotation
.end method

.method public abstract onGravityOriChange(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mOrientation"
        }
    .end annotation
.end method

.method public abstract onNetworkChange(Lio/agora/utils2/internal/CommonUtility$MediaNetworkInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkInfo"
        }
    .end annotation
.end method
