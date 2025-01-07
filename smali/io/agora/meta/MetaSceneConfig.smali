.class public Lio/agora/meta/MetaSceneConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/meta/MetaSceneConfig$StateSyncMode;
    }
.end annotation


# instance fields
.field public mActivityContext:Landroid/content/Context;

.field public mEnableFaceCapture:Z

.field public mFaceCaptureAppId:Ljava/lang/String;

.field public mFaceCaptureCertificate:Ljava/lang/String;

.field public mSyncMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lio/agora/meta/MetaSceneConfig;->mSyncMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lio/agora/meta/MetaSceneConfig;->mActivityContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/agora/meta/MetaSceneConfig;->mEnableFaceCapture:Z

    const-string v0, ""

    iput-object v0, p0, Lio/agora/meta/MetaSceneConfig;->mFaceCaptureAppId:Ljava/lang/String;

    iput-object v0, p0, Lio/agora/meta/MetaSceneConfig;->mFaceCaptureCertificate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActivityContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lio/agora/meta/MetaSceneConfig;->mActivityContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFaceCaptureAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/agora/meta/MetaSceneConfig;->mFaceCaptureAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getFaceCaptureCertificate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/agora/meta/MetaSceneConfig;->mFaceCaptureCertificate:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncMode()I
    .locals 1

    iget v0, p0, Lio/agora/meta/MetaSceneConfig;->mSyncMode:I

    return v0
.end method

.method public isEnableFaceCapture()Z
    .locals 1

    iget-boolean v0, p0, Lio/agora/meta/MetaSceneConfig;->mEnableFaceCapture:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MetaSceneConfig{mSyncMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/agora/meta/MetaSceneConfig;->mSyncMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mActivityContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/meta/MetaSceneConfig;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mEnableFaceCapture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/agora/meta/MetaSceneConfig;->mEnableFaceCapture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFaceCaptureAppId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/meta/MetaSceneConfig;->mFaceCaptureAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mFaceCaptureCertificate=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/meta/MetaSceneConfig;->mFaceCaptureCertificate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
