.class public Landroidx/media2/MediaUtils2;
.super Ljava/lang/Object;
.source "MediaUtils2.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MediaUtils2"

.field public static final sDefaultBrowserRoot:Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    const-string v1, "android.media.MediaLibraryService2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    sput-object v0, Landroidx/media2/MediaUtils2;->sDefaultBrowserRoot:Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCommandButtonListToParcelImplList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/MediaSession2$CommandButton;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 444
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 445
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 446
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/MediaSession2$CommandButton;

    .line 447
    invoke-static {v2}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static convertMediaItem2ListToParcelImplList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/MediaItem2;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 460
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 461
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 462
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/MediaItem2;

    if-eqz v2, :cond_1

    .line 464
    invoke-static {v2}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    .line 465
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static convertMediaItemListToMediaItem2List(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media2/MediaItem2;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 199
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 200
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 201
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-static {v2}, Landroidx/media2/MediaUtils2;->convertToMediaItem2(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)Landroidx/media2/MediaItem2;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static convertParcelImplListToMediaItem2List(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media2/MediaItem2;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 252
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 253
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 254
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    if-eqz v2, :cond_1

    .line 256
    invoke-static {v2}, Landroidx/versionedparcelable/ParcelUtils;->fromParcelable(Landroid/os/Parcelable;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v2

    check-cast v2, Landroidx/media2/MediaItem2;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static convertQueueItemListToMediaItem2List(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media2/MediaItem2;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 213
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 214
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 215
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    invoke-static {v2}, Landroidx/media2/MediaUtils2;->convertToMediaItem2(Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;)Landroidx/media2/MediaItem2;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static convertToMediaItem(Landroidx/media2/MediaItem2;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/MediaItem2;->getMetadata()Landroidx/media2/MediaMetadata2;

    move-result-object v0

    if-nez v0, :cond_1

    .line 82
    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 83
    invoke-virtual {p0}, Landroidx/media2/MediaItem2;->getMediaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    goto :goto_1

    .line 86
    :cond_1
    new-instance v1, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 87
    invoke-virtual {p0}, Landroidx/media2/MediaItem2;->getMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v1

    const-string v2, "android.media.metadata.DISPLAY_SUBTITLE"

    .line 88
    invoke-virtual {v0, v2}, Landroidx/media2/MediaMetadata2;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v1

    const-string v2, "android.media.metadata.DISPLAY_DESCRIPTION"

    .line 89
    invoke-virtual {v0, v2}, Landroidx/media2/MediaMetadata2;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v1

    const-string v2, "android.media.metadata.DISPLAY_ICON"

    .line 90
    invoke-virtual {v0, v2}, Landroidx/media2/MediaMetadata2;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v1

    .line 91
    invoke-virtual {v0}, Landroidx/media2/MediaMetadata2;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v1

    const-string v2, "android.media.metadata.TITLE"

    .line 93
    invoke-virtual {v0, v2}, Landroidx/media2/MediaMetadata2;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 95
    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    goto :goto_0

    :cond_2
    const-string v2, "android.media.metadata.DISPLAY_TITLE"

    .line 97
    invoke-virtual {v0, v2}, Landroidx/media2/MediaMetadata2;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    :goto_0
    const-string v2, "android.media.metadata.DISPLAY_ICON_URI"

    .line 100
    invoke-virtual {v0, v2}, Landroidx/media2/MediaMetadata2;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 102
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    :cond_3
    const-string v2, "android.media.metadata.MEDIA_URI"

    .line 105
    invoke-virtual {v0, v2}, Landroidx/media2/MediaMetadata2;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 107
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    .line 110
    :cond_4
    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    .line 112
    :goto_1
    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {p0}, Landroidx/media2/MediaItem2;->getFlags()I

    move-result p0

    invoke-direct {v1, v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    return-object v1
.end method

.method public static convertToMediaItem2(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)Landroidx/media2/MediaItem2;
    .locals 3

    if-eqz p0, :cond_1

    .line 136
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/MediaUtils2;->convertToMediaMetadata2(Landroid/support/v4/media/MediaDescriptionCompat;)Landroidx/media2/MediaMetadata2;

    move-result-object v0

    .line 141
    new-instance v1, Landroidx/media2/MediaItem2$Builder;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->getFlags()I

    move-result v2

    invoke-direct {v1, v2}, Landroidx/media2/MediaItem2$Builder;-><init>(I)V

    .line 142
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/media2/MediaItem2$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media2/MediaItem2$Builder;

    move-result-object p0

    .line 143
    invoke-virtual {p0, v0}, Landroidx/media2/MediaItem2$Builder;->setMetadata(Landroidx/media2/MediaMetadata2;)Landroidx/media2/MediaItem2$Builder;

    move-result-object p0

    .line 144
    invoke-virtual {p0}, Landroidx/media2/MediaItem2$Builder;->build()Landroidx/media2/MediaItem2;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertToMediaItem2(Landroid/support/v4/media/MediaDescriptionCompat;)Landroidx/media2/MediaItem2;
    .locals 2

    .line 185
    invoke-static {p0}, Landroidx/media2/MediaUtils2;->convertToMediaMetadata2(Landroid/support/v4/media/MediaDescriptionCompat;)Landroidx/media2/MediaMetadata2;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 186
    invoke-virtual {p0}, Landroidx/media2/MediaMetadata2;->getMediaId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    new-instance v0, Landroidx/media2/MediaItem2$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/media2/MediaItem2$Builder;-><init>(I)V

    invoke-virtual {v0, p0}, Landroidx/media2/MediaItem2$Builder;->setMetadata(Landroidx/media2/MediaMetadata2;)Landroidx/media2/MediaItem2$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media2/MediaItem2$Builder;->build()Landroidx/media2/MediaItem2;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertToMediaItem2(Landroid/support/v4/media/MediaMetadataCompat;)Landroidx/media2/MediaItem2;
    .locals 2

    .line 174
    invoke-static {p0}, Landroidx/media2/MediaUtils2;->convertToMediaMetadata2(Landroid/support/v4/media/MediaMetadataCompat;)Landroidx/media2/MediaMetadata2;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 175
    invoke-virtual {p0}, Landroidx/media2/MediaMetadata2;->getMediaId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    new-instance v0, Landroidx/media2/MediaItem2$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/media2/MediaItem2$Builder;-><init>(I)V

    invoke-virtual {v0, p0}, Landroidx/media2/MediaItem2$Builder;->setMetadata(Landroidx/media2/MediaMetadata2;)Landroidx/media2/MediaItem2$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media2/MediaItem2$Builder;->build()Landroidx/media2/MediaItem2;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertToMediaItem2(Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;)Landroidx/media2/MediaItem2;
    .locals 4

    if-eqz p0, :cond_0

    .line 155
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    .line 156
    invoke-static {v0}, Landroidx/media2/MediaUtils2;->convertToMediaMetadata2(Landroid/support/v4/media/MediaDescriptionCompat;)Landroidx/media2/MediaMetadata2;

    move-result-object v1

    .line 157
    new-instance v2, Landroidx/media2/MediaItem2$Builder;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroidx/media2/MediaItem2$Builder;-><init>(I)V

    invoke-virtual {v2, v1}, Landroidx/media2/MediaItem2$Builder;->setMetadata(Landroidx/media2/MediaMetadata2;)Landroidx/media2/MediaItem2$Builder;

    move-result-object v1

    .line 158
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getQueueId()J

    move-result-wide v2

    .line 159
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object p0

    .line 158
    invoke-static {v2, v3, p0}, Landroidx/media2/MediaUtils2;->createUuidByQueueIdAndMediaId(JLjava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/media2/MediaItem2$Builder;->setUuid(Ljava/util/UUID;)Landroidx/media2/MediaItem2$Builder;

    move-result-object p0

    .line 160
    invoke-virtual {p0}, Landroidx/media2/MediaItem2$Builder;->build()Landroidx/media2/MediaItem2;

    move-result-object p0

    return-object p0

    .line 152
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "item shouldn\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convertToMediaItemList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/MediaItem2;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 122
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 123
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 124
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/MediaItem2;

    invoke-static {v2}, Landroidx/media2/MediaUtils2;->convertToMediaItem(Landroidx/media2/MediaItem2;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static convertToMediaMetadata2(Landroid/support/v4/media/MediaDescriptionCompat;)Landroidx/media2/MediaMetadata2;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 273
    :cond_0
    new-instance v0, Landroidx/media2/MediaMetadata2$Builder;

    invoke-direct {v0}, Landroidx/media2/MediaMetadata2$Builder;-><init>()V

    const-string v1, "android.media.metadata.MEDIA_ID"

    .line 274
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/media2/MediaMetadata2$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/media2/MediaMetadata2$Builder;

    .line 276
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "android.media.metadata.DISPLAY_TITLE"

    .line 278
    invoke-virtual {v0, v2, v1}, Landroidx/media2/MediaMetadata2$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/media2/MediaMetadata2$Builder;

    .line 281
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "android.media.metadata.DISPLAY_DESCRIPTION"

    .line 283
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/media2/MediaMetadata2$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/media2/MediaMetadata2$Builder;

    .line 286
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "android.media.metadata.DISPLAY_SUBTITLE"

    .line 288
    invoke-virtual {v0, v2, v1}, Landroidx/media2/MediaMetadata2$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/media2/MediaMetadata2$Builder;

    .line 291
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "android.media.metadata.DISPLAY_ICON"

    .line 293
    invoke-virtual {v0, v2, v1}, Landroidx/media2/MediaMetadata2$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroidx/media2/MediaMetadata2$Builder;

    .line 296
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "android.media.metadata.DISPLAY_ICON_URI"

    .line 298
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroidx/media2/MediaMetadata2$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/media2/MediaMetadata2$Builder;

    .line 301
    :cond_5
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 303
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media2/MediaMetadata2$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media2/MediaMetadata2$Builder;

    .line 306
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaUri()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_7

    const-string v1, "android.media.metadata.MEDIA_URI"

    .line 308
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroidx/media2/MediaMetadata2$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/media2/MediaMetadata2$Builder;

    .line 311
    :cond_7
    invoke-virtual {v0}, Landroidx/media2/MediaMetadata2$Builder;->build()Landroidx/media2/MediaMetadata2;

    move-result-object p0

    return-object p0
.end method

.method public static convertToMediaMetadata2(Landroid/support/v4/media/MediaMetadataCompat;)Landroidx/media2/MediaMetadata2;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 324
    :cond_0
    new-instance v0, Landroidx/media2/MediaMetadata2;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaMetadataCompat;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/media2/MediaMetadata2;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static convertToMediaMetadata2(Ljava/lang/CharSequence;)Landroidx/media2/MediaMetadata2;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 334
    :cond_0
    new-instance v0, Landroidx/media2/MediaMetadata2$Builder;

    invoke-direct {v0}, Landroidx/media2/MediaMetadata2$Builder;-><init>()V

    const-string v1, "android.media.metadata.TITLE"

    .line 335
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroidx/media2/MediaMetadata2$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/media2/MediaMetadata2$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media2/MediaMetadata2$Builder;->build()Landroidx/media2/MediaMetadata2;

    move-result-object p0

    return-object p0
.end method

.method public static convertToMediaMetadataCompat(Landroid/support/v4/media/MediaDescriptionCompat;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 0

    .line 371
    invoke-static {p0}, Landroidx/media2/MediaUtils2;->convertToMediaMetadata2(Landroid/support/v4/media/MediaDescriptionCompat;)Landroidx/media2/MediaMetadata2;

    move-result-object p0

    invoke-static {p0}, Landroidx/media2/MediaUtils2;->convertToMediaMetadataCompat(Landroidx/media2/MediaMetadata2;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p0

    return-object p0
.end method

.method public static convertToMediaMetadataCompat(Landroidx/media2/MediaMetadata2;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 349
    :cond_0
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 350
    invoke-virtual {p0}, Landroidx/media2/MediaMetadata2;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    .line 351
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 352
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 353
    instance-of v4, v3, Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    .line 354
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    goto :goto_0

    .line 355
    :cond_2
    instance-of v4, v3, Landroidx/media2/Rating2;

    if-eqz v4, :cond_3

    .line 356
    check-cast v3, Landroidx/media2/Rating2;

    invoke-static {v3}, Landroidx/media2/MediaUtils2;->convertToRatingCompat(Landroidx/media2/Rating2;)Landroid/support/v4/media/RatingCompat;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putRating(Ljava/lang/String;Landroid/support/v4/media/RatingCompat;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    goto :goto_0

    .line 357
    :cond_3
    instance-of v4, v3, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    .line 358
    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    goto :goto_0

    .line 359
    :cond_4
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_1

    .line 360
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    goto :goto_0

    .line 363
    :cond_5
    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p0

    return-object p0
.end method

.method public static convertToPlaybackStateCompatState(II)I
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    if-eq p0, v1, :cond_0

    const/4 p0, 0x7

    return p0

    :cond_0
    if-eq p1, v1, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x6

    return p0

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static convertToPlayerState(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    :pswitch_3
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static convertToQueueItem(Landroidx/media2/MediaItem2;)Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;
    .locals 4

    .line 224
    invoke-virtual {p0}, Landroidx/media2/MediaItem2;->getMetadata()Landroidx/media2/MediaMetadata2;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    .line 225
    invoke-virtual {p0}, Landroidx/media2/MediaItem2;->getMediaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/MediaItem2;->getMetadata()Landroidx/media2/MediaMetadata2;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/MediaUtils2;->convertToMediaMetadataCompat(Landroidx/media2/MediaMetadata2;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    .line 227
    :goto_0
    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    invoke-virtual {p0}, Landroidx/media2/MediaItem2;->getUuid()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;J)V

    return-object v1
.end method

.method public static convertToQueueItemList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/MediaItem2;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 237
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 238
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 239
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/MediaItem2;

    invoke-static {v2}, Landroidx/media2/MediaUtils2;->convertToQueueItem(Landroidx/media2/MediaItem2;)Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static convertToRating2(Landroid/support/v4/media/RatingCompat;)Landroidx/media2/Rating2;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 384
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 385
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getRatingStyle()I

    move-result p0

    invoke-static {p0}, Landroidx/media2/Rating2;->newUnratedRating(I)Landroidx/media2/Rating2;

    move-result-object p0

    return-object p0

    .line 388
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getRatingStyle()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    return-object v0

    .line 399
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getPercentRating()F

    move-result p0

    invoke-static {p0}, Landroidx/media2/Rating2;->newPercentageRating(F)Landroidx/media2/Rating2;

    move-result-object p0

    return-object p0

    .line 393
    :pswitch_1
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getRatingStyle()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getStarRating()F

    move-result p0

    .line 392
    invoke-static {v0, p0}, Landroidx/media2/Rating2;->newStarRating(IF)Landroidx/media2/Rating2;

    move-result-object p0

    return-object p0

    .line 397
    :pswitch_2
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isThumbUp()Z

    move-result p0

    invoke-static {p0}, Landroidx/media2/Rating2;->newThumbRating(Z)Landroidx/media2/Rating2;

    move-result-object p0

    return-object p0

    .line 395
    :pswitch_3
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->hasHeart()Z

    move-result p0

    invoke-static {p0}, Landroidx/media2/Rating2;->newHeartRating(Z)Landroidx/media2/Rating2;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToRatingCompat(Landroidx/media2/Rating2;)Landroid/support/v4/media/RatingCompat;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 415
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/Rating2;->isRated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 416
    invoke-virtual {p0}, Landroidx/media2/Rating2;->getRatingStyle()I

    move-result p0

    invoke-static {p0}, Landroid/support/v4/media/RatingCompat;->newUnratedRating(I)Landroid/support/v4/media/RatingCompat;

    move-result-object p0

    return-object p0

    .line 419
    :cond_1
    invoke-virtual {p0}, Landroidx/media2/Rating2;->getRatingStyle()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    return-object v0

    .line 430
    :pswitch_0
    invoke-virtual {p0}, Landroidx/media2/Rating2;->getPercentRating()F

    move-result p0

    invoke-static {p0}, Landroid/support/v4/media/RatingCompat;->newPercentageRating(F)Landroid/support/v4/media/RatingCompat;

    move-result-object p0

    return-object p0

    .line 424
    :pswitch_1
    invoke-virtual {p0}, Landroidx/media2/Rating2;->getRatingStyle()I

    move-result v0

    invoke-virtual {p0}, Landroidx/media2/Rating2;->getStarRating()F

    move-result p0

    .line 423
    invoke-static {v0, p0}, Landroid/support/v4/media/RatingCompat;->newStarRating(IF)Landroid/support/v4/media/RatingCompat;

    move-result-object p0

    return-object p0

    .line 428
    :pswitch_2
    invoke-virtual {p0}, Landroidx/media2/Rating2;->isThumbUp()Z

    move-result p0

    invoke-static {p0}, Landroid/support/v4/media/RatingCompat;->newThumbRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object p0

    return-object p0

    .line 426
    :pswitch_3
    invoke-virtual {p0}, Landroidx/media2/Rating2;->hasHeart()Z

    move-result p0

    invoke-static {p0}, Landroid/support/v4/media/RatingCompat;->newHeartRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createUuidByQueueIdAndMediaId(JLjava/lang/String;)Ljava/util/UUID;
    .locals 3

    .line 167
    new-instance v0, Ljava/util/UUID;

    if-nez p2, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    int-to-long v1, p2

    :goto_0
    invoke-direct {v0, p0, p1, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    return-object v0
.end method

.method public static isUnparcelableBundle(Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 553
    :cond_0
    const-class v1, Landroidx/media2/MediaUtils2;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 555
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method

.method public static keepUnparcelableBundlesOnly(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 569
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 570
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 571
    invoke-static {v1}, Landroidx/media2/MediaUtils2;->isUnparcelableBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 572
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static toBufferingState(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    return v0
.end method

.method public static toPlaybackInfo2(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)Landroidx/media2/MediaController2$PlaybackInfo;
    .locals 4

    .line 540
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->getPlaybackType()I

    move-result v0

    new-instance v1, Landroidx/media/AudioAttributesCompat$Builder;

    invoke-direct {v1}, Landroidx/media/AudioAttributesCompat$Builder;-><init>()V

    .line 542
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->getAudioStream()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media/AudioAttributesCompat$Builder;->setLegacyStreamType(I)Landroidx/media/AudioAttributesCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media/AudioAttributesCompat$Builder;->build()Landroidx/media/AudioAttributesCompat;

    move-result-object v1

    .line 543
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->getVolumeControl()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->getMaxVolume()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->getCurrentVolume()I

    move-result p0

    .line 540
    invoke-static {v0, v1, v2, v3, p0}, Landroidx/media2/MediaController2$PlaybackInfo;->createPlaybackInfo(ILandroidx/media/AudioAttributesCompat;III)Landroidx/media2/MediaController2$PlaybackInfo;

    move-result-object p0

    return-object p0
.end method
