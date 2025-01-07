.class public final Landroidx/media2/MediaSession2$ControllerInfo;
.super Ljava/lang/Object;
.source "MediaSession2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaSession2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ControllerInfo"
.end annotation


# instance fields
.field private final mControllerCb:Landroidx/media2/MediaSession2$ControllerCb;

.field private final mIsTrusted:Z

.field private final mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;


# direct methods
.method constructor <init>(Landroidx/media/MediaSessionManager$RemoteUserInfo;ZLandroidx/media2/MediaSession2$ControllerCb;)V
    .locals 0

    .line 1371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1372
    iput-object p1, p0, Landroidx/media2/MediaSession2$ControllerInfo;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 1373
    iput-boolean p2, p0, Landroidx/media2/MediaSession2$ControllerInfo;->mIsTrusted:Z

    .line 1374
    iput-object p3, p0, Landroidx/media2/MediaSession2$ControllerInfo;->mControllerCb:Landroidx/media2/MediaSession2$ControllerCb;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1419
    instance-of v0, p1, Landroidx/media2/MediaSession2$ControllerInfo;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 1425
    :cond_1
    check-cast p1, Landroidx/media2/MediaSession2$ControllerInfo;

    .line 1426
    iget-object v0, p0, Landroidx/media2/MediaSession2$ControllerInfo;->mControllerCb:Landroidx/media2/MediaSession2$ControllerCb;

    if-nez v0, :cond_3

    iget-object v1, p1, Landroidx/media2/MediaSession2$ControllerInfo;->mControllerCb:Landroidx/media2/MediaSession2$ControllerCb;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1429
    :cond_2
    iget-object v0, p0, Landroidx/media2/MediaSession2$ControllerInfo;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    iget-object p1, p1, Landroidx/media2/MediaSession2$ControllerInfo;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {v0, p1}, Landroidx/media/MediaSessionManager$RemoteUserInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1427
    :cond_3
    :goto_0
    iget-object p1, p1, Landroidx/media2/MediaSession2$ControllerInfo;->mControllerCb:Landroidx/media2/MediaSession2$ControllerCb;

    invoke-static {v0, p1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method getControllerCb()Landroidx/media2/MediaSession2$ControllerCb;
    .locals 1

    .line 1439
    iget-object v0, p0, Landroidx/media2/MediaSession2$ControllerInfo;->mControllerCb:Landroidx/media2/MediaSession2$ControllerCb;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1389
    iget-object v0, p0, Landroidx/media2/MediaSession2$ControllerInfo;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {v0}, Landroidx/media/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteUserInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;
    .locals 1

    .line 1382
    iget-object v0, p0, Landroidx/media2/MediaSession2$ControllerInfo;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1396
    iget-object v0, p0, Landroidx/media2/MediaSession2$ControllerInfo;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {v0}, Landroidx/media/MediaSessionManager$RemoteUserInfo;->getUid()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1414
    iget-object v0, p0, Landroidx/media2/MediaSession2$ControllerInfo;->mControllerCb:Landroidx/media2/MediaSession2$ControllerCb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTrusted()Z
    .locals 1

    .line 1409
    iget-boolean v0, p0, Landroidx/media2/MediaSession2$ControllerInfo;->mIsTrusted:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1434
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ControllerInfo {pkg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media2/MediaSession2$ControllerInfo;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {v1}, Landroidx/media/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media2/MediaSession2$ControllerInfo;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 1435
    invoke-virtual {v1}, Landroidx/media/MediaSessionManager$RemoteUserInfo;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
