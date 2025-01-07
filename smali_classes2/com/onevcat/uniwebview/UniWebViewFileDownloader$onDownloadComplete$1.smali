.class public final Lcom/onevcat/uniwebview/UniWebViewFileDownloader$onDownloadComplete$1;
.super Landroid/content/BroadcastReceiver;
.source "UniWebViewFileDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewFileDownloader;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMessageSender;Lcom/onevcat/uniwebview/UniWebViewClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/onevcat/uniwebview/UniWebViewFileDownloader$onDownloadComplete$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "uniwebview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onevcat/uniwebview/UniWebViewFileDownloader;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewFileDownloader;)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader$onDownloadComplete$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewFileDownloader;

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extra_download_id"

    const-wide/16 v1, -0x1

    .line 28
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 30
    iget-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader$onDownloadComplete$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewFileDownloader;

    invoke-static {p2}, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->access$getDownloadInfo$p(Lcom/onevcat/uniwebview/UniWebViewFileDownloader;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onevcat/uniwebview/DownloadTask;

    if-eqz p2, :cond_3

    .line 33
    invoke-virtual {p2}, Lcom/onevcat/uniwebview/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-virtual {p2}, Lcom/onevcat/uniwebview/DownloadTask;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 39
    new-instance v4, Landroid/app/DownloadManager$Query;

    invoke-direct {v4}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v5, 0x1

    new-array v5, v5, [J

    const/4 v6, 0x0

    aput-wide v0, v5, v6

    .line 40
    invoke-virtual {v4, v5}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    const-string v5, "download"

    .line 41
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 42
    instance-of v7, v5, Landroid/app/DownloadManager;

    const-string v8, ""

    if-eqz v7, :cond_1

    .line 43
    check-cast v5, Landroid/app/DownloadManager;

    invoke-virtual {v5, v4}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v4

    .line 44
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "status"

    .line 45
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 46
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/16 v7, 0x8

    if-ne v5, v7, :cond_0

    .line 47
    iget-object v4, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader$onDownloadComplete$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewFileDownloader;

    invoke-static {v4}, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->access$getActivity$p(Lcom/onevcat/uniwebview/UniWebViewFileDownloader;)Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v5, Lcom/onevcat/uniwebview/R$string;->DOWNLOAD_COMPLETED:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v4, p1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 49
    new-instance p1, Ljava/io/File;

    iget-object v4, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader$onDownloadComplete$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewFileDownloader;

    invoke-static {v4}, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->access$getActivity$p(Lcom/onevcat/uniwebview/UniWebViewFileDownloader;)Landroid/app/Activity;

    move-result-object v4

    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {p1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string p1, "file.absolutePath"

    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "0"

    goto :goto_0

    :cond_0
    const-string p1, "reason"

    .line 53
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 54
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 55
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "-1"

    .line 60
    :goto_0
    invoke-virtual {p2}, Lcom/onevcat/uniwebview/DownloadTask;->getShouldSendEvent()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 61
    new-instance p2, Lcom/onevcat/uniwebview/UniWebViewResultPayload;

    invoke-direct {p2, v2, p1, v8}, Lcom/onevcat/uniwebview/UniWebViewResultPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader$onDownloadComplete$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewFileDownloader;

    invoke-static {p1}, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->access$getMessageSender$p(Lcom/onevcat/uniwebview/UniWebViewFileDownloader;)Lcom/onevcat/uniwebview/UnityMessageSender;

    move-result-object p1

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader$onDownloadComplete$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewFileDownloader;

    invoke-static {v2}, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->access$getName$p(Lcom/onevcat/uniwebview/UniWebViewFileDownloader;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/onevcat/uniwebview/UnityMethod;->FileDownloadFinished:Lcom/onevcat/uniwebview/UnityMethod;

    invoke-interface {p1, v2, v3, p2}, Lcom/onevcat/uniwebview/UnityMessageSender;->sendUnityMessage(Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMethod;Lcom/onevcat/uniwebview/UniWebViewResultPayload;)V

    .line 64
    :cond_2
    iget-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader$onDownloadComplete$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewFileDownloader;

    invoke-static {p1}, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->access$getDownloadInfo$p(Lcom/onevcat/uniwebview/UniWebViewFileDownloader;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method
