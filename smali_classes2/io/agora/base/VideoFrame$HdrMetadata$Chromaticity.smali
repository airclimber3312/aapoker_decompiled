.class public Lio/agora/base/VideoFrame$HdrMetadata$Chromaticity;
.super Ljava/lang/Object;
.source "VideoFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/VideoFrame$HdrMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Chromaticity"
.end annotation


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput p1, p0, Lio/agora/base/VideoFrame$HdrMetadata$Chromaticity;->x:I

    .line 334
    iput p2, p0, Lio/agora/base/VideoFrame$HdrMetadata$Chromaticity;->y:I

    return-void
.end method
