.class final Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$init$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UniWebViewInterface.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->init(Ljava/lang/String;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $height:I

.field final synthetic $name:Ljava/lang/String;

.field final synthetic $width:I

.field final synthetic $x:I

.field final synthetic $y:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$init$1;->$name:Ljava/lang/String;

    iput p2, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$init$1;->$x:I

    iput p3, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$init$1;->$y:I

    iput p4, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$init$1;->$width:I

    iput p5, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$init$1;->$height:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$init$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 8

    .line 36
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 37
    new-instance v7, Lcom/onevcat/uniwebview/UniWebViewContainer;

    const-string v0, "activity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$init$1;->$name:Ljava/lang/String;

    new-instance v0, Lcom/onevcat/uniwebview/DefaultMessageSender;

    invoke-direct {v0}, Lcom/onevcat/uniwebview/DefaultMessageSender;-><init>()V

    move-object v3, v0

    check-cast v3, Lcom/onevcat/uniwebview/UnityMessageSender;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/onevcat/uniwebview/UniWebViewContainer;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMessageSender;Lcom/onevcat/uniwebview/UniWebViewLoadingObserver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    invoke-virtual {v7}, Lcom/onevcat/uniwebview/UniWebViewContainer;->add()V

    .line 40
    iget v0, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$init$1;->$x:I

    iget v1, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$init$1;->$y:I

    iget v2, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$init$1;->$width:I

    iget v3, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$init$1;->$height:I

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/onevcat/uniwebview/UniWebViewContainer;->setFrame(IIII)V

    return-void
.end method
