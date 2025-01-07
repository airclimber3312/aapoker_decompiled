.class public final Lcom/onevcat/uniwebview/UniWebViewFileDownloader;
.super Ljava/lang/Object;
.source "UniWebViewFileDownloader.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ*\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0017\u001a\u00020\u0018J\u0010\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u000eH\u0002J\u0006\u0010\u001b\u001a\u00020\u0013J\u0010\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u000eH\u0002J\u0006\u0010\u001d\u001a\u00020\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u000b\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cj\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e`\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onevcat/uniwebview/UniWebViewFileDownloader;",
        "",
        "activity",
        "Landroid/app/Activity;",
        "name",
        "",
        "messageSender",
        "Lcom/onevcat/uniwebview/UnityMessageSender;",
        "webClient",
        "Lcom/onevcat/uniwebview/UniWebViewClient;",
        "(Landroid/app/Activity;Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMessageSender;Lcom/onevcat/uniwebview/UniWebViewClient;)V",
        "downloadInfo",
        "Ljava/util/HashMap;",
        "",
        "Lcom/onevcat/uniwebview/DownloadTask;",
        "Lkotlin/collections/HashMap;",
        "onDownloadComplete",
        "Landroid/content/BroadcastReceiver;",
        "downloadFile",
        "",
        "url",
        "contentDisposition",
        "mimeType",
        "shouldSendEvent",
        "",
        "downloadWithManager",
        "task",
        "register",
        "showDownloadDialog",
        "unregister",
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
.field private final activity:Landroid/app/Activity;

.field private downloadInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/onevcat/uniwebview/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final messageSender:Lcom/onevcat/uniwebview/UnityMessageSender;

.field private final name:Ljava/lang/String;

.field private final onDownloadComplete:Landroid/content/BroadcastReceiver;

.field private final webClient:Lcom/onevcat/uniwebview/UniWebViewClient;


