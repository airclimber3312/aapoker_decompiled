.class public final Lshark/internal/PathFinder$VisitTracker$Visited;
.super Lshark/internal/PathFinder$VisitTracker;
.source "PathFinder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/internal/PathFinder$VisitTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Visited"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lshark/internal/PathFinder$VisitTracker$Visited;",
        "Lshark/internal/PathFinder$VisitTracker;",
        "expectedElements",
        "",
        "(I)V",
        "visitedSet",
        "Lshark/internal/hppc/LongScatterSet;",
        "visited",
        "",
        "objectId",
        "",
        "parentObjectId",
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
.field private final visitedSet:Lshark/internal/hppc/LongScatterSet;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, v0}, Lshark/internal/PathFinder$VisitTracker;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 102
    new-instance v0, Lshark/internal/hppc/LongScatterSet;

    invoke-direct {v0, p1}, Lshark/internal/hppc/LongScatterSet;-><init>(I)V

    iput-object v0, p0, Lshark/internal/PathFinder$VisitTracker$Visited;->visitedSet:Lshark/internal/hppc/LongScatterSet;

    return-void
.end method


# virtual methods
.method public visited(JJ)Z
    .locals 0

    .line 107
    iget-object p3, p0, Lshark/internal/PathFinder$VisitTracker$Visited;->visitedSet:Lshark/internal/hppc/LongScatterSet;

    invoke-virtual {p3, p1, p2}, Lshark/internal/hppc/LongScatterSet;->add(J)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
