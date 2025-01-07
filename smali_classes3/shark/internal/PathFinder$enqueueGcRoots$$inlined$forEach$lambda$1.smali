.class final Lshark/internal/PathFinder$enqueueGcRoots$$inlined$forEach$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PathFinder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/internal/PathFinder;->enqueueGcRoots(Lshark/internal/PathFinder$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
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
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "shark/internal/PathFinder$enqueueGcRoots$1$threadName$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $this_enqueueGcRoots$inlined:Lshark/internal/PathFinder$State;

.field final synthetic $threadInstance:Lshark/HeapObject$HeapInstance;

.field final synthetic $threadNames$inlined:Ljava/util/Map;

.field final synthetic $threadsBySerialNumber$inlined:Ljava/util/Map;

.field final synthetic this$0:Lshark/internal/PathFinder;


# direct methods
.method constructor <init>(Lshark/HeapObject$HeapInstance;Lshark/internal/PathFinder;Lshark/internal/PathFinder$State;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lshark/internal/PathFinder$enqueueGcRoots$$inlined$forEach$lambda$1;->$threadInstance:Lshark/HeapObject$HeapInstance;

    iput-object p2, p0, Lshark/internal/PathFinder$enqueueGcRoots$$inlined$forEach$lambda$1;->this$0:Lshark/internal/PathFinder;

    iput-object p3, p0, Lshark/internal/PathFinder$enqueueGcRoots$$inlined$forEach$lambda$1;->$this_enqueueGcRoots$inlined:Lshark/internal/PathFinder$State;

    iput-object p4, p0, Lshark/internal/PathFinder$enqueueGcRoots$$inlined$forEach$lambda$1;->$threadsBySerialNumber$inlined:Ljava/util/Map;

    iput-object p5, p0, Lshark/internal/PathFinder$enqueueGcRoots$$inlined$forEach$lambda$1;->$threadNames$inlined:Ljava/util/Map;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lshark/internal/PathFinder$enqueueGcRoots$$inlined$forEach$lambda$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 3

    .line 319
    iget-object v0, p0, Lshark/internal/PathFinder$enqueueGcRoots$$inlined$forEach$lambda$1;->$threadInstance:Lshark/HeapObject$HeapInstance;

    const-class v1, Ljava/lang/Thread;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Lshark/HeapObject$HeapInstance;->get(Lkotlin/reflect/KClass;Ljava/lang/String;)Lshark/HeapField;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lshark/HeapField;->getValue()Lshark/HeapValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lshark/HeapValue;->readAsJavaString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 320
    :goto_0
    iget-object v1, p0, Lshark/internal/PathFinder$enqueueGcRoots$$inlined$forEach$lambda$1;->$threadNames$inlined:Ljava/util/Map;

    iget-object v2, p0, Lshark/internal/PathFinder$enqueueGcRoots$$inlined$forEach$lambda$1;->$threadInstance:Lshark/HeapObject$HeapInstance;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
