.class public final Landroidx/media2/PlaybackInfoParcelizer;
.super Ljava/lang/Object;
.source "PlaybackInfoParcelizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media2/MediaController2$PlaybackInfo;
    .locals 3

    .line 11
    new-instance v0, Landroidx/media2/MediaController2$PlaybackInfo;

    invoke-direct {v0}, Landroidx/media2/MediaController2$PlaybackInfo;-><init>()V

    .line 12
    iget v1, v0, Landroidx/media2/MediaController2$PlaybackInfo;->mPlaybackType:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/MediaController2$PlaybackInfo;->mPlaybackType:I

    .line 13
    iget v1, v0, Landroidx/media2/MediaController2$PlaybackInfo;->mControlType:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/MediaController2$PlaybackInfo;->mControlType:I

    .line 14
    iget v1, v0, Landroidx/media2/MediaController2$PlaybackInfo;->mMaxVolume:I

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/MediaController2$PlaybackInfo;->mMaxVolume:I

    .line 15
    iget v1, v0, Landroidx/media2/MediaController2$PlaybackInfo;->mCurrentVolume:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/MediaController2$PlaybackInfo;->mCurrentVolume:I

    .line 16
    iget-object v1, v0, Landroidx/media2/MediaController2$PlaybackInfo;->mAudioAttrsCompat:Landroidx/media/AudioAttributesCompat;

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object p0

    check-cast p0, Landroidx/media/AudioAttributesCompat;

    iput-object p0, v0, Landroidx/media2/MediaController2$PlaybackInfo;->mAudioAttrsCompat:Landroidx/media/AudioAttributesCompat;

    return-object v0
.end method

.method public static write(Landroidx/media2/MediaController2$PlaybackInfo;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    .line 22
    iget v0, p0, Landroidx/media2/MediaController2$PlaybackInfo;->mPlaybackType:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    .line 23
    iget v0, p0, Landroidx/media2/MediaController2$PlaybackInfo;->mControlType:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    .line 24
    iget v0, p0, Landroidx/media2/MediaController2$PlaybackInfo;->mMaxVolume:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    .line 25
    iget v0, p0, Landroidx/media2/MediaController2$PlaybackInfo;->mCurrentVolume:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    .line 26
    iget-object p0, p0, Landroidx/media2/MediaController2$PlaybackInfo;->mAudioAttrsCompat:Landroidx/media/AudioAttributesCompat;

    const/4 v0, 0x5

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)V

    return-void
.end method