# direct methods
.method public static synthetic $r8$lambda$KhXx_6g1wLLGHqF85-LlaIxVNuY(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->showDownloadDialog$lambda-2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XG1UxPWP8RbiNoNCzJC1-nDx87A(Landroid/widget/EditText;Lcom/onevcat/uniwebview/DownloadTask;Lcom/onevcat/uniwebview/UniWebViewFileDownloader;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->showDownloadDialog$lambda-1(Landroid/widget/EditText;Lcom/onevcat/uniwebview/DownloadTask;Lcom/onevcat/uniwebview/UniWebViewFileDownloader;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMessageSender;Lcom/onevcat/uniwebview/UniWebViewClient;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSender"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webClient"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->activity:Landroid/app/Activity;

    .line 20
    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->name:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->messageSender:Lcom/onevcat/uniwebview/UnityMessageSender;

    .line 22
    iput-object p4, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->webClient:Lcom/onevcat/uniwebview/UniWebViewClient;

    .line 24
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->downloadInfo:Ljava/util/HashMap;

    .line 25
    new-instance p1, Lcom/onevcat/uniwebview/UniWebViewFileDownloader$onDownloadComplete$1;

    invoke-direct {p1, p0}, Lcom/onevcat/uniwebview/UniWebViewFileDownloader$onDownloadComplete$1;-><init>(Lcom/onevcat/uniwebview/UniWebViewFileDownloader;)V

    check-cast p1, Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->onDownloadComplete:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static final synthetic access$getActivity$p(Lcom/onevcat/uniwebview/UniWebViewFileDownloader;)Landroid/app/Activity;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic access$getDownloadInfo$p(Lcom/onevcat/uniwebview/UniWebViewFileDownloader;)Ljava/util/HashMap;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->downloadInfo:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getMessageSender$p(Lcom/onevcat/uniwebview/UniWebViewFileDownloader;)Lcom/onevcat/uniwebview/UnityMessageSender;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->messageSender:Lcom/onevcat/uniwebview/UnityMessageSender;

    return-object p0
.end method

.method public static final synthetic access$getName$p(Lcom/onevcat/uniwebview/UniWebViewFileDownloader;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->name:Ljava/lang/String;

    return-object p0
.end method

.method private final downloadWithManager(Lcom/onevcat/uniwebview/DownloadTask;)V
    .locals 5

    .line 115
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 116
    invoke-virtual {v0}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    const/4 v1, 0x1

    .line 117
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 118
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/DownloadTask;->getFileName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 119
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/DownloadTask;->getFileName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 120
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->activity:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/DownloadTask;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/DownloadManager$Request;->setDestinationInExternalFilesDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 122
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cookie"

    .line 123
    invoke-virtual {v0, v3, v2}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 125
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->webClient:Lcom/onevcat/uniwebview/UniWebViewClient;

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/UniWebViewClient;->getCustomizeHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 126
    invoke-virtual {v0, v4, v3}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    goto :goto_0

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->activity:Landroid/app/Activity;

    const-string v3, "download"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 130
    instance-of v3, v2, Landroid/app/DownloadManager;

    if-eqz v3, :cond_1

    .line 131
    check-cast v2, Landroid/app/DownloadManager;

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 132
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->downloadInfo:Ljava/util/HashMap;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->activity:Landroid/app/Activity;

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/onevcat/uniwebview/R$string;->DOWNLOAD_STARTED:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 135
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/DownloadTask;->getShouldSendEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewResultPayload;

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/DownloadTask;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/onevcat/uniwebview/UniWebViewResultPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->messageSender:Lcom/onevcat/uniwebview/UnityMessageSender;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->name:Ljava/lang/String;

    sget-object v2, Lcom/onevcat/uniwebview/UnityMethod;->FileDownloadStarted:Lcom/onevcat/uniwebview/UnityMethod;

    invoke-interface {p1, v1, v2, v0}, Lcom/onevcat/uniwebview/UnityMessageSender;->sendUnityMessage(Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMethod;Lcom/onevcat/uniwebview/UniWebViewResultPayload;)V

    :cond_1
    return-void
.end method

.method private final showDownloadDialog(Lcom/onevcat/uniwebview/DownloadTask;)V
    .locals 4

    .line 89
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 91
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/DownloadTask;->getFileName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->activity:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/onevcat/uniwebview/R$string;->DOWNLOAD_DESCRIPTION:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x108009b

    .line 97
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 98
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v3, "Builder(activity)\n      \u2026     .setCancelable(true)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v2, [Landroid/widget/EditText;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 99
    invoke-static {v1, v2}, Lcom/onevcat/uniwebview/AlertBuilderHelpersKt;->setEditText(Landroid/app/AlertDialog$Builder;[Landroid/widget/EditText;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 100
    new-instance v2, Lcom/onevcat/uniwebview/UniWebViewFileDownloader$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1, p0}, Lcom/onevcat/uniwebview/UniWebViewFileDownloader$$ExternalSyntheticLambda0;-><init>(Landroid/widget/EditText;Lcom/onevcat/uniwebview/DownloadTask;Lcom/onevcat/uniwebview/UniWebViewFileDownloader;)V

    const p1, 0x104000a

    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 106
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/onevcat/uniwebview/UniWebViewFileDownloader$$ExternalSyntheticLambda1;-><init>()V

    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static final showDownloadDialog$lambda-1(Landroid/widget/EditText;Lcom/onevcat/uniwebview/DownloadTask;Lcom/onevcat/uniwebview/UniWebViewFileDownloader;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p4, "$input"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$task"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "this$0"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 102
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    .line 103
    invoke-virtual {p1, p0}, Lcom/onevcat/uniwebview/DownloadTask;->setFileName(Ljava/lang/String;)V

    .line 104
    invoke-direct {p2, p1}, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->downloadWithManager(Lcom/onevcat/uniwebview/DownloadTask;)V

    return-void
.end method

.method private static final showDownloadDialog$lambda-2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 107
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public final downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->activity:Landroid/app/Activity;

    move-object p2, p1

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/onevcat/uniwebview/R$string;->INVALID_URL:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 82
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 83
    new-instance p3, Lcom/onevcat/uniwebview/DownloadTask;

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, p1, p2, p4}, Lcom/onevcat/uniwebview/DownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    invoke-direct {p0, p3}, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->showDownloadDialog(Lcom/onevcat/uniwebview/DownloadTask;)V

    return-void
.end method

.method public final register()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->onDownloadComplete:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final unregister()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->onDownloadComplete:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
