.class public final Lcom/onevcat/uniwebview/UniWebViewContainer$animatedShow$3;
.super Ljava/lang/Object;
.source "UniWebViewContainer.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewContainer;->animatedShow(ZZLcom/onevcat/uniwebview/AnimationEdge;FLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/onevcat/uniwebview/UniWebViewContainer$animatedShow$3",
        "Landroid/view/animation/Animation$AnimationListener;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/view/animation/Animation;",
        "onAnimationRepeat",
        "onAnimationStart",
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
.field final synthetic $identifier:Ljava/lang/String;

.field final synthetic $show:Z

.field final synthetic this$0:Lcom/onevcat/uniwebview/UniWebViewContainer;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewContainer;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer$animatedShow$3;->this$0:Lcom/onevcat/uniwebview/UniWebViewContainer;

    iput-boolean p2, p0, Lcom/onevcat/uniwebview/UniWebViewContainer$animatedShow$3;->$show:Z

    iput-object p3, p0, Lcom/onevcat/uniwebview/UniWebViewContainer$animatedShow$3;->$identifier:Ljava/lang/String;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 214
    iget-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer$animatedShow$3;->this$0:Lcom/onevcat/uniwebview/UniWebViewContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/onevcat/uniwebview/UniWebViewContainer;->setCurrentAnimation(Landroid/view/animation/AnimationSet;)V

    .line 215
    iget-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer$animatedShow$3;->this$0:Lcom/onevcat/uniwebview/UniWebViewContainer;

    iget-boolean v0, p0, Lcom/onevcat/uniwebview/UniWebViewContainer$animatedShow$3;->$show:Z

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewContainer$animatedShow$3;->$identifier:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/onevcat/uniwebview/UniWebViewContainer;->access$finishShow(Lcom/onevcat/uniwebview/UniWebViewContainer;ZLjava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
