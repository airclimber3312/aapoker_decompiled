.class Landroidx/media2/MediaSessionLegacyStub$6;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Landroidx/media2/MediaSessionLegacyStub$SessionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSessionLegacyStub;->onPlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSessionLegacyStub;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSessionLegacyStub;)V
    .locals 0

    .line 168
    iput-object p1, p0, Landroidx/media2/MediaSessionLegacyStub$6;->this$0:Landroidx/media2/MediaSessionLegacyStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/MediaSession2$ControllerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    iget-object p1, p0, Landroidx/media2/MediaSessionLegacyStub$6;->this$0:Landroidx/media2/MediaSessionLegacyStub;

    iget-object p1, p1, Landroidx/media2/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/MediaSession2$MediaSession2Impl;

    invoke-interface {p1}, Landroidx/media2/MediaSession2$MediaSession2Impl;->getInstance()Landroidx/media2/MediaSession2;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media2/MediaSession2;->play()V

    return-void
.end method
