.class public Landroidx/media2/MediaItem2;
.super Ljava/lang/Object;
.source "MediaItem2.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/MediaItem2$Builder;,
        Landroidx/media2/MediaItem2$Flags;
    }
.end annotation


# static fields
.field public static final FLAG_BROWSABLE:I = 0x1

.field public static final FLAG_PLAYABLE:I = 0x2

.field private static final KEY_FLAGS:Ljava/lang/String; = "android.media.mediaitem2.flags"

.field private static final KEY_ID:Ljava/lang/String; = "android.media.mediaitem2.id"

.field private static final KEY_METADATA:Ljava/lang/String; = "android.media.mediaitem2.metadata"

.field private static final KEY_UUID:Ljava/lang/String; = "android.media.mediaitem2.uuid"


# instance fields
.field private mDataSourceDesc:Landroidx/media2/DataSourceDesc2;

.field mFlags:I

.field mId:Ljava/lang/String;

.field mMetadata:Landroidx/media2/MediaMetadata2;

.field mParcelUuid:Landroid/os/ParcelUuid;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroidx/media2/DataSourceDesc2;Landroidx/media2/MediaMetadata2;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 92
    invoke-direct/range {v0 .. v5}, Landroidx/media2/MediaItem2;-><init>(Ljava/lang/String;Landroidx/media2/DataSourceDesc2;Landroidx/media2/MediaMetadata2;ILandroid/os/ParcelUuid;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroidx/media2/DataSourceDesc2;Landroidx/media2/MediaMetadata2;ILandroid/os/ParcelUuid;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1

    .line 98
    invoke-virtual {p3}, Landroidx/media2/MediaMetadata2;->getMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "metadata\'s id should be matched with the mediaid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/media2/MediaItem2;->mId:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Landroidx/media2/MediaItem2;->mDataSourceDesc:Landroidx/media2/DataSourceDesc2;

    .line 104
    iput-object p3, p0, Landroidx/media2/MediaItem2;->mMetadata:Landroidx/media2/MediaMetadata2;

    .line 105
    iput p4, p0, Landroidx/media2/MediaItem2;->mFlags:I

    if-nez p5, :cond_2

    .line 106
    new-instance p5, Landroid/os/ParcelUuid;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-direct {p5, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    :cond_2
    iput-object p5, p0, Landroidx/media2/MediaItem2;->mParcelUuid:Landroid/os/ParcelUuid;

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media2/MediaItem2;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.media.mediaitem2.uuid"

    .line 137
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 138
    invoke-static {p0, v0}, Landroidx/media2/MediaItem2;->fromBundle(Landroid/os/Bundle;Landroid/os/ParcelUuid;)Landroidx/media2/MediaItem2;

    move-result-object p0

    return-object p0
.end method

.method static fromBundle(Landroid/os/Bundle;Landroid/os/ParcelUuid;)Landroidx/media2/MediaItem2;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "android.media.mediaitem2.id"

    .line 154
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "android.media.mediaitem2.metadata"

    .line 155
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 157
    invoke-static {v1}, Landroidx/media2/MediaMetadata2;->fromBundle(Landroid/os/Bundle;)Landroidx/media2/MediaMetadata2;

    move-result-object v0

    :cond_1
    move-object v5, v0

    const-string v0, "android.media.mediaitem2.flags"

    .line 158
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 159
    new-instance p0, Landroidx/media2/MediaItem2;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Landroidx/media2/MediaItem2;-><init>(Ljava/lang/String;Landroidx/media2/DataSourceDesc2;Landroidx/media2/MediaMetadata2;ILandroid/os/ParcelUuid;)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 245
    instance-of v0, p1, Landroidx/media2/MediaItem2;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 248
    :cond_0
    check-cast p1, Landroidx/media2/MediaItem2;

    .line 249
    iget-object v0, p0, Landroidx/media2/MediaItem2;->mParcelUuid:Landroid/os/ParcelUuid;

    iget-object p1, p1, Landroidx/media2/MediaItem2;->mParcelUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p1}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDataSourceDesc()Landroidx/media2/DataSourceDesc2;
    .locals 1

    .line 235
    iget-object v0, p0, Landroidx/media2/MediaItem2;->mDataSourceDesc:Landroidx/media2/DataSourceDesc2;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 176
    iget v0, p0, Landroidx/media2/MediaItem2;->mFlags:I

    return v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Landroidx/media2/MediaItem2;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Landroidx/media2/MediaMetadata2;
    .locals 1

    .line 214
    iget-object v0, p0, Landroidx/media2/MediaItem2;->mMetadata:Landroidx/media2/MediaMetadata2;

    return-object v0
.end method

.method getUuid()Ljava/util/UUID;
    .locals 1

    .line 253
    iget-object v0, p0, Landroidx/media2/MediaItem2;->mParcelUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 240
    iget-object v0, p0, Landroidx/media2/MediaItem2;->mParcelUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBrowsable()Z
    .locals 2

    .line 184
    iget v0, p0, Landroidx/media2/MediaItem2;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPlayable()Z
    .locals 1

    .line 192
    iget v0, p0, Landroidx/media2/MediaItem2;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setMetadata(Landroidx/media2/MediaMetadata2;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 202
    iget-object v0, p0, Landroidx/media2/MediaItem2;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/media2/MediaMetadata2;->getMediaId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "metadata\'s id should be matched with the mediaId"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 205
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/media2/MediaItem2;->mMetadata:Landroidx/media2/MediaMetadata2;

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.media.mediaitem2.id"

    .line 117
    iget-object v2, p0, Landroidx/media2/MediaItem2;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.media.mediaitem2.flags"

    .line 118
    iget v2, p0, Landroidx/media2/MediaItem2;->mFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    iget-object v1, p0, Landroidx/media2/MediaItem2;->mMetadata:Landroidx/media2/MediaMetadata2;

    if-eqz v1, :cond_0

    const-string v2, "android.media.mediaitem2.metadata"

    .line 120
    invoke-virtual {v1}, Landroidx/media2/MediaMetadata2;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    const-string v1, "android.media.mediaitem2.uuid"

    .line 122
    iget-object v2, p0, Landroidx/media2/MediaItem2;->mParcelUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaItem2{mId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Landroidx/media2/MediaItem2;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFlags="

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/MediaItem2;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMetadata="

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media2/MediaItem2;->mMetadata:Landroidx/media2/MediaMetadata2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
