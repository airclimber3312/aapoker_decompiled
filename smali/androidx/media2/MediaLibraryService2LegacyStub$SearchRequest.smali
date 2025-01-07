.class Landroidx/media2/MediaLibraryService2LegacyStub$SearchRequest;
.super Ljava/lang/Object;
.source "MediaLibraryService2LegacyStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaLibraryService2LegacyStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchRequest"
.end annotation


# instance fields
.field public final mController:Landroidx/media2/MediaSession2$ControllerInfo;

.field public final mExtras:Landroid/os/Bundle;

.field public final mQuery:Ljava/lang/String;

.field public final mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

.field public final mResult:Landroidx/media/MediaBrowserServiceCompat$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/MediaSession2$ControllerInfo;",
            "Landroidx/media/MediaSessionManager$RemoteUserInfo;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput-object p1, p0, Landroidx/media2/MediaLibraryService2LegacyStub$SearchRequest;->mController:Landroidx/media2/MediaSession2$ControllerInfo;

    .line 327
    iput-object p2, p0, Landroidx/media2/MediaLibraryService2LegacyStub$SearchRequest;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 328
    iput-object p3, p0, Landroidx/media2/MediaLibraryService2LegacyStub$SearchRequest;->mQuery:Ljava/lang/String;

    .line 329
    iput-object p4, p0, Landroidx/media2/MediaLibraryService2LegacyStub$SearchRequest;->mExtras:Landroid/os/Bundle;

    .line 330
    iput-object p5, p0, Landroidx/media2/MediaLibraryService2LegacyStub$SearchRequest;->mResult:Landroidx/media/MediaBrowserServiceCompat$Result;

    return-void
.end method
