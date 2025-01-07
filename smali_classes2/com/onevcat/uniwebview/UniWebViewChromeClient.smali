.class public final Lcom/onevcat/uniwebview/UniWebViewChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "UniWebViewChromeClient.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUniWebViewChromeClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UniWebViewChromeClient.kt\ncom/onevcat/uniwebview/UniWebViewChromeClient\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,311:1\n26#2:312\n*S KotlinDebug\n*F\n+ 1 UniWebViewChromeClient.kt\ncom/onevcat/uniwebview/UniWebViewChromeClient\n*L\n295#1:312\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\u0008\u0010(\u001a\u00020)H\u0002J\u0012\u0010*\u001a\u00020)2\u0008\u0010+\u001a\u0004\u0018\u00010,H\u0016J,\u0010-\u001a\u00020\u000b2\u0008\u0010.\u001a\u0004\u0018\u00010,2\u0006\u0010/\u001a\u00020\u000b2\u0006\u00100\u001a\u00020\u000b2\u0008\u00101\u001a\u0004\u0018\u000102H\u0017J\u001c\u00103\u001a\u00020)2\u0008\u00104\u001a\u0004\u0018\u00010\u001e2\u0008\u00105\u001a\u0004\u0018\u000106H\u0016J\u0008\u00107\u001a\u00020)H\u0016J0\u00108\u001a\u00020\u000b2\u0008\u0010.\u001a\u0004\u0018\u00010,2\u0008\u00109\u001a\u0004\u0018\u00010\u001e2\u0008\u0010:\u001a\u0004\u0018\u00010\u001e2\u0008\u0010;\u001a\u0004\u0018\u00010<H\u0016J0\u0010=\u001a\u00020\u000b2\u0008\u0010.\u001a\u0004\u0018\u00010,2\u0008\u00109\u001a\u0004\u0018\u00010\u001e2\u0008\u0010:\u001a\u0004\u0018\u00010\u001e2\u0008\u0010;\u001a\u0004\u0018\u00010<H\u0016J:\u0010>\u001a\u00020\u000b2\u0008\u0010.\u001a\u0004\u0018\u00010,2\u0008\u00109\u001a\u0004\u0018\u00010\u001e2\u0008\u0010:\u001a\u0004\u0018\u00010\u001e2\u0008\u0010?\u001a\u0004\u0018\u00010\u001e2\u0008\u0010;\u001a\u0004\u0018\u00010@H\u0016J\u0012\u0010A\u001a\u00020)2\u0008\u0010B\u001a\u0004\u0018\u00010CH\u0016J\u001a\u0010D\u001a\u00020)2\u0008\u0010.\u001a\u0004\u0018\u00010,2\u0006\u0010E\u001a\u00020FH\u0016J\u001c\u0010G\u001a\u00020)2\u0008\u0010.\u001a\u0004\u0018\u00010\'2\u0008\u00105\u001a\u0004\u0018\u00010\u0011H\u0016J2\u0010H\u001a\u00020\u000b2\u0008\u0010\u0004\u001a\u0004\u0018\u00010,2\u0014\u0010\u0017\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0\u0019\u0018\u00010\u00182\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016J\u000e\u0010I\u001a\u00020)2\u0006\u0010J\u001a\u00020\u001aJ\u0019\u0010K\u001a\u00020)2\u000c\u0010L\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019\u00a2\u0006\u0002\u0010MJ\u0006\u0010N\u001a\u00020)R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0\u0019\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u000b@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\rR \u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\"\u0010#\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0010\u0010&\u001a\u0004\u0018\u00010\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006O"
    }
    d2 = {
        "Lcom/onevcat/uniwebview/UniWebViewChromeClient;",
        "Landroid/webkit/WebChromeClient;",
        "activity",
        "Landroid/app/Activity;",
        "webView",
        "Lcom/onevcat/uniwebview/UniWebView;",
        "containerView",
        "Landroid/view/ViewGroup;",
        "videoView",
        "(Landroid/app/Activity;Lcom/onevcat/uniwebview/UniWebView;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V",
        "allowJavascriptOpeningNewWindow",
        "",
        "getAllowJavascriptOpeningNewWindow",
        "()Z",
        "setAllowJavascriptOpeningNewWindow",
        "(Z)V",
        "exitCallback",
        "Landroid/webkit/WebChromeClient$CustomViewCallback;",
        "<set-?>",
        "Landroid/webkit/WebChromeClient$FileChooserParams;",
        "fileChooserParams",
        "getFileChooserParams",
        "()Landroid/webkit/WebChromeClient$FileChooserParams;",
        "filePathCallback",
        "Landroid/webkit/ValueCallback;",
        "",
        "Landroid/net/Uri;",
        "isVideoFullscreen",
        "permissionTrustDomains",
        "",
        "",
        "getPermissionTrustDomains",
        "()Ljava/util/Set;",
        "setPermissionTrustDomains",
        "(Ljava/util/Set;)V",
        "popupWebView",
        "getPopupWebView",
        "()Lcom/onevcat/uniwebview/UniWebView;",
        "showingView",
        "Landroid/view/View;",
        "clearImagePickingState",
        "",
        "onCloseWindow",
        "window",
        "Landroid/webkit/WebView;",
        "onCreateWindow",
        "view",
        "isDialog",
        "isUserGesture",
        "resultMsg",
        "Landroid/os/Message;",
        "onGeolocationPermissionsShowPrompt",
        "origin",
        "callback",
        "Landroid/webkit/GeolocationPermissions$Callback;",
        "onHideCustomView",
        "onJsAlert",
        "url",
        "message",
        "result",
        "Landroid/webkit/JsResult;",
        "onJsConfirm",
        "onJsPrompt",
        "defaultValue",
        "Landroid/webkit/JsPromptResult;",
        "onPermissionRequest",
        "request",
        "Landroid/webkit/PermissionRequest;",
        "onProgressChanged",
        "newProgress",
        "",
        "onShowCustomView",
        "onShowFileChooser",
        "receiveCameraCaptureResult",
        "fileUri",
        "receiveFilePickerResult",
        "uris",
        "([Landroid/net/Uri;)V",
        "receiveUserCancelResult",
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

.field private allowJavascriptOpeningNewWindow:Z

.field private final containerView:Landroid/view/ViewGroup;

.field private exitCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private fileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

.field private filePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private isVideoFullscreen:Z

.field private permissionTrustDomains:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private popupWebView:Lcom/onevcat/uniwebview/UniWebView;

.field private showingView:Landroid/view/View;

.field private final videoView:Landroid/view/ViewGroup;

.field private final webView:Lcom/onevcat/uniwebview/UniWebView;


# direct methods
.method public static synthetic $r8$lambda$Gl1zYAEDfCtWvQUDWWN4rqdY2hk(Landroid/webkit/PermissionRequest;Lcom/onevcat/uniwebview/UniWebViewChromeClient;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->onPermissionRequest$lambda-0(Landroid/webkit/PermissionRequest;Lcom/onevcat/uniwebview/UniWebViewChromeClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JhirFW9FHRSaYKJyZ1dEAxWewyM(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->onJsAlert$lambda-1(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$S9SeAr2RtUkU9zEndmaBqZyMKT8(Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->onJsPrompt$lambda-6(Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z4sx01MuPpzPsHJRH7Wi_c514FM(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->onJsConfirm$lambda-2(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$g36O7vALPNAza560pWDq185lSeg(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->onJsConfirm$lambda-3(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zFhNlx1GQaboxllNHtDnglarjQ0(Landroid/widget/EditText;Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->onJsPrompt$lambda-5(Landroid/widget/EditText;Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/onevcat/uniwebview/UniWebView;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoView"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->activity:Landroid/app/Activity;

    .line 19
    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->webView:Lcom/onevcat/uniwebview/UniWebView;

    .line 20
    iput-object p3, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->containerView:Landroid/view/ViewGroup;

    .line 21
    iput-object p4, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->videoView:Landroid/view/ViewGroup;

    .line 29
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->permissionTrustDomains:Ljava/util/Set;

    return-void
.end method

.method private final clearImagePickingState()V
    .locals 1

    const/4 v0, 0x0

    .line 300
    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->filePathCallback:Landroid/webkit/ValueCallback;

    .line 301
    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->fileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    return-void
.end method

.method private static final onJsAlert$lambda-1(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 132
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    if-eqz p0, :cond_0

    .line 133
    invoke-virtual {p0}, Landroid/webkit/JsResult;->confirm()V

    :cond_0
    return-void
.end method

.method private static final onJsConfirm$lambda-2(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 151
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    if-eqz p0, :cond_0

    .line 152
    invoke-virtual {p0}, Landroid/webkit/JsResult;->confirm()V

    :cond_0
    return-void
.end method

.method private static final onJsConfirm$lambda-3(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 155
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    if-eqz p0, :cond_0

    .line 156
    invoke-virtual {p0}, Landroid/webkit/JsResult;->cancel()V

    :cond_0
    return-void
.end method

.method private static final onJsPrompt$lambda-5(Landroid/widget/EditText;Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p3, "$input"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 183
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p1, p0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final onJsPrompt$lambda-6(Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 187
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    if-eqz p0, :cond_0

    .line 188
    invoke-virtual {p0}, Landroid/webkit/JsPromptResult;->cancel()V

    :cond_0
    return-void
.end method

.method private static final onPermissionRequest$lambda-0(Landroid/webkit/PermissionRequest;Lcom/onevcat/uniwebview/UniWebViewChromeClient;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Permission domain \'"

    if-eqz v0, :cond_0

    .line 97
    :try_start_1
    iget-object p1, p1, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->permissionTrustDomains:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    sget-object p1, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is contained in allow list. Granting..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onevcat/uniwebview/Logger;->info$uniwebview_release(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_0
    sget-object p1, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is not contained in allow list. Deny this request."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onevcat/uniwebview/Logger;->critical$uniwebview_release(Ljava/lang/String;)V

    .line 103
    sget-object p1, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object p1

    const-string v0, "If you want to allow permission access from this domain, add it through `UniWebView.AddPermissionTrustDomain` first."

    invoke-virtual {p1, v0}, Lcom/onevcat/uniwebview/Logger;->critical$uniwebview_release(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Landroid/webkit/PermissionRequest;->deny()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPermissionRequest failed due to exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onevcat/uniwebview/Logger;->critical$uniwebview_release(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Landroid/webkit/PermissionRequest;->deny()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getAllowJavascriptOpeningNewWindow()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->allowJavascriptOpeningNewWindow:Z

    return v0
.end method

.method public final getFileChooserParams()Landroid/webkit/WebChromeClient$FileChooserParams;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->fileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    return-object v0
.end method

.method public final getPermissionTrustDomains()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->permissionTrustDomains:Ljava/util/Set;

    return-object v0
.end method

.method public final getPopupWebView()Lcom/onevcat/uniwebview/UniWebView;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->popupWebView:Lcom/onevcat/uniwebview/UniWebView;

    return-object v0
.end method

.method public final isVideoFullscreen()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->isVideoFullscreen:Z

    return v0
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 5

    .line 243
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 245
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    instance-of v2, v1, Lcom/onevcat/uniwebview/UniWebView;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/onevcat/uniwebview/UniWebView;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_2

    return-void

    .line 247
    :cond_2
    sget-object v2, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v2

    const-string v3, "onCloseWindow..."

    invoke-virtual {v2, v3}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    .line 248
    sget-object v2, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Get a parent view: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    .line 250
    check-cast p1, Landroid/view/View;

    invoke-virtual {v1, p1}, Lcom/onevcat/uniwebview/UniWebView;->removeView(Landroid/view/View;)V

    .line 252
    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebView;->get_webChromeClient$uniwebview_release()Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    move-result-object p1

    iget-object p1, p1, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->popupWebView:Lcom/onevcat/uniwebview/UniWebView;

    if-eqz p1, :cond_3

    .line 254
    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebView;->getMessageSender()Lcom/onevcat/uniwebview/UnityMessageSender;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebView;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/onevcat/uniwebview/UnityMethod;->MultipleWindowClosed:Lcom/onevcat/uniwebview/UnityMethod;

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/UniWebView;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, v4, p1}, Lcom/onevcat/uniwebview/UnityMessageSender;->sendUnityMessage(Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMethod;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebView;->get_webChromeClient$uniwebview_release()Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    move-result-object p1

    iput-object v0, p1, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->popupWebView:Lcom/onevcat/uniwebview/UniWebView;

    :cond_3
    return-void
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 9

    .line 212
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "onCreateWindow..."

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->webView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportMultipleWindows()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->allowJavascriptOpeningNewWindow:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    .line 217
    new-instance p2, Lcom/onevcat/uniwebview/UniWebView;

    .line 218
    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->containerView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->videoView:Landroid/view/ViewGroup;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    const-string p3, "randomUUID().toString()"

    invoke-static {v6, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lcom/onevcat/uniwebview/UniWebViewChromeClient$onCreateWindow$EmptyUnitySender;

    invoke-direct {p3}, Lcom/onevcat/uniwebview/UniWebViewChromeClient$onCreateWindow$EmptyUnitySender;-><init>()V

    move-object v7, p3

    check-cast v7, Lcom/onevcat/uniwebview/UnityMessageSender;

    new-instance p3, Lcom/onevcat/uniwebview/UniWebViewChromeClient$onCreateWindow$EmptyObserver;

    invoke-direct {p3}, Lcom/onevcat/uniwebview/UniWebViewChromeClient$onCreateWindow$EmptyObserver;-><init>()V

    move-object v8, p3

    check-cast v8, Lcom/onevcat/uniwebview/UniWebViewLoadingObserver;

    move-object v2, p2

    .line 217
    invoke-direct/range {v2 .. v8}, Lcom/onevcat/uniwebview/UniWebView;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMessageSender;Lcom/onevcat/uniwebview/UniWebViewLoadingObserver;)V

    .line 221
    invoke-virtual {p2}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->webView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 223
    invoke-virtual {p2}, Lcom/onevcat/uniwebview/UniWebView;->get_webChromeClient$uniwebview_release()Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    move-result-object p3

    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->allowJavascriptOpeningNewWindow:Z

    iput-boolean v0, p3, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->allowJavascriptOpeningNewWindow:Z

    .line 225
    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 226
    invoke-virtual {p2, p3}, Lcom/onevcat/uniwebview/UniWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_2

    .line 227
    move-object p3, p2

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->addView(Landroid/view/View;)V

    :cond_2
    if-eqz p4, :cond_3

    .line 229
    iget-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 230
    :goto_1
    instance-of p3, p1, Landroid/webkit/WebView$WebViewTransport;

    if-eqz p3, :cond_4

    .line 231
    check-cast p1, Landroid/webkit/WebView$WebViewTransport;

    move-object p3, p2

    check-cast p3, Landroid/webkit/WebView;

    invoke-virtual {p1, p3}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    :cond_4
    if-eqz p4, :cond_5

    .line 233
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 234
    :cond_5
    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->popupWebView:Lcom/onevcat/uniwebview/UniWebView;

    .line 235
    iget-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->webView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/UniWebView;->getMessageSender()Lcom/onevcat/uniwebview/UnityMessageSender;

    move-result-object p1

    iget-object p3, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->webView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {p3}, Lcom/onevcat/uniwebview/UniWebView;->getName()Ljava/lang/String;

    move-result-object p3

    sget-object p4, Lcom/onevcat/uniwebview/UnityMethod;->MultipleWindowOpened:Lcom/onevcat/uniwebview/UnityMethod;

    invoke-virtual {p2}, Lcom/onevcat/uniwebview/UniWebView;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p4, p2}, Lcom/onevcat/uniwebview/UnityMessageSender;->sendUnityMessage(Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMethod;Ljava/lang/String;)V

    return v1

    .line 238
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 115
    invoke-interface {p2, p1, v0, v0}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public onHideCustomView()V
    .locals 2

    .line 70
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->isVideoFullscreen:Z

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->videoView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->videoView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->showingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->containerView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 77
    iput-boolean v1, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->isVideoFullscreen:Z

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->showingView:Landroid/view/View;

    .line 79
    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->exitCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 81
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->webView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->clearFocus()V

    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 126
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->activity:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 127
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 128
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 129
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x1080027

    .line 130
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 131
    new-instance p2, Lcom/onevcat/uniwebview/UniWebViewChromeClient$$ExternalSyntheticLambda4;

    invoke-direct {p2, p4}, Lcom/onevcat/uniwebview/UniWebViewChromeClient$$ExternalSyntheticLambda4;-><init>(Landroid/webkit/JsResult;)V

    const p3, 0x104000a

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 146
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->activity:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 147
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 148
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x108009b

    .line 149
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 150
    new-instance p2, Lcom/onevcat/uniwebview/UniWebViewChromeClient$$ExternalSyntheticLambda2;

    invoke-direct {p2, p4}, Lcom/onevcat/uniwebview/UniWebViewChromeClient$$ExternalSyntheticLambda2;-><init>(Landroid/webkit/JsResult;)V

    const p3, 0x1040013

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 154
    new-instance p2, Lcom/onevcat/uniwebview/UniWebViewChromeClient$$ExternalSyntheticLambda3;

    invoke-direct {p2, p4}, Lcom/onevcat/uniwebview/UniWebViewChromeClient$$ExternalSyntheticLambda3;-><init>(Landroid/webkit/JsResult;)V

    const p3, 0x1040009

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1

    .line 170
    new-instance p1, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->activity:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 171
    invoke-virtual {p1}, Landroid/widget/EditText;->setSingleLine()V

    if-nez p4, :cond_0

    const-string p4, ""

    .line 172
    :cond_0
    check-cast p4, Ljava/lang/CharSequence;

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    new-instance p4, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->activity:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-direct {p4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 176
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p4, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 177
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x108009b

    .line 178
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const/4 p3, 0x0

    .line 179
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const-string p4, "Builder(activity)\n      \u2026    .setCancelable(false)"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x1

    new-array v0, p4, [Landroid/widget/EditText;

    aput-object p1, v0, p3

    .line 180
    invoke-static {p2, v0}, Lcom/onevcat/uniwebview/AlertBuilderHelpersKt;->setEditText(Landroid/app/AlertDialog$Builder;[Landroid/widget/EditText;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 181
    new-instance p3, Lcom/onevcat/uniwebview/UniWebViewChromeClient$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1, p5}, Lcom/onevcat/uniwebview/UniWebViewChromeClient$$ExternalSyntheticLambda0;-><init>(Landroid/widget/EditText;Landroid/webkit/JsPromptResult;)V

    const p1, 0x1040013

    invoke-virtual {p2, p1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 186
    new-instance p2, Lcom/onevcat/uniwebview/UniWebViewChromeClient$$ExternalSyntheticLambda1;

    invoke-direct {p2, p5}, Lcom/onevcat/uniwebview/UniWebViewChromeClient$$ExternalSyntheticLambda1;-><init>(Landroid/webkit/JsPromptResult;)V

    const p3, 0x1040009

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 190
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return p4
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 3

    .line 88
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UniWebViewChromeClient onPermissionRequest. URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->info$uniwebview_release(Ljava/lang/String;)V

    if-nez p1, :cond_1

    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/onevcat/uniwebview/UniWebViewChromeClient$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p0}, Lcom/onevcat/uniwebview/UniWebViewChromeClient$$ExternalSyntheticLambda5;-><init>(Landroid/webkit/PermissionRequest;Lcom/onevcat/uniwebview/UniWebViewChromeClient;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    int-to-float p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    .line 278
    iget-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->webView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {p2}, Lcom/onevcat/uniwebview/UniWebView;->getMessageSender()Lcom/onevcat/uniwebview/UnityMessageSender;

    move-result-object p2

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->webView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onevcat/uniwebview/UnityMethod;->PageProgressChanged:Lcom/onevcat/uniwebview/UnityMethod;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, v1, p1}, Lcom/onevcat/uniwebview/UnityMessageSender;->sendUnityMessage(Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMethod;Ljava/lang/String;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    .line 34
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->isVideoFullscreen:Z

    .line 37
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->showingView:Landroid/view/View;

    .line 38
    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->exitCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 41
    iget-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->containerView:Landroid/view/ViewGroup;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 42
    iget-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->videoView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 43
    iget-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->videoView:Landroid/view/ViewGroup;

    .line 44
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->showingView:Landroid/view/View;

    .line 45
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 43
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iget-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->webView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {p2}, Lcom/onevcat/uniwebview/UniWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroid/view/SurfaceView;

    if-eqz p1, :cond_0

    const-string p1, "javascript:\n                    var _ytrp_html5_video_last;\n                    var _ytrp_html5_video = document.getElementsByTagName(\'video\')[0];\n                    if (_ytrp_html5_video != undefined && _ytrp_html5_video != _ytrp_html5_video_last) {\n                      _ytrp_html5_video_last = _ytrp_html5_video;\n                      function _ytrp_html5_video_ended() {\n                        window.location.href = \'uniwebviewinternal://__uniwebview_internal_video_end\';\n                      }\n                      window.location.href = \'uniwebviewinternal://__uniwebview_internal_video_end\';\n                    }"

    .line 64
    iget-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->webView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {p2, p1}, Lcom/onevcat/uniwebview/UniWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 271
    new-instance p1, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;

    invoke-direct {p1, p2, p3}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;-><init>(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)V

    .line 272
    iget-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->activity:Landroid/app/Activity;

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/onevcat/uniwebview/UniWebViewFileChooserHandler;->startFileChooserProxyActivity(Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final receiveCameraCaptureResult(Landroid/net/Uri;)V
    .locals 3

    const-string v0, "fileUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "receiveCameraCaptureResult: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->filePathCallback:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->clearImagePickingState()V

    return-void
.end method

.method public final receiveFilePickerResult([Landroid/net/Uri;)V
    .locals 3

    const-string v0, "uris"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "receiveFilePickerResult: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->filePathCallback:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 284
    :cond_0
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->clearImagePickingState()V

    return-void
.end method

.method public final receiveUserCancelResult()V
    .locals 2

    .line 294
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "receiveUserCancelResult"

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->filePathCallback:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/net/Uri;

    .line 312
    check-cast v1, [Ljava/lang/Object;

    .line 295
    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->clearImagePickingState()V

    return-void
.end method

.method public final setAllowJavascriptOpeningNewWindow(Z)V
    .locals 0

    .line 199
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->allowJavascriptOpeningNewWindow:Z

    return-void
.end method

.method public final setPermissionTrustDomains(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->permissionTrustDomains:Ljava/util/Set;

    return-void
.end method
