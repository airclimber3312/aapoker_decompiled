.class public final Landroidx/media2/MediaMetadata2Parcelizer;
.super Ljava/lang/Object;
.source "MediaMetadata2Parcelizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media2/MediaMetadata2;
    .locals 3

    .line 11
    new-instance v0, Landroidx/media2/MediaMetadata2;

    invoke-direct {v0}, Landroidx/media2/MediaMetadata2;-><init>()V

    .line 12
    iget-object v1, v0, Landroidx/media2/MediaMetadata2;->mBundle:Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readBundle(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, v0, Landroidx/media2/MediaMetadata2;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public static write(Landroidx/media2/MediaMetadata2;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    .line 18
    iget-object p0, p0, Landroidx/media2/MediaMetadata2;->mBundle:Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeBundle(Landroid/os/Bundle;I)V

    return-void
.end method
