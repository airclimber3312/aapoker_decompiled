.class public Lio/agora/meta/EnterSceneConfig;
.super Ljava/lang/Object;


# instance fields
.field public mExtraInfo:[B

.field public mRoomName:Ljava/lang/String;

.field public mSceneId:J

.field public mScenePath:Ljava/lang/String;

.field public mSceneView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lio/agora/meta/EnterSceneConfig;->mRoomName:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/agora/meta/EnterSceneConfig;->mSceneView:Landroid/view/TextureView;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/agora/meta/EnterSceneConfig;->mSceneId:J

    iput-object v0, p0, Lio/agora/meta/EnterSceneConfig;->mScenePath:Ljava/lang/String;

    iput-object v1, p0, Lio/agora/meta/EnterSceneConfig;->mExtraInfo:[B

    return-void
.end method


# virtual methods
.method public getExtraInfo()[B
    .locals 1

    iget-object v0, p0, Lio/agora/meta/EnterSceneConfig;->mExtraInfo:[B

    return-object v0
.end method

.method public getRoomName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/agora/meta/EnterSceneConfig;->mRoomName:Ljava/lang/String;

    return-object v0
.end method

.method public getSceneId()J
    .locals 2

    iget-wide v0, p0, Lio/agora/meta/EnterSceneConfig;->mSceneId:J

    return-wide v0
.end method

.method public getScenePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/agora/meta/EnterSceneConfig;->mScenePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSceneView()Landroid/view/TextureView;
    .locals 1

    iget-object v0, p0, Lio/agora/meta/EnterSceneConfig;->mSceneView:Landroid/view/TextureView;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EnterSceneConfig{mRoomName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/agora/meta/EnterSceneConfig;->mRoomName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mSceneView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/meta/EnterSceneConfig;->mSceneView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSceneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/agora/meta/EnterSceneConfig;->mSceneId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mScenePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/meta/EnterSceneConfig;->mScenePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mExtraCustomInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/meta/EnterSceneConfig;->mExtraInfo:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
