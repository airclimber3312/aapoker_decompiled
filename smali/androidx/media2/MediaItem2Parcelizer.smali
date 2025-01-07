.class public final Landroidx/media2/MediaItem2Parcelizer;
.super Ljava/lang/Object;
.source "MediaItem2Parcelizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media2/MediaItem2;
    .locals 3

    .line 11
    new-instance v0, Landroidx/media2/MediaItem2;

    invoke-direct {v0}, Landroidx/media2/MediaItem2;-><init>()V

    .line 12
    iget-object v1, v0, Landroidx/media2/MediaItem2;->mId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/MediaItem2;->mId:Ljava/lang/String;

    .line 13
    iget v1, v0, Landroidx/media2/MediaItem2;->mFlags:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/MediaItem2;->mFlags:I

    .line 14
    iget-object v1, v0, Landroidx/media2/MediaItem2;->mParcelUuid:Landroid/os/ParcelUuid;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    iput-object v1, v0, Landroidx/media2/MediaItem2;->mParcelUuid:Landroid/os/ParcelUuid;

    .line 15
    iget-object v1, v0, Landroidx/media2/MediaItem2;->mMetadata:Landroidx/media2/MediaMetadata2;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object p0

    check-cast p0, Landroidx/media2/MediaMetadata2;

    iput-object p0, v0, Landroidx/media2/MediaItem2;->mMetadata:Landroidx/media2/MediaMetadata2;

    return-object v0
.end method

.method public static write(Landroidx/media2/MediaItem2;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    .line 21
    iget-object v0, p0, Landroidx/media2/MediaItem2;->mId:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;I)V

    .line 22
    iget v0, p0, Landroidx/media2/MediaItem2;->mFlags:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    .line 23
    iget-object v0, p0, Landroidx/media2/MediaItem2;->mParcelUuid:Landroid/os/ParcelUuid;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 24
    iget-object p0, p0, Landroidx/media2/MediaItem2;->mMetadata:Landroidx/media2/MediaMetadata2;

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)V

    return-void
.end method
