.class Lio/agora/base/internal/video/WrappedNativeColorSpace;
.super Ljava/lang/Object;
.source "WrappedNativeColorSpace.java"

# interfaces
.implements Lio/agora/base/VideoFrame$ColorSpace;


# instance fields
.field private matrix:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

.field private primary:Lio/agora/base/VideoFrame$ColorSpace$Primary;

.field private range:Lio/agora/base/VideoFrame$ColorSpace$Range;

.field private transfer:Lio/agora/base/VideoFrame$ColorSpace$Transfer;


# direct methods
.method constructor <init>(IIII)V
    .locals 6

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lio/agora/base/VideoFrame$ColorSpace$Range;->Invalid:Lio/agora/base/VideoFrame$ColorSpace$Range;

    iput-object v0, p0, Lio/agora/base/internal/video/WrappedNativeColorSpace;->range:Lio/agora/base/VideoFrame$ColorSpace$Range;

    .line 30
    sget-object v0, Lio/agora/base/VideoFrame$ColorSpace$Matrix;->Unspecified:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    iput-object v0, p0, Lio/agora/base/internal/video/WrappedNativeColorSpace;->matrix:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    .line 31
    sget-object v0, Lio/agora/base/VideoFrame$ColorSpace$Transfer;->Unspecified:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    iput-object v0, p0, Lio/agora/base/internal/video/WrappedNativeColorSpace;->transfer:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    .line 32
    sget-object v0, Lio/agora/base/VideoFrame$ColorSpace$Primary;->Unspecified:Lio/agora/base/VideoFrame$ColorSpace$Primary;

    iput-object v0, p0, Lio/agora/base/internal/video/WrappedNativeColorSpace;->primary:Lio/agora/base/VideoFrame$ColorSpace$Primary;

    .line 33
    invoke-static {}, Lio/agora/base/VideoFrame$ColorSpace$Range;->values()[Lio/agora/base/VideoFrame$ColorSpace$Range;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 34
    invoke-virtual {v4}, Lio/agora/base/VideoFrame$ColorSpace$Range;->getRange()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 35
    iput-object v4, p0, Lio/agora/base/internal/video/WrappedNativeColorSpace;->range:Lio/agora/base/VideoFrame$ColorSpace$Range;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    invoke-static {}, Lio/agora/base/VideoFrame$ColorSpace$Matrix;->values()[Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    aget-object v3, p1, v1

    .line 40
    invoke-virtual {v3}, Lio/agora/base/VideoFrame$ColorSpace$Matrix;->getMatrix()I

    move-result v4

    if-ne v4, p2, :cond_2

    .line 41
    iput-object v3, p0, Lio/agora/base/internal/video/WrappedNativeColorSpace;->matrix:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 45
    :cond_3
    :goto_3
    invoke-static {}, Lio/agora/base/VideoFrame$ColorSpace$Transfer;->values()[Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p2, :cond_5

    aget-object v1, p1, v0

    .line 46
    invoke-virtual {v1}, Lio/agora/base/VideoFrame$ColorSpace$Transfer;->getTransfer()I

    move-result v3

    if-ne v3, p3, :cond_4

    .line 47
    iput-object v1, p0, Lio/agora/base/internal/video/WrappedNativeColorSpace;->transfer:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    goto :goto_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 51
    :cond_5
    :goto_5
    invoke-static {}, Lio/agora/base/VideoFrame$ColorSpace$Primary;->values()[Lio/agora/base/VideoFrame$ColorSpace$Primary;

    move-result-object p1

    array-length p2, p1

    :goto_6
    if-ge v2, p2, :cond_7

    aget-object p3, p1, v2

    .line 52
    invoke-virtual {p3}, Lio/agora/base/VideoFrame$ColorSpace$Primary;->getPrimary()I

    move-result v0

    if-ne v0, p4, :cond_6

    .line 53
    iput-object p3, p0, Lio/agora/base/internal/video/WrappedNativeColorSpace;->primary:Lio/agora/base/VideoFrame$ColorSpace$Primary;

    goto :goto_7

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    return-void
.end method


# virtual methods
.method public getHdrMetadata()Lio/agora/base/VideoFrame$HdrMetadata;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMatrix()Lio/agora/base/VideoFrame$ColorSpace$Matrix;
    .locals 1

    .line 66
    iget-object v0, p0, Lio/agora/base/internal/video/WrappedNativeColorSpace;->matrix:Lio/agora/base/VideoFrame$ColorSpace$Matrix;

    return-object v0
.end method

.method public getPrimary()Lio/agora/base/VideoFrame$ColorSpace$Primary;
    .locals 1

    .line 76
    iget-object v0, p0, Lio/agora/base/internal/video/WrappedNativeColorSpace;->primary:Lio/agora/base/VideoFrame$ColorSpace$Primary;

    return-object v0
.end method

.method public getRange()Lio/agora/base/VideoFrame$ColorSpace$Range;
    .locals 1

    .line 61
    iget-object v0, p0, Lio/agora/base/internal/video/WrappedNativeColorSpace;->range:Lio/agora/base/VideoFrame$ColorSpace$Range;

    return-object v0
.end method

.method public getTransfer()Lio/agora/base/VideoFrame$ColorSpace$Transfer;
    .locals 1

    .line 71
    iget-object v0, p0, Lio/agora/base/internal/video/WrappedNativeColorSpace;->transfer:Lio/agora/base/VideoFrame$ColorSpace$Transfer;

    return-object v0
.end method
