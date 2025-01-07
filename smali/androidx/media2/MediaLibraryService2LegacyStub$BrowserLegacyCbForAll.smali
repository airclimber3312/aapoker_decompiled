.class Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCbForAll;
.super Landroidx/media2/MediaLibraryService2LegacyStub$BaseBrowserLegacyCb;
.source "MediaLibraryService2LegacyStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaLibraryService2LegacyStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BrowserLegacyCbForAll"
.end annotation


# instance fields
.field private final mService:Landroidx/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat;)V
    .locals 1

    const/4 v0, 0x0

    .line 577
    invoke-direct {p0, v0}, Landroidx/media2/MediaLibraryService2LegacyStub$BaseBrowserLegacyCb;-><init>(Landroidx/media2/MediaLibraryService2LegacyStub$1;)V

    .line 578
    iput-object p1, p0, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCbForAll;->mService:Landroidx/media/MediaBrowserServiceCompat;

    return-void
.end method


# virtual methods
.method onChildrenChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 586
    iget-object p2, p0, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCbForAll;->mService:Landroidx/media/MediaBrowserServiceCompat;

    invoke-virtual {p2, p1}, Landroidx/media/MediaBrowserServiceCompat;->notifyChildrenChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 588
    :cond_0
    iget-object p2, p0, Landroidx/media2/MediaLibraryService2LegacyStub$BrowserLegacyCbForAll;->mService:Landroidx/media/MediaBrowserServiceCompat;

    invoke-virtual {p2, p1, p3}, Landroidx/media/MediaBrowserServiceCompat;->notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method onSearchResultChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
