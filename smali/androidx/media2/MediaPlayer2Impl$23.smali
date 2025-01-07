.class Landroidx/media2/MediaPlayer2Impl$23;
.super Landroidx/media2/MediaPlayer2Impl$Task;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaPlayer2Impl;->prepareDrm(Ljava/util/UUID;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaPlayer2Impl;

.field final synthetic val$uuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Landroidx/media2/MediaPlayer2Impl;IZLjava/util/UUID;)V
    .locals 0

    .line 1183
    iput-object p1, p0, Landroidx/media2/MediaPlayer2Impl$23;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iput-object p4, p0, Landroidx/media2/MediaPlayer2Impl$23;->val$uuid:Ljava/util/UUID;

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/MediaPlayer2Impl$Task;-><init>(Landroidx/media2/MediaPlayer2Impl;IZ)V

    return-void
.end method


# virtual methods
.method process()V
    .locals 3

    .line 1188
    :try_start_0
    iget-object v0, p0, Landroidx/media2/MediaPlayer2Impl$23;->this$0:Landroidx/media2/MediaPlayer2Impl;

    iget-object v0, v0, Landroidx/media2/MediaPlayer2Impl;->mPlayer:Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;

    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$23;->val$uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroidx/media2/MediaPlayer2Impl$MediaPlayerSourceQueue;->prepareDrm(Ljava/util/UUID;)V
    :try_end_0
    .catch Landroid/media/ResourceBusyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/media/MediaPlayer$ProvisioningServerErrorException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/media/MediaPlayer$ProvisioningNetworkErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    const/4 v0, 0x3

    goto :goto_0

    :catch_1
    const/4 v0, 0x4

    goto :goto_0

    :catch_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_3
    const/4 v0, 0x2

    goto :goto_0

    :catch_4
    const/4 v0, 0x5

    .line 1201
    :goto_0
    iget-object v1, p0, Landroidx/media2/MediaPlayer2Impl$23;->this$0:Landroidx/media2/MediaPlayer2Impl;

    new-instance v2, Landroidx/media2/MediaPlayer2Impl$23$1;

    invoke-direct {v2, p0, v0}, Landroidx/media2/MediaPlayer2Impl$23$1;-><init>(Landroidx/media2/MediaPlayer2Impl$23;I)V

    invoke-virtual {v1, v2}, Landroidx/media2/MediaPlayer2Impl;->notifyDrmEvent(Landroidx/media2/MediaPlayer2Impl$DrmEventNotifier;)V

    return-void
.end method
