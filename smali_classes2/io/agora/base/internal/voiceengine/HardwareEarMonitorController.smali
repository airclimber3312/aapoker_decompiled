.class public Lio/agora/base/internal/voiceengine/HardwareEarMonitorController;
.super Ljava/lang/Object;
.source "HardwareEarMonitorController.java"

# interfaces
.implements Lio/agora/base/internal/voiceengine/HardwareEarMonitorListener;


# static fields
.field private static final MANUFACTURER_HUAWEI:Ljava/lang/String; = "huawei"

.field private static final TAG:Ljava/lang/String; = "HardwareEarMonitorController"


# instance fields
.field private final HARDWARE_EARMONITOR_STATE_INITIALIZING:I

.field private final HARDWARE_EARMONITOR_STATE_KIT_NOT_INSTALL:I

.field private final HARDWARE_EARMONITOR_STATE_NOT_INITIALIZED:I

.field private final HARDWARE_EARMONITOR_STATE_READY:I

.field private mHardwareEarMonitor:Lio/agora/base/internal/voiceengine/IHardwareEarMonitor;

.field private mHardwareEarMonitorState:I

.field private mHardwareEarMonitorSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lio/agora/base/internal/voiceengine/HardwareEarMonitorController;->mHardwareEarMonitor:Lio/agora/base/internal/voiceengine/IHardwareEarMonitor;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lio/agora/base/internal/voiceengine/HardwareEarMonitorController;->HARDWARE_EARMONITOR_STATE_NOT_INITIALIZED:I

    const/4 v1, 0x1

    .line 29
    iput v1, p0, Lio/agora/base/internal/voiceengine/HardwareEarMonitorController;->HARDWARE_EARMONITOR_STATE_INITIALIZING:I

    const/4 v1, 0x2

    .line 30
    iput v1, p0, Lio/agora/base/internal/voiceengine/HardwareEarMonitorController;->HARDWARE_EARMONITOR_STATE_KIT_NOT_INSTALL:I

    const/4 v1, 0x3

    .line 31
    iput v1, p0, Lio/agora/base/internal/voiceengine/HardwareEarMonitorController;->HARDWARE_EARMONITOR_STATE_READY:I

    .line 34
    iput v0, p0, Lio/agora/base/internal/voiceengine/HardwareEarMonitorController;->mHardwareEarMonitorState:I

    .line 35
    iput-boolean v0, p0, Lio/agora/base/internal/voiceengine/HardwareEarMonitorController;->mHardwareEarMonitorSupport:Z

    .line 38
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 41
    sget-object p1, Lio/agora/base/internal/voiceengine/HardwareEarMonitorController;->TAG:Ljava/lang/String;

    const-string v0, "config to disable hw earmonitor success"

    invoke-static {p1, v0}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 45
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "huawei"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 46
    new-instance p1, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;

    invoke-direct {p1, p0}, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;-><init>(Lio/agora/base/internal/voiceengine/HardwareEarMonitorListener;)V

    iput-object p1, p0, Lio/agora/base/internal/voiceengine/HardwareEarMonitorController;->mHardwareEarMonitor:Lio/agora/base/internal/voiceengine/IHardwareEarMonitor;

    :cond_1
    return-void
.end method


# virtual methods
.method public enableHardwareEarMonitor(Z)I
    .locals 1

    .line 77
    iget-object v0, p0, Lio/agora/base/internal/voiceengine/HardwareEarMonitorController;->mHardwareEarMonitor:Lio/agora/base/internal/voiceengine/IHardwareEarMonitor;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0, p1}, Lio/agora/base/internal/voiceengine/IHardwareEarMonitor;->enableHardwareEarMonitor(Z)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x7

    return p1
.end method

.method public initialize()V
    .locals 1

    .line 51
    iget-object v0, p0, Lio/agora/base/internal/voiceengine/HardwareEarMonitorController;->mHardwareEarMonitor:Lio/agora/base/internal/voiceengine/IHardwareEarMonitor;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0}, Lio/agora/base/internal/voiceengine/IHardwareEarMonitor;->initialize()V

    const/4 v0, 0x1

    .line 53
    iput v0, p0, Lio/agora/base/internal/voiceengine/HardwareEarMonitorController;->mHardwareEarMonitorState:I

    :cond_0
    return-void
.end method

.method public isHardwareEarMonitorSupported()Z
    .locals 2

    .line 63
    iget v0, p0, Lio/agora/base/internal/voiceengine/HardwareEarMonitorController;->mHardwareEarMonitorState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 64
    iget-boolean v0, p0, Lio/agora/base/internal/voiceengine/HardwareEarMonitorController;->mHardwareEarMonitorSupport:Z

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 68
    sget-object v0, Lio/agora/base/internal/voiceengine/HardwareEarMonitorController;->TAG:Ljava/lang/String;

    const-string v1, "HwAudioKit is intializing, check it later plz"

    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 70
    sget-object v0, Lio/agora/base/internal/voiceengine/HardwareEarMonitorController;->TAG:Ljava/lang/String;

    const-string v1, "HwAudioKit is not installed"

    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onInitResult(I)V
    .locals 1

    const/4 v0, 0x3

    .line 99
    iput v0, p0, Lio/agora/base/internal/voiceengine/HardwareEarMonitorController;->mHardwareEarMonitorState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 102
    iput v0, p0, Lio/agora/base/internal/voiceengine/HardwareEarMonitorController;->mHardwareEarMonitorState:I

    const/4 p1, 0x0

    .line 103
    iput-boolean p1, p0, Lio/agora/base/internal/voiceengine/HardwareEarMonitorController;->mHardwareEarMonitorSupport:Z

    :cond_0
    return-void
.end method

.method public onKaraokeSupport(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lio/agora/base/internal/voiceengine/HardwareEarMonitorController;->mHardwareEarMonitorSupport:Z

    return-void
.end method

.method setHardwareEarMonitor(Lio/agora/base/internal/voiceengine/IHardwareEarMonitor;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lio/agora/base/internal/voiceengine/HardwareEarMonitorController;->mHardwareEarMonitor:Lio/agora/base/internal/voiceengine/IHardwareEarMonitor;

    return-void
.end method

.method public setHardwareEarMonitorVolume(I)I
    .locals 1

    .line 84
    iget-object v0, p0, Lio/agora/base/internal/voiceengine/HardwareEarMonitorController;->mHardwareEarMonitor:Lio/agora/base/internal/voiceengine/IHardwareEarMonitor;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0, p1}, Lio/agora/base/internal/voiceengine/IHardwareEarMonitor;->setHardwareEarMonitorVolume(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x7

    return p1
.end method

.method public terminate()V
    .locals 1

    .line 91
    iget-object v0, p0, Lio/agora/base/internal/voiceengine/HardwareEarMonitorController;->mHardwareEarMonitor:Lio/agora/base/internal/voiceengine/IHardwareEarMonitor;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Lio/agora/base/internal/voiceengine/IHardwareEarMonitor;->destroy()V

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lio/agora/base/internal/voiceengine/HardwareEarMonitorController;->mHardwareEarMonitor:Lio/agora/base/internal/voiceengine/IHardwareEarMonitor;

    :cond_0
    return-void
.end method
