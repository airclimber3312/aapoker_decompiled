.class public Lio/agora/base/internal/video/CodecSpecificInfo$CodecSpecificInfoHEVC;
.super Lio/agora/base/internal/video/CodecSpecificInfo;
.source "CodecSpecificInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/base/internal/video/CodecSpecificInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CodecSpecificInfoHEVC"
.end annotation


# instance fields
.field private profile:Lio/agora/base/internal/video/VideoCodecProfile;

.field final synthetic this$0:Lio/agora/base/internal/video/CodecSpecificInfo;


# direct methods
.method public constructor <init>(Lio/agora/base/internal/video/CodecSpecificInfo;Lio/agora/base/internal/video/VideoCodecProfile;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lio/agora/base/internal/video/CodecSpecificInfo$CodecSpecificInfoHEVC;->this$0:Lio/agora/base/internal/video/CodecSpecificInfo;

    invoke-direct {p0}, Lio/agora/base/internal/video/CodecSpecificInfo;-><init>()V

    .line 85
    iput-object p2, p0, Lio/agora/base/internal/video/CodecSpecificInfo$CodecSpecificInfoHEVC;->profile:Lio/agora/base/internal/video/VideoCodecProfile;

    return-void
.end method


# virtual methods
.method public getVideoCodecProfile()Lio/agora/base/internal/video/VideoCodecProfile;
    .locals 1

    .line 95
    iget-object v0, p0, Lio/agora/base/internal/video/CodecSpecificInfo$CodecSpecificInfoHEVC;->profile:Lio/agora/base/internal/video/VideoCodecProfile;

    return-object v0
.end method

.method public getVideoCodecType()Lio/agora/base/internal/video/VideoCodecType;
    .locals 1

    .line 90
    sget-object v0, Lio/agora/base/internal/video/VideoCodecType;->H265:Lio/agora/base/internal/video/VideoCodecType;

    return-object v0
.end method
