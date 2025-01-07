.class Landroidx/media2/MediaController2Stub$2;
.super Ljava/lang/Object;
.source "MediaController2Stub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaController2Stub;->onGetItemDone(Ljava/lang/String;Landroidx/versionedparcelable/ParcelImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaController2Stub;

.field final synthetic val$browser:Landroidx/media2/MediaBrowser2;

.field final synthetic val$item:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic val$mediaId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/media2/MediaController2Stub;Landroidx/media2/MediaBrowser2;Ljava/lang/String;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 0

    .line 364
    iput-object p1, p0, Landroidx/media2/MediaController2Stub$2;->this$0:Landroidx/media2/MediaController2Stub;

    iput-object p2, p0, Landroidx/media2/MediaController2Stub$2;->val$browser:Landroidx/media2/MediaBrowser2;

    iput-object p3, p0, Landroidx/media2/MediaController2Stub$2;->val$mediaId:Ljava/lang/String;

    iput-object p4, p0, Landroidx/media2/MediaController2Stub$2;->val$item:Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 367
    iget-object v0, p0, Landroidx/media2/MediaController2Stub$2;->val$browser:Landroidx/media2/MediaBrowser2;

    invoke-virtual {v0}, Landroidx/media2/MediaBrowser2;->getCallback()Landroidx/media2/MediaBrowser2$BrowserCallback;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/MediaController2Stub$2;->val$browser:Landroidx/media2/MediaBrowser2;

    iget-object v2, p0, Landroidx/media2/MediaController2Stub$2;->val$mediaId:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media2/MediaController2Stub$2;->val$item:Landroidx/versionedparcelable/ParcelImpl;

    .line 368
    invoke-static {v3}, Landroidx/versionedparcelable/ParcelUtils;->fromParcelable(Landroid/os/Parcelable;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v3

    check-cast v3, Landroidx/media2/MediaItem2;

    .line 367
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/MediaBrowser2$BrowserCallback;->onGetItemDone(Landroidx/media2/MediaBrowser2;Ljava/lang/String;Landroidx/media2/MediaItem2;)V

    return-void
.end method
