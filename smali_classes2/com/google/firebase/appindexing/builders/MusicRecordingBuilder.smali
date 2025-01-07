.class public final Lcom/google/firebase/appindexing/builders/MusicRecordingBuilder;
.super Lcom/google/firebase/appindexing/builders/IndexableBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/appindexing/builders/IndexableBuilder<",
        "Lcom/google/firebase/appindexing/builders/MusicRecordingBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "MusicRecording"

    invoke-direct {p0, v0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final setByArtist(Lcom/google/firebase/appindexing/builders/MusicGroupBuilder;)Lcom/google/firebase/appindexing/builders/MusicRecordingBuilder;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/firebase/appindexing/builders/MusicGroupBuilder;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "byArtist"

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->put(Ljava/lang/String;[Lcom/google/firebase/appindexing/builders/IndexableBuilder;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/appindexing/builders/MusicRecordingBuilder;

    return-object p1
.end method

.method public final setDuration(I)Lcom/google/firebase/appindexing/builders/MusicRecordingBuilder;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    int-to-long v2, p1

    aput-wide v2, v0, v1

    const-string p1, "duration"

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->put(Ljava/lang/String;[J)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/appindexing/builders/MusicRecordingBuilder;

    return-object p1
.end method

.method public final setInAlbum(Lcom/google/firebase/appindexing/builders/MusicAlbumBuilder;)Lcom/google/firebase/appindexing/builders/MusicRecordingBuilder;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/firebase/appindexing/builders/MusicAlbumBuilder;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "inAlbum"

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->put(Ljava/lang/String;[Lcom/google/firebase/appindexing/builders/IndexableBuilder;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/appindexing/builders/MusicRecordingBuilder;

    return-object p1
.end method

.method public final varargs setInPlaylist([Lcom/google/firebase/appindexing/builders/MusicPlaylistBuilder;)Lcom/google/firebase/appindexing/builders/MusicRecordingBuilder;
    .locals 1

    const-string v0, "inPlaylist"

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->put(Ljava/lang/String;[Lcom/google/firebase/appindexing/builders/IndexableBuilder;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/appindexing/builders/MusicRecordingBuilder;

    return-object p1
.end method
