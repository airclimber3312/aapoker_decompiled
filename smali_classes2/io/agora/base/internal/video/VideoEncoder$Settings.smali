.class public Lio/agora/base/internal/video/VideoEncoder$Settings;
.super Ljava/lang/Object;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/video/VideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field public final automaticResizeOn:Z

.field public final expectTexture:Z

.field public final height:I

.field public final keyFrameInterval:I

.field public final maxFramerate:I

.field public final numberOfCores:I

.field public final numberOfSimulcastStreams:I

.field public final rateControlMode:I

.field public final startBitrate:I

.field public final width:I


# direct methods
.method public constructor <init>(IIIIIIZIIZ)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lio/agora/base/internal/video/VideoEncoder$Settings;->numberOfCores:I

    .line 43
    iput p2, p0, Lio/agora/base/internal/video/VideoEncoder$Settings;->width:I

    .line 44
    iput p3, p0, Lio/agora/base/internal/video/VideoEncoder$Settings;->height:I

    .line 45
    iput p4, p0, Lio/agora/base/internal/video/VideoEncoder$Settings;->startBitrate:I

    .line 46
    iput p5, p0, Lio/agora/base/internal/video/VideoEncoder$Settings;->maxFramerate:I

    .line 47
    iput p6, p0, Lio/agora/base/internal/video/VideoEncoder$Settings;->numberOfSimulcastStreams:I

    .line 48
    iput-boolean p7, p0, Lio/agora/base/internal/video/VideoEncoder$Settings;->automaticResizeOn:Z

    .line 49
    iput p8, p0, Lio/agora/base/internal/video/VideoEncoder$Settings;->keyFrameInterval:I

    .line 50
    iput p9, p0, Lio/agora/base/internal/video/VideoEncoder$Settings;->rateControlMode:I

    .line 51
    iput-boolean p10, p0, Lio/agora/base/internal/video/VideoEncoder$Settings;->expectTexture:Z

    return-void
.end method

.method public constructor <init>(IIIIIZ)V
    .locals 11

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v7, p6

    .line 57
    invoke-direct/range {v0 .. v10}, Lio/agora/base/internal/video/VideoEncoder$Settings;-><init>(IIIIIIZIIZ)V

    return-void
.end method
