.class Landroidx/media2/MediaSession2Stub$38;
.super Ljava/lang/Object;
.source "MediaSession2Stub.java"

# interfaces
.implements Landroidx/media2/MediaSession2Stub$SessionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/MediaSession2Stub;->getSearchResult(Landroidx/media2/IMediaController2;Ljava/lang/String;IILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaSession2Stub;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$page:I

.field final synthetic val$pageSize:I

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/media2/MediaSession2Stub;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0

    .line 814
    iput-object p1, p0, Landroidx/media2/MediaSession2Stub$38;->this$0:Landroidx/media2/MediaSession2Stub;

    iput-object p2, p0, Landroidx/media2/MediaSession2Stub$38;->val$query:Ljava/lang/String;

    iput p3, p0, Landroidx/media2/MediaSession2Stub$38;->val$page:I

    iput p4, p0, Landroidx/media2/MediaSession2Stub$38;->val$pageSize:I

    iput-object p5, p0, Landroidx/media2/MediaSession2Stub$38;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/MediaSession2$ControllerInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 817
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$38;->val$query:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MediaSession2Stub"

    if-eqz v0, :cond_0

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getSearchResult(): Ignoring empty query from "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 822
    :cond_0
    iget v0, p0, Landroidx/media2/MediaSession2Stub$38;->val$page:I

    if-gez v0, :cond_1

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getSearchResult(): Ignoring negative page from "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 827
    :cond_1
    iget v0, p0, Landroidx/media2/MediaSession2Stub$38;->val$pageSize:I

    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getSearchResult(): Ignoring pageSize less than 1 from "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 832
    :cond_2
    iget-object v0, p0, Landroidx/media2/MediaSession2Stub$38;->this$0:Landroidx/media2/MediaSession2Stub;

    invoke-virtual {v0}, Landroidx/media2/MediaSession2Stub;->getLibrarySession()Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;

    move-result-object v1

    iget-object v3, p0, Landroidx/media2/MediaSession2Stub$38;->val$query:Ljava/lang/String;

    iget v4, p0, Landroidx/media2/MediaSession2Stub$38;->val$page:I

    iget v5, p0, Landroidx/media2/MediaSession2Stub$38;->val$pageSize:I

    iget-object v6, p0, Landroidx/media2/MediaSession2Stub$38;->val$extras:Landroid/os/Bundle;

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Landroidx/media2/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionImpl;->onGetSearchResultOnExecutor(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method
