.class Lio/agora/rtc2/video/VideoCaptureCamera1$BuggyDeviceHack;
.super Ljava/lang/Object;
.source "VideoCaptureCamera1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/video/VideoCaptureCamera1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuggyDeviceHack"
.end annotation


# static fields
.field private static final COLORSPACE_BUGGY_DEVICE_LIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "SAMSUNG-SGH-I747"

    const-string v1, "ODROID-U2"

    const-string v2, "XT1092"

    const-string v3, "XT1095"

    const-string v4, "XT1096"

    const-string v5, "XT1097"

    .line 93
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1$BuggyDeviceHack;->COLORSPACE_BUGGY_DEVICE_LIST:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getImageFormat()I
    .locals 1

    .line 104
    invoke-static {}, Lio/agora/rtc2/video/VideoCaptureCamera1$BuggyDeviceHack;->isBuggyDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_0

    :cond_0
    const v0, 0x32315659

    :goto_0
    return v0
.end method

.method static isBuggyDevice()Z
    .locals 6

    .line 108
    sget-object v0, Lio/agora/rtc2/video/VideoCaptureCamera1$BuggyDeviceHack;->COLORSPACE_BUGGY_DEVICE_LIST:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 109
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
