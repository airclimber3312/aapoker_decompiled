.class public final Landroidx/media2/Rating2Parcelizer;
.super Ljava/lang/Object;
.source "Rating2Parcelizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media2/Rating2;
    .locals 3

    .line 11
    new-instance v0, Landroidx/media2/Rating2;

    invoke-direct {v0}, Landroidx/media2/Rating2;-><init>()V

    .line 12
    iget v1, v0, Landroidx/media2/Rating2;->mRatingStyle:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/Rating2;->mRatingStyle:I

    .line 13
    iget v1, v0, Landroidx/media2/Rating2;->mRatingValue:F

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readFloat(FI)F

    move-result p0

    iput p0, v0, Landroidx/media2/Rating2;->mRatingValue:F

    return-object v0
.end method

.method public static write(Landroidx/media2/Rating2;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    .line 19
    iget v0, p0, Landroidx/media2/Rating2;->mRatingStyle:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    .line 20
    iget p0, p0, Landroidx/media2/Rating2;->mRatingValue:F

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(FI)V

    return-void
.end method
