.class public Lio/agora/base/internal/video/VideoEncoder$EncodeInfo;
.super Ljava/lang/Object;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/video/VideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncodeInfo"
.end annotation


# instance fields
.field public final frameTypes:[Lio/agora/base/internal/video/EncodedImage$FrameType;


# direct methods
.method public constructor <init>([Lio/agora/base/internal/video/EncodedImage$FrameType;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lio/agora/base/internal/video/VideoEncoder$EncodeInfo;->frameTypes:[Lio/agora/base/internal/video/EncodedImage$FrameType;

    return-void
.end method
