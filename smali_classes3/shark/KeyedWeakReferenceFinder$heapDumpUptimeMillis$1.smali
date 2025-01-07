.class final Lshark/KeyedWeakReferenceFinder$heapDumpUptimeMillis$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KeyedWeakReferenceFinder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lshark/KeyedWeakReferenceFinder;->heapDumpUptimeMillis(Lshark/HeapGraph;)Ljava/lang/Long;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeyedWeakReferenceFinder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeyedWeakReferenceFinder.kt\nshark/KeyedWeakReferenceFinder$heapDumpUptimeMillis$1\n+ 2 SharkLog.kt\nshark/SharkLog\n*L\n1#1,59:1\n34#2,3:60\n*E\n*S KotlinDebug\n*F\n+ 1 KeyedWeakReferenceFinder.kt\nshark/KeyedWeakReferenceFinder$heapDumpUptimeMillis$1\n*L\n27#1,3:60\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Long;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $graph:Lshark/HeapGraph;


# direct methods
.method constructor <init>(Lshark/HeapGraph;)V
    .locals 0

    iput-object p1, p0, Lshark/KeyedWeakReferenceFinder$heapDumpUptimeMillis$1;->$graph:Lshark/HeapGraph;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Long;
    .locals 3

    .line 20
    iget-object v0, p0, Lshark/KeyedWeakReferenceFinder$heapDumpUptimeMillis$1;->$graph:Lshark/HeapGraph;

    const-string v1, "leakcanary.KeyedWeakReference"

    invoke-interface {v0, v1}, Lshark/HeapGraph;->findClassByName(Ljava/lang/String;)Lshark/HeapObject$HeapClass;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "heapDumpUptimeMillis"

    .line 24
    invoke-virtual {v0, v2}, Lshark/HeapObject$HeapClass;->get(Ljava/lang/String;)Lshark/HeapField;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lshark/HeapField;->getValue()Lshark/HeapValue;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lshark/HeapValue;->getAsLong()Ljava/lang/Long;

    move-result-object v1

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 27
    sget-object v0, Lshark/SharkLog;->INSTANCE:Lshark/SharkLog;

    .line 60
    invoke-virtual {v0}, Lshark/SharkLog;->getLogger()Lshark/SharkLog$Logger;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "leakcanary.KeyedWeakReference.heapDumpUptimeMillis field not found"

    .line 28
    invoke-interface {v0, v2}, Lshark/SharkLog$Logger;->d(Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lshark/KeyedWeakReferenceFinder$heapDumpUptimeMillis$1;->invoke()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
