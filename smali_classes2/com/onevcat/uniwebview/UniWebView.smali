.class public final Lcom/onevcat/uniwebview/UniWebView;
.super Landroid/webkit/WebView;
.source "UniWebView.kt"

# interfaces
.implements Lcom/onevcat/uniwebview/URLLoadingResponderDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;,
        Lcom/onevcat/uniwebview/UniWebView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0010\u0018\u0000 V2\u00020\u00012\u00020\u0002:\u0002VWB5\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u0016\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\t2\u0006\u0010\'\u001a\u00020\tJ\u000e\u0010(\u001a\u00020\u00162\u0006\u0010)\u001a\u00020\tJ\u000e\u0010*\u001a\u00020\u00162\u0006\u0010)\u001a\u00020\tJ\u000e\u0010+\u001a\u00020%2\u0006\u0010,\u001a\u00020\tJ\u0008\u0010-\u001a\u00020%H\u0002J\u0008\u0010.\u001a\u00020%H\u0007J\u0006\u0010/\u001a\u00020\u0016J\u0006\u00100\u001a\u00020\u0016J\u0008\u00101\u001a\u00020%H\u0016J\u0016\u00102\u001a\u00020%2\u0006\u0010&\u001a\u00020\t2\u0006\u0010\'\u001a\u00020\tJ\u0006\u00103\u001a\u00020%J\u0006\u00104\u001a\u00020%J\u0006\u00105\u001a\u00020\tJ\u0008\u00106\u001a\u00020\u0016H\u0016J\u001a\u00107\u001a\u00020%2\u0008\u00108\u001a\u0004\u0018\u00010\t2\u0008\u00109\u001a\u0004\u0018\u00010\tJ\u0010\u0010:\u001a\u00020%2\u0006\u0010;\u001a\u00020\tH\u0016J\u0008\u0010<\u001a\u00020\u0016H\u0016J\u0012\u0010=\u001a\u00020%2\u0008\u0010>\u001a\u0004\u0018\u00010?H\u0014J\u0010\u0010@\u001a\u00020%2\u0006\u0010;\u001a\u00020\tH\u0016J\u0008\u0010A\u001a\u00020%H\u0016J\u0006\u0010B\u001a\u00020%J\u000e\u0010C\u001a\u00020\u00162\u0006\u0010)\u001a\u00020\tJ\u000e\u0010D\u001a\u00020\u00162\u0006\u0010)\u001a\u00020\tJ\u000e\u0010E\u001a\u00020%2\u0006\u0010,\u001a\u00020\tJ\u001e\u0010F\u001a\u00020%2\u0006\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020H2\u0006\u0010J\u001a\u00020\u0016J\u000e\u0010K\u001a\u00020%2\u0006\u0010L\u001a\u00020\u0016J\u000e\u0010M\u001a\u00020%2\u0006\u0010N\u001a\u00020HJ\u0018\u0010O\u001a\u00020%2\u0006\u0010P\u001a\u00020\t2\u0008\u0010Q\u001a\u0004\u0018\u00010\tJ\u000e\u0010R\u001a\u00020%2\u0006\u0010L\u001a\u00020\u0016J\u000e\u0010S\u001a\u00020%2\u0006\u0010T\u001a\u00020\tJ\u0008\u0010U\u001a\u00020%H\u0016R\u0014\u0010\u000f\u001a\u00020\u0010X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u001a\u0010!\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0018\"\u0004\u0008#\u0010\u001a\u00a8\u0006X"
    }
    d2 = {
        "Lcom/onevcat/uniwebview/UniWebView;",
        "Landroid/webkit/WebView;",
        "Lcom/onevcat/uniwebview/URLLoadingResponderDelegate;",
        "activity",
        "Landroid/app/Activity;",
        "containerView",
        "Landroid/view/ViewGroup;",
        "videoView",
        "name",
        "",
        "messageSender",
        "Lcom/onevcat/uniwebview/UnityMessageSender;",
        "loadingObserver",
        "Lcom/onevcat/uniwebview/UniWebViewLoadingObserver;",
        "(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMessageSender;Lcom/onevcat/uniwebview/UniWebViewLoadingObserver;)V",
        "_webChromeClient",
        "Lcom/onevcat/uniwebview/UniWebViewChromeClient;",
        "get_webChromeClient$uniwebview_release",
        "()Lcom/onevcat/uniwebview/UniWebViewChromeClient;",
        "_webClient",
        "Lcom/onevcat/uniwebview/UniWebViewClient;",
        "calloutEnabled",
        "",
        "getCalloutEnabled",
        "()Z",
        "setCalloutEnabled",
        "(Z)V",
        "downloader",
        "Lcom/onevcat/uniwebview/UniWebViewFileDownloader;",
        "getMessageSender",
        "()Lcom/onevcat/uniwebview/UnityMessageSender;",
        "getName",
        "()Ljava/lang/String;",
        "sendDownloadEventForContextMenu",
        "getSendDownloadEventForContextMenu",
        "setSendDownloadEventForContextMenu",
        "addJavaScript",
        "",
        "jsString",
        "identifier",
        "addPermissionTrustDomain",
        "domain",
        "addSslExceptionDomain",
        "addUrlScheme",
        "scheme",
        "applyDownloader",
        "applyWebViewSettings",
        "canGoBackWithPopupWebView",
        "canGoForwardWithPopupWebView",
        "destroy",
        "evaluateJavaScript",
        "generalGoBack",
        "generalGoForward",
        "getUserAgent",
        "isValidHitTestResult",
        "loadHTMLString",
        "html",
        "baseUrl",
        "loadUrl",
        "url",
        "onCheckLocalFileLoading",
        "onCreateContextMenu",
        "menu",
        "Landroid/view/ContextMenu;",
        "onSendMessage",
        "onVideoEndInvoked",
        "print",
        "removePermissionTrustDomain",
        "removeSslExceptionDomain",
        "removeUrlScheme",
        "scrollTo",
        "x",
        "",
        "y",
        "animated",
        "setAllowHTTPAuthPopUpWindow",
        "flag",
        "setDefaultFontSize",
        "size",
        "setHeader",
        "key",
        "value",
        "setOpenLinksInExternalBrowser",
        "setUserAgent",
        "userAgent",
        "stopLoading",
        "Companion",
        "GlobalSetting",
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


# static fields
.field public static final Companion:Lcom/onevcat/uniwebview/UniWebView$Companion;

.field private static defaultUserAgent:Ljava/lang/String;


# instance fields
.field private final _webChromeClient:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

.field private final _webClient:Lcom/onevcat/uniwebview/UniWebViewClient;

.field private final activity:Landroid/app/Activity;

.field private calloutEnabled:Z

.field private final downloader:Lcom/onevcat/uniwebview/UniWebViewFileDownloader;

.field private final messageSender:Lcom/onevcat/uniwebview/UnityMessageSender;

.field private final name:Ljava/lang/String;

.field private sendDownloadEventForContextMenu:Z


# direct methods
.method public static synthetic $r8$lambda$S7hMmgV291JTMWYLeICTU0VpL4k(Lcom/onevcat/uniwebview/UniWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/onevcat/uniwebview/UniWebView;->applyDownloader$lambda-0(Lcom/onevcat/uniwebview/UniWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$avj_oP3N8Z7vAua45nmWK5o1M9Y(Ljava/lang/String;Lcom/onevcat/uniwebview/UniWebView;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebView;->addJavaScript$lambda-2(Ljava/lang/String;Lcom/onevcat/uniwebview/UniWebView;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nKvOufldCgPFh43XZKe0sWPKMf4(Ljava/lang/String;Lcom/onevcat/uniwebview/UniWebView;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebView;->evaluateJavaScript$lambda-3(Ljava/lang/String;Lcom/onevcat/uniwebview/UniWebView;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pAN5bJXdMhofAkj_X0eP6yZ-QJI(Lcom/onevcat/uniwebview/UniWebView;Ljava/lang/String;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebView;->onCreateContextMenu$lambda-1(Lcom/onevcat/uniwebview/UniWebView;Ljava/lang/String;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onevcat/uniwebview/UniWebView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onevcat/uniwebview/UniWebView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onevcat/uniwebview/UniWebView;->Companion:Lcom/onevcat/uniwebview/UniWebView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMessageSender;Lcom/onevcat/uniwebview/UniWebViewLoadingObserver;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSender"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadingObserver"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebView;->activity:Landroid/app/Activity;

    .line 22
    iput-object p4, p0, Lcom/onevcat/uniwebview/UniWebView;->name:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/onevcat/uniwebview/UniWebView;->messageSender:Lcom/onevcat/uniwebview/UnityMessageSender;

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebView;->calloutEnabled:Z

    .line 68
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->applyWebViewSettings()V

    .line 70
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;-><init>(Landroid/app/Activity;Lcom/onevcat/uniwebview/UniWebView;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->_webChromeClient:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    .line 71
    check-cast v0, Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v0}, Lcom/onevcat/uniwebview/UniWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 73
    new-instance p2, Lcom/onevcat/uniwebview/UniWebViewClient;

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lcom/onevcat/uniwebview/URLLoadingResponderDelegate;

    invoke-direct {p2, p3, v0, p6}, Lcom/onevcat/uniwebview/UniWebViewClient;-><init>(Landroid/content/Context;Lcom/onevcat/uniwebview/URLLoadingResponderDelegate;Lcom/onevcat/uniwebview/UniWebViewLoadingObserver;)V

    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebView;->_webClient:Lcom/onevcat/uniwebview/UniWebViewClient;

    .line 74
    move-object p3, p2

    check-cast p3, Landroid/webkit/WebViewClient;

    invoke-virtual {p0, p3}, Lcom/onevcat/uniwebview/UniWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 76
    new-instance p3, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;

    invoke-direct {p3, p1, p4, p5, p2}, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMessageSender;Lcom/onevcat/uniwebview/UniWebViewClient;)V

    iput-object p3, p0, Lcom/onevcat/uniwebview/UniWebView;->downloader:Lcom/onevcat/uniwebview/UniWebViewFileDownloader;

    .line 77
    invoke-virtual {p3}, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->register()V

    .line 78
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebView;->applyDownloader()V

    return-void
.end method

.method public static final synthetic access$getDefaultUserAgent$cp()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/onevcat/uniwebview/UniWebView;->defaultUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setDefaultUserAgent$cp(Ljava/lang/String;)V
    .locals 0

    .line 18
    sput-object p0, Lcom/onevcat/uniwebview/UniWebView;->defaultUserAgent:Ljava/lang/String;

    return-void
.end method

.method private static final addJavaScript$lambda-2(Ljava/lang/String;Lcom/onevcat/uniwebview/UniWebView;Ljava/lang/String;)V
    .locals 3

    const-string v0, "$identifier"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Receive callback of adding JavaScript: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info$uniwebview_release(Ljava/lang/String;)V

    const-string v0, "null"

    const/4 v1, 0x1

    .line 204
    invoke-static {p2, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    new-instance p2, Lcom/onevcat/uniwebview/UniWebViewResultPayload;

    const-string v0, "0"

    const-string v1, ""

    invoke-direct {p2, p0, v0, v1}, Lcom/onevcat/uniwebview/UniWebViewResultPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object p0, p1, Lcom/onevcat/uniwebview/UniWebView;->messageSender:Lcom/onevcat/uniwebview/UnityMessageSender;

    iget-object p1, p1, Lcom/onevcat/uniwebview/UniWebView;->name:Ljava/lang/String;

    sget-object v0, Lcom/onevcat/uniwebview/UnityMethod;->AddJavaScriptFinished:Lcom/onevcat/uniwebview/UnityMethod;

    invoke-interface {p0, p1, v0, p2}, Lcom/onevcat/uniwebview/UnityMessageSender;->sendUnityMessage(Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMethod;Lcom/onevcat/uniwebview/UniWebViewResultPayload;)V

    goto :goto_0

    .line 208
    :cond_0
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewResultPayload;

    const-string v1, "it"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "-1"

    invoke-direct {v0, p0, v1, p2}, Lcom/onevcat/uniwebview/UniWebViewResultPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object p0, p1, Lcom/onevcat/uniwebview/UniWebView;->messageSender:Lcom/onevcat/uniwebview/UnityMessageSender;

    iget-object p1, p1, Lcom/onevcat/uniwebview/UniWebView;->name:Ljava/lang/String;

    sget-object p2, Lcom/onevcat/uniwebview/UnityMethod;->AddJavaScriptFinished:Lcom/onevcat/uniwebview/UnityMethod;

    invoke-interface {p0, p1, p2, v0}, Lcom/onevcat/uniwebview/UnityMessageSender;->sendUnityMessage(Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMethod;Lcom/onevcat/uniwebview/UniWebViewResultPayload;)V

    :goto_0
    return-void
.end method

.method private final applyDownloader()V
    .locals 1

    .line 112
    new-instance v0, Lcom/onevcat/uniwebview/UniWebView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/UniWebView$$ExternalSyntheticLambda0;-><init>(Lcom/onevcat/uniwebview/UniWebView;)V

    invoke-virtual {p0, v0}, Lcom/onevcat/uniwebview/UniWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method private static final applyDownloader$lambda-0(Lcom/onevcat/uniwebview/UniWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object p0, p0, Lcom/onevcat/uniwebview/UniWebView;->downloader:Lcom/onevcat/uniwebview/UniWebViewFileDownloader;

    const-string p2, "url"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static final evaluateJavaScript$lambda-3(Ljava/lang/String;Lcom/onevcat/uniwebview/UniWebView;Ljava/lang/String;)V
    .locals 4

    const-string v0, "$identifier"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Receive callback of evaluating JavaScript: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info$uniwebview_release(Ljava/lang/String;)V

    const-string v0, "null"

    const/4 v1, 0x1

    .line 218
    invoke-static {p2, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "0"

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 219
    new-instance p2, Lcom/onevcat/uniwebview/UniWebViewResultPayload;

    invoke-direct {p2, p0, v1, v2}, Lcom/onevcat/uniwebview/UniWebViewResultPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object p0, p1, Lcom/onevcat/uniwebview/UniWebView;->messageSender:Lcom/onevcat/uniwebview/UnityMessageSender;

    iget-object p1, p1, Lcom/onevcat/uniwebview/UniWebView;->name:Ljava/lang/String;

    sget-object v0, Lcom/onevcat/uniwebview/UnityMethod;->EvalJavaScriptFinished:Lcom/onevcat/uniwebview/UnityMethod;

    invoke-interface {p0, p1, v0, p2}, Lcom/onevcat/uniwebview/UnityMessageSender;->sendUnityMessage(Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMethod;Lcom/onevcat/uniwebview/UniWebViewResultPayload;)V

    goto :goto_0

    :cond_0
    const-string v0, "it"

    .line 222
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    new-instance v0, Lkotlin/text/Regex;

    const-string v3, "^\"|\"$"

    .line 224
    invoke-direct {v0, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 226
    invoke-static {p2}, Lcom/onevcat/uniwebview/StringExtensionsKt;->unescapeJavaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 227
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewResultPayload;

    invoke-direct {v0, p0, v1, p2}, Lcom/onevcat/uniwebview/UniWebViewResultPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object p0, p1, Lcom/onevcat/uniwebview/UniWebView;->messageSender:Lcom/onevcat/uniwebview/UnityMessageSender;

    iget-object p1, p1, Lcom/onevcat/uniwebview/UniWebView;->name:Ljava/lang/String;

    sget-object p2, Lcom/onevcat/uniwebview/UnityMethod;->EvalJavaScriptFinished:Lcom/onevcat/uniwebview/UnityMethod;

    invoke-interface {p0, p1, p2, v0}, Lcom/onevcat/uniwebview/UnityMessageSender;->sendUnityMessage(Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMethod;Lcom/onevcat/uniwebview/UniWebViewResultPayload;)V

    :goto_0
    return-void
.end method

.method private static final onCreateContextMenu$lambda-1(Lcom/onevcat/uniwebview/UniWebView;Ljava/lang/String;Landroid/view/MenuItem;)Z
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$url"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object p2, p0, Lcom/onevcat/uniwebview/UniWebView;->downloader:Lcom/onevcat/uniwebview/UniWebViewFileDownloader;

    .line 165
    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    iget-boolean p0, p0, Lcom/onevcat/uniwebview/UniWebView;->sendDownloadEventForContextMenu:Z

    const/4 v1, 0x0

    .line 163
    invoke-virtual {p2, p1, v1, v0, p0}, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final addJavaScript(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "jsString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding JavaScript string to web view. Requesting string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->debug$uniwebview_release(Ljava/lang/String;)V

    .line 202
    new-instance v0, Lcom/onevcat/uniwebview/UniWebView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p0}, Lcom/onevcat/uniwebview/UniWebView$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Lcom/onevcat/uniwebview/UniWebView;)V

    invoke-virtual {p0, p1, v0}, Lcom/onevcat/uniwebview/UniWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public final addPermissionTrustDomain(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "domain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->_webChromeClient:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->getPermissionTrustDomains()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final addSslExceptionDomain(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "domain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->_webClient:Lcom/onevcat/uniwebview/UniWebViewClient;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewClient;->getSslExceptionDomains()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final addUrlScheme(Ljava/lang/String;)V
    .locals 1

    const-string v0, "scheme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->_webClient:Lcom/onevcat/uniwebview/UniWebViewClient;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewClient;->getUrlResponder()Lcom/onevcat/uniwebview/URLLoadingResponder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onevcat/uniwebview/URLLoadingResponder;->addUrlScheme(Ljava/lang/String;)V

    return-void
.end method

.method public final applyWebViewSettings()V
    .locals 3

    .line 90
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v2, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->Companion:Lcom/onevcat/uniwebview/UniWebView$GlobalSetting$Companion;

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting$Companion;->getAllowUniversalAccessFromFileURLs()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 102
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v2, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->Companion:Lcom/onevcat/uniwebview/UniWebView$GlobalSetting$Companion;

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting$Companion;->getJavaScriptEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v2, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->Companion:Lcom/onevcat/uniwebview/UniWebView$GlobalSetting$Companion;

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting$Companion;->getAllowAutoPlay()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v2, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->Companion:Lcom/onevcat/uniwebview/UniWebView$GlobalSetting$Companion;

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting$Companion;->getAllowJavaScriptOpenWindow()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    return-void
.end method

.method public final canGoBackWithPopupWebView()Z
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->_webChromeClient:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->getPopupWebView()Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final canGoForwardWithPopupWebView()Z
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->_webChromeClient:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->getPopupWebView()Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->canGoForward()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public destroy()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->downloader:Lcom/onevcat/uniwebview/UniWebViewFileDownloader;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewFileDownloader;->unregister()V

    .line 83
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public final evaluateJavaScript(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "jsString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Evaluating JavaScript string within web view. Requesting string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->debug$uniwebview_release(Ljava/lang/String;)V

    .line 216
    new-instance v0, Lcom/onevcat/uniwebview/UniWebView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2, p0}, Lcom/onevcat/uniwebview/UniWebView$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Lcom/onevcat/uniwebview/UniWebView;)V

    invoke-virtual {p0, p1, v0}, Lcom/onevcat/uniwebview/UniWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public final generalGoBack()V
    .locals 3

    .line 279
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Checking pop up web view in generalGoBack."

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->_webChromeClient:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->getPopupWebView()Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    sget-object v1, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    const-string v2, "popupWebView can go back. Performing going back."

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->goBack()V

    goto :goto_0

    .line 285
    :cond_0
    sget-object v1, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v1

    const-string v2, "popupWebView cannot go back. Performing close."

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    const-string v1, "window.close()"

    const/4 v2, 0x0

    .line 286
    invoke-virtual {v0, v1, v2}, Lcom/onevcat/uniwebview/UniWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_0
    return-void

    .line 291
    :cond_1
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Checking main web view can go back..."

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->goBack()V

    :cond_2
    return-void
.end method

.method public final generalGoForward()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->_webChromeClient:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->getPopupWebView()Lcom/onevcat/uniwebview/UniWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->goForward()V

    :cond_0
    return-void

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->goForward()V

    :cond_2
    return-void
.end method

.method public final getCalloutEnabled()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebView;->calloutEnabled:Z

    return v0
.end method

.method public final getMessageSender()Lcom/onevcat/uniwebview/UnityMessageSender;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->messageSender:Lcom/onevcat/uniwebview/UnityMessageSender;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getSendDownloadEventForContextMenu()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebView;->sendDownloadEventForContextMenu:Z

    return v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .locals 2

    .line 267
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "settings.userAgentString"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final get_webChromeClient$uniwebview_release()Lcom/onevcat/uniwebview/UniWebViewChromeClient;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->_webChromeClient:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    return-object v0
.end method

.method public isValidHitTestResult()Z
    .locals 1

    .line 191
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final loadHTMLString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 118
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UniWebView will load HTML string with base url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info$uniwebview_release(Ljava/lang/String;)V

    .line 119
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input HTML content: \n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->_webClient:Lcom/onevcat/uniwebview/UniWebViewClient;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewClient;->resetLoadStates$uniwebview_release()V

    if-eqz p1, :cond_0

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    .line 123
    invoke-virtual/range {v1 .. v6}, Lcom/onevcat/uniwebview/UniWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v9, ""

    const-string v10, "text/html"

    const-string v11, "UTF-8"

    const/4 v12, 0x0

    move-object v7, p0

    move-object v8, p2

    .line 125
    invoke-virtual/range {v7 .. v12}, Lcom/onevcat/uniwebview/UniWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UniWebView will load url: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' with headers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebView;->_webClient:Lcom/onevcat/uniwebview/UniWebViewClient;

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/UniWebViewClient;->getCustomizeHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info$uniwebview_release(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->_webClient:Lcom/onevcat/uniwebview/UniWebViewClient;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewClient;->resetLoadStates$uniwebview_release()V

    .line 134
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->_webClient:Lcom/onevcat/uniwebview/UniWebViewClient;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewClient;->getUrlResponder()Lcom/onevcat/uniwebview/URLLoadingResponder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/onevcat/uniwebview/URLLoadingResponder;->handleUrl(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->_webClient:Lcom/onevcat/uniwebview/UniWebViewClient;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewClient;->getCustomizeHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-super {p0, p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onCheckLocalFileLoading()Z
    .locals 4

    .line 178
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Loading a local file. The local file loading will never be overridden."

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->debug$uniwebview_release(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 182
    :cond_0
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Local file loading is disabled. To enable loading from a `file://` URL, call `SetAllowFileAccess` with true."

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info$uniwebview_release(Ljava/lang/String;)V

    .line 184
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewResultPayload;

    const-string v1, "-1"

    const-string v2, "Local file loading is disabled."

    const-string v3, ""

    invoke-direct {v0, v3, v1, v2}, Lcom/onevcat/uniwebview/UniWebViewResultPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebView;->messageSender:Lcom/onevcat/uniwebview/UnityMessageSender;

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebView;->name:Ljava/lang/String;

    sget-object v3, Lcom/onevcat/uniwebview/UnityMethod;->PageErrorReceived:Lcom/onevcat/uniwebview/UnityMethod;

    invoke-interface {v1, v2, v3, v0}, Lcom/onevcat/uniwebview/UnityMessageSender;->sendUnityMessage(Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMethod;Lcom/onevcat/uniwebview/UniWebViewResultPayload;)V

    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 5

    .line 146
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebView;->calloutEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 149
    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 150
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    return-void

    .line 154
    :cond_2
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "ROOT"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "http://"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 155
    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "https://"

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    .line 160
    :cond_4
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    move-result-object p1

    .line 161
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/onevcat/uniwebview/R$string;->SAVE_IMAGE:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 162
    new-instance v1, Lcom/onevcat/uniwebview/UniWebView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/onevcat/uniwebview/UniWebView$$ExternalSyntheticLambda3;-><init>(Lcom/onevcat/uniwebview/UniWebView;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_5
    :goto_0
    return-void
.end method

.method public onSendMessage(Ljava/lang/String;)V
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->messageSender:Lcom/onevcat/uniwebview/UnityMessageSender;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebView;->name:Ljava/lang/String;

    sget-object v2, Lcom/onevcat/uniwebview/UnityMethod;->MessageReceived:Lcom/onevcat/uniwebview/UnityMethod;

    invoke-interface {v0, v1, v2, p1}, Lcom/onevcat/uniwebview/UnityMessageSender;->sendUnityMessage(Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMethod;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoEndInvoked()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->_webChromeClient:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->onHideCustomView()V

    return-void
.end method

.method public final print()V
    .locals 4

    .line 316
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->activity:Landroid/app/Activity;

    const-string v1, "print"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/print/PrintManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/print/PrintManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 318
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Didn\'t find a valid print service in current activity. Abort printing..."

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->critical$uniwebview_release(Ljava/lang/String;)V

    return-void

    .line 321
    :cond_1
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 323
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "The URL of page is null. Abort printing..."

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->critical$uniwebview_release(Ljava/lang/String;)V

    return-void

    .line 326
    :cond_2
    invoke-virtual {p0, v1}, Lcom/onevcat/uniwebview/UniWebView;->createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;

    move-result-object v1

    const-string v2, "createPrintDocumentAdapter(targetUrl)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    new-instance v2, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v2}, Landroid/print/PrintAttributes$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v2

    const-string v3, "UniWebView Printing"

    .line 328
    invoke-virtual {v0, v3, v1, v2}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    return-void
.end method

.method public final removePermissionTrustDomain(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "domain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->_webChromeClient:Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->getPermissionTrustDomains()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final removeSslExceptionDomain(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "domain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->_webClient:Lcom/onevcat/uniwebview/UniWebViewClient;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewClient;->getSslExceptionDomains()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final removeUrlScheme(Ljava/lang/String;)V
    .locals 1

    const-string v0, "scheme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->_webClient:Lcom/onevcat/uniwebview/UniWebViewClient;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewClient;->getUrlResponder()Lcom/onevcat/uniwebview/URLLoadingResponder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onevcat/uniwebview/URLLoadingResponder;->removeUrlScheme(Ljava/lang/String;)V

    return-void
.end method

.method public final scrollTo(IIZ)V
    .locals 4

    if-eqz p3, :cond_0

    const/4 p3, 0x2

    new-array v0, p3, [I

    .line 337
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getScrollX()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const-string p1, "scrollX"

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v0, p3, [I

    .line 338
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getScrollY()I

    move-result v3

    aput v3, v0, v2

    aput p2, v0, v1

    const-string p2, "scrollY"

    invoke-static {p0, p2, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 339
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p3, p3, [Landroid/animation/Animator;

    .line 340
    check-cast p1, Landroid/animation/Animator;

    aput-object p1, p3, v2

    check-cast p2, Landroid/animation/Animator;

    aput-object p2, p3, v1

    invoke-virtual {v0, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p1, 0x190

    .line 341
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebView;->scrollTo(II)V

    :goto_0
    return-void
.end method

.method public final setAllowHTTPAuthPopUpWindow(Z)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->_webClient:Lcom/onevcat/uniwebview/UniWebViewClient;

    invoke-virtual {v0, p1}, Lcom/onevcat/uniwebview/UniWebViewClient;->setShowHTTPAuthPopUpWindow(Z)V

    return-void
.end method

.method public final setCalloutEnabled(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebView;->calloutEnabled:Z

    return-void
.end method

.method public final setDefaultFontSize(I)V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 312
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    return-void
.end method

.method public final setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    sget-object p1, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object p1

    const-string p2, "Trying to set null or empty key for header field. Please check you have set correct key."

    invoke-virtual {p1, p2}, Lcom/onevcat/uniwebview/Logger;->critical$uniwebview_release(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 259
    iget-object p2, p0, Lcom/onevcat/uniwebview/UniWebView;->_webClient:Lcom/onevcat/uniwebview/UniWebViewClient;

    invoke-virtual {p2}, Lcom/onevcat/uniwebview/UniWebViewClient;->getCustomizeHeaders()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->_webClient:Lcom/onevcat/uniwebview/UniWebViewClient;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewClient;->getCustomizeHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final setOpenLinksInExternalBrowser(Z)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->_webClient:Lcom/onevcat/uniwebview/UniWebViewClient;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewClient;->getUrlResponder()Lcom/onevcat/uniwebview/URLLoadingResponder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onevcat/uniwebview/URLLoadingResponder;->setPreferOpenLinksInExternalBrowser(Z)V

    return-void
.end method

.method public final setSendDownloadEventForContextMenu(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebView;->sendDownloadEventForContextMenu:Z

    return-void
.end method

.method public final setUserAgent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "userAgent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method public stopLoading()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebView;->_webClient:Lcom/onevcat/uniwebview/UniWebViewClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewClient;->setUserStopped$uniwebview_release(Z)V

    .line 142
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V

    return-void
.end method
