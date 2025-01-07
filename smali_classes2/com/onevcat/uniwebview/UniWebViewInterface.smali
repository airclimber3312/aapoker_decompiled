.class public final Lcom/onevcat/uniwebview/UniWebViewInterface;
.super Ljava/lang/Object;
.source "UniWebViewInterface.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/onevcat/uniwebview/UniWebViewInterface;",
        "",
        "()V",
        "Companion",
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
.field public static final Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

.field public static final RUN_SYNC_WAIT_TIME_MS:J = 0x1388L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addJavaScript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->addJavaScript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final addPermissionTrustDomain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->addPermissionTrustDomain(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final addSslExceptionDomain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->addSslExceptionDomain(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final addUrlScheme(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->addUrlScheme(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final animateTo(Ljava/lang/String;IIIIFFLjava/lang/String;)Z
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->animateTo(Ljava/lang/String;IIIIFFLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final canGoBack(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->canGoBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final canGoForward(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->canGoForward(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final captureSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->captureSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final cleanCache(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->cleanCache(Ljava/lang/String;)V

    return-void
.end method

.method public static final clearCookies()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->clearCookies()V

    return-void
.end method

.method public static final clearHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->clearHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final destroy(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->destroy(Ljava/lang/String;)V

    return-void
.end method

.method public static final evaluateJavaScript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->evaluateJavaScript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->getUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getWebViewAlpha(Ljava/lang/String;)F
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->getWebViewAlpha(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static final goBack(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->goBack(Ljava/lang/String;)V

    return-void
.end method

.method public static final goForward(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->goForward(Ljava/lang/String;)V

    return-void
.end method

.method public static final hide(Ljava/lang/String;ZIFLjava/lang/String;)Z
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->hide(Ljava/lang/String;ZIFLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final hideAsync(Ljava/lang/String;ZIFLjava/lang/String;)V
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->hideAsync(Ljava/lang/String;ZIFLjava/lang/String;)V

    return-void
.end method

.method public static final init(Ljava/lang/String;IIII)V
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->init(Ljava/lang/String;IIII)V

    return-void
.end method

.method public static final isSafeBrowsingSupported()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->isSafeBrowsingSupported()Z

    move-result v0

    return v0
.end method

.method public static final isWebViewSupported()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->isWebViewSupported()Z

    move-result v0

    return v0
.end method

.method public static final load(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->load(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final loadHTMLString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->loadHTMLString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final prepare()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->prepare()V

    return-void
.end method

.method public static final print(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static final reload(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->reload(Ljava/lang/String;)V

    return-void
.end method

.method public static final removeCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->removeCookie(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final removeCookies(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->removeCookies(Ljava/lang/String;)V

    return-void
.end method

.method public static final removePermissionTrustDomain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->removePermissionTrustDomain(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final removeSslExceptionDomain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->removeSslExceptionDomain(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final removeUrlScheme(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->removeUrlScheme(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final safeBrowsingInit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->safeBrowsingInit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final safeBrowsingSetToolbarColor(Ljava/lang/String;FFF)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->safeBrowsingSetToolbarColor(Ljava/lang/String;FFF)V

    return-void
.end method

.method public static final safeBrowsingShow(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->safeBrowsingShow(Ljava/lang/String;)V

    return-void
.end method

.method public static final screenHeight()F
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->screenHeight()F

    move-result v0

    return v0
.end method

.method public static final screenWidth()F
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->screenWidth()F

    move-result v0

    return v0
.end method

.method public static final scrollTo(Ljava/lang/String;IIZ)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->scrollTo(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public static final setAcceptThirdPartyCookies(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setAcceptThirdPartyCookies(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final setAllowAutoPlay(Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setAllowAutoPlay(Z)V

    return-void
.end method

.method public static final setAllowFileAccess(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setAllowFileAccess(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final setAllowFileAccessFromFileURLs(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setAllowFileAccessFromFileURLs(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final setAllowHTTPAuthPopUpWindow(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setAllowHTTPAuthPopUpWindow(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final setAllowJavaScriptOpenWindow(Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setAllowJavaScriptOpenWindow(Z)V

    return-void
.end method

.method public static final setAllowUniversalAccessFromFileURLs(Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setAllowUniversalAccessFromFileURLs(Z)V

    return-void
.end method

.method public static final setBackgroundColor(Ljava/lang/String;FFFF)V
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setBackgroundColor(Ljava/lang/String;FFFF)V

    return-void
.end method

.method public static final setBouncesEnabled(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setBouncesEnabled(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final setCalloutEnabled(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setCalloutEnabled(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final setDefaultFontSize(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setDefaultFontSize(Ljava/lang/String;I)V

    return-void
.end method

.method public static final setDownloadEventForContextMenuEnabled(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setDownloadEventForContextMenuEnabled(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final setEnableKeyboardAvoidance(Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setEnableKeyboardAvoidance(Z)V

    return-void
.end method

.method public static final setFrame(Ljava/lang/String;IIII)V
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setFrame(Ljava/lang/String;IIII)V

    return-void
.end method

.method public static final setHeaderField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setHeaderField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final setHorizontalScrollBarEnabled(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setHorizontalScrollBarEnabled(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final setJavaScriptEnabled(Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setJavaScriptEnabled(Z)V

    return-void
.end method

.method public static final setLoadWithOverviewMode(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setLoadWithOverviewMode(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final setLogLevel(I)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setLogLevel(I)V

    return-void
.end method

.method public static final setOpenLinksInExternalBrowser(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setOpenLinksInExternalBrowser(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final setPosition(Ljava/lang/String;II)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setPosition(Ljava/lang/String;II)V

    return-void
.end method

.method public static final setShowSpinnerWhileLoading(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setShowSpinnerWhileLoading(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final setSize(Ljava/lang/String;II)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setSize(Ljava/lang/String;II)V

    return-void
.end method

.method public static final setSpinnerText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setSpinnerText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final setSupportMultipleWindows(Ljava/lang/String;ZZ)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setSupportMultipleWindows(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static final setTextZoom(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setTextZoom(Ljava/lang/String;I)V

    return-void
.end method

.method public static final setTransparencyClickingThroughEnabled(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setTransparencyClickingThroughEnabled(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final setUseWideViewPort(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setUseWideViewPort(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final setUserAgent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setUserAgent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final setUserInteractionEnabled(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setUserInteractionEnabled(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final setVerticalScrollBarEnabled(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setVerticalScrollBarEnabled(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final setWebContentsDebuggingEnabled(Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setWebContentsDebuggingEnabled(Z)V

    return-void
.end method

.method public static final setWebViewAlpha(Ljava/lang/String;F)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setWebViewAlpha(Ljava/lang/String;F)V

    return-void
.end method

.method public static final setZoomEnabled(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->setZoomEnabled(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final show(Ljava/lang/String;ZIFLjava/lang/String;)Z
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->show(Ljava/lang/String;ZIFLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final showAsync(Ljava/lang/String;ZIFLjava/lang/String;)V
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->showAsync(Ljava/lang/String;ZIFLjava/lang/String;)V

    return-void
.end method

.method public static final stop(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewInterface;->Companion:Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;

    invoke-virtual {v0, p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->stop(Ljava/lang/String;)V

    return-void
.end method
