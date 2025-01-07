.class Landroidx/media2/MediaLibraryService2LegacyStub$3;
.super Ljava/lang/Object;
.source "MediaLibraryService2LegacyStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaLibraryService2LegacyStub;->onLoadChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

.field final synthetic val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$parentId:Ljava/lang/String;

.field final synthetic val$result:Landroidx/media/MediaBrowserServiceCompat$Result;


# direct methods
.method constructor <init>(Landroidx/media2/MediaLibraryService2LegacyStub;Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Landroidx/media2/MediaLibraryService2LegacyStub$3;->this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

    iput-object p2, p0, Landroidx/media2/MediaLibraryService2LegacyStub$3;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    iput-object p3, p0, Landroidx/media2/MediaLibraryService2LegacyStub$3;->val$result:Landroidx/media/MediaBrowserServiceCompat$Result;

    iput-object p4, p0, Landroidx/media2/MediaLibraryService2LegacyStub$3;->val$options:Landroid/os/Bundle;

    iput-object p5, p0, Landroidx/media2/MediaLibraryService2LegacyStub$3;->val$parentId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 159
    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub$3;->this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

    invoke-virtual {v0}, Landroidx/media2/MediaLibraryService2LegacyStub;->getConnectedControllersManager()Landroidx/media2/ConnectedControllersManager;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/MediaLibraryService2LegacyStub$3;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroidx/media2/ConnectedControllersManager;->isAllowedCommand(Landroidx/media2/MediaSession2$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub$3;->val$result:Landroidx/media/MediaBrowserServiceCompat$Result;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendError(Landroid/os/Bundle;)V

    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub$3;->val$options:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 169
    iget-object v1, p0, Landroidx/media2/MediaLibraryService2LegacyStub$3;->this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

    iget-object v1, v1, Landroidx/media2/MediaLibraryService2LegacyStub;->mLibrarySessionImpl:Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    invoke-interface {v1}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 171
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub$3;->val$options:Landroid/os/Bundle;

    const-string v1, "android.media.browse.extra.PAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 172
    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub$3;->val$options:Landroid/os/Bundle;

    const-string v1, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-lez v6, :cond_1

    if-lez v7, :cond_1

    .line 175
    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub$3;->this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

    iget-object v0, v0, Landroidx/media2/MediaLibraryService2LegacyStub;->mLibrarySessionImpl:Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    invoke-interface {v0}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->getCallback()Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v2

    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub$3;->this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

    iget-object v0, v0, Landroidx/media2/MediaLibraryService2LegacyStub;->mLibrarySessionImpl:Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    .line 176
    invoke-interface {v0}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->getInstance()Landroidx/media2/MediaLibraryService2$MediaLibrarySession;

    move-result-object v3

    iget-object v4, p0, Landroidx/media2/MediaLibraryService2LegacyStub$3;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    iget-object v5, p0, Landroidx/media2/MediaLibraryService2LegacyStub$3;->val$parentId:Ljava/lang/String;

    iget-object v8, p0, Landroidx/media2/MediaLibraryService2LegacyStub$3;->val$options:Landroid/os/Bundle;

    invoke-virtual/range {v2 .. v8}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;->onGetChildren(Landroidx/media2/MediaLibraryService2$MediaLibrarySession;Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;IILandroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    .line 178
    iget-object v1, p0, Landroidx/media2/MediaLibraryService2LegacyStub$3;->val$result:Landroidx/media/MediaBrowserServiceCompat$Result;

    invoke-static {v0}, Landroidx/media2/MediaUtils2;->convertToMediaItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 189
    :catch_0
    :cond_1
    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub$3;->this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

    iget-object v0, v0, Landroidx/media2/MediaLibraryService2LegacyStub;->mLibrarySessionImpl:Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    invoke-interface {v0}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->getCallback()Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v1

    iget-object v0, p0, Landroidx/media2/MediaLibraryService2LegacyStub$3;->this$0:Landroidx/media2/MediaLibraryService2LegacyStub;

    iget-object v0, v0, Landroidx/media2/MediaLibraryService2LegacyStub;->mLibrarySessionImpl:Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    .line 190
    invoke-interface {v0}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->getInstance()Landroidx/media2/MediaLibraryService2$MediaLibrarySession;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/MediaLibraryService2LegacyStub$3;->val$controller:Landroidx/media2/MediaSession2$ControllerInfo;

    iget-object v4, p0, Landroidx/media2/MediaLibraryService2LegacyStub$3;->val$parentId:Ljava/lang/String;

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;->onGetChildren(Landroidx/media2/MediaLibraryService2$MediaLibrarySession;Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;IILandroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    .line 193
    iget-object v1, p0, Landroidx/media2/MediaLibraryService2LegacyStub$3;->val$result:Landroidx/media/MediaBrowserServiceCompat$Result;

    invoke-static {v0}, Landroidx/media2/MediaUtils2;->convertToMediaItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    return-void
.end method
