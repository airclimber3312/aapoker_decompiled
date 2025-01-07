.class public final Lio/agora/base/FaceCaptureInfo;
.super Ljava/lang/Object;
.source "FaceCaptureInfo.java"

# interfaces
.implements Lio/agora/base/IMetaInfo;


# static fields
.field public static final TAG:Ljava/lang/String; = "FaceCaptureInfo"


# instance fields
.field private mInfoStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lio/agora/base/FaceCaptureInfo;->mInfoStr:Ljava/lang/String;

    return-void
.end method

.method public static addFaceCapInfoToFrame(Lio/agora/base/FaceCaptureInfo;Lio/agora/base/VideoFrame;)V
    .locals 2

    .line 39
    invoke-virtual {p1}, Lio/agora/base/VideoFrame;->getMetaInfo()Lio/agora/base/VideoFrameMetaInfo;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lio/agora/base/IMetaInfo;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 40
    invoke-virtual {p1, v0}, Lio/agora/base/VideoFrameMetaInfo;->setCustomMetaInfo([Lio/agora/base/IMetaInfo;)I

    return-void
.end method

.method public static extractFaceCaptureInfoFromVideoFrame(Lio/agora/base/VideoFrame;I)Lio/agora/base/FaceCaptureInfo;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lio/agora/base/VideoFrame;->getMetaInfo()Lio/agora/base/VideoFrameMetaInfo;

    move-result-object p0

    .line 46
    sget-object v0, Lio/agora/base/FaceCaptureInfo;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lio/agora/base/VideoFrameMetaInfo;->getCustomMetaInfoAt(Ljava/lang/String;I)Lio/agora/base/IMetaInfo;

    move-result-object p0

    check-cast p0, Lio/agora/base/FaceCaptureInfo;

    return-object p0
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInfoStr()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lio/agora/base/FaceCaptureInfo;->mInfoStr:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lio/agora/base/FaceCaptureInfo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lio/agora/base/FaceCaptureInfo;->mInfoStr:Ljava/lang/String;

    return-object v0
.end method
