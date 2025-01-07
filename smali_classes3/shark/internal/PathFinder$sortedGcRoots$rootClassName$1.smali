.class final Lshark/internal/PathFinder$sortedGcRoots$rootClassName$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PathFinder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/internal/PathFinder;->sortedGcRoots()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lshark/HeapObject;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "graphObject",
        "Lshark/HeapObject;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lshark/internal/PathFinder$sortedGcRoots$rootClassName$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lshark/internal/PathFinder$sortedGcRoots$rootClassName$1;

    invoke-direct {v0}, Lshark/internal/PathFinder$sortedGcRoots$rootClassName$1;-><init>()V

    sput-object v0, Lshark/internal/PathFinder$sortedGcRoots$rootClassName$1;->INSTANCE:Lshark/internal/PathFinder$sortedGcRoots$rootClassName$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 61
    check-cast p1, Lshark/HeapObject;

    invoke-virtual {p0, p1}, Lshark/internal/PathFinder$sortedGcRoots$rootClassName$1;->invoke(Lshark/HeapObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lshark/HeapObject;)Ljava/lang/String;
    .locals 1

    const-string v0, "graphObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    instance-of v0, p1, Lshark/HeapObject$HeapClass;

    if-eqz v0, :cond_0

    .line 384
    check-cast p1, Lshark/HeapObject$HeapClass;

    invoke-virtual {p1}, Lshark/HeapObject$HeapClass;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 386
    :cond_0
    instance-of v0, p1, Lshark/HeapObject$HeapInstance;

    if-eqz v0, :cond_1

    .line 387
    check-cast p1, Lshark/HeapObject$HeapInstance;

    invoke-virtual {p1}, Lshark/HeapObject$HeapInstance;->getInstanceClassName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 389
    :cond_1
    instance-of v0, p1, Lshark/HeapObject$HeapObjectArray;

    if-eqz v0, :cond_2

    .line 390
    check-cast p1, Lshark/HeapObject$HeapObjectArray;

    invoke-virtual {p1}, Lshark/HeapObject$HeapObjectArray;->getArrayClassName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 392
    :cond_2
    instance-of v0, p1, Lshark/HeapObject$HeapPrimitiveArray;

    if-eqz v0, :cond_3

    .line 393
    check-cast p1, Lshark/HeapObject$HeapPrimitiveArray;

    invoke-virtual {p1}, Lshark/HeapObject$HeapPrimitiveArray;->getArrayClassName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
