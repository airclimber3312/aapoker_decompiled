.class public final Lshark/internal/AndroidNativeSizeMapper;
.super Ljava/lang/Object;
.source "AndroidNativeSizeMapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidNativeSizeMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidNativeSizeMapper.kt\nshark/internal/AndroidNativeSizeMapper\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,48:1\n1110#2,2:49\n*E\n*S KotlinDebug\n*F\n+ 1 AndroidNativeSizeMapper.kt\nshark/internal/AndroidNativeSizeMapper\n*L\n23#1,2:49\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\t\n\u0002\u0010\u0008\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lshark/internal/AndroidNativeSizeMapper;",
        "",
        "graph",
        "Lshark/HeapGraph;",
        "(Lshark/HeapGraph;)V",
        "mapNativeSizes",
        "",
        "",
        "",
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
.field private final graph:Lshark/HeapGraph;


# direct methods
.method public constructor <init>(Lshark/HeapGraph;)V
    .locals 1

    const-string v0, "graph"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshark/internal/AndroidNativeSizeMapper;->graph:Lshark/HeapGraph;

    return-void
.end method


# virtual methods
.method public final mapNativeSizes()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 22
    iget-object v1, p0, Lshark/internal/AndroidNativeSizeMapper;->graph:Lshark/HeapGraph;

    const-string v2, "sun.misc.Cleaner"

    invoke-interface {v1, v2}, Lshark/HeapGraph;->findClassByName(Ljava/lang/String;)Lshark/HeapObject$HeapClass;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 23
    invoke-virtual {v1}, Lshark/HeapObject$HeapClass;->getDirectInstances()Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 49
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lshark/HeapObject$HeapInstance;

    const-string v4, "thunk"

    .line 24
    invoke-virtual {v3, v2, v4}, Lshark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lshark/HeapField;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 25
    invoke-virtual {v4}, Lshark/HeapField;->getValue()Lshark/HeapValue;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lshark/HeapValue;->getAsNonNullObjectId()Ljava/lang/Long;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v5

    :goto_1
    const-string v7, "java.lang.ref.Reference"

    const-string v8, "referent"

    .line 27
    invoke-virtual {v3, v7, v8}, Lshark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lshark/HeapField;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lshark/HeapField;->getValue()Lshark/HeapValue;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lshark/HeapValue;->getAsNonNullObjectId()Ljava/lang/Long;

    move-result-object v5

    :cond_2
    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    .line 29
    invoke-virtual {v4}, Lshark/HeapField;->getValue()Lshark/HeapValue;

    move-result-object v3

    invoke-virtual {v3}, Lshark/HeapValue;->getAsObject()Lshark/HeapObject;

    move-result-object v3

    .line 30
    instance-of v4, v3, Lshark/HeapObject$HeapInstance;

    if-eqz v4, :cond_0

    check-cast v3, Lshark/HeapObject$HeapInstance;

    const-string v4, "libcore.util.NativeAllocationRegistry$CleanerThunk"

    invoke-virtual {v3, v4}, Lshark/HeapObject$HeapInstance;->instanceOf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "this$0"

    .line 32
    invoke-virtual {v3, v4, v6}, Lshark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lshark/HeapField;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 33
    invoke-virtual {v3}, Lshark/HeapField;->getValue()Lshark/HeapValue;

    move-result-object v4

    invoke-virtual {v4}, Lshark/HeapValue;->isNonNullReference()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    invoke-virtual {v3}, Lshark/HeapField;->getValue()Lshark/HeapValue;

    move-result-object v3

    invoke-virtual {v3}, Lshark/HeapValue;->getAsObject()Lshark/HeapObject;

    move-result-object v3

    .line 35
    instance-of v4, v3, Lshark/HeapObject$HeapInstance;

    if-eqz v4, :cond_0

    check-cast v3, Lshark/HeapObject$HeapInstance;

    const-string v4, "libcore.util.NativeAllocationRegistry"

    invoke-virtual {v3, v4}, Lshark/HeapObject$HeapInstance;->instanceOf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 36
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    const-string v8, "size"

    .line 37
    invoke-virtual {v3, v4, v8}, Lshark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lshark/HeapField;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lshark/HeapField;->getValue()Lshark/HeapValue;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lshark/HeapValue;->getAsLong()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v7, v3

    :cond_4
    add-int/2addr v6, v7

    .line 39
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method
