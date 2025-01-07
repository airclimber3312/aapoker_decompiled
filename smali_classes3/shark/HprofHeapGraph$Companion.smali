.class public final Lshark/HprofHeapGraph$Companion;
.super Ljava/lang/Object;
.source "HprofHeapGraph.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/HprofHeapGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHprofHeapGraph.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HprofHeapGraph.kt\nshark/HprofHeapGraph$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,456:1\n1#2:457\n1366#3:458\n1435#3,3:459\n*E\n*S KotlinDebug\n*F\n+ 1 HprofHeapGraph.kt\nshark/HprofHeapGraph$Companion\n*L\n413#1:458\n413#1,3:459\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\t\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u000c0\u000b0\nH\u0002J4\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0016\u0008\u0002\u0010\u0013\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u000c0\u000b0\nH\u0007J&\u0010\u0014\u001a\u00020\u0015*\u00020\u00162\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u000e\u0008\u0002\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00170\nJ&\u0010\u0014\u001a\u00020\u0015*\u00020\u00182\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u000e\u0008\u0002\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00170\nR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0019"
    }
    d2 = {
        "Lshark/HprofHeapGraph$Companion;",
        "",
        "()V",
        "INTERNAL_LRU_CACHE_SIZE",
        "",
        "getINTERNAL_LRU_CACHE_SIZE",
        "()I",
        "setINTERNAL_LRU_CACHE_SIZE",
        "(I)V",
        "deprecatedDefaultIndexedGcRootTypes",
        "",
        "Lkotlin/reflect/KClass;",
        "Lshark/GcRoot;",
        "indexHprof",
        "Lshark/HeapGraph;",
        "hprof",
        "Lshark/Hprof;",
        "proguardMapping",
        "Lshark/ProguardMapping;",
        "indexedGcRootTypes",
        "openHeapGraph",
        "Lshark/CloseableHeapGraph;",
        "Ljava/io/File;",
        "Lshark/HprofRecordTag;",
        "Lshark/DualSourceProvider;",
        "shark-graph"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 367
    invoke-direct {p0}, Lshark/HprofHeapGraph$Companion;-><init>()V

    return-void
.end method

.method private final deprecatedDefaultIndexedGcRootTypes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lshark/GcRoot;",
            ">;>;"
        }
    .end annotation

    const/16 v0, 0x9

    new-array v0, v0, [Lkotlin/reflect/KClass;

    .line 444
    const-class v1, Lshark/GcRoot$JniGlobal;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 445
    const-class v1, Lshark/GcRoot$JavaFrame;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 446
    const-class v1, Lshark/GcRoot$JniLocal;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 447
    const-class v1, Lshark/GcRoot$MonitorUsed;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 448
    const-class v1, Lshark/GcRoot$NativeStack;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 449
    const-class v1, Lshark/GcRoot$StickyClass;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 450
    const-class v1, Lshark/GcRoot$ThreadBlock;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 451
    const-class v1, Lshark/GcRoot$ThreadObject;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 452
    const-class v1, Lshark/GcRoot$JniMonitor;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 443
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic indexHprof$default(Lshark/HprofHeapGraph$Companion;Lshark/Hprof;Lshark/ProguardMapping;Ljava/util/Set;ILjava/lang/Object;)Lshark/HeapGraph;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 410
    move-object p5, p2

    check-cast p5, Lshark/ProguardMapping;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 411
    invoke-direct {p0}, Lshark/HprofHeapGraph$Companion;->deprecatedDefaultIndexedGcRootTypes()Ljava/util/Set;

    move-result-object p3

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lshark/HprofHeapGraph$Companion;->indexHprof(Lshark/Hprof;Lshark/ProguardMapping;Ljava/util/Set;)Lshark/HeapGraph;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic openHeapGraph$default(Lshark/HprofHeapGraph$Companion;Ljava/io/File;Lshark/ProguardMapping;Ljava/util/Set;ILjava/lang/Object;)Lshark/CloseableHeapGraph;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 386
    move-object p5, p2

    check-cast p5, Lshark/ProguardMapping;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 387
    sget-object p3, Lshark/HprofIndex;->Companion:Lshark/HprofIndex$Companion;

    invoke-virtual {p3}, Lshark/HprofIndex$Companion;->defaultIndexedGcRootTags()Ljava/util/EnumSet;

    move-result-object p3

    const-string p4, "HprofIndex.defaultIndexedGcRootTags()"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/util/Set;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lshark/HprofHeapGraph$Companion;->openHeapGraph(Ljava/io/File;Lshark/ProguardMapping;Ljava/util/Set;)Lshark/CloseableHeapGraph;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic openHeapGraph$default(Lshark/HprofHeapGraph$Companion;Lshark/DualSourceProvider;Lshark/ProguardMapping;Ljava/util/Set;ILjava/lang/Object;)Lshark/CloseableHeapGraph;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 393
    move-object p5, p2

    check-cast p5, Lshark/ProguardMapping;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 394
    sget-object p3, Lshark/HprofIndex;->Companion:Lshark/HprofIndex$Companion;

    invoke-virtual {p3}, Lshark/HprofIndex$Companion;->defaultIndexedGcRootTags()Ljava/util/EnumSet;

    move-result-object p3

    const-string p4, "HprofIndex.defaultIndexedGcRootTags()"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/util/Set;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lshark/HprofHeapGraph$Companion;->openHeapGraph(Lshark/DualSourceProvider;Lshark/ProguardMapping;Ljava/util/Set;)Lshark/CloseableHeapGraph;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getINTERNAL_LRU_CACHE_SIZE()I
    .locals 1

    .line 377
    invoke-static {}, Lshark/HprofHeapGraph;->access$getINTERNAL_LRU_CACHE_SIZE$cp()I

    move-result v0

    return v0
.end method

.method public final indexHprof(Lshark/Hprof;Lshark/ProguardMapping;Ljava/util/Set;)Lshark/HeapGraph;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/Hprof;",
            "Lshark/ProguardMapping;",
            "Ljava/util/Set<",
            "+",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lshark/GcRoot;",
            ">;>;)",
            "Lshark/HeapGraph;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Replaced by HprofIndex.indexRecordsOf().openHeapGraph() or File.openHeapGraph()"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "HprofIndex.indexRecordsOf(hprof, proguardMapping, indexedGcRootTypes).openHeapGraph()"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "hprof"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indexedGcRootTypes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    check-cast p3, Ljava/lang/Iterable;

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p3, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 459
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 460
    check-cast v1, Lkotlin/reflect/KClass;

    .line 415
    const-class v2, Lshark/GcRoot$Unknown;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lshark/HprofRecordTag;->ROOT_UNKNOWN:Lshark/HprofRecordTag;

    goto/16 :goto_1

    .line 416
    :cond_0
    const-class v2, Lshark/GcRoot$JniGlobal;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lshark/HprofRecordTag;->ROOT_JNI_GLOBAL:Lshark/HprofRecordTag;

    goto/16 :goto_1

    .line 417
    :cond_1
    const-class v2, Lshark/GcRoot$JniLocal;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lshark/HprofRecordTag;->ROOT_JNI_LOCAL:Lshark/HprofRecordTag;

    goto/16 :goto_1

    .line 418
    :cond_2
    const-class v2, Lshark/GcRoot$JavaFrame;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v1, Lshark/HprofRecordTag;->ROOT_JAVA_FRAME:Lshark/HprofRecordTag;

    goto/16 :goto_1

    .line 419
    :cond_3
    const-class v2, Lshark/GcRoot$NativeStack;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v1, Lshark/HprofRecordTag;->ROOT_NATIVE_STACK:Lshark/HprofRecordTag;

    goto/16 :goto_1

    .line 420
    :cond_4
    const-class v2, Lshark/GcRoot$StickyClass;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v1, Lshark/HprofRecordTag;->ROOT_STICKY_CLASS:Lshark/HprofRecordTag;

    goto/16 :goto_1

    .line 421
    :cond_5
    const-class v2, Lshark/GcRoot$ThreadBlock;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v1, Lshark/HprofRecordTag;->ROOT_THREAD_BLOCK:Lshark/HprofRecordTag;

    goto/16 :goto_1

    .line 422
    :cond_6
    const-class v2, Lshark/GcRoot$MonitorUsed;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v1, Lshark/HprofRecordTag;->ROOT_MONITOR_USED:Lshark/HprofRecordTag;

    goto/16 :goto_1

    .line 423
    :cond_7
    const-class v2, Lshark/GcRoot$ThreadObject;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v1, Lshark/HprofRecordTag;->ROOT_THREAD_OBJECT:Lshark/HprofRecordTag;

    goto :goto_1

    .line 424
    :cond_8
    const-class v2, Lshark/GcRoot$InternedString;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v1, Lshark/HprofRecordTag;->ROOT_INTERNED_STRING:Lshark/HprofRecordTag;

    goto :goto_1

    .line 425
    :cond_9
    const-class v2, Lshark/GcRoot$Finalizing;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v1, Lshark/HprofRecordTag;->ROOT_FINALIZING:Lshark/HprofRecordTag;

    goto :goto_1

    .line 426
    :cond_a
    const-class v2, Lshark/GcRoot$Debugger;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v1, Lshark/HprofRecordTag;->ROOT_DEBUGGER:Lshark/HprofRecordTag;

    goto :goto_1

    .line 427
    :cond_b
    const-class v2, Lshark/GcRoot$ReferenceCleanup;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v1, Lshark/HprofRecordTag;->ROOT_REFERENCE_CLEANUP:Lshark/HprofRecordTag;

    goto :goto_1

    .line 428
    :cond_c
    const-class v2, Lshark/GcRoot$VmInternal;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v1, Lshark/HprofRecordTag;->ROOT_VM_INTERNAL:Lshark/HprofRecordTag;

    goto :goto_1

    .line 429
    :cond_d
    const-class v2, Lshark/GcRoot$JniMonitor;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v1, Lshark/HprofRecordTag;->ROOT_JNI_MONITOR:Lshark/HprofRecordTag;

    goto :goto_1

    .line 430
    :cond_e
    const-class v2, Lshark/GcRoot$Unreachable;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v1, Lshark/HprofRecordTag;->ROOT_UNREACHABLE:Lshark/HprofRecordTag;

    .line 431
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unknown root "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 461
    :cond_10
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 433
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p3

    .line 435
    sget-object v0, Lshark/HprofIndex;->Companion:Lshark/HprofIndex$Companion;

    .line 436
    new-instance v1, Lshark/FileSourceProvider;

    invoke-virtual {p1}, Lshark/Hprof;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lshark/FileSourceProvider;-><init>(Ljava/io/File;)V

    check-cast v1, Lshark/DualSourceProvider;

    invoke-virtual {p1}, Lshark/Hprof;->getHeader()Lshark/HprofHeader;

    move-result-object v2

    .line 435
    invoke-virtual {v0, v1, v2, p2, p3}, Lshark/HprofIndex$Companion;->indexRecordsOf(Lshark/DualSourceProvider;Lshark/HprofHeader;Lshark/ProguardMapping;Ljava/util/Set;)Lshark/HprofIndex;

    move-result-object p2

    .line 438
    invoke-virtual {p2}, Lshark/HprofIndex;->openHeapGraph()Lshark/CloseableHeapGraph;

    move-result-object p2

    .line 439
    move-object p3, p2

    check-cast p3, Ljava/io/Closeable;

    invoke-virtual {p1, p3}, Lshark/Hprof;->attachClosable(Ljava/io/Closeable;)V

    .line 440
    check-cast p2, Lshark/HeapGraph;

    return-object p2
.end method

.method public final openHeapGraph(Ljava/io/File;Lshark/ProguardMapping;Ljava/util/Set;)Lshark/CloseableHeapGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lshark/ProguardMapping;",
            "Ljava/util/Set<",
            "+",
            "Lshark/HprofRecordTag;",
            ">;)",
            "Lshark/CloseableHeapGraph;"
        }
    .end annotation

    const-string v0, "$this$openHeapGraph"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indexedGcRootTypes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    move-object v0, p0

    check-cast v0, Lshark/HprofHeapGraph$Companion;

    new-instance v0, Lshark/FileSourceProvider;

    invoke-direct {v0, p1}, Lshark/FileSourceProvider;-><init>(Ljava/io/File;)V

    check-cast v0, Lshark/DualSourceProvider;

    invoke-virtual {p0, v0, p2, p3}, Lshark/HprofHeapGraph$Companion;->openHeapGraph(Lshark/DualSourceProvider;Lshark/ProguardMapping;Ljava/util/Set;)Lshark/CloseableHeapGraph;

    move-result-object p1

    return-object p1
