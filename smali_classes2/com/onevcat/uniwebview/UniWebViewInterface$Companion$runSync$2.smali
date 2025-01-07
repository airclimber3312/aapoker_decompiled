.class final Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$runSync$2;
.super Lkotlin/jvm/internal/Lambda;
.source "UniWebViewInterface.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewInterface$Companion;->runSync(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
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
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "it",
        "Lcom/onevcat/uniwebview/UniWebViewContainer;",
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
.field final synthetic $latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic $runner:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/onevcat/uniwebview/UniWebViewContainer;",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $value:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onevcat/uniwebview/UniWebViewContainer;",
            "+TT;>;",
            "Ljava/util/concurrent/CountDownLatch;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$runSync$2;->$value:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$runSync$2;->$runner:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$runSync$2;->$latch:Ljava/util/concurrent/CountDownLatch;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 657
    check-cast p1, Lcom/onevcat/uniwebview/UniWebViewContainer;

    invoke-virtual {p0, p1}, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$runSync$2;->invoke(Lcom/onevcat/uniwebview/UniWebViewContainer;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/onevcat/uniwebview/UniWebViewContainer;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$runSync$2;->$value:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$runSync$2;->$runner:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 659
    iget-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewInterface$Companion$runSync$2;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
