.class final Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$safeBrowsingInit$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UniWebViewInterface.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->safeBrowsingInit(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic $name:Ljava/lang/String;

.field final synthetic $url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$safeBrowsingInit$1;->$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$safeBrowsingInit$1;->$name:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 595
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$safeBrowsingInit$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 596
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 597
    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$safeBrowsingInit$1;->$url:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    .line 599
    :cond_0
    new-instance v2, Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;

    const-string v3, "activity"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$safeBrowsingInit$1;->$name:Ljava/lang/String;

    new-instance v4, Lcom/onevcat/uniwebview/DefaultMessageSender;

    invoke-direct {v4}, Lcom/onevcat/uniwebview/DefaultMessageSender;-><init>()V

    check-cast v4, Lcom/onevcat/uniwebview/UnityMessageSender;

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/onevcat/uniwebview/UnityMessageSender;)V

    return-void
.end method
