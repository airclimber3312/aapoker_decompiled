.class public final Landroidx/media2/SessionCommand2Parcelizer;
.super Ljava/lang/Object;
.source "SessionCommand2Parcelizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media2/SessionCommand2;
    .locals 3

    .line 11
    new-instance v0, Landroidx/media2/SessionCommand2;

    invoke-direct {v0}, Landroidx/media2/SessionCommand2;-><init>()V

    .line 12
    iget v1, v0, Landroidx/media2/SessionCommand2;->mCommandCode:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/SessionCommand2;->mCommandCode:I

    .line 13
    iget-object v1, v0, Landroidx/media2/SessionCommand2;->mCustomCommand:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/SessionCommand2;->mCustomCommand:Ljava/lang/String;

    .line 14
    iget-object v1, v0, Landroidx/media2/SessionCommand2;->mExtras:Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readBundle(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, v0, Landroidx/media2/SessionCommand2;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public static write(Landroidx/media2/SessionCommand2;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    .line 20
    iget v0, p0, Landroidx/media2/SessionCommand2;->mCommandCode:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    .line 21
    iget-object v0, p0, Landroidx/media2/SessionCommand2;->mCustomCommand:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;I)V

    .line 22
    iget-object p0, p0, Landroidx/media2/SessionCommand2;->mExtras:Landroid/os/Bundle;

    const/4 v0, 0x3

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeBundle(Landroid/os/Bundle;I)V

    return-void
.end method
