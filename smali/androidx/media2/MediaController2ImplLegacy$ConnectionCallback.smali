.class Landroidx/media2/MediaController2ImplLegacy$ConnectionCallback;
.super Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
.source "MediaController2ImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaController2ImplLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaController2ImplLegacy;


# direct methods
.method constructor <init>(Landroidx/media2/MediaController2ImplLegacy;)V
    .locals 0

    .line 974
    iput-object p1, p0, Landroidx/media2/MediaController2ImplLegacy$ConnectionCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    .line 979
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ConnectionCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    invoke-virtual {v0}, Landroidx/media2/MediaController2ImplLegacy;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 981
    iget-object v1, p0, Landroidx/media2/MediaController2ImplLegacy$ConnectionCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/media2/MediaController2ImplLegacy;->connectToSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    goto :goto_0

    .line 982
    :cond_0
    sget-boolean v0, Landroidx/media2/MediaController2ImplLegacy;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 983
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v1, "MC2ImplLegacy"

    const-string v2, "Controller is closed prematually"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onConnectionFailed()V
    .locals 1

    .line 994
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ConnectionCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    invoke-virtual {v0}, Landroidx/media2/MediaController2ImplLegacy;->close()V

    return-void
.end method

.method public onConnectionSuspended()V
    .locals 1

    .line 989
    iget-object v0, p0, Landroidx/media2/MediaController2ImplLegacy$ConnectionCallback;->this$0:Landroidx/media2/MediaController2ImplLegacy;

    invoke-virtual {v0}, Landroidx/media2/MediaController2ImplLegacy;->close()V

    return-void
.end method
