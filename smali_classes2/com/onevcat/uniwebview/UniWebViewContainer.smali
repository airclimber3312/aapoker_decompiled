.class public final Lcom/onevcat/uniwebview/UniWebViewContainer;
.super Ljava/lang/Object;
.source "UniWebViewContainer.kt"

# interfaces
.implements Lcom/onevcat/uniwebview/UniWebViewLoadingObserver;
.implements Lcom/onevcat/uniwebview/UniWebViewFrameLayoutTouchInspector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onevcat/uniwebview/UniWebViewContainer$Companion;,
        Lcom/onevcat/uniwebview/UniWebViewContainer$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUniWebViewContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UniWebViewContainer.kt\ncom/onevcat/uniwebview/UniWebViewContainer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,479:1\n1#2:480\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 n2\u00020\u00012\u00020\u0002:\u0001nB)\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\nJ\u0006\u00105\u001a\u000206J>\u00107\u001a\u00020\u001f2\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u0002092\u0006\u0010;\u001a\u0002092\u0006\u0010<\u001a\u0002092\u0006\u0010=\u001a\u00020\u000c2\u0006\u0010>\u001a\u00020\u000c2\u0006\u0010?\u001a\u00020\u0006J0\u0010@\u001a\u0002062\u0006\u0010A\u001a\u00020\u001f2\u0006\u0010B\u001a\u00020\u001f2\u0006\u0010C\u001a\u00020D2\u0006\u0010=\u001a\u00020\u000c2\u0006\u0010?\u001a\u00020\u0006H\u0002J\u0008\u0010E\u001a\u00020FH\u0002J\u0010\u0010G\u001a\u0002062\u0008\u0010H\u001a\u0004\u0018\u00010\u0006J\u0008\u0010I\u001a\u000206H\u0002J\"\u0010J\u001a\u0004\u0018\u00010K2\u0006\u0010A\u001a\u00020\u001f2\u0006\u0010B\u001a\u00020\u001f2\u0006\u0010L\u001a\u00020MH\u0002J\u0018\u0010N\u001a\u0002062\u0006\u0010A\u001a\u00020\u001f2\u0006\u0010?\u001a\u00020\u0006H\u0002J\u0008\u0010O\u001a\u000206H\u0002J \u0010P\u001a\u00020K2\u0006\u0010A\u001a\u00020\u001f2\u0006\u0010C\u001a\u00020D2\u0006\u0010L\u001a\u00020MH\u0002J(\u0010Q\u001a\u00020K2\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u0002092\u0006\u0010L\u001a\u00020M2\u0006\u0010R\u001a\u00020MH\u0002J$\u0010S\u001a\u0002062\u0008\u0010/\u001a\u0004\u0018\u00010T2\u0008\u0010U\u001a\u0004\u0018\u00010\u00062\u0006\u0010V\u001a\u000209H\u0016J\u001c\u0010W\u001a\u0002062\u0008\u0010/\u001a\u0004\u0018\u00010T2\u0008\u0010U\u001a\u0004\u0018\u00010\u0006H\u0016J.\u0010X\u001a\u0002062\u0008\u0010/\u001a\u0004\u0018\u00010T2\u0008\u0010U\u001a\u0004\u0018\u00010\u00062\u0006\u0010Y\u001a\u0002092\u0008\u0010Z\u001a\u0004\u0018\u00010\u0006H\u0016J\u0006\u0010[\u001a\u000206J\u0018\u0010\\\u001a\u0002062\u0006\u0010]\u001a\u00020\u00062\u0006\u0010Y\u001a\u000209H\u0002J&\u0010^\u001a\u0002062\u0006\u0010_\u001a\u00020\u000c2\u0006\u0010`\u001a\u00020\u000c2\u0006\u0010a\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cJ&\u0010b\u001a\u0002062\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u0002092\u0006\u0010;\u001a\u0002092\u0006\u0010<\u001a\u000209J\u0016\u0010c\u001a\u0002062\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u000209J\u0016\u0010d\u001a\u0002062\u0006\u0010;\u001a\u0002092\u0006\u0010<\u001a\u000209J\u0012\u0010e\u001a\u00020\u001f2\u0008\u0010f\u001a\u0004\u0018\u00010gH\u0016J\u0012\u0010h\u001a\u00020\u001f2\u0008\u0010i\u001a\u0004\u0018\u00010gH\u0016J.\u0010A\u001a\u00020\u001f2\u0006\u0010A\u001a\u00020\u001f2\u0006\u0010B\u001a\u00020\u001f2\u0006\u0010C\u001a\u0002092\u0006\u0010=\u001a\u00020\u000c2\u0006\u0010?\u001a\u00020\u0006J\u0008\u0010j\u001a\u000206H\u0002J(\u0010k\u001a\u00020K2\u0006\u0010;\u001a\u0002092\u0006\u0010<\u001a\u0002092\u0006\u0010L\u001a\u00020M2\u0006\u0010R\u001a\u00020MH\u0002J\u001c\u0010l\u001a\u0004\u0018\u00010\u00062\u0006\u0010m\u001a\u00020F2\u0008\u0010H\u001a\u0004\u0018\u00010\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010 \u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001c\u0010$\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010)\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010!\"\u0004\u0008+\u0010#R\u001a\u0010,\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010!\"\u0004\u0008.\u0010#R\u0016\u0010/\u001a\u0002008\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00102R\u0010\u00103\u001a\u0004\u0018\u000104X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006o"
    }
    d2 = {
        "Lcom/onevcat/uniwebview/UniWebViewContainer;",
        "Lcom/onevcat/uniwebview/UniWebViewLoadingObserver;",
        "Lcom/onevcat/uniwebview/UniWebViewFrameLayoutTouchInspector;",
        "activity",
        "Landroid/app/Activity;",
        "name",
        "",
        "messageSender",
        "Lcom/onevcat/uniwebview/UnityMessageSender;",
        "injectedObserver",
        "(Landroid/app/Activity;Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMessageSender;Lcom/onevcat/uniwebview/UniWebViewLoadingObserver;)V",
        "value",
        "",
        "alpha",
        "getAlpha",
        "()F",
        "setAlpha",
        "(F)V",
        "content",
        "Lcom/onevcat/uniwebview/UniWebViewFrameLayout;",
        "getContent",
        "()Lcom/onevcat/uniwebview/UniWebViewFrameLayout;",
        "currentAnimation",
        "Landroid/view/animation/AnimationSet;",
        "getCurrentAnimation",
        "()Landroid/view/animation/AnimationSet;",
        "setCurrentAnimation",
        "(Landroid/view/animation/AnimationSet;)V",
        "dialog",
        "Landroid/app/ProgressDialog;",
        "isLoading",
        "",
        "isUserInteractionEnabled",
        "()Z",
        "setUserInteractionEnabled",
        "(Z)V",
        "loadingText",
        "getLoadingText",
        "()Ljava/lang/String;",
        "setLoadingText",
        "(Ljava/lang/String;)V",
        "showLoadingDialogWhileLoading",
        "getShowLoadingDialogWhileLoading",
        "setShowLoadingDialogWhileLoading",
        "transparencyClickingThroughEnabled",
        "getTransparencyClickingThroughEnabled",
        "setTransparencyClickingThroughEnabled",
        "webView",
        "Lcom/onevcat/uniwebview/UniWebView;",
        "getWebView",
        "()Lcom/onevcat/uniwebview/UniWebView;",
        "workaround",
        "Lcom/onevcat/uniwebview/AndroidBug5497Workaround;",
        "add",
        "",
        "animateTo",
        "x",
        "",
        "y",
        "width",
        "height",
        "duration",
        "delay",
        "identifier",
        "animatedShow",
        "show",
        "fade",
        "edge",
        "Lcom/onevcat/uniwebview/AnimationEdge;",
        "captureCurrentView",
        "Landroid/graphics/Bitmap;",
        "captureSnapshot",
        "fileName",
        "dismissKeyboard",
        "fadeAnimation",
        "Landroid/view/animation/Animation;",
        "durationMillisecond",
        "",
        "finishShow",
        "hideProgressDialog",
        "moveAnimation",
        "moveToAnimation",
        "delayMillisecond",
        "onPageFinished",
        "Landroid/webkit/WebView;",
        "url",
        "httpStatusCode",
        "onPageStarted",
        "onReceivedError",
        "errorCode",
        "description",
        "remove",
        "reportCaptureSnapshotResult",
        "path",
        "setBackgroundColor",
        "red",
        "green",
        "blue",
        "setFrame",
        "setPosition",
        "setSize",
        "shouldInterceptTouchEvent",
        "ev",
        "Landroid/view/MotionEvent;",
        "shouldSendTouchEventToUnity",
        "event",
        "showProgressDialog",
        "sizeToAnimation",
        "writeBitmapToFile",
        "bitmap",
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
.field public static final Companion:Lcom/onevcat/uniwebview/UniWebViewContainer$Companion;

.field private static fullScreenVideoContainer:Landroid/view/ViewGroup;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

.field private currentAnimation:Landroid/view/animation/AnimationSet;

.field private dialog:Landroid/app/ProgressDialog;

.field private isLoading:Z

.field private isUserInteractionEnabled:Z

.field private loadingText:Ljava/lang/String;

.field private final messageSender:Lcom/onevcat/uniwebview/UnityMessageSender;

.field private final name:Ljava/lang/String;

.field private showLoadingDialogWhileLoading:Z

.field private transparencyClickingThroughEnabled:Z

.field private final webView:Lcom/onevcat/uniwebview/UniWebView;

.field private workaround:Lcom/onevcat/uniwebview/AndroidBug5497Workaround;


# direct methods
.method public static synthetic $r8$lambda$DA3iA5Aku-ybYmt_LESreWLb1p8(Lcom/onevcat/uniwebview/UniWebViewContainer;ZLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebViewContainer;->show$lambda-2(Lcom/onevcat/uniwebview/UniWebViewContainer;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tzEMwSfMeZrumefx-0bjRlTHBho(Lcom/onevcat/uniwebview/UniWebViewContainer;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebViewContainer;->webView$lambda-1$lambda-0(Lcom/onevcat/uniwebview/UniWebViewContainer;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewContainer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewContainer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onevcat/uniwebview/UniWebViewContainer;->Companion:Lcom/onevcat/uniwebview/UniWebViewContainer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMessageSender;Lcom/onevcat/uniwebview/UniWebViewLoadingObserver;)V
    .locals 9

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSender"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->activity:Landroid/app/Activity;

    .line 31
    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->name:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->messageSender:Lcom/onevcat/uniwebview/UnityMessageSender;

    .line 40
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    move-object v2, p0

    check-cast v2, Lcom/onevcat/uniwebview/UniWebViewFrameLayoutTouchInspector;

    invoke-direct {v0, v1, v2}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;-><init>(Landroid/content/Context;Lcom/onevcat/uniwebview/UniWebViewFrameLayoutTouchInspector;)V

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->isUserInteractionEnabled:Z

    .line 55
    sget-object v1, Lcom/onevcat/uniwebview/UniWebViewContainer;->fullScreenVideoContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Landroid/widget/FrameLayout;

    move-object v3, p1

    check-cast v3, Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/high16 v3, -0x1000000

    .line 58
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 60
    move-object v3, v1

    check-cast v3, Landroid/view/View;

    .line 61
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    .line 59
    invoke-virtual {p1, v3, v4}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    check-cast v1, Landroid/view/ViewGroup;

    sput-object v1, Lcom/onevcat/uniwebview/UniWebViewContainer;->fullScreenVideoContainer:Landroid/view/ViewGroup;

    :cond_0
    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->setX(F)V

    .line 70
    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->setY(F)V

    .line 72
    invoke-virtual {v0, v2}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->setVisibility(I)V

    .line 73
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->setId(I)V

    .line 77
    new-instance v1, Lcom/onevcat/uniwebview/UniWebView;

    .line 79
    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    .line 80
    sget-object v5, Lcom/onevcat/uniwebview/UniWebViewContainer;->fullScreenVideoContainer:Landroid/view/ViewGroup;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-nez p4, :cond_1

    .line 83
    move-object p4, p0

    check-cast p4, Lcom/onevcat/uniwebview/UniWebViewLoadingObserver;

    :cond_1
    move-object v8, p4

    move-object v2, v1

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    .line 77
    invoke-direct/range {v2 .. v8}, Lcom/onevcat/uniwebview/UniWebView;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMessageSender;Lcom/onevcat/uniwebview/UniWebViewLoadingObserver;)V

    .line 85
    new-instance p1, Lcom/onevcat/uniwebview/UniWebViewContainer$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/onevcat/uniwebview/UniWebViewContainer$$ExternalSyntheticLambda1;-><init>(Lcom/onevcat/uniwebview/UniWebViewContainer;)V

    invoke-virtual {v1, p1}, Lcom/onevcat/uniwebview/UniWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 84
    iput-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->webView:Lcom/onevcat/uniwebview/UniWebView;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMessageSender;Lcom/onevcat/uniwebview/UniWebViewLoadingObserver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 29
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onevcat/uniwebview/UniWebViewContainer;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMessageSender;Lcom/onevcat/uniwebview/UniWebViewLoadingObserver;)V

    return-void
.end method

.method public static final synthetic access$finishShow(Lcom/onevcat/uniwebview/UniWebViewContainer;ZLjava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebViewContainer;->finishShow(ZLjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getFullScreenVideoContainer$cp()Landroid/view/ViewGroup;
    .locals 1

    .line 29
    sget-object v0, Lcom/onevcat/uniwebview/UniWebViewContainer;->fullScreenVideoContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static final synthetic access$getMessageSender$p(Lcom/onevcat/uniwebview/UniWebViewContainer;)Lcom/onevcat/uniwebview/UnityMessageSender;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->messageSender:Lcom/onevcat/uniwebview/UnityMessageSender;

    return-object p0
.end method

.method public static final synthetic access$setFullScreenVideoContainer$cp(Landroid/view/ViewGroup;)V
    .locals 0

    .line 29
    sput-object p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->fullScreenVideoContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method private final animatedShow(ZZLcom/onevcat/uniwebview/AnimationEdge;FLjava/lang/String;)V
    .locals 3

    .line 198
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/16 v1, 0x3e8

    int-to-float v1, v1

    mul-float p4, p4, v1

    float-to-long v1, p4

    .line 201
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/onevcat/uniwebview/UniWebViewContainer;->fadeAnimation(ZZJ)Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 202
    invoke-virtual {v0, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 204
    :cond_0
    invoke-direct {p0, p1, p3, v1, v2}, Lcom/onevcat/uniwebview/UniWebViewContainer;->moveAnimation(ZLcom/onevcat/uniwebview/AnimationEdge;J)Landroid/view/animation/Animation;

    move-result-object p2

    .line 205
    invoke-virtual {v0, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 208
    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->currentAnimation:Landroid/view/animation/AnimationSet;

    .line 210
    new-instance p2, Lcom/onevcat/uniwebview/UniWebViewContainer$animatedShow$3;

    invoke-direct {p2, p0, p1, p5}, Lcom/onevcat/uniwebview/UniWebViewContainer$animatedShow$3;-><init>(Lcom/onevcat/uniwebview/UniWebViewContainer;ZLjava/lang/String;)V

    check-cast p2, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, p2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 218
    iget-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private final captureCurrentView()Landroid/graphics/Bitmap;
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 284
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 285
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    invoke-virtual {v2, v1}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->draw(Landroid/graphics/Canvas;)V

    const-string v1, "bitmap"

    .line 286
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final dismissKeyboard()V
    .locals 3

    .line 416
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->activity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 417
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->webView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method private final fadeAnimation(ZZJ)Landroid/view/animation/Animation;
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->getAlpha()F

    move-result v0

    :goto_0
    if-eqz p1, :cond_2

    .line 343
    iget-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->getAlpha()F

    move-result p2

    .line 344
    :cond_2
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v0, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 p2, 0x1

    .line 346
    invoke-virtual {p1, p2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 347
    invoke-virtual {p1, p3, p4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 345
    check-cast p1, Landroid/view/animation/Animation;

    return-object p1
.end method

.method private final finishShow(ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 223
    iget-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->messageSender:Lcom/onevcat/uniwebview/UnityMessageSender;

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->webView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onevcat/uniwebview/UnityMethod;->ShowTransitionFinished:Lcom/onevcat/uniwebview/UnityMethod;

    invoke-interface {p1, v0, v1, p2}, Lcom/onevcat/uniwebview/UnityMessageSender;->sendUnityMessage(Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMethod;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->setVisibility(I)V

    .line 226
    iget-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->messageSender:Lcom/onevcat/uniwebview/UnityMessageSender;

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->webView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onevcat/uniwebview/UnityMethod;->HideTransitionFinished:Lcom/onevcat/uniwebview/UnityMethod;

    invoke-interface {p1, v0, v1, p2}, Lcom/onevcat/uniwebview/UnityMessageSender;->sendUnityMessage(Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMethod;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final hideProgressDialog()V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 330
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Hide progress dialog."

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    :cond_1
    return-void
.end method

.method private final moveAnimation(ZLcom/onevcat/uniwebview/AnimationEdge;J)Landroid/view/animation/Animation;
    .locals 4

    .line 359
    invoke-static {p0}, Lcom/onevcat/uniwebview/UniWebViewContainer;->moveAnimation$displaySize(Lcom/onevcat/uniwebview/UniWebViewContainer;)Landroid/graphics/Point;

    move-result-object v0

    .line 363
    sget-object v1, Lcom/onevcat/uniwebview/UniWebViewContainer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/onevcat/uniwebview/AnimationEdge;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_4

    const/4 v3, 0x2

    if-eq p2, v3, :cond_3

    const/4 v3, 0x3

    if-eq p2, v3, :cond_2

    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    goto :goto_1

    .line 382
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 377
    :cond_1
    iget p2, v0, Landroid/graphics/Point;->x:I

    neg-int p2, p2

    goto :goto_0

    .line 374
    :cond_2
    iget p2, v0, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 369
    :cond_3
    iget p2, v0, Landroid/graphics/Point;->x:I

    :goto_0
    move v2, p2

    :goto_1
    const/4 p2, 0x0

    goto :goto_2

    .line 366
    :cond_4
    iget p2, v0, Landroid/graphics/Point;->y:I

    neg-int p2, p2

    :goto_2
    const/4 v0, 0x0

    if-ne p1, v1, :cond_5

    .line 387
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v2

    int-to-float p2, p2

    invoke-direct {p1, v2, v0, p2, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_3

    :cond_5
    if-nez p1, :cond_6

    .line 388
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v2

    int-to-float p2, p2

    invoke-direct {p1, v0, v2, v0, p2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 390
    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 391
    invoke-virtual {p1, p3, p4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 389
    check-cast p1, Landroid/view/animation/Animation;

    return-object p1

    .line 388
    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private static final moveAnimation$displaySize(Lcom/onevcat/uniwebview/UniWebViewContainer;)Landroid/graphics/Point;
    .locals 1

    .line 353
    iget-object p0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 354
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 355
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-object v0
.end method

.method private final moveToAnimation(IIJJ)Landroid/view/animation/Animation;
    .locals 2

    .line 396
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float p1, p1

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->getX()F

    move-result v1

    sub-float/2addr p1, v1

    int-to-float p2, p2

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->getY()F

    move-result v1

    sub-float/2addr p2, v1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1, p2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const/4 p1, 0x1

    .line 398
    invoke-virtual {v0, p1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 399
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 400
    invoke-virtual {v0, p5, p6}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 397
    check-cast v0, Landroid/view/animation/Animation;

    return-object v0
.end method

.method private final reportCaptureSnapshotResult(Ljava/lang/String;I)V
    .locals 2

    .line 278
    new-instance v0, Lcom/onevcat/uniwebview/UniWebViewResultPayload;

    const-string v1, ""

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2, p1}, Lcom/onevcat/uniwebview/UniWebViewResultPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->messageSender:Lcom/onevcat/uniwebview/UnityMessageSender;

    iget-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->name:Ljava/lang/String;

    sget-object v1, Lcom/onevcat/uniwebview/UnityMethod;->CaptureSnapshotFinished:Lcom/onevcat/uniwebview/UnityMethod;

    invoke-interface {p1, p2, v1, v0}, Lcom/onevcat/uniwebview/UnityMessageSender;->sendUnityMessage(Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMethod;Lcom/onevcat/uniwebview/UniWebViewResultPayload;)V

    return-void
.end method

.method private static final show$lambda-2(Lcom/onevcat/uniwebview/UniWebViewContainer;ZLjava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$identifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebViewContainer;->finishShow(ZLjava/lang/String;)V

    return-void
.end method

.method private final showProgressDialog()V
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->dialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 317
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 318
    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->dialog:Landroid/app/ProgressDialog;

    .line 321
    :cond_0
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->showLoadingDialogWhileLoading:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 322
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v1, "Show progress dialog."

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->loadingText:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/onevcat/uniwebview/R$string;->LOADING:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "activity.resources.getString(R.string.LOADING)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_3
    return-void
.end method

.method private final sizeToAnimation(IIJJ)Landroid/view/animation/Animation;
    .locals 7

    .line 405
    new-instance v6, Lcom/onevcat/uniwebview/ResizeAnimation;

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->getWidth()I

    move-result v2

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->getHeight()I

    move-result v4

    move-object v0, v6

    move v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/onevcat/uniwebview/ResizeAnimation;-><init>(Landroid/view/View;IIII)V

    const/4 p1, 0x1

    .line 407
    invoke-virtual {v6, p1}, Lcom/onevcat/uniwebview/ResizeAnimation;->setFillAfter(Z)V

    .line 408
    invoke-virtual {v6, p3, p4}, Lcom/onevcat/uniwebview/ResizeAnimation;->setDuration(J)V

    .line 409
    invoke-virtual {v6, p5, p6}, Lcom/onevcat/uniwebview/ResizeAnimation;->setStartOffset(J)V

    .line 406
    check-cast v6, Landroid/view/animation/Animation;

    return-object v6
.end method

.method private static final webView$lambda-1$lambda-0(Lcom/onevcat/uniwebview/UniWebViewContainer;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-boolean p0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->isUserInteractionEnabled:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final writeBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "Capture Snapshot done. File written in: "

    .line 290
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz p2, :cond_1

    .line 291
    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 294
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 296
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v3, p2

    check-cast v3, Ljava/io/OutputStream;

    const/16 v4, 0x64

    invoke-virtual {p1, v1, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 297
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 298
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 299
    sget-object p1, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onevcat/uniwebview/Logger;->info$uniwebview_release(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 302
    sget-object p2, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {p2}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error during save snapshot image: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onevcat/uniwebview/Logger;->critical$uniwebview_release(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 303
    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :goto_1
    return-object p1
.end method


# virtual methods
.method public final add()V
    .locals 3

    .line 89
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 93
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    check-cast v2, Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->webView:Lcom/onevcat/uniwebview/UniWebView;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    sget-object v0, Lcom/onevcat/uniwebview/ContainerManager;->Companion:Lcom/onevcat/uniwebview/ContainerManager$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/ContainerManager$Companion;->getInstance()Lcom/onevcat/uniwebview/ContainerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->name:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/onevcat/uniwebview/ContainerManager;->set(Lcom/onevcat/uniwebview/UniWebViewContainer;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting;->Companion:Lcom/onevcat/uniwebview/UniWebView$GlobalSetting$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView$GlobalSetting$Companion;->getEnableKeyboardAvoidance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->Companion:Lcom/onevcat/uniwebview/AndroidBug5497Workaround$Companion;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround$Companion;->assistFrameLayout(Landroid/widget/FrameLayout;Landroid/app/Activity;)Lcom/onevcat/uniwebview/AndroidBug5497Workaround;

    move-result-object v0

    iput-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->workaround:Lcom/onevcat/uniwebview/AndroidBug5497Workaround;

    :cond_0
    return-void
.end method

.method public final animateTo(IIIIFFLjava/lang/String;)Z
    .locals 14

    move-object v7, p0

    const-string v0, "identifier"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iget-object v0, v7, Lcom/onevcat/uniwebview/UniWebViewContainer;->currentAnimation:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    const-string v2, "Trying to animate web view but an other transition animation is not finished yet. Ignore this one."

    invoke-virtual {v0, v2}, Lcom/onevcat/uniwebview/Logger;->critical$uniwebview_release(Ljava/lang/String;)V

    return v1

    :cond_0
    const/16 v0, 0x3e8

    int-to-float v0, v0

    mul-float v2, p5, v0

    float-to-long v9, v2

    mul-float v0, v0, p6

    float-to-long v11, v0

    .line 239
    new-instance v13, Landroid/view/animation/AnimationSet;

    invoke-direct {v13, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-wide v3, v9

    move-wide v5, v11

    .line 240
    invoke-direct/range {v0 .. v6}, Lcom/onevcat/uniwebview/UniWebViewContainer;->moveToAnimation(IIJJ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    .line 241
    invoke-direct/range {v0 .. v6}, Lcom/onevcat/uniwebview/UniWebViewContainer;->sizeToAnimation(IIJJ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 243
    new-instance v9, Lcom/onevcat/uniwebview/UniWebViewContainer$animateTo$3;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/onevcat/uniwebview/UniWebViewContainer$animateTo$3;-><init>(Lcom/onevcat/uniwebview/UniWebViewContainer;IIIILjava/lang/String;)V

    check-cast v9, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v13, v9}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 252
    iget-object v0, v7, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    check-cast v13, Landroid/view/animation/Animation;

    invoke-virtual {v0, v13}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final captureSnapshot(Ljava/lang/String;)V
    .locals 1

    .line 268
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewContainer;->captureCurrentView()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 269
    invoke-direct {p0, v0, p1}, Lcom/onevcat/uniwebview/UniWebViewContainer;->writeBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 271
    invoke-direct {p0, p1, v0}, Lcom/onevcat/uniwebview/UniWebViewContainer;->reportCaptureSnapshotResult(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p1, ""

    const/16 v0, -0x3e8

    .line 273
    invoke-direct {p0, p1, v0}, Lcom/onevcat/uniwebview/UniWebViewContainer;->reportCaptureSnapshotResult(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public final getAlpha()F
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->getAlpha()F

    move-result v0

    return v0
.end method

.method public final getContent()Lcom/onevcat/uniwebview/UniWebViewFrameLayout;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    return-object v0
.end method

.method public final getCurrentAnimation()Landroid/view/animation/AnimationSet;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->currentAnimation:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method public final getLoadingText()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->loadingText:Ljava/lang/String;

    return-object v0
.end method

.method public final getShowLoadingDialogWhileLoading()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->showLoadingDialogWhileLoading:Z

    return v0
.end method

.method public final getTransparencyClickingThroughEnabled()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->transparencyClickingThroughEnabled:Z

    return v0
.end method

.method public final getWebView()Lcom/onevcat/uniwebview/UniWebView;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->webView:Lcom/onevcat/uniwebview/UniWebView;

    return-object v0
.end method

.method public final isUserInteractionEnabled()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->isUserInteractionEnabled:Z

    return v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;I)V
    .locals 2

    .line 430
    sget-object p1, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageFinished. URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onevcat/uniwebview/Logger;->info$uniwebview_release(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 431
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->isLoading:Z

    .line 432
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewContainer;->hideProgressDialog()V

    .line 433
    new-instance p1, Lcom/onevcat/uniwebview/UniWebViewResultPayload;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, ""

    if-nez p2, :cond_0

    move-object p2, v0

    :cond_0
    invoke-direct {p1, v0, p3, p2}, Lcom/onevcat/uniwebview/UniWebViewResultPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->messageSender:Lcom/onevcat/uniwebview/UnityMessageSender;

    iget-object p3, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->webView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {p3}, Lcom/onevcat/uniwebview/UniWebView;->getName()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/onevcat/uniwebview/UnityMethod;->PageFinished:Lcom/onevcat/uniwebview/UnityMethod;

    invoke-interface {p2, p3, v0, p1}, Lcom/onevcat/uniwebview/UnityMessageSender;->sendUnityMessage(Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMethod;Lcom/onevcat/uniwebview/UniWebViewResultPayload;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 423
    sget-object p1, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageStarted: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onevcat/uniwebview/Logger;->info$uniwebview_release(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 424
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->isLoading:Z

    .line 425
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewContainer;->showProgressDialog()V

    .line 426
    iget-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->messageSender:Lcom/onevcat/uniwebview/UnityMessageSender;

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->webView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onevcat/uniwebview/UnityMethod;->PageStarted:Lcom/onevcat/uniwebview/UnityMethod;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-interface {p1, v0, v1, p2}, Lcom/onevcat/uniwebview/UnityMessageSender;->sendUnityMessage(Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMethod;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 438
    sget-object p1, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceivedError. URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", error code: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", description: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onevcat/uniwebview/Logger;->critical$uniwebview_release(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 439
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->isLoading:Z

    .line 440
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewContainer;->hideProgressDialog()V

    .line 441
    new-instance p1, Lcom/onevcat/uniwebview/UniWebViewResultPayload;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    if-nez p4, :cond_0

    move-object p4, p3

    :cond_0
    invoke-direct {p1, p3, p2, p4}, Lcom/onevcat/uniwebview/UniWebViewResultPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->messageSender:Lcom/onevcat/uniwebview/UnityMessageSender;

    iget-object p3, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->webView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {p3}, Lcom/onevcat/uniwebview/UniWebView;->getName()Ljava/lang/String;

    move-result-object p3

    sget-object p4, Lcom/onevcat/uniwebview/UnityMethod;->PageErrorReceived:Lcom/onevcat/uniwebview/UnityMethod;

    invoke-interface {p2, p3, p4, p1}, Lcom/onevcat/uniwebview/UnityMessageSender;->sendUnityMessage(Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMethod;Lcom/onevcat/uniwebview/UniWebViewResultPayload;)V

    return-void
.end method

.method public final remove()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 104
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 106
    :cond_1
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewContainer;->dismissKeyboard()V

    .line 107
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->webView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->destroy()V

    .line 109
    sget-object v0, Lcom/onevcat/uniwebview/ContainerManager;->Companion:Lcom/onevcat/uniwebview/ContainerManager$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/ContainerManager$Companion;->getInstance()Lcom/onevcat/uniwebview/ContainerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/ContainerManager;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public final setAlpha(F)V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->setAlpha(F)V

    return-void
.end method

.method public final setBackgroundColor(FFFF)V
    .locals 1

    const/16 v0, 0xff

    int-to-float v0, v0

    mul-float p4, p4, v0

    float-to-int p4, p4

    mul-float p1, p1, v0

    float-to-int p1, p1

    mul-float p2, p2, v0

    float-to-int p2, p2

    mul-float p3, p3, v0

    float-to-int p3, p3

    .line 257
    invoke-static {p4, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 263
    iget-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->webView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {p2, p1}, Lcom/onevcat/uniwebview/UniWebView;->setBackgroundColor(I)V

    .line 264
    sget-object p2, Lcom/onevcat/uniwebview/UniWebViewContainer;->fullScreenVideoContainer:Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public final setCurrentAnimation(Landroid/view/animation/AnimationSet;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->currentAnimation:Landroid/view/animation/AnimationSet;

    return-void
.end method

.method public final setFrame(IIII)V
    .locals 4

    .line 114
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting web container frame to {("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/onevcat/uniwebview/UniWebViewContainer;->setPosition(II)V

    .line 116
    invoke-virtual {p0, p3, p4}, Lcom/onevcat/uniwebview/UniWebViewContainer;->setSize(II)V

    return-void
.end method

.method public final setLoadingText(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->loadingText:Ljava/lang/String;

    return-void
.end method

.method public final setPosition(II)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->setX(F)V

    .line 121
    iget-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->setY(F)V

    return-void
.end method

.method public final setShowLoadingDialogWhileLoading(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->showLoadingDialogWhileLoading:Z

    return-void
.end method

.method public final setSize(II)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 126
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 127
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 128
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 129
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x33

    .line 130
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 131
    iget-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->workaround:Lcom/onevcat/uniwebview/AndroidBug5497Workaround;

    if-eqz p1, :cond_0

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;->setTargetHeight(F)V

    :cond_0
    return-void

    .line 127
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setTransparencyClickingThroughEnabled(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->transparencyClickingThroughEnabled:Z

    return-void
.end method

.method public final setUserInteractionEnabled(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->isUserInteractionEnabled:Z

    return-void
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 447
    iget-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->transparencyClickingThroughEnabled:Z

    return p1
.end method

.method public shouldSendTouchEventToUnity(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 452
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->transparencyClickingThroughEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    .line 459
    :cond_1
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewContainer;->captureCurrentView()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 461
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_2

    goto :goto_0

    .line 464
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpg-float v2, v2, v3

    if-lez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    goto :goto_0

    .line 468
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    .line 469
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 470
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 471
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 472
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    .line 474
    sget-object v4, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v4}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Clicking on color: ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") @ "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/onevcat/uniwebview/Logger;->verbose$uniwebview_release(Ljava/lang/String;)V

    if-nez p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    :goto_0
    return v1
.end method

.method public final show(ZZIFLjava/lang/String;)Z
    .locals 9

    const-string v0, "identifier"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->webView:Lcom/onevcat/uniwebview/UniWebView;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebView;->get_webChromeClient$uniwebview_release()Lcom/onevcat/uniwebview/UniWebViewChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewChromeClient;->isVideoFullscreen()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 141
    sget-object p2, Lcom/onevcat/uniwebview/UniWebViewContainer;->fullScreenVideoContainer:Landroid/view/ViewGroup;

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return v1

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 148
    sget-object p1, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object p1

    const-string p2, "Showing web view is ignored since it is already visible."

    invoke-virtual {p1, p2}, Lcom/onevcat/uniwebview/Logger;->critical$uniwebview_release(Ljava/lang/String;)V

    return v2

    :cond_4
    if-nez v0, :cond_5

    if-nez p1, :cond_5

    .line 152
    sget-object p1, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object p1

    const-string p2, "Hiding web view is ignored since it is already invisible."

    invoke-virtual {p1, p2}, Lcom/onevcat/uniwebview/Logger;->critical$uniwebview_release(Ljava/lang/String;)V

    return v2

    .line 156
    :cond_5
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->currentAnimation:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_6

    .line 157
    sget-object p1, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object p1

    const-string p2, "Trying to show or hide web view but an other transition animation is not finished yet. Ignore this one."

    invoke-virtual {p1, p2}, Lcom/onevcat/uniwebview/Logger;->critical$uniwebview_release(Ljava/lang/String;)V

    return v2

    :cond_6
    if-eqz p1, :cond_7

    .line 163
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    invoke-virtual {v0, v2}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->setVisibility(I)V

    .line 164
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->isLoading:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewContainer;->showProgressDialog()V

    goto :goto_3

    .line 166
    :cond_7
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewContainer;->dismissKeyboard()V

    .line 167
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebViewContainer;->hideProgressDialog()V

    .line 172
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer;->content:Lcom/onevcat/uniwebview/UniWebViewFrameLayout;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->requestLayout()V

    .line 174
    sget-object v0, Lcom/onevcat/uniwebview/AnimationEdge;->Companion:Lcom/onevcat/uniwebview/AnimationEdge$Companion;

    invoke-virtual {v0, p3}, Lcom/onevcat/uniwebview/AnimationEdge$Companion;->valueOf(I)Lcom/onevcat/uniwebview/AnimationEdge;

    move-result-object v6

    if-nez p2, :cond_9

    .line 175
    sget-object p3, Lcom/onevcat/uniwebview/AnimationEdge;->NONE:Lcom/onevcat/uniwebview/AnimationEdge;

    if-eq v6, p3, :cond_a

    :cond_9
    const/4 p3, 0x0

    cmpl-float p3, p4, p3

    if-lez p3, :cond_a

    const/4 v2, 0x1

    :cond_a
    if-eqz v2, :cond_b

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v7, p4

    move-object v8, p5

    .line 177
    invoke-direct/range {v3 .. v8}, Lcom/onevcat/uniwebview/UniWebViewContainer;->animatedShow(ZZLcom/onevcat/uniwebview/AnimationEdge;FLjava/lang/String;)V

    goto :goto_4

    .line 185
    :cond_b
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance p3, Lcom/onevcat/uniwebview/UniWebViewContainer$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1, p5}, Lcom/onevcat/uniwebview/UniWebViewContainer$$ExternalSyntheticLambda0;-><init>(Lcom/onevcat/uniwebview/UniWebViewContainer;ZLjava/lang/String;)V

    const-wide/16 p4, 0x1

    invoke-virtual {p2, p3, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4
    return v1
.end method