.end method

.method public final openHeapGraph(Lshark/DualSourceProvider;Lshark/ProguardMapping;Ljava/util/Set;)Lshark/CloseableHeapGraph;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/DualSourceProvider;",
            "Lshark/ProguardMapping;",
            "Ljava/util/Set<",
            "+",
            "Lshark/HprofRecordTag;",
            ">;)",
            "Lshark/CloseableHeapGraph;"
        }
    .end annotation

    const-string v0, "$this$openHeapGraph"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indexedGcRootTypes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    invoke-interface {p1}, Lshark/DualSourceProvider;->openStreamingSource()Lokio/BufferedSource;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Lokio/BufferedSource;

    sget-object v3, Lshark/HprofHeader;->Companion:Lshark/HprofHeader$Companion;

    invoke-virtual {v3, v2}, Lshark/HprofHeader$Companion;->parseHeaderOf(Lokio/BufferedSource;)Lshark/HprofHeader;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 397
    sget-object v0, Lshark/HprofIndex;->Companion:Lshark/HprofIndex$Companion;

    invoke-virtual {v0, p1, v2, p2, p3}, Lshark/HprofIndex$Companion;->indexRecordsOf(Lshark/DualSourceProvider;Lshark/HprofHeader;Lshark/ProguardMapping;Ljava/util/Set;)Lshark/HprofIndex;

    move-result-object p1

    .line 398
    invoke-virtual {p1}, Lshark/HprofIndex;->openHeapGraph()Lshark/CloseableHeapGraph;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 396
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final setINTERNAL_LRU_CACHE_SIZE(I)V
    .locals 0

    .line 377
    invoke-static {p1}, Lshark/HprofHeapGraph;->access$setINTERNAL_LRU_CACHE_SIZE$cp(I)V

    return-void
.end method
