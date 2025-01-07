.class public Lio/agora/base/internal/video/VideoDecoder$Settings;
.super Ljava/lang/Object;
.source "VideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/video/VideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field public final height:I

.field public final numberOfCores:I

.field public final width:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lio/agora/base/internal/video/VideoDecoder$Settings;->numberOfCores:I

    .line 31
    iput p2, p0, Lio/agora/base/internal/video/VideoDecoder$Settings;->width:I

    .line 32
    iput p3, p0, Lio/agora/base/internal/video/VideoDecoder$Settings;->height:I

    return-void
.end method
