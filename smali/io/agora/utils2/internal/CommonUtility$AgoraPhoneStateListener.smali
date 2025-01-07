.class Lio/agora/utils2/internal/CommonUtility$AgoraPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/utils2/internal/CommonUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AgoraPhoneStateListener"
.end annotation


# instance fields
.field private final mCommonUtilityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/agora/utils2/internal/CommonUtility;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandlerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private volatile phoneStatusNeedResume:Z


# direct methods
.method constructor <init>(Lio/agora/utils2/internal/CommonUtility;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "commonUtility",
            "handler"
        }
    .end annotation

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/agora/utils2/internal/CommonUtility$AgoraPhoneStateListener;->phoneStatusNeedResume:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/agora/utils2/internal/CommonUtility$AgoraPhoneStateListener;->mCommonUtilityRef:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/agora/utils2/internal/CommonUtility$AgoraPhoneStateListener;->mHandlerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private invokeMethod(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "methodName"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/agora/utils2/internal/CommonUtility$AgoraPhoneStateListener;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v1, p0, Lio/agora/utils2/internal/CommonUtility$AgoraPhoneStateListener;->mSignalStrength:Landroid/telephony/SignalStrength;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method fillCellInfoByNetworkType(Ljava/util/List;Lio/agora/utils2/internal/CommonUtility$MediaNetworkInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cellInfoList",
            "cellInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellSignalStrength;",
            ">;",
            "Lio/agora/utils2/internal/CommonUtility$MediaNetworkInfo;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrength;

    instance-of v1, v0, Landroid/telephony/CellSignalStrengthLte;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result p1

    iput p1, p2, Lio/agora/utils2/internal/CommonUtility$MediaNetworkInfo;->rssi:I

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    move-result p1

    iput p1, p2, Lio/agora/utils2/internal/CommonUtility$MediaNetworkInfo;->signalLevel:I

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getRssnr()I

    move-result p1

    iput p1, p2, Lio/agora/utils2/internal/CommonUtility$MediaNetworkInfo;->snr:I

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/telephony/CellSignalStrengthGsm;

    if-nez v1, :cond_2

    instance-of v1, v0, Landroid/telephony/CellSignalStrengthCdma;

    if-nez v1, :cond_2

    instance-of v1, v0, Landroid/telephony/CellSignalStrengthWcdma;

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getDbm()I

    move-result p1

    iput p1, p2, Lio/agora/utils2/internal/CommonUtility$MediaNetworkInfo;->rssi:I

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getLevel()I

    move-result p1

    iput p1, p2, Lio/agora/utils2/internal/CommonUtility$MediaNetworkInfo;->signalLevel:I

    :cond_3
    :goto_0
    return-void
.end method

.method fillCellInfoHighLevel(Lio/agora/utils2/internal/CommonUtility$MediaNetworkInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cellInfo"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/utils2/internal/CommonUtility$AgoraPhoneStateListener;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getCellSignalStrengths"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/agora/utils2/internal/CommonUtility$AgoraPhoneStateListener;->mSignalStrength:Landroid/telephony/SignalStrength;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lio/agora/utils2/internal/CommonUtility$AgoraPhoneStateListener;->fillCellInfoByNetworkType(Ljava/util/List;Lio/agora/utils2/internal/CommonUtility$MediaNetworkInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "CommonUtility"

    const-string v1, "fillCellInfoHighLevel getDeclareMethod:getCellSignalStrengths failed! "

    invoke-static {v0, v1}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/agora/utils2/internal/CommonUtility$AgoraPhoneStateListener;->fillCellInfoLowLevel(Lio/agora/utils2/internal/CommonUtility$MediaNetworkInfo;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public fillCellInfoIfPossible(Landroid/content/Context;Lio/agora/utils2/internal/CommonUtility$MediaNetworkInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "cellInfo"
        }
    .end annotation

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lio/agora/utils2/internal/CommonUtility$AgoraPhoneStateListener;->fillCellInfoLowLevel(Lio/agora/utils2/internal/CommonUtility$MediaNetworkInfo;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lio/agora/utils2/internal/CommonUtility$AgoraPhoneStateListener;->fillCellInfoHighLevel(Lio/agora/utils2/internal/CommonUtility$MediaNetworkInfo;)V

    :goto_0
    return-void
.end method

.method fillCellInfoLowLevel(Lio/agora/utils2/internal/CommonUtility$MediaNetworkInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cellInfo"
        }
    .end annotation

    invoke-virtual {p0}, Lio/agora/utils2/internal/CommonUtility$AgoraPhoneStateListener;->getRssi()I

    move-result v0

    iput v0, p1, Lio/agora/utils2/internal/CommonUtility$MediaNetworkInfo;->rssi:I

    invoke-virtual {p0}, Lio/agora/utils2/internal/CommonUtility$AgoraPhoneStateListener;->getLevel()I

    move-result v0

    iput v0, p1, Lio/agora/utils2/internal/CommonUtility$MediaNetworkInfo;->signalLevel:I

    return-void
.end method

.method public getAsuLevel()I
    .locals 1

    const-string v0, "getAsuLevel"

    invoke-direct {p0, v0}, Lio/agora/utils2/internal/CommonUtility$AgoraPhoneStateListener;->invokeMethod(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLevel()I
    .locals 1

    const-string v0, "getLevel"

    invoke-direct {p0, v0}, Lio/agora/utils2/internal/CommonUtility$AgoraPhoneStateListener;->invokeMethod(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getRssi()I
    .locals 1

    const-string v0, "getDbm"

    invoke-direct {p0, v0}, Lio/agora/utils2/internal/CommonUtility$AgoraPhoneStateListener;->invokeMethod(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "incomingNumber"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    iget-object p2, p0, Lio/agora/utils2/internal/CommonUtility$AgoraPhoneStateListener;->mCommonUtilityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/agora/utils2/internal/CommonUtility;

    iget-object v0, p0, Lio/agora/utils2/internal/CommonUtility$AgoraPhoneStateListener;->mHandlerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz p2, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "CommonUtility"

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lio/agora/utils2/internal/CommonUtility$AgoraPhoneStateListener;->phoneStatusNeedResume:Z

    if-eqz p1, :cond_3

    iput-boolean v1, p0, Lio/agora/utils2/internal/CommonUtility$AgoraPhoneStateListener;->phoneStatusNeedResume:Z

    const-string p1, "system phone call end delay 1000ms"

    invoke-static {v2, p1}, Lio/agora/utils2/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lio/agora/utils2/internal/CommonUtility$AgoraPhoneStateListener$1;

    invoke-direct {p1, p0, p2}, Lio/agora/utils2/internal/CommonUtility$AgoraPhoneStateListener$1;-><init>(Lio/agora/utils2/internal/CommonUtility$AgoraPhoneStateListener;Lio/agora/utils2/internal/CommonUtility;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/16 v0, 0x16

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    const-string p1, "system phone call ring"

    invoke-static {v2, p1}, Lio/agora/utils2/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lio/agora/utils2/internal/CommonUtility$AgoraPhoneStateListener;->phoneStatusNeedResume:Z

    invoke-virtual {p2, v1, v0, v3}, Lio/agora/utils2/internal/CommonUtility;->onAudioRoutingPhoneChanged(ZII)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    const-string p1, "system phone call start"

    invoke-static {v2, p1}, Lio/agora/utils2/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lio/agora/utils2/internal/CommonUtility$AgoraPhoneStateListener;->phoneStatusNeedResume:Z

    invoke-virtual {p2, v1, v0, v4}, Lio/agora/utils2/internal/CommonUtility;->onAudioRoutingPhoneChanged(ZII)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signalStrength"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    iput-object p1, p0, Lio/agora/utils2/internal/CommonUtility$AgoraPhoneStateListener;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-void
.end method
