.class public final Landroidx/media2/MediaItem2$Builder;
.super Ljava/lang/Object;
.source "MediaItem2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaItem2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDataSourceDesc:Landroidx/media2/DataSourceDesc2;

.field private mFlags:I

.field private mMediaId:Ljava/lang/String;

.field private mMetadata:Landroidx/media2/MediaMetadata2;

.field private mUuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput p1, p0, Landroidx/media2/MediaItem2$Builder;->mFlags:I

    return-void
.end method


# virtual methods
.method public build()Landroidx/media2/MediaItem2;
    .locals 8

    .line 330
    iget-object v0, p0, Landroidx/media2/MediaItem2$Builder;->mMetadata:Landroidx/media2/MediaMetadata2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "android.media.metadata.MEDIA_ID"

    .line 331
    invoke-virtual {v0, v2}, Landroidx/media2/MediaMetadata2;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 333
    iget-object v0, p0, Landroidx/media2/MediaItem2$Builder;->mMediaId:Ljava/lang/String;

    :cond_1
    move-object v3, v0

    .line 335
    new-instance v0, Landroidx/media2/MediaItem2;

    iget-object v4, p0, Landroidx/media2/MediaItem2$Builder;->mDataSourceDesc:Landroidx/media2/DataSourceDesc2;

    iget-object v5, p0, Landroidx/media2/MediaItem2$Builder;->mMetadata:Landroidx/media2/MediaMetadata2;

    iget v6, p0, Landroidx/media2/MediaItem2$Builder;->mFlags:I

    iget-object v2, p0, Landroidx/media2/MediaItem2$Builder;->mUuid:Ljava/util/UUID;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/os/ParcelUuid;

    iget-object v2, p0, Landroidx/media2/MediaItem2$Builder;->mUuid:Ljava/util/UUID;

    invoke-direct {v1, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    :goto_1
    move-object v7, v1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroidx/media2/MediaItem2;-><init>(Ljava/lang/String;Landroidx/media2/DataSourceDesc2;Landroidx/media2/MediaMetadata2;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public setDataSourceDesc(Landroidx/media2/DataSourceDesc2;)Landroidx/media2/MediaItem2$Builder;
    .locals 0

    .line 315
    iput-object p1, p0, Landroidx/media2/MediaItem2$Builder;->mDataSourceDesc:Landroidx/media2/DataSourceDesc2;

    return-object p0
.end method

.method public setMediaId(Ljava/lang/String;)Landroidx/media2/MediaItem2$Builder;
    .locals 0

    .line 289
    iput-object p1, p0, Landroidx/media2/MediaItem2$Builder;->mMediaId:Ljava/lang/String;

    return-object p0
.end method

.method public setMetadata(Landroidx/media2/MediaMetadata2;)Landroidx/media2/MediaItem2$Builder;
    .locals 0

    .line 304
    iput-object p1, p0, Landroidx/media2/MediaItem2$Builder;->mMetadata:Landroidx/media2/MediaMetadata2;

    return-object p0
.end method

.method setUuid(Ljava/util/UUID;)Landroidx/media2/MediaItem2$Builder;
    .locals 0

    .line 320
    iput-object p1, p0, Landroidx/media2/MediaItem2$Builder;->mUuid:Ljava/util/UUID;

    return-object p0
.end method
