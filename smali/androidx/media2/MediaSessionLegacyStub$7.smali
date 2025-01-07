.class Landroidx/media2/MediaSessionLegacyStub$7;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Landroidx/media2/MediaSessionLegacyStub$SessionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSessionLegacyStub;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSessionLegacyStub;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$mediaId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSessionLegacyStub;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 182
    iput-object p1, p0, Landroidx/media2/MediaSessionLegacyStub$7;->this$0:Landroidx/media2/MediaSessionLegacyStub;

    iput-object p2, p0, Landroidx/media2/MediaSessionLegacyStub$7;->val$mediaId:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media2/MediaSessionLegacyStub$7;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/MediaSession2$ControllerInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Landroidx/media2/MediaSessionLegacyStub$7;->this$0:Landroidx/media2/MediaSessionLegacyStub;

    iget-object v0, v0, Landroidx/media2/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v0}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getCallback()Landroidx/media2/MediaSession2$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/MediaSessionLegacyStub$7;->this$0:Landroidx/media2/MediaSessionLegacyStub;

    iget-object v1, v1, Landroidx/media2/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {v1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/MediaSessionLegacyStub$7;->val$mediaId:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media2/MediaSessionLegacyStub$7;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1, v2, v3}, Landroidx/media2/MediaSession2$SessionCallback;->onPlayFromMediaId(Landroidx/media2/MediaSession2;Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
