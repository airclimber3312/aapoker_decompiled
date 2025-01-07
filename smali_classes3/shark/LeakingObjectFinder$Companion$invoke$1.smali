.class public final Lshark/LeakingObjectFinder$Companion$invoke$1;
.super Ljava/lang/Object;
.source "LeakingObjectFinder.kt"

# interfaces
.implements Lshark/LeakingObjectFinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/LeakingObjectFinder$Companion;->invoke(Lkotlin/jvm/functions/Function1;)Lshark/LeakingObjectFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLeakingObjectFinder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LeakingObjectFinder.kt\nshark/LeakingObjectFinder$Companion$invoke$1\n*L\n1#1,34:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "shark/LeakingObjectFinder$Companion$invoke$1",
        "Lshark/LeakingObjectFinder;",
        "findLeakingObjectIds",
        "",
        "",
        "graph",
        "Lshark/HeapGraph;",
        "shark"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lshark/LeakingObjectFinder$Companion$invoke$1;->$block:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findLeakingObjectIds(Lshark/HeapGraph;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/HeapGraph;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "graph"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lshark/LeakingObjectFinder$Companion$invoke$1;->$block:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method
