.class public final Lcom/onevcat/uniwebview/UniWebViewChromeClient$onCreateWindow$EmptyObserver;
.super Ljava/lang/Object;
.source "UniWebViewChromeClient.kt"

# interfaces
.implements Lcom/onevcat/uniwebview/UniWebViewLoadingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmptyObserver"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "com/onevcat/uniwebview/UniWebViewChromeClient$onCreateWindow$EmptyObserver",
        "Lcom/onevcat/uniwebview/UniWebViewLoadingObserver;",
        "()V",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;I)V
    .locals 0

    .line 209
    invoke-static {p0, p1, p2, p3}, Lcom/onevcat/uniwebview/UniWebViewLoadingObserver$DefaultImpls;->onPageFinished(Lcom/onevcat/uniwebview/UniWebViewLoadingObserver;Landroid/webkit/WebView;Ljava/lang/String;I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 209
    invoke-static {p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebViewLoadingObserver$DefaultImpls;->onPageStarted(Lcom/onevcat/uniwebview/UniWebViewLoadingObserver;Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 209
    invoke-static {p0, p1, p2, p3, p4}, Lcom/onevcat/uniwebview/UniWebViewLoadingObserver$DefaultImpls;->onReceivedError(Lcom/onevcat/uniwebview/UniWebViewLoadingObserver;Landroid/webkit/WebView;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
