.class public interface abstract Lshark/LeakingObjectFinder;
.super Ljava/lang/Object;
.source "LeakingObjectFinder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/LeakingObjectFinder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\"\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00e6\u0080\u0001\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007J\u0016\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&\u00a8\u0006\u0008"
    }
    d2 = {
        "Lshark/LeakingObjectFinder;",
        "",
        "findLeakingObjectIds",
        "",
        "",
        "graph",
        "Lshark/HeapGraph;",
        "Companion",
        "shark"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lshark/LeakingObjectFinder$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lshark/LeakingObjectFinder$Companion;->$$INSTANCE:Lshark/LeakingObjectFinder$Companion;

    sput-object v0, Lshark/LeakingObjectFinder;->Companion:Lshark/LeakingObjectFinder$Companion;

    return-void
.end method


# virtual methods
.method public abstract findLeakingObjectIds(Lshark/HeapGraph;)Ljava/util/Set;
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
.end method
