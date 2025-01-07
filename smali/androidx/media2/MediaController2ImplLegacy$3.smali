.class Landroidx/media2/MediaController2ImplLegacy$3;
.super Ljava/lang/Object;
.source "MediaController2ImplLegacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaController2ImplLegacy;->connectToService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaController2ImplLegacy;


# direct methods
.method constructor <init>(Landroidx/media2/MediaController2ImplLegacy;)V
    .locals 0

    .line 860
    iput-object p1, p0, Landroidx/media2/MediaController2ImplLegacy$3;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 863
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$3;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 864
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy$3;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    new-instance v2, Landroid/support/v4/media/MediaBrowserCompat;

    iget-object v3, p0, Landroidx/media2/MediaController2ImplLegacy$3;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v3, v3, Landroidx/media2/MediaController2ImplLegacy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroidx/media2/MediaController2ImplLegacy$3;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v4, v4, Landroidx/media2/MediaController2ImplLegacy;->mToken:Landroidx/media2/SessionToken2;

    invoke-virtual {v4}, Landroidx/media2/SessionToken2;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    new-instance v5, Landroidx/media2/MediaController2ImplLegacy$ConnectionCallback;

    iget-object v6, p0, Landroidx/media2/MediaController2ImplLegacy$3;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    invoke-direct {v5, v6}, Landroidx/media2/MediaController2ImplLegacy$ConnectionCallback;-><init>(Landroidx/media2/MediaController2ImplLegacy;)V

    sget-object v6, Landroidx/media2/MediaController2ImplLegacy;->sDefaultRootExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/support/v4/media/MediaBrowserCompat;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v2, v1, Landroidx/media2/MediaController2ImplLegacy;->mBrowserCompat:Landroid/support/v4/media/MediaBrowserCompat;

    .line 866
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy$3;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    iget-object v1, v1, Landroidx/media2/MediaController2ImplLegacy;->mBrowserCompat:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat;->connect()V

    .line 867
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
