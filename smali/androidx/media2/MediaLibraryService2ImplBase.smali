.class Landroidx/media2/MediaLibraryService2ImplBase;
.super Landroidx/media2/MediaSessionService2ImplBase;
.source "MediaLibraryService2ImplBase.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/media2/MediaSessionService2ImplBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getSession()Landroidx/media2/MediaLibraryService2$MediaLibrarySession;
    .locals 1

    .line 38
    invoke-super {p0}, Landroidx/media2/MediaSessionService2ImplBase;->getSession()Landroidx/media2/MediaSession2;

    move-result-object v0

    check-cast v0, Landroidx/media2/MediaLibraryService2$MediaLibrarySession;

    return-object v0
.end method

.method public bridge synthetic getSession()Landroidx/media2/MediaSession2;
    .locals 1

    .line 27
    invoke-virtual {p0}, Landroidx/media2/MediaLibraryService2ImplBase;->getSession()Landroidx/media2/MediaLibraryService2$MediaLibrarySession;

    move-result-object v0

    return-object v0
.end method

.method public getSessionType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "android.media.MediaLibraryService2"

    .line 30
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Landroidx/media2/MediaLibraryService2ImplBase;->getSession()Landroidx/media2/MediaLibraryService2$MediaLibrarySession;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession;->getSessionBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 33
    :cond_0
    invoke-super {p0, p1}, Landroidx/media2/MediaSessionService2ImplBase;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method
