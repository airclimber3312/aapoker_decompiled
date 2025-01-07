.class Lio/agora/rtc2/video/VideoCaptureCamera$1;
.super Ljava/lang/Object;
.source "VideoCaptureCamera.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc2/video/VideoCaptureCamera;->getClosestFramerateRange(Ljava/util/List;I)Lio/agora/rtc2/video/VideoCapture$FramerateRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/agora/rtc2/video/VideoCapture$FramerateRange;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_FPS_DIFF_THRESHOLD:I = 0x1388

.field private static final MAX_FPS_HIGH_DIFF_WEIGHT:I = 0x3

.field private static final MAX_FPS_LOW_DIFF_WEIGHT:I = 0x1

.field private static final MIN_FPS_HIGH_VALUE_WEIGHT:I = 0x4

.field private static final MIN_FPS_LOW_VALUE_WEIGHT:I = 0x1

.field private static final MIN_FPS_THRESHOLD:I = 0x1f40


# instance fields
.field final synthetic val$targetFramerate:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 180
    iput p1, p0, Lio/agora/rtc2/video/VideoCaptureCamera$1;->val$targetFramerate:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private progressivePenalty(IIII)I
    .locals 0

    if-ge p1, p2, :cond_0

    mul-int p1, p1, p3

    goto :goto_0

    :cond_0
    mul-int p3, p3, p2

    sub-int/2addr p1, p2

    mul-int p1, p1, p4

    add-int/2addr p1, p3

    :goto_0
    return p1
.end method


# virtual methods
.method public compare(Lio/agora/rtc2/video/VideoCapture$FramerateRange;Lio/agora/rtc2/video/VideoCapture$FramerateRange;)I
    .locals 0

    .line 208
    invoke-virtual {p0, p1}, Lio/agora/rtc2/video/VideoCaptureCamera$1;->diff(Lio/agora/rtc2/video/VideoCapture$FramerateRange;)I

    move-result p1

    invoke-virtual {p0, p2}, Lio/agora/rtc2/video/VideoCaptureCamera$1;->diff(Lio/agora/rtc2/video/VideoCapture$FramerateRange;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 180
    check-cast p1, Lio/agora/rtc2/video/VideoCapture$FramerateRange;

    check-cast p2, Lio/agora/rtc2/video/VideoCapture$FramerateRange;

    invoke-virtual {p0, p1, p2}, Lio/agora/rtc2/video/VideoCaptureCamera$1;->compare(Lio/agora/rtc2/video/VideoCapture$FramerateRange;Lio/agora/rtc2/video/VideoCapture$FramerateRange;)I

    move-result p1

    return p1
.end method

.method diff(Lio/agora/rtc2/video/VideoCapture$FramerateRange;)I
    .locals 4

    .line 199
    iget v0, p1, Lio/agora/rtc2/video/VideoCapture$FramerateRange;->min:I

    const/4 v1, 0x4

    const/16 v2, 0x1f40

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3, v1}, Lio/agora/rtc2/video/VideoCaptureCamera$1;->progressivePenalty(IIII)I

    move-result v0

    .line 201
    iget v1, p0, Lio/agora/rtc2/video/VideoCaptureCamera$1;->val$targetFramerate:I

    iget p1, p1, Lio/agora/rtc2/video/VideoCapture$FramerateRange;->max:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v1, 0x1388

    const/4 v2, 0x3

    invoke-direct {p0, p1, v1, v3, v2}, Lio/agora/rtc2/video/VideoCaptureCamera$1;->progressivePenalty(IIII)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method
