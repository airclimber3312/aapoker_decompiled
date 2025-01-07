.class public final Lcom/onevcat/uniwebview/UniWebViewFrameLayout;
.super Landroid/widget/FrameLayout;
.source "UniWebViewFrameLayout.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\u000c\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000bH\u0017R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onevcat/uniwebview/UniWebViewFrameLayout;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "inspector",
        "Lcom/onevcat/uniwebview/UniWebViewFrameLayoutTouchInspector;",
        "(Landroid/content/Context;Lcom/onevcat/uniwebview/UniWebViewFrameLayoutTouchInspector;)V",
        "onInterceptTouchEvent",
        "",
        "ev",
        "Landroid/view/MotionEvent;",
        "onTouchEvent",
        "event",
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
.field private final inspector:Lcom/onevcat/uniwebview/UniWebViewFrameLayoutTouchInspector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;-><init>(Landroid/content/Context;Lcom/onevcat/uniwebview/UniWebViewFrameLayoutTouchInspector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/onevcat/uniwebview/UniWebViewFrameLayoutTouchInspector;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->inspector:Lcom/onevcat/uniwebview/UniWebViewFrameLayoutTouchInspector;

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->inspector:Lcom/onevcat/uniwebview/UniWebViewFrameLayoutTouchInspector;

    if-nez v0, :cond_0

    .line 23
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 26
    :cond_0
    invoke-interface {v0, p1}, Lcom/onevcat/uniwebview/UniWebViewFrameLayoutTouchInspector;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 29
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->inspector:Lcom/onevcat/uniwebview/UniWebViewFrameLayoutTouchInspector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0, v1}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 37
    :cond_0
    invoke-interface {v0, p1}, Lcom/onevcat/uniwebview/UniWebViewFrameLayoutTouchInspector;->shouldSendTouchEventToUnity(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0, v1}, Lcom/onevcat/uniwebview/UniWebViewFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    :goto_0
    return p1
.end method
