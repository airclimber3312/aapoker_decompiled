.class public Lio/agora/musiccontentcenter/MusicCacheInfo;
.super Ljava/lang/Object;


# instance fields
.field public songCode:J

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "songCode",
            "status"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/agora/musiccontentcenter/MusicCacheInfo;->songCode:J

    iput p3, p0, Lio/agora/musiccontentcenter/MusicCacheInfo;->status:I

    return-void
.end method


# virtual methods
.method public getSongCode()J
    .locals 2

    iget-wide v0, p0, Lio/agora/musiccontentcenter/MusicCacheInfo;->songCode:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lio/agora/musiccontentcenter/MusicCacheInfo;->status:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MusicCacheInfo{songCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lio/agora/musiccontentcenter/MusicCacheInfo;->songCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/musiccontentcenter/MusicCacheInfo;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
