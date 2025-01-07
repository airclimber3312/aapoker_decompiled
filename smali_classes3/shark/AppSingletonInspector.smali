.class public final Lshark/AppSingletonInspector;
.super Ljava/lang/Object;
.source "AppSingletonInspector.kt"

# interfaces
.implements Lshark/ObjectInspector;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppSingletonInspector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppSingletonInspector.kt\nshark/AppSingletonInspector\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,23:1\n1110#2,2:24\n*E\n*S KotlinDebug\n*F\n+ 1 AppSingletonInspector.kt\nshark/AppSingletonInspector\n*L\n16#1,2:24\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016R\u0018\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lshark/AppSingletonInspector;",
        "Lshark/ObjectInspector;",
        "singletonClasses",
        "",
        "",
        "([Ljava/lang/String;)V",
        "[Ljava/lang/String;",
        "inspect",
        "",
        "reporter",
        "Lshark/ObjectReporter;",
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
.field private final singletonClasses:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1

    const-string v0, "singletonClasses"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshark/AppSingletonInspector;->singletonClasses:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public inspect(Lshark/ObjectReporter;)V
    .locals 4

    const-string v0, "reporter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lshark/ObjectReporter;->getHeapObject()Lshark/HeapObject;

    move-result-object v0

    instance-of v0, v0, Lshark/HeapObject$HeapInstance;

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p1}, Lshark/ObjectReporter;->getHeapObject()Lshark/HeapObject;

    move-result-object v0

    check-cast v0, Lshark/HeapObject$HeapInstance;

    invoke-virtual {v0}, Lshark/HeapObject$HeapInstance;->getInstanceClass()Lshark/HeapObject$HeapClass;

    move-result-object v0

    invoke-virtual {v0}, Lshark/HeapObject$HeapClass;->getClassHierarchy()Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lshark/HeapObject$HeapClass;

    .line 17
    iget-object v2, p0, Lshark/AppSingletonInspector;->singletonClasses:[Ljava/lang/String;

    invoke-virtual {v1}, Lshark/HeapObject$HeapClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {p1}, Lshark/ObjectReporter;->getNotLeakingReasons()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lshark/HeapObject$HeapClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is an app singleton"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
