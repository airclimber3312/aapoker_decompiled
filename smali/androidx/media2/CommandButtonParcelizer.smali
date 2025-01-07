.class public final Landroidx/media2/CommandButtonParcelizer;
.super Ljava/lang/Object;
.source "CommandButtonParcelizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media2/MediaSession2$CommandButton;
    .locals 3

    .line 11
    new-instance v0, Landroidx/media2/MediaSession2$CommandButton;

    invoke-direct {v0}, Landroidx/media2/MediaSession2$CommandButton;-><init>()V

    .line 12
    iget-object v1, v0, Landroidx/media2/MediaSession2$CommandButton;->mCommand:Landroidx/media2/SessionCommand2;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    check-cast v1, Landroidx/media2/SessionCommand2;

    iput-object v1, v0, Landroidx/media2/MediaSession2$CommandButton;->mCommand:Landroidx/media2/SessionCommand2;

    .line 13
    iget v1, v0, Landroidx/media2/MediaSession2$CommandButton;->mIconResId:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/MediaSession2$CommandButton;->mIconResId:I

    .line 14
    iget-object v1, v0, Landroidx/media2/MediaSession2$CommandButton;->mDisplayName:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/MediaSession2$CommandButton;->mDisplayName:Ljava/lang/String;

    .line 15
    iget-object v1, v0, Landroidx/media2/MediaSession2$CommandButton;->mExtras:Landroid/os/Bundle;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readBundle(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/MediaSession2$CommandButton;->mExtras:Landroid/os/Bundle;

    .line 16
    iget-boolean v1, v0, Landroidx/media2/MediaSession2$CommandButton;->mEnabled:Z

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean(ZI)Z

    move-result p0

    iput-boolean p0, v0, Landroidx/media2/MediaSession2$CommandButton;->mEnabled:Z

    return-object v0
.end method

.method public static write(Landroidx/media2/MediaSession2$CommandButton;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    .line 22
    iget-object v0, p0, Landroidx/media2/MediaSession2$CommandButton;->mCommand:Landroidx/media2/SessionCommand2;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)V

    .line 23
    iget v0, p0, Landroidx/media2/MediaSession2$CommandButton;->mIconResId:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    .line 24
    iget-object v0, p0, Landroidx/media2/MediaSession2$CommandButton;->mDisplayName:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;I)V

    .line 25
    iget-object v0, p0, Landroidx/media2/MediaSession2$CommandButton;->mExtras:Landroid/os/Bundle;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeBundle(Landroid/os/Bundle;I)V

    .line 26
    iget-boolean p0, p0, Landroidx/media2/MediaSession2$CommandButton;->mEnabled:Z

    const/4 v0, 0x5

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(ZI)V

    return-void
.end method
