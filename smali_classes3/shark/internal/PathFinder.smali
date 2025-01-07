.class public final Lshark/internal/PathFinder;
.super Ljava/lang/Object;
.source "PathFinder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/internal/PathFinder$PathFindingResults;,
        Lshark/internal/PathFinder$VisitTracker;,
        Lshark/internal/PathFinder$State;,
        Lshark/internal/PathFinder$InstanceRefField;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPathFinder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathFinder.kt\nshark/internal/PathFinder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,721:1\n1648#2,2:722\n1648#2,2:724\n706#2:726\n783#2,2:727\n1366#2:729\n1435#2,3:730\n915#2,2:735\n1648#2,2:737\n1657#2,3:742\n215#2,2:745\n706#2:749\n783#2,2:750\n1648#2,2:752\n1110#3,2:733\n1029#3,2:747\n3633#4:739\n4082#4,2:740\n*E\n*S KotlinDebug\n*F\n+ 1 PathFinder.kt\nshark/internal/PathFinder\n*L\n253#1,2:722\n305#1,2:724\n399#1:726\n399#1,2:727\n404#1:729\n404#1,3:730\n479#1,2:735\n481#1,2:737\n595#1,3:742\n653#1,2:745\n163#1:749\n163#1,2:750\n169#1,2:752\n464#1,2:733\n678#1,2:747\n592#1:739\n592#1,2:740\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0004:;<=B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\u001a\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u001c\u0010\u0014\u001a\u00020\u00152\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u0019\u001a\u00020\u001aJ\u001a\u0010\u001b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001e0\u001c0\u0007H\u0002J\u001a\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0007*\u00020\u00132\u0006\u0010 \u001a\u00020\u0018H\u0002J\u0014\u0010!\u001a\u00020\"*\u00020#2\u0006\u0010$\u001a\u00020%H\u0002J\u000c\u0010&\u001a\u00020\"*\u00020#H\u0002J\u000c\u0010\u0014\u001a\u00020\u0015*\u00020#H\u0002J\u0014\u0010\'\u001a\u00020\u0011*\u00020\u00032\u0006\u0010(\u001a\u00020)H\u0002J\u000c\u0010*\u001a\u00020%*\u00020#H\u0002J \u0010+\u001a\u0008\u0012\u0004\u0012\u00020-0,*\u00020.2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0007H\u0002J\u0012\u00100\u001a\u000201*\u0008\u0012\u0004\u0012\u00020\u00180\u0017H\u0002J\u001c\u00102\u001a\u00020\"*\u00020#2\u0006\u00103\u001a\u00020\u00132\u0006\u00104\u001a\u00020%H\u0002J\u001c\u00105\u001a\u00020\"*\u00020#2\u0006\u00106\u001a\u00020.2\u0006\u00104\u001a\u00020%H\u0002J\u001c\u00107\u001a\u00020\"*\u00020#2\u0006\u00108\u001a\u0002092\u0006\u00104\u001a\u00020%H\u0002R&\u0010\n\u001a\u001a\u0012\u0004\u0012\u00020\u000c\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00080\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00080\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u000e\u001a\u001a\u0012\u0004\u0012\u00020\u000c\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00080\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00080\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006>"
    }
    d2 = {
        "Lshark/internal/PathFinder;",
        "",
        "graph",
        "Lshark/HeapGraph;",
        "listener",
        "Lshark/OnAnalysisProgressListener;",
        "referenceMatchers",
        "",
        "Lshark/ReferenceMatcher;",
        "(Lshark/HeapGraph;Lshark/OnAnalysisProgressListener;Ljava/util/List;)V",
        "fieldNameByClassName",
        "",
        "",
        "jniGlobalReferenceMatchers",
        "staticFieldNameByClassName",
        "threadNameReferenceMatchers",
        "determineSizeOfObjectInstances",
        "",
        "objectClass",
        "Lshark/HeapObject$HeapClass;",
        "findPathsFromGcRoots",
        "Lshark/internal/PathFinder$PathFindingResults;",
        "leakingObjectIds",
        "",
        "",
        "computeRetainedHeapSize",
        "",
        "sortedGcRoots",
        "Lkotlin/Pair;",
        "Lshark/HeapObject;",
        "Lshark/GcRoot;",
        "classHierarchyWithoutJavaLangObject",
        "javaLangObjectId",
        "enqueue",
        "",
        "Lshark/internal/PathFinder$State;",
        "node",
        "Lshark/internal/ReferencePathNode;",
        "enqueueGcRoots",
        "getRecordSize",
        "field",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;",
        "poll",
        "readAllNonNullFieldsOfReferenceType",
        "",
        "Lshark/internal/PathFinder$InstanceRefField;",
        "Lshark/HeapObject$HeapInstance;",
        "classHierarchy",
        "toLongScatterSet",
        "Lshark/internal/hppc/LongScatterSet;",
        "visitClassRecord",
        "heapClass",
        "parent",
        "visitInstance",
        "instance",
        "visitObjectArray",
        "objectArray",
        "Lshark/HeapObject$HeapObjectArray;",
        "InstanceRefField",
        "PathFindingResults",
        "State",
        "VisitTracker",
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
.field private final fieldNameByClassName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lshark/ReferenceMatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final graph:Lshark/HeapGraph;

.field private final jniGlobalReferenceMatchers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lshark/ReferenceMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lshark/OnAnalysisProgressListener;

.field private final staticFieldNameByClassName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lshark/ReferenceMatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final threadNameReferenceMatchers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lshark/ReferenceMatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lshark/HeapGraph;Lshark/OnAnalysisProgressListener;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/HeapGraph;",
            "Lshark/OnAnalysisProgressListener;",
            "Ljava/util/List<",
            "+",
            "Lshark/ReferenceMatcher;",
            ">;)V"
        }
    .end annotation

    const-string v0, "graph"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referenceMatchers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshark/internal/PathFinder;->graph:Lshark/HeapGraph;

    iput-object p2, p0, Lshark/internal/PathFinder;->listener:Lshark/OnAnalysisProgressListener;

    .line 158
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    .line 159
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    .line 160
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 161
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 163
    check-cast p3, Ljava/lang/Iterable;

    .line 749
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 750
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lshark/ReferenceMatcher;

    .line 164
    instance-of v5, v4, Lshark/IgnoredReferenceMatcher;

    if-nez v5, :cond_2

    instance-of v5, v4, Lshark/LibraryLeakReferenceMatcher;

    if-eqz v5, :cond_1

    check-cast v4, Lshark/LibraryLeakReferenceMatcher;

    invoke-virtual {v4}, Lshark/LibraryLeakReferenceMatcher;->getPatternApplies()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    .line 165
    iget-object v5, p0, Lshark/internal/PathFinder;->graph:Lshark/HeapGraph;

    invoke-interface {v4, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 751
    :cond_3
    check-cast v2, Ljava/util/List;

    .line 169
    check-cast v2, Ljava/lang/Iterable;

    .line 752
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lshark/ReferenceMatcher;

    .line 170
    invoke-virtual {v2}, Lshark/ReferenceMatcher;->getPattern()Lshark/ReferencePattern;

    move-result-object v3

    .line 171
    instance-of v4, v3, Lshark/ReferencePattern$JavaLocalPattern;

    if-eqz v4, :cond_5

    .line 172
    check-cast v3, Lshark/ReferencePattern$JavaLocalPattern;

    invoke-virtual {v3}, Lshark/ReferencePattern$JavaLocalPattern;->getThreadName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 174
    :cond_5
    instance-of v4, v3, Lshark/ReferencePattern$StaticFieldPattern;

    if-eqz v4, :cond_7

    .line 175
    check-cast v3, Lshark/ReferencePattern$StaticFieldPattern;

    invoke-virtual {v3}, Lshark/ReferencePattern$StaticFieldPattern;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_6

    goto :goto_4

    .line 177
    :cond_6
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v4, Ljava/util/Map;

    .line 178
    invoke-virtual {v3}, Lshark/ReferencePattern$StaticFieldPattern;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :goto_4
    invoke-virtual {v3}, Lshark/ReferencePattern$StaticFieldPattern;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 183
    :cond_7
    instance-of v4, v3, Lshark/ReferencePattern$InstanceFieldPattern;

    if-eqz v4, :cond_9

    .line 184
    check-cast v3, Lshark/ReferencePattern$InstanceFieldPattern;

    invoke-virtual {v3}, Lshark/ReferencePattern$InstanceFieldPattern;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_8

    goto :goto_5

    .line 186
    :cond_8
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v4, Ljava/util/Map;

    .line 187
    invoke-virtual {v3}, Lshark/ReferencePattern$InstanceFieldPattern;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :goto_5
    invoke-virtual {v3}, Lshark/ReferencePattern$InstanceFieldPattern;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 192
    :cond_9
    instance-of v4, v3, Lshark/ReferencePattern$NativeGlobalVariablePattern;

    if-eqz v4, :cond_4

    .line 193
    check-cast v3, Lshark/ReferencePattern$NativeGlobalVariablePattern;

    invoke-virtual {v3}, Lshark/ReferencePattern$NativeGlobalVariablePattern;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 197
    :cond_a
    iput-object p1, p0, Lshark/internal/PathFinder;->fieldNameByClassName:Ljava/util/Map;

    .line 198
    iput-object p2, p0, Lshark/internal/PathFinder;->staticFieldNameByClassName:Ljava/util/Map;

    .line 199
    iput-object v0, p0, Lshark/internal/PathFinder;->threadNameReferenceMatchers:Ljava/util/Map;

    .line 200
    iput-object v1, p0, Lshark/internal/PathFinder;->jniGlobalReferenceMatchers:Ljava/util/Map;

    return-void
.end method

.method private final classHierarchyWithoutJavaLangObject(Lshark/HeapObject$HeapClass;J)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/HeapObject$HeapClass;",
            "J)",
            "Ljava/util/List<",
            "Lshark/HeapObject$HeapClass;",
            ">;"
        }
    .end annotation

    .line 564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    :goto_0
    if-eqz p1, :cond_0

    .line 566
    invoke-virtual {p1}, Lshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-eqz v3, :cond_0

    .line 567
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 568
    invoke-virtual {p1}, Lshark/HeapObject$HeapClass;->getSuperclass()Lshark/HeapObject$HeapClass;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final determineSizeOfObjectInstances(Lshark/HeapObject$HeapClass;Lshark/HeapGraph;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 236
    invoke-virtual {p1}, Lshark/HeapObject$HeapClass;->readFieldsByteSize()I

    move-result p1

    .line 239
    invoke-interface {p2}, Lshark/HeapGraph;->getIdentifierByteSize()I

    move-result p2

    sget-object v1, Lshark/PrimitiveType;->INT:Lshark/PrimitiveType;

    invoke-virtual {v1}, Lshark/PrimitiveType;->getByteSize()I

    move-result v1

    add-int/2addr p2, v1

    if-ne p1, p2, :cond_0

    move v0, p2

    :cond_0
    return v0
.end method

.method private final enqueue(Lshark/internal/PathFinder$State;Lshark/internal/ReferencePathNode;)V
    .locals 10

    .line 612
    invoke-virtual {p2}, Lshark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 622
    :cond_0
    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getVisitingLast()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_3

    .line 618
    instance-of v0, p2, Lshark/internal/ReferencePathNode$LibraryLeakNode;

    if-nez v0, :cond_3

    .line 621
    instance-of v0, p2, Lshark/internal/ReferencePathNode$RootNode;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lshark/internal/ReferencePathNode$RootNode;

    invoke-virtual {v0}, Lshark/internal/ReferencePathNode$RootNode;->getGcRoot()Lshark/GcRoot;

    move-result-object v0

    instance-of v0, v0, Lshark/GcRoot$ThreadObject;

    if-nez v0, :cond_3

    .line 622
    :cond_1
    instance-of v0, p2, Lshark/internal/ReferencePathNode$ChildNode$NormalNode;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lshark/internal/ReferencePathNode$ChildNode$NormalNode;

    invoke-virtual {v0}, Lshark/internal/ReferencePathNode$ChildNode$NormalNode;->getParent()Lshark/internal/ReferencePathNode;

    move-result-object v5

    instance-of v5, v5, Lshark/internal/ReferencePathNode$RootNode;

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lshark/internal/ReferencePathNode$ChildNode$NormalNode;->getParent()Lshark/internal/ReferencePathNode;

    move-result-object v0

    check-cast v0, Lshark/internal/ReferencePathNode$RootNode;

    invoke-virtual {v0}, Lshark/internal/ReferencePathNode$RootNode;->getGcRoot()Lshark/GcRoot;

    move-result-object v0

    instance-of v0, v0, Lshark/GcRoot$JavaFrame;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 624
    :goto_1
    instance-of v5, p2, Lshark/internal/ReferencePathNode$RootNode;

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_1a

    .line 627
    move-object v2, p2

    check-cast v2, Lshark/internal/ReferencePathNode$ChildNode;

    invoke-virtual {v2}, Lshark/internal/ReferencePathNode$ChildNode;->getParent()Lshark/internal/ReferencePathNode;

    move-result-object v2

    invoke-virtual {v2}, Lshark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v2

    .line 630
    :goto_2
    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getVisitTracker()Lshark/internal/PathFinder$VisitTracker;

    move-result-object v5

    invoke-virtual {p2}, Lshark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v2, v3}, Lshark/internal/PathFinder$VisitTracker;->visited(JJ)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v0, :cond_5

    return-void

    .line 638
    :cond_5
    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getToVisitSet()Lshark/internal/hppc/LongScatterSet;

    move-result-object v3

    invoke-virtual {p2}, Lshark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lshark/internal/hppc/LongScatterSet;->contains(J)Z

    move-result v3

    if-eqz v3, :cond_6

    return-void

    .line 642
    :cond_6
    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getToVisitLastSet()Lshark/internal/hppc/LongScatterSet;

    move-result-object v3

    invoke-virtual {p2}, Lshark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lshark/internal/hppc/LongScatterSet;->contains(J)Z

    move-result v3

    if-nez v3, :cond_7

    return-void

    :cond_7
    if-eqz v2, :cond_b

    .line 651
    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getToVisitQueue()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 652
    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getToVisitSet()Lshark/internal/hppc/LongScatterSet;

    move-result-object v0

    invoke-virtual {p2}, Lshark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lshark/internal/hppc/LongScatterSet;->add(J)Z

    .line 653
    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getToVisitLastQueue()Ljava/util/Deque;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 745
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lshark/internal/ReferencePathNode;

    .line 653
    invoke-virtual {v2}, Lshark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v5

    invoke-virtual {p2}, Lshark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-nez v3, :cond_9

    const/4 v3, 0x1

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_8

    .line 654
    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getToVisitLastQueue()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 655
    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getToVisitLastSet()Lshark/internal/hppc/LongScatterSet;

    move-result-object p1

    invoke-virtual {p2}, Lshark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lshark/internal/hppc/LongScatterSet;->remove(J)Z

    return-void

    .line 746
    :cond_a
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "Collection contains no element matching the predicate."

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 659
    :cond_b
    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getLeakingObjectIds()Lshark/internal/hppc/LongScatterSet;

    move-result-object v2

    invoke-virtual {p2}, Lshark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lshark/internal/hppc/LongScatterSet;->contains(J)Z

    move-result v2

    if-nez v2, :cond_18

    .line 662
    iget-object v2, p0, Lshark/internal/PathFinder;->graph:Lshark/HeapGraph;

    invoke-virtual {p2}, Lshark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v5

    invoke-interface {v2, v5, v6}, Lshark/HeapGraph;->findObjectById(J)Lshark/HeapObject;

    move-result-object v2

    .line 663
    instance-of v3, v2, Lshark/HeapObject$HeapClass;

    if-eqz v3, :cond_c

    goto/16 :goto_8

    .line 664
    :cond_c
    instance-of v3, v2, Lshark/HeapObject$HeapInstance;

    if-eqz v3, :cond_14

    .line 666
    check-cast v2, Lshark/HeapObject$HeapInstance;

    invoke-virtual {v2}, Lshark/HeapObject$HeapInstance;->isPrimitiveWrapper()Z

    move-result v3

    if-eqz v3, :cond_d

    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_8

    .line 667
    :cond_d
    invoke-virtual {v2}, Lshark/HeapObject$HeapInstance;->getInstanceClassName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "java.lang.String"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_4

    .line 677
    :cond_e
    invoke-virtual {v2}, Lshark/HeapObject$HeapInstance;->getInstanceClass()Lshark/HeapObject$HeapClass;

    move-result-object v3

    invoke-virtual {v3}, Lshark/HeapObject$HeapClass;->getInstanceByteSize()I

    move-result v3

    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getSizeOfObjectInstances()I

    move-result v5

    if-gt v3, v5, :cond_f

    goto :goto_4

    .line 678
    :cond_f
    invoke-virtual {v2}, Lshark/HeapObject$HeapInstance;->getInstanceClass()Lshark/HeapObject$HeapClass;

    move-result-object v2

    invoke-virtual {v2}, Lshark/HeapObject$HeapClass;->getClassHierarchy()Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 747
    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lshark/HeapObject$HeapClass;

    .line 679
    invoke-virtual {v3}, Lshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v5

    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getJavaLangObjectId()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-eqz v9, :cond_12

    invoke-virtual {v3}, Lshark/HeapObject$HeapClass;->getHasReferenceInstanceFields()Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_5

    :cond_11
    const/4 v3, 0x0

    goto :goto_6

    :cond_12
    :goto_5
    const/4 v3, 0x1

    :goto_6
    if-nez v3, :cond_10

    const/4 v2, 0x0

    goto :goto_7

    :cond_13
    const/4 v2, 0x1

    :goto_7
    if-eqz v2, :cond_16

    goto :goto_4

    .line 683
    :cond_14
    instance-of v3, v2, Lshark/HeapObject$HeapObjectArray;

    if-eqz v3, :cond_15

    .line 684
    check-cast v2, Lshark/HeapObject$HeapObjectArray;

    invoke-static {v2}, Lshark/internal/PathFinderKt;->isSkippablePrimitiveWrapperArray(Lshark/HeapObject$HeapObjectArray;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_4

    .line 691
    :cond_15
    instance-of v1, v2, Lshark/HeapObject$HeapPrimitiveArray;

    if-eqz v1, :cond_17

    goto :goto_4

    :cond_16
    :goto_8
    if-eqz v1, :cond_18

    return-void

    :cond_17
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_18
    if-eqz v0, :cond_19

    .line 698
    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getToVisitLastQueue()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 699
    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getToVisitLastSet()Lshark/internal/hppc/LongScatterSet;

    move-result-object p1

    invoke-virtual {p2}, Lshark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lshark/internal/hppc/LongScatterSet;->add(J)Z

    goto :goto_9

    .line 701
    :cond_19
    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getToVisitQueue()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 702
    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getToVisitSet()Lshark/internal/hppc/LongScatterSet;

    move-result-object p1

    invoke-virtual {p2}, Lshark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lshark/internal/hppc/LongScatterSet;->add(J)Z

    :goto_9
    return-void

    .line 627
    :cond_1a
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type shark.internal.ReferencePathNode.ChildNode"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final enqueueGcRoots(Lshark/internal/PathFinder$State;)V
    .locals 23

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 301
    invoke-direct/range {p0 .. p0}, Lshark/internal/PathFinder;->sortedGcRoots()Ljava/util/List;

    move-result-object v0

    .line 303
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v8, v1

    check-cast v8, Ljava/util/Map;

    .line 304
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v9, v1

    check-cast v9, Ljava/util/Map;

    .line 305
    check-cast v0, Ljava/lang/Iterable;

    .line 724
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lshark/HeapObject;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lshark/GcRoot;

    .line 307
    instance-of v0, v11, Lshark/GcRoot$ThreadObject;

    if-eqz v0, :cond_2

    .line 308
    move-object v0, v11

    check-cast v0, Lshark/GcRoot$ThreadObject;

    invoke-virtual {v0}, Lshark/GcRoot$ThreadObject;->getThreadSerialNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1}, Lshark/HeapObject;->getAsInstance()Lshark/HeapObject$HeapInstance;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-static {v1, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    new-instance v0, Lshark/internal/ReferencePathNode$RootNode$NormalRootNode;

    invoke-virtual {v11}, Lshark/GcRoot;->getId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v11}, Lshark/internal/ReferencePathNode$RootNode$NormalRootNode;-><init>(JLshark/GcRoot;)V

    check-cast v0, Lshark/internal/ReferencePathNode;

    invoke-direct {v6, v7, v0}, Lshark/internal/PathFinder;->enqueue(Lshark/internal/PathFinder$State;Lshark/internal/ReferencePathNode;)V

    goto :goto_0

    .line 311
    :cond_2
    instance-of v0, v11, Lshark/GcRoot$JavaFrame;

    if-eqz v0, :cond_6

    .line 312
    move-object v0, v11

    check-cast v0, Lshark/GcRoot$JavaFrame;

    invoke-virtual {v0}, Lshark/GcRoot$JavaFrame;->getThreadSerialNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    if-nez v0, :cond_3

    .line 315
    new-instance v0, Lshark/internal/ReferencePathNode$RootNode$NormalRootNode;

    invoke-virtual {v11}, Lshark/GcRoot;->getId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v11}, Lshark/internal/ReferencePathNode$RootNode$NormalRootNode;-><init>(JLshark/GcRoot;)V

    check-cast v0, Lshark/internal/ReferencePathNode;

    invoke-direct {v6, v7, v0}, Lshark/internal/PathFinder;->enqueue(Lshark/internal/PathFinder$State;Lshark/internal/ReferencePathNode;)V

    goto :goto_0

    .line 317
    :cond_3
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lshark/HeapObject$HeapInstance;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lshark/GcRoot$ThreadObject;

    .line 318
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v13, Lshark/internal/PathFinder$enqueueGcRoots$$inlined$forEach$lambda$1;

    move-object v0, v13

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v9

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lshark/internal/PathFinder$enqueueGcRoots$$inlined$forEach$lambda$1;-><init>(Lshark/HeapObject$HeapInstance;Lshark/internal/PathFinder;Lshark/internal/PathFinder$State;Ljava/util/Map;Ljava/util/Map;)V

    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 323
    :goto_1
    iget-object v1, v6, Lshark/internal/PathFinder;->threadNameReferenceMatchers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lshark/ReferenceMatcher;

    .line 325
    instance-of v1, v0, Lshark/IgnoredReferenceMatcher;

    if-nez v1, :cond_0

    .line 326
    new-instance v1, Lshark/internal/ReferencePathNode$RootNode$NormalRootNode;

    invoke-virtual {v12}, Lshark/GcRoot$ThreadObject;->getId()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v11}, Lshark/internal/ReferencePathNode$RootNode$NormalRootNode;-><init>(JLshark/GcRoot;)V

    .line 328
    sget-object v16, Lshark/LeakTraceReference$ReferenceType;->LOCAL:Lshark/LeakTraceReference$ReferenceType;

    const-string v17, ""

    .line 334
    instance-of v2, v0, Lshark/LibraryLeakReferenceMatcher;

    if-eqz v2, :cond_5

    .line 335
    new-instance v2, Lshark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;

    .line 336
    invoke-virtual {v11}, Lshark/GcRoot;->getId()J

    move-result-wide v13

    .line 337
    move-object v15, v1

    check-cast v15, Lshark/internal/ReferencePathNode;

    .line 340
    move-object/from16 v18, v0

    check-cast v18, Lshark/LibraryLeakReferenceMatcher;

    const-wide/16 v19, 0x0

    const/16 v21, 0x20

    const/16 v22, 0x0

    move-object v12, v2

    .line 335
    invoke-direct/range {v12 .. v22}, Lshark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;-><init>(JLshark/internal/ReferencePathNode;Lshark/LeakTraceReference$ReferenceType;Ljava/lang/String;Lshark/LibraryLeakReferenceMatcher;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lshark/internal/ReferencePathNode$ChildNode;

    goto :goto_2

    .line 343
    :cond_5
    new-instance v0, Lshark/internal/ReferencePathNode$ChildNode$NormalNode;

    .line 344
    invoke-virtual {v11}, Lshark/GcRoot;->getId()J

    move-result-wide v13

    .line 345
    move-object v15, v1

    check-cast v15, Lshark/internal/ReferencePathNode;

    const-wide/16 v18, 0x0

    const/16 v20, 0x10

    const/16 v21, 0x0

    move-object v12, v0

    .line 343
    invoke-direct/range {v12 .. v21}, Lshark/internal/ReferencePathNode$ChildNode$NormalNode;-><init>(JLshark/internal/ReferencePathNode;Lshark/LeakTraceReference$ReferenceType;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v0

    check-cast v2, Lshark/internal/ReferencePathNode$ChildNode;

    .line 350
    :goto_2
    check-cast v2, Lshark/internal/ReferencePathNode;

    invoke-direct {v6, v7, v2}, Lshark/internal/PathFinder;->enqueue(Lshark/internal/PathFinder$State;Lshark/internal/ReferencePathNode;)V

    goto/16 :goto_0

    .line 354
    :cond_6
    instance-of v0, v11, Lshark/GcRoot$JniGlobal;

    if-eqz v0, :cond_c

    .line 356
    instance-of v0, v1, Lshark/HeapObject$HeapClass;

    if-eqz v0, :cond_7

    iget-object v0, v6, Lshark/internal/PathFinder;->jniGlobalReferenceMatchers:Ljava/util/Map;

    check-cast v1, Lshark/HeapObject$HeapClass;

    invoke-virtual {v1}, Lshark/HeapObject$HeapClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lshark/ReferenceMatcher;

    goto :goto_3

    .line 357
    :cond_7
    instance-of v0, v1, Lshark/HeapObject$HeapInstance;

    if-eqz v0, :cond_8

    iget-object v0, v6, Lshark/internal/PathFinder;->jniGlobalReferenceMatchers:Ljava/util/Map;

    check-cast v1, Lshark/HeapObject$HeapInstance;

    invoke-virtual {v1}, Lshark/HeapObject$HeapInstance;->getInstanceClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lshark/ReferenceMatcher;

    goto :goto_3

    .line 358
    :cond_8
    instance-of v0, v1, Lshark/HeapObject$HeapObjectArray;

    if-eqz v0, :cond_9

    iget-object v0, v6, Lshark/internal/PathFinder;->jniGlobalReferenceMatchers:Ljava/util/Map;

    check-cast v1, Lshark/HeapObject$HeapObjectArray;

    invoke-virtual {v1}, Lshark/HeapObject$HeapObjectArray;->getArrayClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lshark/ReferenceMatcher;

    goto :goto_3

    .line 359
    :cond_9
    instance-of v0, v1, Lshark/HeapObject$HeapPrimitiveArray;

    if-eqz v0, :cond_b

    iget-object v0, v6, Lshark/internal/PathFinder;->jniGlobalReferenceMatchers:Ljava/util/Map;

    check-cast v1, Lshark/HeapObject$HeapPrimitiveArray;

    invoke-virtual {v1}, Lshark/HeapObject$HeapPrimitiveArray;->getArrayClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lshark/ReferenceMatcher;

    .line 361
    :goto_3
    instance-of v1, v0, Lshark/IgnoredReferenceMatcher;

    if-nez v1, :cond_0

    .line 362
    instance-of v1, v0, Lshark/LibraryLeakReferenceMatcher;

    if-eqz v1, :cond_a

    .line 363
    new-instance v1, Lshark/internal/ReferencePathNode$RootNode$LibraryLeakRootNode;

    invoke-virtual {v11}, Lshark/GcRoot;->getId()J

    move-result-wide v2

    check-cast v0, Lshark/LibraryLeakReferenceMatcher;

    invoke-direct {v1, v2, v3, v11, v0}, Lshark/internal/ReferencePathNode$RootNode$LibraryLeakRootNode;-><init>(JLshark/GcRoot;Lshark/LibraryLeakReferenceMatcher;)V

    check-cast v1, Lshark/internal/ReferencePathNode;

    invoke-direct {v6, v7, v1}, Lshark/internal/PathFinder;->enqueue(Lshark/internal/PathFinder$State;Lshark/internal/ReferencePathNode;)V

    goto/16 :goto_0

    .line 365
    :cond_a
    new-instance v0, Lshark/internal/ReferencePathNode$RootNode$NormalRootNode;

    invoke-virtual {v11}, Lshark/GcRoot;->getId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v11}, Lshark/internal/ReferencePathNode$RootNode$NormalRootNode;-><init>(JLshark/GcRoot;)V

    check-cast v0, Lshark/internal/ReferencePathNode;

    invoke-direct {v6, v7, v0}, Lshark/internal/PathFinder;->enqueue(Lshark/internal/PathFinder$State;Lshark/internal/ReferencePathNode;)V

    goto/16 :goto_0

    .line 359
    :cond_b
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 369
    :cond_c
    new-instance v0, Lshark/internal/ReferencePathNode$RootNode$NormalRootNode;

    invoke-virtual {v11}, Lshark/GcRoot;->getId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v11}, Lshark/internal/ReferencePathNode$RootNode$NormalRootNode;-><init>(JLshark/GcRoot;)V

    check-cast v0, Lshark/internal/ReferencePathNode;

    invoke-direct {v6, v7, v0}, Lshark/internal/PathFinder;->enqueue(Lshark/internal/PathFinder$State;Lshark/internal/ReferencePathNode;)V

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method private final findPathsFromGcRoots(Lshark/internal/PathFinder$State;)Lshark/internal/PathFinder$PathFindingResults;
    .locals 5

    .line 258
    invoke-direct {p0, p1}, Lshark/internal/PathFinder;->enqueueGcRoots(Lshark/internal/PathFinder$State;)V

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 261
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getQueuesNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 262
    invoke-direct {p0, p1}, Lshark/internal/PathFinder;->poll(Lshark/internal/PathFinder$State;)Lshark/internal/ReferencePathNode;

    move-result-object v1

    .line 263
    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getLeakingObjectIds()Lshark/internal/hppc/LongScatterSet;

    move-result-object v2

    invoke-virtual {v1}, Lshark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lshark/internal/hppc/LongScatterSet;->contains(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getLeakingObjectIds()Lshark/internal/hppc/LongScatterSet;

    move-result-object v3

    invoke-virtual {v3}, Lshark/internal/hppc/LongScatterSet;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 267
    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getComputeRetainedHeapSize()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 268
    iget-object v2, p0, Lshark/internal/PathFinder;->listener:Lshark/OnAnalysisProgressListener;

    sget-object v3, Lshark/OnAnalysisProgressListener$Step;->FINDING_DOMINATORS:Lshark/OnAnalysisProgressListener$Step;

    invoke-interface {v2, v3}, Lshark/OnAnalysisProgressListener;->onAnalysisProgress(Lshark/OnAnalysisProgressListener$Step;)V

    .line 275
    :cond_1
    iget-object v2, p0, Lshark/internal/PathFinder;->graph:Lshark/HeapGraph;

    invoke-virtual {v1}, Lshark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lshark/HeapGraph;->findObjectById(J)Lshark/HeapObject;

    move-result-object v2

    .line 276
    instance-of v3, v2, Lshark/HeapObject$HeapClass;

    if-eqz v3, :cond_2

    check-cast v2, Lshark/HeapObject$HeapClass;

    invoke-direct {p0, p1, v2, v1}, Lshark/internal/PathFinder;->visitClassRecord(Lshark/internal/PathFinder$State;Lshark/HeapObject$HeapClass;Lshark/internal/ReferencePathNode;)V

    goto :goto_0

    .line 277
    :cond_2
    instance-of v3, v2, Lshark/HeapObject$HeapInstance;

    if-eqz v3, :cond_3

    check-cast v2, Lshark/HeapObject$HeapInstance;

    invoke-direct {p0, p1, v2, v1}, Lshark/internal/PathFinder;->visitInstance(Lshark/internal/PathFinder$State;Lshark/HeapObject$HeapInstance;Lshark/internal/ReferencePathNode;)V

    goto :goto_0

    .line 278
    :cond_3
    instance-of v3, v2, Lshark/HeapObject$HeapObjectArray;

    if-eqz v3, :cond_0

    check-cast v2, Lshark/HeapObject$HeapObjectArray;

    invoke-direct {p0, p1, v2, v1}, Lshark/internal/PathFinder;->visitObjectArray(Lshark/internal/PathFinder$State;Lshark/HeapObject$HeapObjectArray;Lshark/internal/ReferencePathNode;)V

    goto :goto_0

    .line 281
    :cond_4
    new-instance v1, Lshark/internal/PathFinder$PathFindingResults;

    .line 283
    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getVisitTracker()Lshark/internal/PathFinder$VisitTracker;

    move-result-object v2

    instance-of v2, v2, Lshark/internal/PathFinder$VisitTracker$Dominated;

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getVisitTracker()Lshark/internal/PathFinder$VisitTracker;

    move-result-object p1

    check-cast p1, Lshark/internal/PathFinder$VisitTracker$Dominated;

    invoke-virtual {p1}, Lshark/internal/PathFinder$VisitTracker$Dominated;->getDominatorTree()Lshark/internal/DominatorTree;

    move-result-object p1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 281
    :goto_1
    invoke-direct {v1, v0, p1}, Lshark/internal/PathFinder$PathFindingResults;-><init>(Ljava/util/List;Lshark/internal/DominatorTree;)V

    return-object v1
.end method

.method private final getRecordSize(Lshark/HeapGraph;Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;)I
    .locals 5

    .line 574
    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 575
    invoke-interface {p1}, Lshark/HeapGraph;->getIdentifierByteSize()I

    move-result v1

    goto :goto_3

    .line 576
    :cond_0
    sget-object p1, Lshark/PrimitiveType;->BOOLEAN:Lshark/PrimitiveType;

    invoke-virtual {p1}, Lshark/PrimitiveType;->getHprofType()I

    move-result p1

    const/4 v2, 0x1

    if-ne v0, p1, :cond_1

    :goto_0
    const/4 v1, 0x1

    goto :goto_3

    .line 577
    :cond_1
    sget-object p1, Lshark/PrimitiveType;->CHAR:Lshark/PrimitiveType;

    invoke-virtual {p1}, Lshark/PrimitiveType;->getHprofType()I

    move-result p1

    if-ne v0, p1, :cond_2

    goto :goto_3

    .line 578
    :cond_2
    sget-object p1, Lshark/PrimitiveType;->FLOAT:Lshark/PrimitiveType;

    invoke-virtual {p1}, Lshark/PrimitiveType;->getHprofType()I

    move-result p1

    const/4 v3, 0x4

    if-ne v0, p1, :cond_3

    :goto_1
    const/4 v1, 0x4

    goto :goto_3

    .line 579
    :cond_3
    sget-object p1, Lshark/PrimitiveType;->DOUBLE:Lshark/PrimitiveType;

    invoke-virtual {p1}, Lshark/PrimitiveType;->getHprofType()I

    move-result p1

    const/16 v4, 0x8

    if-ne v0, p1, :cond_4

    :goto_2
    const/16 v1, 0x8

    goto :goto_3

    .line 580
    :cond_4
    sget-object p1, Lshark/PrimitiveType;->BYTE:Lshark/PrimitiveType;

    invoke-virtual {p1}, Lshark/PrimitiveType;->getHprofType()I

    move-result p1

    if-ne v0, p1, :cond_5

    goto :goto_0

    .line 581
    :cond_5
    sget-object p1, Lshark/PrimitiveType;->SHORT:Lshark/PrimitiveType;

    invoke-virtual {p1}, Lshark/PrimitiveType;->getHprofType()I

    move-result p1

    if-ne v0, p1, :cond_6

    goto :goto_3

    .line 582
    :cond_6
    sget-object p1, Lshark/PrimitiveType;->INT:Lshark/PrimitiveType;

    invoke-virtual {p1}, Lshark/PrimitiveType;->getHprofType()I

    move-result p1

    if-ne v0, p1, :cond_7

    goto :goto_1

    .line 583
    :cond_7
    sget-object p1, Lshark/PrimitiveType;->LONG:Lshark/PrimitiveType;

    invoke-virtual {p1}, Lshark/PrimitiveType;->getHprofType()I

    move-result p1

    if-ne v0, p1, :cond_8

    goto :goto_2

    :goto_3
    return v1

    .line 584
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->getType()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method private final poll(Lshark/internal/PathFinder$State;)Lshark/internal/ReferencePathNode;
    .locals 4

    .line 288
    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getVisitingLast()Z

    move-result v0

    const-string v1, "removedNode"

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getToVisitQueue()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getToVisitQueue()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lshark/internal/ReferencePathNode;

    .line 290
    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getToVisitSet()Lshark/internal/hppc/LongScatterSet;

    move-result-object p1

    invoke-virtual {v0}, Lshark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lshark/internal/hppc/LongScatterSet;->remove(J)Z

    .line 291
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 293
    invoke-virtual {p1, v0}, Lshark/internal/PathFinder$State;->setVisitingLast(Z)V

    .line 294
    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getToVisitLastQueue()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lshark/internal/ReferencePathNode;

    .line 295
    invoke-virtual {p1}, Lshark/internal/PathFinder$State;->getToVisitLastSet()Lshark/internal/hppc/LongScatterSet;

    move-result-object p1

    invoke-virtual {v0}, Lshark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lshark/internal/hppc/LongScatterSet;->remove(J)Z

    .line 296
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private final readAllNonNullFieldsOfReferenceType(Lshark/HeapObject$HeapInstance;Ljava/util/List;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/HeapObject$HeapInstance;",
            "Ljava/util/List<",
            "Lshark/HeapObject$HeapClass;",
            ">;)",
            "Ljava/util/List<",
            "Lshark/internal/PathFinder$InstanceRefField;",
            ">;"
        }
    .end annotation

    .line 518
    invoke-virtual/range {p1 .. p1}, Lshark/HeapObject$HeapInstance;->getGraph()Lshark/HeapGraph;

    move-result-object v0

    const/4 v1, 0x0

    .line 519
    move-object v2, v1

    check-cast v2, Lshark/internal/FieldIdReader;

    .line 520
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 523
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lshark/HeapObject$HeapClass;

    .line 524
    invoke-virtual {v6}, Lshark/HeapObject$HeapClass;->readRecordFields()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;

    .line 525
    invoke-virtual {v8}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->getType()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_0

    move-object/from16 v9, p0

    .line 527
    invoke-direct {v9, v0, v8}, Lshark/internal/PathFinder;->getRecordSize(Lshark/HeapGraph;Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;)I

    move-result v8

    add-int/2addr v5, v8

    goto :goto_1

    :cond_0
    move-object/from16 v9, p0

    if-nez v1, :cond_1

    .line 531
    new-instance v1, Lshark/internal/FieldIdReader;

    invoke-virtual/range {p1 .. p1}, Lshark/HeapObject$HeapInstance;->readRecord()Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;

    move-result-object v10

    invoke-interface {v0}, Lshark/HeapGraph;->getIdentifierByteSize()I

    move-result v11

    invoke-direct {v1, v10, v11}, Lshark/internal/FieldIdReader;-><init>(Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;I)V

    .line 535
    :cond_1
    invoke-virtual {v1, v5}, Lshark/internal/FieldIdReader;->skipBytes(I)V

    .line 538
    invoke-virtual {v1}, Lshark/internal/FieldIdReader;->readId()J

    move-result-wide v13

    const-wide/16 v10, 0x0

    cmp-long v5, v13, v10

    if-eqz v5, :cond_2

    .line 541
    new-instance v5, Lshark/internal/PathFinder$InstanceRefField;

    .line 542
    invoke-virtual {v6}, Lshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v11

    invoke-virtual {v6, v8}, Lshark/HeapObject$HeapClass;->instanceFieldName(Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;)Ljava/lang/String;

    move-result-object v15

    move-object v10, v5

    .line 541
    invoke-direct/range {v10 .. v15}, Lshark/internal/PathFinder$InstanceRefField;-><init>(JJLjava/lang/String;)V

    .line 540
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v9, p0

    goto :goto_0

    :cond_4
    move-object/from16 v9, p0

    return-object v2
.end method

.method private final sortedGcRoots()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lshark/HeapObject;",
            "Lshark/GcRoot;",
            ">;>;"
        }
    .end annotation

    .line 381
    sget-object v0, Lshark/internal/PathFinder$sortedGcRoots$rootClassName$1;->INSTANCE:Lshark/internal/PathFinder$sortedGcRoots$rootClassName$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 398
    iget-object v1, p0, Lshark/internal/PathFinder;->graph:Lshark/HeapGraph;

    invoke-interface {v1}, Lshark/HeapGraph;->getGcRoots()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 726
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 727
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lshark/GcRoot;

    .line 402
    iget-object v5, p0, Lshark/internal/PathFinder;->graph:Lshark/HeapGraph;

    invoke-virtual {v4}, Lshark/GcRoot;->getId()J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lshark/HeapGraph;->objectExists(J)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 728
    :cond_1
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 729
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 730
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 731
    check-cast v3, Lshark/GcRoot;

    .line 404
    iget-object v4, p0, Lshark/internal/PathFinder;->graph:Lshark/HeapGraph;

    invoke-virtual {v3}, Lshark/GcRoot;->getId()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lshark/HeapGraph;->findObjectById(J)Lshark/HeapObject;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 732
    :cond_2
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 405
    new-instance v2, Lshark/internal/PathFinder$sortedGcRoots$3;

    invoke-direct {v2, v0}, Lshark/internal/PathFinder$sortedGcRoots$3;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final toLongScatterSet(Ljava/util/Set;)Lshark/internal/hppc/LongScatterSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Lshark/internal/hppc/LongScatterSet;"
        }
    .end annotation

    .line 251
    new-instance v0, Lshark/internal/hppc/LongScatterSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lshark/internal/hppc/LongScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 252
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lshark/internal/hppc/LongScatterSet;->ensureCapacity(I)V

    .line 253
    check-cast p1, Ljava/lang/Iterable;

    .line 722
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 253
    invoke-virtual {v0, v1, v2}, Lshark/internal/hppc/LongScatterSet;->add(J)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final visitClassRecord(Lshark/internal/PathFinder$State;Lshark/HeapObject$HeapClass;Lshark/internal/ReferencePathNode;)V
    .locals 16

    move-object/from16 v0, p0

    .line 420
    iget-object v1, v0, Lshark/internal/PathFinder;->staticFieldNameByClassName:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lshark/HeapObject$HeapClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 422
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lshark/HeapObject$HeapClass;->readStaticFields()Lkotlin/sequences/Sequence;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lshark/HeapField;

    .line 423
    invoke-virtual {v3}, Lshark/HeapField;->getValue()Lshark/HeapValue;

    move-result-object v4

    invoke-virtual {v4}, Lshark/HeapValue;->isNonNullReference()Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_3

    .line 427
    :cond_1
    invoke-virtual {v3}, Lshark/HeapField;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v4, "$staticOverhead"

    .line 428
    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "$classOverhead"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    .line 434
    :cond_2
    invoke-virtual {v3}, Lshark/HeapField;->getValue()Lshark/HeapValue;

    move-result-object v3

    invoke-virtual {v3}, Lshark/HeapValue;->getHolder()Lshark/ValueHolder;

    move-result-object v3

    if-eqz v3, :cond_6

    check-cast v3, Lshark/ValueHolder$ReferenceHolder;

    invoke-virtual {v3}, Lshark/ValueHolder$ReferenceHolder;->getValue()J

    move-result-wide v6

    .line 436
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lshark/ReferenceMatcher;

    if-nez v3, :cond_3

    .line 437
    new-instance v3, Lshark/internal/ReferencePathNode$ChildNode$NormalNode;

    .line 440
    sget-object v9, Lshark/LeakTraceReference$ReferenceType;->STATIC_FIELD:Lshark/LeakTraceReference$ReferenceType;

    const-wide/16 v11, 0x0

    const/16 v13, 0x10

    const/4 v14, 0x0

    move-object v5, v3

    move-object/from16 v8, p3

    .line 437
    invoke-direct/range {v5 .. v14}, Lshark/internal/ReferencePathNode$ChildNode$NormalNode;-><init>(JLshark/internal/ReferencePathNode;Lshark/LeakTraceReference$ReferenceType;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v3, Lshark/internal/ReferencePathNode$ChildNode;

    goto :goto_2

    .line 443
    :cond_3
    instance-of v4, v3, Lshark/LibraryLeakReferenceMatcher;

    if-eqz v4, :cond_4

    new-instance v4, Lshark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;

    .line 446
    sget-object v9, Lshark/LeakTraceReference$ReferenceType;->STATIC_FIELD:Lshark/LeakTraceReference$ReferenceType;

    .line 448
    move-object v11, v3

    check-cast v11, Lshark/LibraryLeakReferenceMatcher;

    const-wide/16 v12, 0x0

    const/16 v14, 0x20

    const/4 v15, 0x0

    move-object v5, v4

    move-object/from16 v8, p3

    .line 443
    invoke-direct/range {v5 .. v15}, Lshark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;-><init>(JLshark/internal/ReferencePathNode;Lshark/LeakTraceReference$ReferenceType;Ljava/lang/String;Lshark/LibraryLeakReferenceMatcher;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v4

    check-cast v3, Lshark/internal/ReferencePathNode$ChildNode;

    goto :goto_2

    .line 450
    :cond_4
    instance-of v3, v3, Lshark/IgnoredReferenceMatcher;

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_7

    .line 453
    check-cast v3, Lshark/internal/ReferencePathNode;

    move-object/from16 v4, p1

    invoke-direct {v0, v4, v3}, Lshark/internal/PathFinder;->enqueue(Lshark/internal/PathFinder$State;Lshark/internal/ReferencePathNode;)V

    goto :goto_1

    .line 450
    :cond_5
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 434
    :cond_6
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type shark.ValueHolder.ReferenceHolder"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_3
    move-object/from16 v4, p1

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method private final visitInstance(Lshark/internal/PathFinder$State;Lshark/HeapObject$HeapInstance;Lshark/internal/ReferencePathNode;)V
    .locals 15

    move-object v0, p0

    .line 462
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 464
    invoke-virtual/range {p2 .. p2}, Lshark/HeapObject$HeapInstance;->getInstanceClass()Lshark/HeapObject$HeapClass;

    move-result-object v2

    invoke-virtual {v2}, Lshark/HeapObject$HeapClass;->getClassHierarchy()Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 733
    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lshark/HeapObject$HeapClass;

    .line 465
    iget-object v4, v0, Lshark/internal/PathFinder;->fieldNameByClassName:Ljava/util/Map;

    invoke-virtual {v3}, Lshark/HeapObject$HeapClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 467
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lshark/ReferenceMatcher;

    .line 468
    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 469
    move-object v6, v1

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 475
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lshark/HeapObject$HeapInstance;->getInstanceClass()Lshark/HeapObject$HeapClass;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lshark/internal/PathFinder$State;->getJavaLangObjectId()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lshark/internal/PathFinder;->classHierarchyWithoutJavaLangObject(Lshark/HeapObject$HeapClass;J)Ljava/util/List;

    move-result-object v2

    move-object/from16 v3, p2

    .line 477
    invoke-direct {p0, v3, v2}, Lshark/internal/PathFinder;->readAllNonNullFieldsOfReferenceType(Lshark/HeapObject$HeapInstance;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 735
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    new-instance v3, Lshark/internal/PathFinder$visitInstance$$inlined$sortBy$1;

    invoke-direct {v3}, Lshark/internal/PathFinder$visitInstance$$inlined$sortBy$1;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 481
    :cond_3
    check-cast v2, Ljava/lang/Iterable;

    .line 737
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lshark/internal/PathFinder$InstanceRefField;

    .line 482
    invoke-virtual {v3}, Lshark/internal/PathFinder$InstanceRefField;->getFieldName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lshark/ReferenceMatcher;

    if-nez v4, :cond_4

    .line 483
    new-instance v4, Lshark/internal/ReferencePathNode$ChildNode$NormalNode;

    .line 484
    invoke-virtual {v3}, Lshark/internal/PathFinder$InstanceRefField;->getRefObjectId()J

    move-result-wide v6

    .line 486
    sget-object v9, Lshark/LeakTraceReference$ReferenceType;->INSTANCE_FIELD:Lshark/LeakTraceReference$ReferenceType;

    .line 487
    invoke-virtual {v3}, Lshark/internal/PathFinder$InstanceRefField;->getFieldName()Ljava/lang/String;

    move-result-object v10

    .line 488
    invoke-virtual {v3}, Lshark/internal/PathFinder$InstanceRefField;->getDeclaringClassId()J

    move-result-wide v11

    move-object v5, v4

    move-object/from16 v8, p3

    .line 483
    invoke-direct/range {v5 .. v12}, Lshark/internal/ReferencePathNode$ChildNode$NormalNode;-><init>(JLshark/internal/ReferencePathNode;Lshark/LeakTraceReference$ReferenceType;Ljava/lang/String;J)V

    check-cast v4, Lshark/internal/ReferencePathNode$ChildNode;

    goto :goto_2

    .line 490
    :cond_4
    instance-of v5, v4, Lshark/LibraryLeakReferenceMatcher;

    if-eqz v5, :cond_5

    .line 491
    new-instance v5, Lshark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;

    .line 492
    invoke-virtual {v3}, Lshark/internal/PathFinder$InstanceRefField;->getRefObjectId()J

    move-result-wide v7

    .line 494
    sget-object v10, Lshark/LeakTraceReference$ReferenceType;->INSTANCE_FIELD:Lshark/LeakTraceReference$ReferenceType;

    .line 495
    invoke-virtual {v3}, Lshark/internal/PathFinder$InstanceRefField;->getFieldName()Ljava/lang/String;

    move-result-object v11

    .line 496
    move-object v12, v4

    check-cast v12, Lshark/LibraryLeakReferenceMatcher;

    .line 497
    invoke-virtual {v3}, Lshark/internal/PathFinder$InstanceRefField;->getDeclaringClassId()J

    move-result-wide v13

    move-object v6, v5

    move-object/from16 v9, p3

    .line 491
    invoke-direct/range {v6 .. v14}, Lshark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;-><init>(JLshark/internal/ReferencePathNode;Lshark/LeakTraceReference$ReferenceType;Ljava/lang/String;Lshark/LibraryLeakReferenceMatcher;J)V

    move-object v4, v5

    check-cast v4, Lshark/internal/ReferencePathNode$ChildNode;

    goto :goto_2

    .line 499
    :cond_5
    instance-of v3, v4, Lshark/IgnoredReferenceMatcher;

    if-eqz v3, :cond_7

    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_6

    .line 502
    check-cast v4, Lshark/internal/ReferencePathNode;

    move-object/from16 v3, p1

    invoke-direct {p0, v3, v4}, Lshark/internal/PathFinder;->enqueue(Lshark/internal/PathFinder$State;Lshark/internal/ReferencePathNode;)V

    goto :goto_1

    :cond_6
    move-object/from16 v3, p1

    goto :goto_1

    .line 499
    :cond_7
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    :cond_8
    return-void
.end method

.method private final visitObjectArray(Lshark/internal/PathFinder$State;Lshark/HeapObject$HeapObjectArray;Lshark/internal/ReferencePathNode;)V
    .locals 15

    move-object v0, p0

    .line 591
    invoke-virtual/range {p2 .. p2}, Lshark/HeapObject$HeapObjectArray;->readRecord()Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;

    move-result-object v1

    .line 592
    invoke-virtual {v1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;->getElementIds()[J

    move-result-object v1

    .line 739
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 740
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-wide v6, v1, v5

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_0

    .line 593
    iget-object v8, v0, Lshark/internal/PathFinder;->graph:Lshark/HeapGraph;

    invoke-interface {v8, v6, v7}, Lshark/HeapGraph;->objectExists(J)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 741
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 595
    check-cast v2, Ljava/lang/Iterable;

    .line 743
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v4, 0x1

    if-gez v4, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 596
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 598
    new-instance v2, Lshark/internal/ReferencePathNode$ChildNode$NormalNode;

    .line 601
    sget-object v9, Lshark/LeakTraceReference$ReferenceType;->ARRAY_ENTRY:Lshark/LeakTraceReference$ReferenceType;

    const-wide/16 v11, 0x0

    const/16 v13, 0x10

    const/4 v14, 0x0

    move-object v5, v2

    move-object/from16 v8, p3

    .line 598
    invoke-direct/range {v5 .. v14}, Lshark/internal/ReferencePathNode$ChildNode$NormalNode;-><init>(JLshark/internal/ReferencePathNode;Lshark/LeakTraceReference$ReferenceType;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lshark/internal/ReferencePathNode;

    move-object/from16 v4, p1

    .line 597
    invoke-direct {p0, v4, v2}, Lshark/internal/PathFinder;->enqueue(Lshark/internal/PathFinder$State;Lshark/internal/ReferencePathNode;)V

    move v4, v3

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public final findPathsFromGcRoots(Ljava/util/Set;Z)Lshark/internal/PathFinder$PathFindingResults;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lshark/internal/PathFinder$PathFindingResults;"
        }
    .end annotation

    const-string v0, "leakingObjectIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lshark/internal/PathFinder;->listener:Lshark/OnAnalysisProgressListener;

    sget-object v1, Lshark/OnAnalysisProgressListener$Step;->FINDING_PATHS_TO_RETAINED_OBJECTS:Lshark/OnAnalysisProgressListener$Step;

    invoke-interface {v0, v1}, Lshark/OnAnalysisProgressListener;->onAnalysisProgress(Lshark/OnAnalysisProgressListener$Step;)V

    .line 209
    iget-object v0, p0, Lshark/internal/PathFinder;->graph:Lshark/HeapGraph;

    const-string v1, "java.lang.Object"

    invoke-interface {v0, v1}, Lshark/HeapGraph;->findClassByName(Ljava/lang/String;)Lshark/HeapObject$HeapClass;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lshark/internal/PathFinder;->graph:Lshark/HeapGraph;

    invoke-direct {p0, v0, v1}, Lshark/internal/PathFinder;->determineSizeOfObjectInstances(Lshark/HeapObject$HeapClass;Lshark/HeapGraph;)I

    move-result v4

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Lshark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    move-wide v6, v0

    .line 215
    iget-object v0, p0, Lshark/internal/PathFinder;->graph:Lshark/HeapGraph;

    invoke-interface {v0}, Lshark/HeapGraph;->getInstanceCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v8

    .line 217
    new-instance v0, Lshark/internal/PathFinder$State;

    .line 218
    invoke-direct {p0, p1}, Lshark/internal/PathFinder;->toLongScatterSet(Ljava/util/Set;)Lshark/internal/hppc/LongScatterSet;

    move-result-object v3

    move-object v2, v0

    move v5, p2

    .line 217
    invoke-direct/range {v2 .. v8}, Lshark/internal/PathFinder$State;-><init>(Lshark/internal/hppc/LongScatterSet;IZJI)V

    .line 225
    invoke-direct {p0, v0}, Lshark/internal/PathFinder;->findPathsFromGcRoots(Lshark/internal/PathFinder$State;)Lshark/internal/PathFinder$PathFindingResults;

    move-result-object p1

    return-object p1
.end method
