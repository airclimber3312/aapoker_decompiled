.class final Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$safeBrowsingSetToolbarColor$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UniWebViewInterface.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->safeBrowsingSetToolbarColor(Ljava/lang/String;FFF)V
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
.field final synthetic $blue:F

.field final synthetic $green:F

.field final synthetic $name:Ljava/lang/String;

.field final synthetic $red:F


# direct methods
.method constructor <init>(Ljava/lang/String;FFF)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$safeBrowsingSetToolbarColor$1;->$name:Ljava/lang/String;

    iput p2, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$safeBrowsingSetToolbarColor$1;->$red:F

    iput p3, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$safeBrowsingSetToolbarColor$1;->$green:F

    iput p4, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$safeBrowsingSetToolbarColor$1;->$blue:F

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 605
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$safeBrowsingSetToolbarColor$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 606
    sget-object v0, Lcom/onevcat/uniwebview/SafeBrowsingManager;->Companion:Lcom/onevcat/uniwebview/SafeBrowsingManager$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/SafeBrowsingManager$Companion;->getInstance()Lcom/onevcat/uniwebview/SafeBrowsingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$safeBrowsingSetToolbarColor$1;->$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/SafeBrowsingManager;->getUniWebViewSafeBrowsing(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 607
    iget v1, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$safeBrowsingSetToolbarColor$1;->$red:F

    iget v2, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$safeBrowsingSetToolbarColor$1;->$green:F

    iget v3, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$safeBrowsingSetToolbarColor$1;->$blue:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;->setToolbarColor(FFF)V

    :cond_0
    return-void
.end method
