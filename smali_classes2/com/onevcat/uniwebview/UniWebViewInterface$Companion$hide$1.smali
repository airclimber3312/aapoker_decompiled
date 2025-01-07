.class final Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$hide$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UniWebViewInterface.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->hide(Ljava/lang/String;ZIFLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onevcat/uniwebview/UniWebViewContainer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onevcat/uniwebview/UniWebViewContainer;",
        "invoke",
        "(Lcom/onevcat/uniwebview/UniWebViewContainer;)Ljava/lang/Boolean;"
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
.field final synthetic $duration:F

.field final synthetic $edge:I

.field final synthetic $fade:Z

.field final synthetic $identifier:Ljava/lang/String;


# direct methods
.method constructor <init>(ZIFLjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$hide$1;->$fade:Z

    iput p2, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$hide$1;->$edge:I

    iput p3, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$hide$1;->$duration:F

    iput-object p4, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$hide$1;->$identifier:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onevcat/uniwebview/UniWebViewContainer;)Ljava/lang/Boolean;
    .locals 7

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 150
    iget-boolean v3, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$hide$1;->$fade:Z

    iget v4, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$hide$1;->$edge:I

    iget v5, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$hide$1;->$duration:F

    iget-object v6, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$hide$1;->$identifier:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/onevcat/uniwebview/UniWebViewContainer;->show(ZZIFLjava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 149
    check-cast p1, Lcom/onevcat/uniwebview/UniWebViewContainer;

    invoke-virtual {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$hide$1;->invoke(Lcom/onevcat/uniwebview/UniWebViewContainer;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
