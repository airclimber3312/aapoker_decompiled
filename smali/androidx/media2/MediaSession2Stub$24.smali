.class Landroidx/media2/MediaSession2Stub$24;
.super Ljava/lang/Object;
.source "MediaSession2Stub.java"

# interfaces
.implements Landroidx/media2/MediaSession2Stub$SessionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2Stub;->removePlaylistItem(Landroidx/media2/IMediaController2;Landroidx/versionedparcelable/ParcelImpl;)V
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

    .line 603
    iput-object p1, p0, Landroidx/media2/MediaSession2Stub$24;->this$0:Landroidx/media2/MediaSession2Stub;

    iput-object p2, p0, Landroidx/media2/MediaSession2Stub$24;->val$mediaItem:Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/MediaSession2$ControllerInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 606
    iget-object p1, p0, Landroidx/media2/MediaSession2Stub$24;->val$mediaItem:Landroidx/versionedparcelable/ParcelImpl;

    invoke-static {p1}, Landroidx/versionedparcelable/ParcelUtils;->fromParcelable(Landroid/os/Parcelable;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object p1

    check-cast p1, Landroidx/media2/MediaItem2;

    .line 608
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$24;->this$0:Landroidx/media2/MediaSession2Stub;

    iget-object v0, v0, Landroidx/media2/MediaSession2Stub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media2/MediaSession2;->removePlaylistItem(Landroidx/media2/MediaItem2;)V

    return-void
.end method
