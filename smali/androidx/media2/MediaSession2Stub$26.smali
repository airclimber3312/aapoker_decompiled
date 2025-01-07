.class Landroidx/media2/MediaSession2Stub$26;
.super Ljava/lang/Object;
.source "MediaSession2Stub.java"

# interfaces
.implements Landroidx/media2/MediaSession2Stub$SessionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2Stub;->skipToPlaylistItem(Landroidx/media2/IMediaController2;Landroidx/versionedparcelable/ParcelImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2Stub;

.field final synthetic val$mediaItem:Landroidx/versionedparcelable/ParcelImpl;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2Stub;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 0

    .line 632
    iput-object p1, p0, Landroidx/media2/MediaSession2Stub$26;->this$0:Landroidx/media2/MediaSession2Stub;

    iput-object p2, p0, Landroidx/media2/MediaSession2Stub$26;->val$mediaItem:Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/MediaSession2$ControllerInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 635
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$26;->val$mediaItem:Landroidx/versionedparcelable/ParcelImpl;

    if-nez v0, :cond_0

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "skipToPlaylistItem(): Ignoring null mediaItem from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaSession2Stub"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_0
    iget-object p1, p0, Landroidx/media2/MediaSession2Stub$26;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object p1, p1, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {p1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object p1

    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$26;->val$mediaItem:Landroidx/versionedparcelable/ParcelImpl;

    .line 641
    invoke-static {v0}, Landroidx/versionedparcelable/ParcelUtils;->fromParcelable(Landroid/os/Parcelable;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaItem2;

    .line 640
    invoke-virtual {p1, v0}, Landroidx/media2/MediaSession2;->skipToPlaylistItem(Landroidx/media2/MediaItem2;)V

    return-void
.end method
