.class Landroidx/media2/MediaSessionLegacyStub$11;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Landroidx/media2/MediaSessionLegacyStub$SessionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSessionLegacyStub;->onStop()V
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

    .line 236
    iput-object p1, p0, Landroidx/media2/MediaSessionLegacyStub$11;->this$0:Landroidx/media2/MediaSessionLegacyStub;

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

    .line 239
    iget-object v0, p0, Landroidx/media2/MediaSessionLegacyStub$11;->this$0:Landroidx/media2/MediaSessionLegacyStub;

    new-instance v1, Landroidx/media2/MediaSessionLegacyStub$11$1;

    invoke-direct {v1, p0}, Landroidx/media2/MediaSessionLegacyStub$11$1;-><init>(Landroidx/media2/MediaSessionLegacyStub$11;)V

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {v0, p1, v2, v3, v1}, Landroidx/media2/MediaSessionLegacyStub;->handleCommandOnExecutor(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommand2;ILandroidx/media2/MediaSessionLegacyStub$SessionRunnable;)V

    return-void
.end method
