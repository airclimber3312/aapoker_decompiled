.class public final Landroidx/media2/SessionCommandGroup2Parcelizer;
.super Ljava/lang/Object;
.source "SessionCommandGroup2Parcelizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media2/SessionCommandGroup2;
    .locals 3

    .line 11
    new-instance v0, Landroidx/media2/SessionCommandGroup2;

    invoke-direct {v0}, Landroidx/media2/SessionCommandGroup2;-><init>()V

    .line 12
    iget-object v1, v0, Landroidx/media2/SessionCommandGroup2;->mCommands:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    iput-object p0, v0, Landroidx/media2/SessionCommandGroup2;->mCommands:Ljava/util/List;

    return-object v0
.end method

.method public static write(Landroidx/media2/SessionCommandGroup2;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    .line 18
    iget-object p0, p0, Landroidx/media2/SessionCommandGroup2;->mCommands:Ljava/util/List;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeList(Ljava/util/List;I)V

    return-void
.end method
