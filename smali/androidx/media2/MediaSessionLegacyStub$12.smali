.class Landroidx/media2/MediaSessionLegacyStub$12;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Landroidx/media2/MediaSessionLegacyStub$SessionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSessionLegacyStub;->onSeekTo(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSessionLegacyStub;

.field final synthetic val$pos:J


# direct methods
.method constructor <init>(Landroidx/media2/MediaSessionLegacyStub;J)V
    .locals 0

    .line 253
    iput-object p1, p0, Landroidx/media2/MediaSessionLegacyStub$12;->this$0:Landroidx/media2/MediaSessionLegacyStub;

    iput-wide p2, p0, Landroidx/media2/MediaSessionLegacyStub$12;->val$pos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/MediaSession2$ControllerInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    iget-object p1, p0, Landroidx/media2/MediaSessionLegacyStub$12;->this$0:Landroidx/media2/MediaSessionLegacyStub;

    iget-object p1, p1, Landroidx/media2/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {p1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object p1

    iget-wide v0, p0, Landroidx/media2/MediaSessionLegacyStub$12;->val$pos:J

    invoke-virtual {p1, v0, v1}, Landroidx/media2/MediaSession2;->seekTo(J)V

    return-void
.end method
