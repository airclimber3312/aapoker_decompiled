.class public final Lshark/HeapAnalyzer;
.super Ljava/lang/Object;
.source "HeapAnalyzer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/HeapAnalyzer$FindLeakInput;,
        Lshark/HeapAnalyzer$LeaksAndUnreachableObjects;,
        Lshark/HeapAnalyzer$TrieNode;,
        Lshark/HeapAnalyzer$ShortestPath;,
        Lshark/HeapAnalyzer$InspectedObject;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHeapAnalyzer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeapAnalyzer.kt\nshark/HeapAnalyzer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 SharkLog.kt\nshark/SharkLog\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 6 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,635:1\n706#2:636\n783#2,2:637\n1366#2:639\n1435#2,3:640\n1366#2:643\n1435#2,3:644\n1648#2:647\n1648#2,2:648\n1649#2:650\n1366#2:651\n1435#2,3:652\n1648#2,2:655\n1366#2:663\n1435#2,3:664\n1648#2,2:667\n1657#2,2:669\n250#2,2:671\n1659#2:687\n1366#2:696\n1435#2,2:697\n1376#2:699\n1407#2,4:700\n1437#2:704\n1648#2:705\n1648#2:706\n1648#2,2:707\n1649#2:709\n1649#2:710\n1366#2:711\n1435#2,3:712\n1271#2,9:715\n706#2:724\n783#2,2:725\n1366#2:727\n1435#2,3:728\n1280#2,3:731\n1366#2:734\n1435#2,3:735\n1376#2:738\n1407#2,4:739\n1366#2:743\n1435#2,3:744\n1376#2:751\n1407#2,4:752\n34#3,3:657\n34#3,3:660\n352#4,7:673\n352#4,7:680\n67#5:688\n92#5,3:689\n67#5:692\n92#5,3:693\n118#6,2:747\n118#6,2:749\n*E\n*S KotlinDebug\n*F\n+ 1 HeapAnalyzer.kt\nshark/HeapAnalyzer\n*L\n162#1:636\n162#1,2:637\n223#1:639\n223#1,3:640\n227#1:643\n227#1,3:644\n231#1:647\n232#1,2:648\n231#1:650\n237#1:651\n237#1,3:652\n274#1,2:655\n299#1:663\n299#1,3:664\n336#1,2:667\n366#1,2:669\n382#1,2:671\n366#1:687\n408#1:696\n408#1,2:697\n411#1:699\n411#1,4:700\n408#1:704\n421#1:705\n422#1:706\n423#1,2:707\n422#1:709\n421#1:710\n429#1:711\n429#1,3:712\n438#1,9:715\n439#1:724\n439#1,2:725\n440#1:727\n440#1,3:728\n438#1,3:731\n458#1:734\n458#1,3:735\n488#1:738\n488#1,4:739\n542#1:743\n542#1,3:744\n583#1:751\n583#1,4:752\n291#1,3:657\n296#1,3:660\n389#1,7:673\n392#1,7:680\n395#1:688\n395#1,3:689\n398#1:692\n398#1,3:693\n550#1,2:747\n569#1,2:749\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00e4\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0005TUVWXB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004JR\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u000e\u0008\u0002\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000e2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015JV\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000c2\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u000e\u0008\u0002\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000e2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017J>\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u000e2\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u000e2 \u0010\u001c\u001a\u001c\u0012\u0004\u0012\u00020\u001e\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020 0\u001f\u0018\u00010\u001dH\u0002J\u001c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u000e2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020#0\u000eH\u0002J\u001c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020%0\u000e2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\'0\u000eH\u0002J\u001e\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\'0-H\u0002J\u0010\u0010.\u001a\u00020/2\u0006\u00100\u001a\u000201H\u0002J$\u00102\u001a\u000e\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u00020/0\u001f2\u0006\u00104\u001a\u00020#2\u0006\u00105\u001a\u00020\u0011H\u0002J\u0010\u00106\u001a\u00020\u001e2\u0006\u00107\u001a\u00020\u001eH\u0002J.\u00108\u001a\u00020)2\u0006\u00109\u001a\u00020\'2\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u000e2\u0006\u0010;\u001a\u00020 2\u0006\u0010*\u001a\u00020+H\u0002J,\u0010<\u001a\u00020=*\u00020>2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u00107\u001a\u00020\u001eH\u0002Jh\u0010?\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020@0\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020A0\u000e0\u001f*\u00020>2\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u00020%0\u000e2\u0012\u0010C\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0\u000e0\u000e2 \u0010\u001c\u001a\u001c\u0012\u0004\u0012\u00020\u001e\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020 0\u001f\u0018\u00010\u001dH\u0002J.\u0010D\u001a\u0008\u0012\u0004\u0012\u00020E0\u000e*\u00020>2\u000c\u0010F\u001a\u0008\u0012\u0004\u0012\u00020G0\u000e2\u000c\u0010H\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u000eH\u0002JB\u0010I\u001a\u001c\u0012\u0004\u0012\u00020\u001e\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020 0\u001f\u0018\u00010\u001d*\u00020>2\u0012\u0010C\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0\u000e0\u000e2\u0006\u0010J\u001a\u00020KH\u0002J\u001a\u0010L\u001a\u00020M*\u00020>2\u000c\u0010N\u001a\u0008\u0012\u0004\u0012\u00020\u001e0OH\u0002J(\u0010P\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u000e*\u00020>2\u0006\u0010Q\u001a\u00020R2\u000c\u0010N\u001a\u0008\u0012\u0004\u0012\u00020\u001e0OH\u0002J&\u0010S\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0\u000e0\u000e*\u00020>2\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u00020%0\u000eH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006Y"
    }
    d2 = {
        "Lshark/HeapAnalyzer;",
        "",
        "listener",
        "Lshark/OnAnalysisProgressListener;",
        "(Lshark/OnAnalysisProgressListener;)V",
        "analyze",
        "Lshark/HeapAnalysis;",
        "heapDumpFile",
        "Ljava/io/File;",
        "graph",
        "Lshark/HeapGraph;",
        "leakingObjectFinder",
        "Lshark/LeakingObjectFinder;",
        "referenceMatchers",
        "",
        "Lshark/ReferenceMatcher;",
        "computeRetainedHeapSize",
        "",
        "objectInspectors",
        "Lshark/ObjectInspector;",
        "metadataExtractor",
        "Lshark/MetadataExtractor;",
        "proguardMapping",
        "Lshark/ProguardMapping;",
        "buildLeakTraceObjects",
        "Lshark/LeakTraceObject;",
        "inspectedObjects",
        "Lshark/HeapAnalyzer$InspectedObject;",
        "retainedSizes",
        "",
        "",
        "Lkotlin/Pair;",
        "",
        "computeLeakStatuses",
        "leakReporters",
        "Lshark/ObjectReporter;",
        "deduplicateShortestPaths",
        "Lshark/HeapAnalyzer$ShortestPath;",
        "inputPathResults",
        "Lshark/internal/ReferencePathNode;",
        "findResultsInTrie",
        "",
        "parentNode",
        "Lshark/HeapAnalyzer$TrieNode$ParentNode;",
        "outputPathResults",
        "",
        "recordClassName",
        "",
        "heap",
        "Lshark/HeapObject;",
        "resolveStatus",
        "Lshark/LeakTraceObject$LeakingStatus;",
        "reporter",
        "leakingWins",
        "since",
        "analysisStartNanoTime",
        "updateTrie",
        "pathNode",
        "path",
        "pathIndex",
        "analyzeGraph",
        "Lshark/HeapAnalysisSuccess;",
        "Lshark/HeapAnalyzer$FindLeakInput;",
        "buildLeakTraces",
        "Lshark/ApplicationLeak;",
        "Lshark/LibraryLeak;",
        "shortestPaths",
        "inspectedObjectsByPath",
        "buildReferencePath",
        "Lshark/LeakTraceReference;",
        "shortestChildPath",
        "Lshark/internal/ReferencePathNode$ChildNode;",
        "leakTraceObjects",
        "computeRetainedSizes",
        "dominatorTree",
        "Lshark/internal/DominatorTree;",
        "findLeaks",
        "Lshark/HeapAnalyzer$LeaksAndUnreachableObjects;",
        "leakingObjectIds",
        "",
        "findUnreachableObjects",
        "pathFindingResults",
        "Lshark/internal/PathFinder$PathFindingResults;",
        "inspectObjects",
        "FindLeakInput",
        "InspectedObject",
        "LeaksAndUnreachableObjects",
        "ShortestPath",
        "TrieNode",
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
.field private final listener:Lshark/OnAnalysisProgressListener;


# direct methods
.method public constructor <init>(Lshark/OnAnalysisProgressListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshark/HeapAnalyzer;->listener:Lshark/OnAnalysisProgressListener;

    return-void
.end method

.method public static synthetic analyze$default(Lshark/HeapAnalyzer;Ljava/io/File;Lshark/HeapGraph;Lshark/LeakingObjectFinder;Ljava/util/List;ZLjava/util/List;Lshark/MetadataExtractor;ILjava/lang/Object;)Lshark/HeapAnalysis;
    .locals 9

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p4

    :goto_0
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    move v6, p5

    :goto_1
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_2

    .line 132
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object v7, p6

    :goto_2
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_3

    .line 133
    sget-object v0, Lshark/MetadataExtractor;->Companion:Lshark/MetadataExtractor$Companion;

    invoke-virtual {v0}, Lshark/MetadataExtractor$Companion;->getNO_OP()Lshark/MetadataExtractor;

    move-result-object v0

    move-object v8, v0

    goto :goto_3

    :cond_3
    move-object/from16 v8, p7

    :goto_3
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Lshark/HeapAnalyzer;->analyze(Ljava/io/File;Lshark/HeapGraph;Lshark/LeakingObjectFinder;Ljava/util/List;ZLjava/util/List;Lshark/MetadataExtractor;)Lshark/HeapAnalysis;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic analyze$default(Lshark/HeapAnalyzer;Ljava/io/File;Lshark/LeakingObjectFinder;Ljava/util/List;ZLjava/util/List;Lshark/MetadataExtractor;Lshark/ProguardMapping;ILjava/lang/Object;)Lshark/HeapAnalysis;
    .locals 9

    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    move v5, p4

    :goto_1
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_2

    .line 79
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, p5

    :goto_2
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_3

    .line 80
    sget-object v0, Lshark/MetadataExtractor;->Companion:Lshark/MetadataExtractor$Companion;

    invoke-virtual {v0}, Lshark/MetadataExtractor$Companion;->getNO_OP()Lshark/MetadataExtractor;

    move-result-object v0

    move-object v7, v0

    goto :goto_3

    :cond_3
    move-object v7, p6

    :goto_3
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 81
    move-object v1, v0

    check-cast v1, Lshark/ProguardMapping;

    move-object v8, v0

    goto :goto_4

    :cond_4
    move-object/from16 v8, p7

    :goto_4
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v8}, Lshark/HeapAnalyzer;->analyze(Ljava/io/File;Lshark/LeakingObjectFinder;Ljava/util/List;ZLjava/util/List;Lshark/MetadataExtractor;Lshark/ProguardMapping;)Lshark/HeapAnalysis;

    move-result-object v0

    return-object v0
.end method

.method private final analyzeGraph(Lshark/HeapAnalyzer$FindLeakInput;Lshark/MetadataExtractor;Lshark/LeakingObjectFinder;Ljava/io/File;J)Lshark/HeapAnalysisSuccess;
    .locals 16

    move-object/from16 v0, p0

    .line 158
    iget-object v1, v0, Lshark/HeapAnalyzer;->listener:Lshark/OnAnalysisProgressListener;

    sget-object v2, Lshark/OnAnalysisProgressListener$Step;->EXTRACTING_METADATA:Lshark/OnAnalysisProgressListener$Step;

    invoke-interface {v1, v2}, Lshark/OnAnalysisProgressListener;->onAnalysisProgress(Lshark/OnAnalysisProgressListener$Step;)V

    .line 159
    invoke-virtual/range {p1 .. p1}, Lshark/HeapAnalyzer$FindLeakInput;->getGraph()Lshark/HeapGraph;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Lshark/MetadataExtractor;->extractMetadata(Lshark/HeapGraph;)Ljava/util/Map;

    move-result-object v1

    .line 161
    sget-object v2, Lshark/KeyedWeakReferenceFinder;->INSTANCE:Lshark/KeyedWeakReferenceFinder;

    invoke-virtual/range {p1 .. p1}, Lshark/HeapAnalyzer$FindLeakInput;->getGraph()Lshark/HeapGraph;

    move-result-object v3

    invoke-virtual {v2, v3}, Lshark/KeyedWeakReferenceFinder;->findKeyedWeakReferences$shark(Lshark/HeapGraph;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 636
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 637
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lshark/internal/KeyedWeakReferenceMirror;

    .line 162
    invoke-virtual {v5}, Lshark/internal/KeyedWeakReferenceMirror;->isRetained()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lshark/internal/KeyedWeakReferenceMirror;->getHasReferent()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 638
    :cond_2
    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    .line 162
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " KeyedWeakReference instances"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Count of retained yet cleared"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    :cond_3
    move-object v10, v1

    .line 172
    iget-object v1, v0, Lshark/HeapAnalyzer;->listener:Lshark/OnAnalysisProgressListener;

    sget-object v2, Lshark/OnAnalysisProgressListener$Step;->FINDING_RETAINED_OBJECTS:Lshark/OnAnalysisProgressListener$Step;

    invoke-interface {v1, v2}, Lshark/OnAnalysisProgressListener;->onAnalysisProgress(Lshark/OnAnalysisProgressListener$Step;)V

    .line 173
    invoke-virtual/range {p1 .. p1}, Lshark/HeapAnalyzer$FindLeakInput;->getGraph()Lshark/HeapGraph;

    move-result-object v1

    move-object/from16 v2, p3

    invoke-interface {v2, v1}, Lshark/LeakingObjectFinder;->findLeakingObjectIds(Lshark/HeapGraph;)Ljava/util/Set;

    move-result-object v1

    move-object/from16 v2, p1

    .line 175
    invoke-direct {v0, v2, v1}, Lshark/HeapAnalyzer;->findLeaks(Lshark/HeapAnalyzer$FindLeakInput;Ljava/util/Set;)Lshark/HeapAnalyzer$LeaksAndUnreachableObjects;

    move-result-object v1

    invoke-virtual {v1}, Lshark/HeapAnalyzer$LeaksAndUnreachableObjects;->component1()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v1}, Lshark/HeapAnalyzer$LeaksAndUnreachableObjects;->component2()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v1}, Lshark/HeapAnalyzer$LeaksAndUnreachableObjects;->component3()Ljava/util/List;

    move-result-object v13

    .line 177
    new-instance v1, Lshark/HeapAnalysisSuccess;

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide/from16 v2, p5

    .line 180
    invoke-direct {v0, v2, v3}, Lshark/HeapAnalyzer;->since(J)J

    move-result-wide v8

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object v2, v1

    move-object/from16 v3, p4

    .line 177
    invoke-direct/range {v2 .. v15}, Lshark/HeapAnalysisSuccess;-><init>(Ljava/io/File;JJJLjava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method private final buildLeakTraceObjects(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lshark/HeapAnalyzer$InspectedObject;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/util/List<",
            "Lshark/LeakTraceObject;",
            ">;"
        }
    .end annotation

    .line 458
    check-cast p1, Ljava/lang/Iterable;

    .line 734
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 735
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 736
    check-cast v1, Lshark/HeapAnalyzer$InspectedObject;

    .line 459
    invoke-virtual {v1}, Lshark/HeapAnalyzer$InspectedObject;->getHeapObject()Lshark/HeapObject;

    move-result-object v2

    .line 460
    invoke-direct {p0, v2}, Lshark/HeapAnalyzer;->recordClassName(Lshark/HeapObject;)Ljava/lang/String;

    move-result-object v5

    .line 462
    instance-of v3, v2, Lshark/HeapObject$HeapClass;

    if-eqz v3, :cond_0

    .line 463
    sget-object v2, Lshark/LeakTraceObject$ObjectType;->CLASS:Lshark/LeakTraceObject$ObjectType;

    :goto_1
    move-object v4, v2

    goto :goto_3

    .line 464
    :cond_0
    instance-of v3, v2, Lshark/HeapObject$HeapObjectArray;

    if-nez v3, :cond_2

    instance-of v2, v2, Lshark/HeapObject$HeapPrimitiveArray;

    if-eqz v2, :cond_1

    goto :goto_2

    .line 467
    :cond_1
    sget-object v2, Lshark/LeakTraceObject$ObjectType;->INSTANCE:Lshark/LeakTraceObject$ObjectType;

    goto :goto_1

    .line 465
    :cond_2
    :goto_2
    sget-object v2, Lshark/LeakTraceObject$ObjectType;->ARRAY:Lshark/LeakTraceObject$ObjectType;

    goto :goto_1

    :goto_3
    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 470
    invoke-virtual {v1}, Lshark/HeapAnalyzer$InspectedObject;->getHeapObject()Lshark/HeapObject;

    move-result-object v3

    invoke-virtual {v3}, Lshark/HeapObject;->getObjectId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    goto :goto_4

    :cond_3
    move-object v3, v2

    .line 472
    :goto_4
    new-instance v11, Lshark/LeakTraceObject;

    .line 475
    invoke-virtual {v1}, Lshark/HeapAnalyzer$InspectedObject;->getLabels()Ljava/util/Set;

    move-result-object v6

    .line 476
    invoke-virtual {v1}, Lshark/HeapAnalyzer$InspectedObject;->getLeakingStatus()Lshark/LeakTraceObject$LeakingStatus;

    move-result-object v7

    .line 477
    invoke-virtual {v1}, Lshark/HeapAnalyzer$InspectedObject;->getLeakingStatusReason()Ljava/lang/String;

    move-result-object v8

    if-eqz v3, :cond_4

    .line 478
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v9, v1

    goto :goto_5

    :cond_4
    move-object v9, v2

    :goto_5
    if-eqz v3, :cond_5

    .line 479
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v10, v1

    goto :goto_6

    :cond_5
    move-object v10, v2

    :goto_6
    move-object v3, v11

    .line 472
    invoke-direct/range {v3 .. v10}, Lshark/LeakTraceObject;-><init>(Lshark/LeakTraceObject$ObjectType;Ljava/lang/String;Ljava/util/Set;Lshark/LeakTraceObject$LeakingStatus;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-interface {v0, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 737
    :cond_6
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final buildLeakTraces(Lshark/HeapAnalyzer$FindLeakInput;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)Lkotlin/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/HeapAnalyzer$FindLeakInput;",
            "Ljava/util/List<",
            "Lshark/HeapAnalyzer$ShortestPath;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Lshark/HeapAnalyzer$InspectedObject;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Lshark/ApplicationLeak;",
            ">;",
            "Ljava/util/List<",
            "Lshark/LibraryLeak;",
            ">;>;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lshark/HeapAnalyzer;->listener:Lshark/OnAnalysisProgressListener;

    sget-object v1, Lshark/OnAnalysisProgressListener$Step;->BUILDING_LEAK_TRACES:Lshark/OnAnalysisProgressListener$Step;

    invoke-interface {v0, v1}, Lshark/OnAnalysisProgressListener;->onAnalysisProgress(Lshark/OnAnalysisProgressListener$Step;)V

    .line 362
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 364
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 366
    check-cast p2, Ljava/lang/Iterable;

    .line 670
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v3, Lshark/HeapAnalyzer$ShortestPath;

    .line 367
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 369
    invoke-direct {p0, v2, p4}, Lshark/HeapAnalyzer;->buildLeakTraceObjects(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 371
    invoke-virtual {v3}, Lshark/HeapAnalyzer$ShortestPath;->getChildPath()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, p1, v5, v2}, Lshark/HeapAnalyzer;->buildReferencePath(Lshark/HeapAnalyzer$FindLeakInput;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 373
    new-instance v6, Lshark/LeakTrace;

    .line 374
    sget-object v7, Lshark/LeakTrace$GcRootType;->Companion:Lshark/LeakTrace$GcRootType$Companion;

    invoke-virtual {v3}, Lshark/HeapAnalyzer$ShortestPath;->getRoot()Lshark/internal/ReferencePathNode$RootNode;

    move-result-object v8

    invoke-virtual {v8}, Lshark/internal/ReferencePathNode$RootNode;->getGcRoot()Lshark/GcRoot;

    move-result-object v8

    invoke-virtual {v7, v8}, Lshark/LeakTrace$GcRootType$Companion;->fromGcRoot(Lshark/GcRoot;)Lshark/LeakTrace$GcRootType;

    move-result-object v7

    .line 376
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lshark/LeakTraceObject;

    .line 373
    invoke-direct {v6, v7, v5, v2}, Lshark/LeakTrace;-><init>(Lshark/LeakTrace$GcRootType;Ljava/util/List;Lshark/LeakTraceObject;)V

    .line 379
    invoke-virtual {v3}, Lshark/HeapAnalyzer$ShortestPath;->getRoot()Lshark/internal/ReferencePathNode$RootNode;

    move-result-object v2

    instance-of v2, v2, Lshark/internal/ReferencePathNode$LibraryLeakNode;

    if-eqz v2, :cond_1

    .line 380
    invoke-virtual {v3}, Lshark/HeapAnalyzer$ShortestPath;->getRoot()Lshark/internal/ReferencePathNode$RootNode;

    move-result-object v2

    check-cast v2, Lshark/internal/ReferencePathNode$LibraryLeakNode;

    goto :goto_2

    .line 382
    :cond_1
    invoke-virtual {v3}, Lshark/HeapAnalyzer$ShortestPath;->getChildPath()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 671
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lshark/internal/ReferencePathNode$ChildNode;

    .line 382
    instance-of v5, v5, Lshark/internal/ReferencePathNode$LibraryLeakNode;

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 672
    :goto_1
    move-object v2, v3

    check-cast v2, Lshark/internal/ReferencePathNode$LibraryLeakNode;

    :goto_2
    if-eqz v2, :cond_5

    .line 386
    invoke-interface {v2}, Lshark/internal/ReferencePathNode$LibraryLeakNode;->getMatcher()Lshark/LibraryLeakReferenceMatcher;

    move-result-object v2

    .line 387
    invoke-virtual {v2}, Lshark/LibraryLeakReferenceMatcher;->getPattern()Lshark/ReferencePattern;

    move-result-object v3

    invoke-virtual {v3}, Lshark/ReferencePattern;->toString()Ljava/lang/String;

    move-result-object v3

    .line 388
    invoke-static {v3}, Lshark/internal/StringsKt;->createSHA1Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 673
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    .line 389
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 676
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    :cond_4
    check-cast v5, Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    .line 390
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 392
    :cond_5
    invoke-virtual {v6}, Lshark/LeakTrace;->getSignature()Ljava/lang/String;

    move-result-object v2

    .line 680
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    .line 392
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 683
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    :cond_6
    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    .line 392
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_3
    move v2, v4

    goto/16 :goto_0

    .line 688
    :cond_7
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 689
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 690
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    .line 396
    new-instance p4, Lshark/ApplicationLeak;

    invoke-direct {p4, p3}, Lshark/ApplicationLeak;-><init>(Ljava/util/List;)V

    invoke-interface {p1, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 691
    :cond_8
    check-cast p1, Ljava/util/List;

    .line 692
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 693
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 694
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lkotlin/Pair;

    .line 399
    invoke-virtual {p4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lshark/LibraryLeakReferenceMatcher;

    invoke-virtual {p4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    .line 400
    new-instance v1, Lshark/LibraryLeak;

    invoke-virtual {v0}, Lshark/LibraryLeakReferenceMatcher;->getPattern()Lshark/ReferencePattern;

    move-result-object v2

    invoke-virtual {v0}, Lshark/LibraryLeakReferenceMatcher;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p4, v2, v0}, Lshark/LibraryLeak;-><init>(Ljava/util/List;Lshark/ReferencePattern;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 695
    :cond_9
    check-cast p2, Ljava/util/List;

    .line 402
    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final buildReferencePath(Lshark/HeapAnalyzer$FindLeakInput;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/HeapAnalyzer$FindLeakInput;",
            "Ljava/util/List<",
            "+",
            "Lshark/internal/ReferencePathNode$ChildNode;",
            ">;",
            "Ljava/util/List<",
            "Lshark/LeakTraceObject;",
            ">;)",
            "Ljava/util/List<",
            "Lshark/LeakTraceReference;",
            ">;"
        }
    .end annotation

    .line 488
    check-cast p2, Ljava/lang/Iterable;

    .line 738
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 740
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    .line 741
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v2, Lshark/internal/ReferencePathNode$ChildNode;

    .line 489
    new-instance v4, Lshark/LeakTraceReference;

    .line 490
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lshark/LeakTraceObject;

    .line 491
    invoke-virtual {v2}, Lshark/internal/ReferencePathNode$ChildNode;->getRefFromParentType()Lshark/LeakTraceReference$ReferenceType;

    move-result-object v6

    .line 492
    invoke-virtual {v2}, Lshark/internal/ReferencePathNode$ChildNode;->getOwningClassId()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_2

    .line 493
    invoke-virtual {p1}, Lshark/HeapAnalyzer$FindLeakInput;->getGraph()Lshark/HeapGraph;

    move-result-object v1

    invoke-virtual {v2}, Lshark/internal/ReferencePathNode$ChildNode;->getOwningClassId()J

    move-result-wide v7

    invoke-interface {v1, v7, v8}, Lshark/HeapGraph;->findObjectById(J)Lshark/HeapObject;

    move-result-object v1

    invoke-virtual {v1}, Lshark/HeapObject;->getAsClass()Lshark/HeapObject$HeapClass;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v1}, Lshark/HeapObject$HeapClass;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 495
    :cond_2
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lshark/LeakTraceObject;

    invoke-virtual {v1}, Lshark/LeakTraceObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 497
    :goto_1
    invoke-virtual {v2}, Lshark/internal/ReferencePathNode$ChildNode;->getRefFromParentName()Ljava/lang/String;

    move-result-object v2

    .line 489
    invoke-direct {v4, v5, v6, v1, v2}, Lshark/LeakTraceReference;-><init>(Lshark/LeakTraceObject;Lshark/LeakTraceReference$ReferenceType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    .line 742
    :cond_3
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final computeLeakStatuses(Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lshark/ObjectReporter;",
            ">;)",
            "Ljava/util/List<",
            "Lshark/HeapAnalyzer$InspectedObject;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 510
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 512
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v4, -0x1

    iput v4, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 513
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v1, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 515
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 517
    move-object/from16 v6, p1

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eqz v10, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lshark/ObjectReporter;

    if-ne v9, v1, :cond_0

    const/4 v13, 0x1

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    .line 519
    :goto_1
    invoke-direct {v0, v10, v13}, Lshark/HeapAnalyzer;->resolveStatus(Lshark/ObjectReporter;Z)Lkotlin/Pair;

    move-result-object v10

    if-ne v9, v1, :cond_3

    .line 522
    invoke-virtual {v10}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lshark/LeakTraceObject$LeakingStatus;

    sget-object v14, Lshark/HeapAnalyzer$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v13}, Lshark/LeakTraceObject$LeakingStatus;->ordinal()I

    move-result v13

    aget v13, v14, v13

    if-eq v13, v2, :cond_3

    if-eq v13, v12, :cond_2

    if-ne v13, v11, :cond_1

    .line 525
    sget-object v11, Lshark/LeakTraceObject$LeakingStatus;->LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "This is the leaking object. Conflicts with "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    goto :goto_2

    :cond_1
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 524
    :cond_2
    sget-object v10, Lshark/LeakTraceObject$LeakingStatus;->LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    const-string v11, "This is the leaking object"

    invoke-static {v10, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    .line 530
    :cond_3
    :goto_2
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    invoke-virtual {v10}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lshark/LeakTraceObject$LeakingStatus;

    .line 532
    sget-object v11, Lshark/LeakTraceObject$LeakingStatus;->NOT_LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    if-ne v10, v11, :cond_4

    .line 533
    iput v9, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 536
    iput v1, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_3

    .line 537
    :cond_4
    sget-object v11, Lshark/LeakTraceObject$LeakingStatus;->LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    if-ne v10, v11, :cond_5

    iget v10, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ne v10, v1, :cond_5

    .line 538
    iput v9, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_5
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 743
    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v6, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 744
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 745
    check-cast v13, Lshark/ObjectReporter;

    .line 543
    invoke-virtual {v13}, Lshark/ObjectReporter;->getHeapObject()Lshark/HeapObject;

    move-result-object v13

    invoke-direct {v0, v13}, Lshark/HeapAnalyzer;->recordClassName(Lshark/HeapObject;)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x2e

    invoke-static {v13, v14}, Lshark/internal/StringsKt;->lastSegment(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 746
    :cond_7
    check-cast v7, Ljava/util/List;

    .line 546
    iget v10, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v13, 0x0

    :goto_5
    const-string v14, "Sequence contains no element matching the predicate."

    if-ge v13, v10, :cond_e

    .line 547
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lkotlin/Pair;

    invoke-virtual {v15}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lshark/LeakTraceObject$LeakingStatus;

    invoke-virtual {v15}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    add-int/lit8 v17, v13, 0x1

    .line 548
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lshark/HeapAnalyzer$computeLeakStatuses$nextNotLeakingIndex$1;

    invoke-direct {v9, v3}, Lshark/HeapAnalyzer$computeLeakStatuses$nextNotLeakingIndex$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v9}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v8

    .line 747
    invoke-interface {v8}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 551
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/Pair;

    invoke-virtual {v11}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lshark/LeakTraceObject$LeakingStatus;

    sget-object v12, Lshark/LeakTraceObject$LeakingStatus;->NOT_LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    if-ne v11, v12, :cond_8

    const/4 v11, 0x1

    goto :goto_7

    :cond_8
    const/4 v11, 0x0

    :goto_7
    if-eqz v11, :cond_c

    .line 548
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 555
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 556
    sget-object v9, Lshark/HeapAnalyzer$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual/range {v16 .. v16}, Lshark/LeakTraceObject$LeakingStatus;->ordinal()I

    move-result v11

    aget v9, v9, v11

    if-eq v9, v2, :cond_b

    const/4 v11, 0x2

    if-eq v9, v11, :cond_a

    const/4 v11, 0x3

    if-ne v9, v11, :cond_9

    .line 559
    sget-object v9, Lshark/LeakTraceObject$LeakingStatus;->NOT_LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\u2193 is not leaking. Conflicts with "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    goto :goto_8

    :cond_9
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 558
    :cond_a
    sget-object v9, Lshark/LeakTraceObject$LeakingStatus;->NOT_LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\u2193 is not leaking and "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    goto :goto_8

    .line 557
    :cond_b
    sget-object v9, Lshark/LeakTraceObject$LeakingStatus;->NOT_LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\u2193 is not leaking"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 556
    :goto_8
    invoke-virtual {v5, v13, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move/from16 v13, v17

    const/16 v9, 0xa

    const/4 v11, 0x3

    const/4 v12, 0x2

    goto/16 :goto_5

    :cond_c
    const/4 v11, 0x3

    const/4 v12, 0x2

    goto/16 :goto_6

    .line 748
    :cond_d
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1, v14}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 563
    :cond_e
    iget v3, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int/2addr v1, v2

    if-ge v3, v1, :cond_15

    .line 565
    iget v3, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v3, v2

    if-lt v1, v3, :cond_15

    .line 566
    :goto_9
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/Pair;

    invoke-virtual {v8}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lshark/LeakTraceObject$LeakingStatus;

    invoke-virtual {v8}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    add-int/lit8 v10, v1, -0x1

    .line 567
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Lshark/HeapAnalyzer$computeLeakStatuses$previousLeakingIndex$1;

    invoke-direct {v11, v4}, Lshark/HeapAnalyzer$computeLeakStatuses$previousLeakingIndex$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-static {v10, v11}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v10

    .line 749
    invoke-interface {v10}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 570
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkotlin/Pair;

    invoke-virtual {v12}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lshark/LeakTraceObject$LeakingStatus;

    sget-object v13, Lshark/LeakTraceObject$LeakingStatus;->LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    if-ne v12, v13, :cond_10

    const/4 v12, 0x1

    goto :goto_a

    :cond_10
    const/4 v12, 0x0

    :goto_a
    if-eqz v12, :cond_f

    .line 567
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 574
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 575
    sget-object v11, Lshark/HeapAnalyzer$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {v9}, Lshark/LeakTraceObject$LeakingStatus;->ordinal()I

    move-result v9

    aget v9, v11, v9

    if-eq v9, v2, :cond_13

    const/4 v11, 0x2

    if-eq v9, v11, :cond_12

    const/4 v12, 0x3

    if-eq v9, v12, :cond_11

    .line 578
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Should never happen"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_12
    const/4 v12, 0x3

    .line 577
    sget-object v9, Lshark/LeakTraceObject$LeakingStatus;->LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\u2191 is leaking and "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    goto :goto_b

    :cond_13
    const/4 v11, 0x2

    const/4 v12, 0x3

    .line 576
    sget-object v8, Lshark/LeakTraceObject$LeakingStatus;->LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\u2191 is leaking"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 575
    :goto_b
    invoke-virtual {v5, v1, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eq v1, v3, :cond_15

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_9

    .line 750
    :cond_14
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1, v14}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 751
    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v6, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 753
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v8, 0x0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v8, 0x1

    if-gez v8, :cond_16

    .line 754
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_16
    check-cast v3, Lshark/ObjectReporter;

    .line 584
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lshark/LeakTraceObject$LeakingStatus;

    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 585
    new-instance v8, Lshark/HeapAnalyzer$InspectedObject;

    .line 586
    invoke-virtual {v3}, Lshark/ObjectReporter;->getHeapObject()Lshark/HeapObject;

    move-result-object v9

    invoke-virtual {v3}, Lshark/ObjectReporter;->getLabels()Ljava/util/LinkedHashSet;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 585
    invoke-direct {v8, v9, v7, v6, v3}, Lshark/HeapAnalyzer$InspectedObject;-><init>(Lshark/HeapObject;Lshark/LeakTraceObject$LeakingStatus;Ljava/lang/String;Ljava/util/Set;)V

    invoke-interface {v1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v8, v4

    goto :goto_c

    .line 755
    :cond_17
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private final computeRetainedSizes(Lshark/HeapAnalyzer$FindLeakInput;Ljava/util/List;Lshark/internal/DominatorTree;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/HeapAnalyzer$FindLeakInput;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Lshark/HeapAnalyzer$InspectedObject;",
            ">;>;",
            "Lshark/internal/DominatorTree;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 438
    check-cast p2, Ljava/lang/Iterable;

    .line 715
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 722
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 723
    check-cast v1, Ljava/util/List;

    .line 439
    check-cast v1, Ljava/lang/Iterable;

    .line 724
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 725
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lshark/HeapAnalyzer$InspectedObject;

    .line 439
    invoke-virtual {v4}, Lshark/HeapAnalyzer$InspectedObject;->getLeakingStatus()Lshark/LeakTraceObject$LeakingStatus;

    move-result-object v5

    sget-object v6, Lshark/LeakTraceObject$LeakingStatus;->UNKNOWN:Lshark/LeakTraceObject$LeakingStatus;

    if-eq v5, v6, :cond_2

    invoke-virtual {v4}, Lshark/HeapAnalyzer$InspectedObject;->getLeakingStatus()Lshark/LeakTraceObject$LeakingStatus;

    move-result-object v4

    sget-object v5, Lshark/LeakTraceObject$LeakingStatus;->LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 726
    :cond_3
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 727
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 728
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 729
    check-cast v3, Lshark/HeapAnalyzer$InspectedObject;

    .line 440
    invoke-virtual {v3}, Lshark/HeapAnalyzer$InspectedObject;->getHeapObject()Lshark/HeapObject;

    move-result-object v3

    invoke-virtual {v3}, Lshark/HeapObject;->getObjectId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 730
    :cond_4
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 731
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 733
    :cond_5
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 441
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    .line 442
    iget-object v0, p0, Lshark/HeapAnalyzer;->listener:Lshark/OnAnalysisProgressListener;

    sget-object v1, Lshark/OnAnalysisProgressListener$Step;->COMPUTING_NATIVE_RETAINED_SIZE:Lshark/OnAnalysisProgressListener$Step;

    invoke-interface {v0, v1}, Lshark/OnAnalysisProgressListener;->onAnalysisProgress(Lshark/OnAnalysisProgressListener$Step;)V

    .line 443
    new-instance v0, Lshark/internal/AndroidNativeSizeMapper;

    invoke-virtual {p1}, Lshark/HeapAnalyzer$FindLeakInput;->getGraph()Lshark/HeapGraph;

    move-result-object v1

    invoke-direct {v0, v1}, Lshark/internal/AndroidNativeSizeMapper;-><init>(Lshark/HeapGraph;)V

    .line 444
    invoke-virtual {v0}, Lshark/internal/AndroidNativeSizeMapper;->mapNativeSizes()Ljava/util/Map;

    move-result-object v0

    .line 445
    iget-object v1, p0, Lshark/HeapAnalyzer;->listener:Lshark/OnAnalysisProgressListener;

    sget-object v2, Lshark/OnAnalysisProgressListener$Step;->COMPUTING_RETAINED_SIZE:Lshark/OnAnalysisProgressListener$Step;

    invoke-interface {v1, v2}, Lshark/OnAnalysisProgressListener;->onAnalysisProgress(Lshark/OnAnalysisProgressListener$Step;)V

    .line 446
    new-instance v1, Lshark/internal/ShallowSizeCalculator;

    invoke-virtual {p1}, Lshark/HeapAnalyzer$FindLeakInput;->getGraph()Lshark/HeapGraph;

    move-result-object p1

    invoke-direct {v1, p1}, Lshark/internal/ShallowSizeCalculator;-><init>(Lshark/HeapGraph;)V

    .line 447
    new-instance p1, Lshark/HeapAnalyzer$computeRetainedSizes$1;

    invoke-direct {p1, v0, v1}, Lshark/HeapAnalyzer$computeRetainedSizes$1;-><init>(Ljava/util/Map;Lshark/internal/ShallowSizeCalculator;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p3, p2, p1}, Lshark/internal/DominatorTree;->computeRetainedSizes(Ljava/util/Set;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private final deduplicateShortestPaths(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lshark/internal/ReferencePathNode;",
            ">;)",
            "Ljava/util/List<",
            "Lshark/HeapAnalyzer$ShortestPath;",
            ">;"
        }
    .end annotation

    .line 272
    new-instance v0, Lshark/HeapAnalyzer$TrieNode$ParentNode;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lshark/HeapAnalyzer$TrieNode$ParentNode;-><init>(J)V

    .line 274
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .line 655
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lshark/internal/ReferencePathNode;

    .line 277
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    move-object v5, v2

    .line 279
    :goto_1
    instance-of v6, v5, Lshark/internal/ReferencePathNode$ChildNode;

    if-eqz v6, :cond_0

    .line 280
    invoke-virtual {v5}, Lshark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v3, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 281
    check-cast v5, Lshark/internal/ReferencePathNode$ChildNode;

    invoke-virtual {v5}, Lshark/internal/ReferencePathNode$ChildNode;->getParent()Lshark/internal/ReferencePathNode;

    move-result-object v5

    goto :goto_1

    .line 283
    :cond_0
    invoke-virtual {v5}, Lshark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 284
    invoke-direct {p0, v2, v4, v3, v0}, Lshark/HeapAnalyzer;->updateTrie(Lshark/internal/ReferencePathNode;Ljava/util/List;ILshark/HeapAnalyzer$TrieNode$ParentNode;)V

    goto :goto_0

    .line 287
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 288
    invoke-direct {p0, v0, v1}, Lshark/HeapAnalyzer;->findResultsInTrie(Lshark/HeapAnalyzer$TrieNode$ParentNode;Ljava/util/List;)V

    .line 290
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const-string v4, "Found "

    if-eq v0, v2, :cond_2

    .line 291
    sget-object v0, Lshark/SharkLog;->INSTANCE:Lshark/SharkLog;

    .line 657
    invoke-virtual {v0}, Lshark/SharkLog;->getLogger()Lshark/SharkLog$Logger;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " paths to retained objects, down to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " after removing duplicated paths"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lshark/SharkLog$Logger;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 296
    :cond_2
    sget-object p1, Lshark/SharkLog;->INSTANCE:Lshark/SharkLog;

    .line 660
    invoke-virtual {p1}, Lshark/SharkLog;->getLogger()Lshark/SharkLog$Logger;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " paths to retained objects"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lshark/SharkLog$Logger;->d(Ljava/lang/String;)V

    .line 299
    :cond_3
    :goto_2
    check-cast v1, Ljava/lang/Iterable;

    .line 663
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 664
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 665
    check-cast v1, Lshark/internal/ReferencePathNode;

    .line 300
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 302
    :goto_4
    instance-of v4, v1, Lshark/internal/ReferencePathNode$ChildNode;

    if-eqz v4, :cond_4

    .line 303
    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 304
    check-cast v1, Lshark/internal/ReferencePathNode$ChildNode;

    invoke-virtual {v1}, Lshark/internal/ReferencePathNode$ChildNode;->getParent()Lshark/internal/ReferencePathNode;

    move-result-object v1

    goto :goto_4

    :cond_4
    if-eqz v1, :cond_5

    .line 306
    check-cast v1, Lshark/internal/ReferencePathNode$RootNode;

    .line 307
    new-instance v4, Lshark/HeapAnalyzer$ShortestPath;

    invoke-direct {v4, v1, v2}, Lshark/HeapAnalyzer$ShortestPath;-><init>(Lshark/internal/ReferencePathNode$RootNode;Ljava/util/List;)V

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 306
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type shark.internal.ReferencePathNode.RootNode"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 666
    :cond_6
    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private final findLeaks(Lshark/HeapAnalyzer$FindLeakInput;Ljava/util/Set;)Lshark/HeapAnalyzer$LeaksAndUnreachableObjects;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/HeapAnalyzer$FindLeakInput;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Lshark/HeapAnalyzer$LeaksAndUnreachableObjects;"
        }
    .end annotation

    .line 195
    new-instance v0, Lshark/internal/PathFinder;

    invoke-virtual {p1}, Lshark/HeapAnalyzer$FindLeakInput;->getGraph()Lshark/HeapGraph;

    move-result-object v1

    iget-object v2, p0, Lshark/HeapAnalyzer;->listener:Lshark/OnAnalysisProgressListener;

    invoke-virtual {p1}, Lshark/HeapAnalyzer$FindLeakInput;->getReferenceMatchers()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lshark/internal/PathFinder;-><init>(Lshark/HeapGraph;Lshark/OnAnalysisProgressListener;Ljava/util/List;)V

    .line 197
    invoke-virtual {p1}, Lshark/HeapAnalyzer$FindLeakInput;->getComputeRetainedHeapSize()Z

    move-result v1

    invoke-virtual {v0, p2, v1}, Lshark/internal/PathFinder;->findPathsFromGcRoots(Ljava/util/Set;Z)Lshark/internal/PathFinder$PathFindingResults;

    move-result-object v0

    .line 199
    invoke-direct {p0, p1, v0, p2}, Lshark/HeapAnalyzer;->findUnreachableObjects(Lshark/HeapAnalyzer$FindLeakInput;Lshark/internal/PathFinder$PathFindingResults;Ljava/util/Set;)Ljava/util/List;

    move-result-object p2

    .line 202
    invoke-virtual {v0}, Lshark/internal/PathFinder$PathFindingResults;->getPathsToLeakingObjects()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lshark/HeapAnalyzer;->deduplicateShortestPaths(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 204
    invoke-direct {p0, p1, v1}, Lshark/HeapAnalyzer;->inspectObjects(Lshark/HeapAnalyzer$FindLeakInput;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 207
    invoke-virtual {v0}, Lshark/internal/PathFinder$PathFindingResults;->getDominatorTree()Lshark/internal/DominatorTree;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 208
    invoke-virtual {v0}, Lshark/internal/PathFinder$PathFindingResults;->getDominatorTree()Lshark/internal/DominatorTree;

    move-result-object v0

    invoke-direct {p0, p1, v2, v0}, Lshark/HeapAnalyzer;->computeRetainedSizes(Lshark/HeapAnalyzer$FindLeakInput;Ljava/util/List;Lshark/internal/DominatorTree;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 212
    :goto_0
    invoke-direct {p0, p1, v1, v2, v0}, Lshark/HeapAnalyzer;->buildLeakTraces(Lshark/HeapAnalyzer$FindLeakInput;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 215
    new-instance v1, Lshark/HeapAnalyzer$LeaksAndUnreachableObjects;

    invoke-direct {v1, v0, p1, p2}, Lshark/HeapAnalyzer$LeaksAndUnreachableObjects;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method private final findResultsInTrie(Lshark/HeapAnalyzer$TrieNode$ParentNode;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/HeapAnalyzer$TrieNode$ParentNode;",
            "Ljava/util/List<",
            "Lshark/internal/ReferencePathNode;",
            ">;)V"
        }
    .end annotation

    .line 336
    invoke-virtual {p1}, Lshark/HeapAnalyzer$TrieNode$ParentNode;->getChildren()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 667
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lshark/HeapAnalyzer$TrieNode;

    .line 338
    instance-of v1, v0, Lshark/HeapAnalyzer$TrieNode$ParentNode;

    if-eqz v1, :cond_1

    .line 339
    check-cast v0, Lshark/HeapAnalyzer$TrieNode$ParentNode;

    invoke-direct {p0, v0, p2}, Lshark/HeapAnalyzer;->findResultsInTrie(Lshark/HeapAnalyzer$TrieNode$ParentNode;Ljava/util/List;)V

    goto :goto_0

    .line 341
    :cond_1
    instance-of v1, v0, Lshark/HeapAnalyzer$TrieNode$LeafNode;

    if-eqz v1, :cond_0

    .line 342
    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    check-cast v0, Lshark/HeapAnalyzer$TrieNode$LeafNode;

    invoke-virtual {v0}, Lshark/HeapAnalyzer$TrieNode$LeafNode;->getPathNode()Lshark/internal/ReferencePathNode;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final findUnreachableObjects(Lshark/HeapAnalyzer$FindLeakInput;Lshark/internal/PathFinder$PathFindingResults;Ljava/util/Set;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/HeapAnalyzer$FindLeakInput;",
            "Lshark/internal/PathFinder$PathFindingResults;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Lshark/LeakTraceObject;",
            ">;"
        }
    .end annotation

    .line 223
    invoke-virtual {p2}, Lshark/internal/PathFinder$PathFindingResults;->getPathsToLeakingObjects()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 639
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 640
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 641
    check-cast v2, Lshark/internal/ReferencePathNode;

    .line 223
    invoke-virtual {v2}, Lshark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 642
    :cond_0
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 223
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    .line 225
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p3, p2}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    .line 227
    check-cast p2, Ljava/lang/Iterable;

    .line 643
    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p3, Ljava/util/Collection;

    .line 644
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 645
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 228
    new-instance v0, Lshark/ObjectReporter;

    invoke-virtual {p1}, Lshark/HeapAnalyzer$FindLeakInput;->getGraph()Lshark/HeapGraph;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lshark/HeapGraph;->findObjectById(J)Lshark/HeapObject;

    move-result-object v2

    invoke-direct {v0, v2}, Lshark/ObjectReporter;-><init>(Lshark/HeapObject;)V

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 646
    :cond_1
    check-cast p3, Ljava/util/List;

    .line 231
    invoke-virtual {p1}, Lshark/HeapAnalyzer$FindLeakInput;->getObjectInspectors()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 647
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lshark/ObjectInspector;

    .line 232
    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    .line 648
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lshark/ObjectReporter;

    .line 233
    invoke-interface {p2, v2}, Lshark/ObjectInspector;->inspect(Lshark/ObjectReporter;)V

    goto :goto_2

    .line 237
    :cond_3
    check-cast p3, Ljava/lang/Iterable;

    .line 651
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p3, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 652
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 653
    check-cast p3, Lshark/ObjectReporter;

    const/4 v0, 0x1

    .line 238
    invoke-direct {p0, p3, v0}, Lshark/HeapAnalyzer;->resolveStatus(Lshark/ObjectReporter;Z)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lshark/LeakTraceObject$LeakingStatus;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 239
    sget-object v3, Lshark/HeapAnalyzer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lshark/LeakTraceObject$LeakingStatus;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v0, :cond_6

    const/4 v0, 0x2

    if-eq v2, v0, :cond_5

    const/4 v0, 0x3

    if-ne v2, v0, :cond_4

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "This is a leaking object. Conflicts with "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_5
    const-string v1, "This is a leaking object"

    .line 245
    :cond_6
    :goto_4
    new-instance v0, Lshark/HeapAnalyzer$InspectedObject;

    .line 246
    invoke-virtual {p3}, Lshark/ObjectReporter;->getHeapObject()Lshark/HeapObject;

    move-result-object v2

    sget-object v3, Lshark/LeakTraceObject$LeakingStatus;->LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    invoke-virtual {p3}, Lshark/ObjectReporter;->getLabels()Ljava/util/LinkedHashSet;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    .line 245
    invoke-direct {v0, v2, v3, v1, p3}, Lshark/HeapAnalyzer$InspectedObject;-><init>(Lshark/HeapObject;Lshark/LeakTraceObject$LeakingStatus;Ljava/lang/String;Ljava/util/Set;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 654
    :cond_7
    check-cast p1, Ljava/util/List;

    const/4 p2, 0x0

    .line 250
    invoke-direct {p0, p1, p2}, Lshark/HeapAnalyzer;->buildLeakTraceObjects(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final inspectObjects(Lshark/HeapAnalyzer$FindLeakInput;Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/HeapAnalyzer$FindLeakInput;",
            "Ljava/util/List<",
            "Lshark/HeapAnalyzer$ShortestPath;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lshark/HeapAnalyzer$InspectedObject;",
            ">;>;"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lshark/HeapAnalyzer;->listener:Lshark/OnAnalysisProgressListener;

    sget-object v1, Lshark/OnAnalysisProgressListener$Step;->INSPECTING_OBJECTS:Lshark/OnAnalysisProgressListener$Step;

    invoke-interface {v0, v1}, Lshark/OnAnalysisProgressListener;->onAnalysisProgress(Lshark/OnAnalysisProgressListener$Step;)V

    .line 408
    check-cast p2, Ljava/lang/Iterable;

    .line 696
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 697
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 698
    check-cast v2, Lshark/HeapAnalyzer$ShortestPath;

    .line 409
    invoke-virtual {v2}, Lshark/HeapAnalyzer$ShortestPath;->asList()Ljava/util/List;

    move-result-object v2

    .line 410
    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    .line 699
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 701
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_0

    .line 702
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v6, Lshark/internal/ReferencePathNode;

    .line 412
    new-instance v5, Lshark/ObjectReporter;

    invoke-virtual {p1}, Lshark/HeapAnalyzer$FindLeakInput;->getGraph()Lshark/HeapGraph;

    move-result-object v8

    invoke-virtual {v6}, Lshark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v9

    invoke-interface {v8, v9, v10}, Lshark/HeapGraph;->findObjectById(J)Lshark/HeapObject;

    move-result-object v6

    invoke-direct {v5, v6}, Lshark/ObjectReporter;-><init>(Lshark/HeapObject;)V

    .line 413
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v7, v6, :cond_1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lshark/internal/ReferencePathNode;

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    .line 414
    :goto_2
    instance-of v8, v6, Lshark/internal/ReferencePathNode$LibraryLeakNode;

    if-eqz v8, :cond_2

    .line 415
    invoke-virtual {v5}, Lshark/ObjectReporter;->getLabels()Ljava/util/LinkedHashSet;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Library leak match: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v6, Lshark/internal/ReferencePathNode$LibraryLeakNode;

    invoke-interface {v6}, Lshark/internal/ReferencePathNode$LibraryLeakNode;->getMatcher()Lshark/LibraryLeakReferenceMatcher;

    move-result-object v6

    invoke-virtual {v6}, Lshark/LibraryLeakReferenceMatcher;->getPattern()Lshark/ReferencePattern;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_2
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v5, v7

    goto :goto_1

    .line 703
    :cond_3
    check-cast v4, Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 704
    :cond_4
    check-cast v0, Ljava/util/List;

    .line 421
    invoke-virtual {p1}, Lshark/HeapAnalyzer$FindLeakInput;->getObjectInspectors()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 705
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lshark/ObjectInspector;

    .line 422
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    .line 706
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 423
    check-cast v3, Ljava/lang/Iterable;

    .line 707
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lshark/ObjectReporter;

    .line 424
    invoke-interface {p2, v4}, Lshark/ObjectInspector;->inspect(Lshark/ObjectReporter;)V

    goto :goto_3

    .line 429
    :cond_7
    check-cast v0, Ljava/lang/Iterable;

    .line 711
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 712
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 713
    check-cast v0, Ljava/util/List;

    .line 430
    invoke-direct {p0, v0}, Lshark/HeapAnalyzer;->computeLeakStatuses(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 714
    :cond_8
    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private final recordClassName(Lshark/HeapObject;)Ljava/lang/String;
    .locals 1

    .line 624
    instance-of v0, p1, Lshark/HeapObject$HeapClass;

    if-eqz v0, :cond_0

    check-cast p1, Lshark/HeapObject$HeapClass;

    invoke-virtual {p1}, Lshark/HeapObject$HeapClass;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 625
    :cond_0
    instance-of v0, p1, Lshark/HeapObject$HeapInstance;

    if-eqz v0, :cond_1

    check-cast p1, Lshark/HeapObject$HeapInstance;

    invoke-virtual {p1}, Lshark/HeapObject$HeapInstance;->getInstanceClassName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 626
    :cond_1
    instance-of v0, p1, Lshark/HeapObject$HeapObjectArray;

    if-eqz v0, :cond_2

    check-cast p1, Lshark/HeapObject$HeapObjectArray;

    invoke-virtual {p1}, Lshark/HeapObject$HeapObjectArray;->getArrayClassName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 627
    :cond_2
    instance-of v0, p1, Lshark/HeapObject$HeapPrimitiveArray;

    if-eqz v0, :cond_3

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

.method private final resolveStatus(Lshark/ObjectReporter;Z)Lkotlin/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/ObjectReporter;",
            "Z)",
            "Lkotlin/Pair<",
            "Lshark/LeakTraceObject$LeakingStatus;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 595
    sget-object v0, Lshark/LeakTraceObject$LeakingStatus;->UNKNOWN:Lshark/LeakTraceObject$LeakingStatus;

    .line 597
    invoke-virtual {p1}, Lshark/ObjectReporter;->getNotLeakingReasons()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, " and "

    if-eqz v1, :cond_0

    .line 598
    sget-object v0, Lshark/LeakTraceObject$LeakingStatus;->NOT_LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    .line 599
    invoke-virtual {p1}, Lshark/ObjectReporter;->getNotLeakingReasons()Ljava/util/Set;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 601
    :goto_0
    invoke-virtual {p1}, Lshark/ObjectReporter;->getLeakingReasons()Ljava/util/Set;

    move-result-object p1

    .line 602
    move-object v3, p1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 603
    move-object v4, p1

    check-cast v4, Ljava/lang/Iterable;

    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3e

    const/4 v12, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 605
    sget-object v2, Lshark/LeakTraceObject$LeakingStatus;->NOT_LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    if-ne v0, v2, :cond_2

    const-string v2, ". Conflicts with "

    if-eqz p2, :cond_1

    .line 607
    sget-object v0, Lshark/LeakTraceObject$LeakingStatus;->LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    .line 608
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 610
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 613
    :cond_2
    sget-object v0, Lshark/LeakTraceObject$LeakingStatus;->LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    move-object v1, p1

    .line 617
    :cond_3
    :goto_1
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final since(J)J
    .locals 3

    .line 632
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    return-wide p1
.end method

.method private final updateTrie(Lshark/internal/ReferencePathNode;Ljava/util/List;ILshark/HeapAnalyzer$TrieNode$ParentNode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/internal/ReferencePathNode;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I",
            "Lshark/HeapAnalyzer$TrieNode$ParentNode;",
            ")V"
        }
    .end annotation

    .line 317
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 318
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v2

    if-ne p3, v2, :cond_0

    .line 319
    invoke-virtual {p4}, Lshark/HeapAnalyzer$TrieNode$ParentNode;->getChildren()Ljava/util/Map;

    move-result-object p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-instance p4, Lshark/HeapAnalyzer$TrieNode$LeafNode;

    invoke-direct {p4, v0, v1, p1}, Lshark/HeapAnalyzer$TrieNode$LeafNode;-><init>(JLshark/internal/ReferencePathNode;)V

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 321
    :cond_0
    invoke-virtual {p4}, Lshark/HeapAnalyzer$TrieNode$ParentNode;->getChildren()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lshark/HeapAnalyzer$TrieNode;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lshark/HeapAnalyzer$updateTrie$childNode$1;

    invoke-direct {v2, v0, v1, p4}, Lshark/HeapAnalyzer$updateTrie$childNode$1;-><init>(JLshark/HeapAnalyzer$TrieNode$ParentNode;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Lshark/HeapAnalyzer$TrieNode;

    .line 326
    :goto_0
    instance-of p4, v2, Lshark/HeapAnalyzer$TrieNode$ParentNode;

    if-eqz p4, :cond_2

    add-int/lit8 p3, p3, 0x1

    .line 327
    check-cast v2, Lshark/HeapAnalyzer$TrieNode$ParentNode;

    invoke-direct {p0, p1, p2, p3, v2}, Lshark/HeapAnalyzer;->updateTrie(Lshark/internal/ReferencePathNode;Ljava/util/List;ILshark/HeapAnalyzer$TrieNode$ParentNode;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final analyze(Ljava/io/File;Lshark/HeapGraph;Lshark/LeakingObjectFinder;Ljava/util/List;ZLjava/util/List;Lshark/MetadataExtractor;)Lshark/HeapAnalysis;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lshark/HeapGraph;",
            "Lshark/LeakingObjectFinder;",
            "Ljava/util/List<",
            "+",
            "Lshark/ReferenceMatcher;",
            ">;Z",
            "Ljava/util/List<",
            "+",
            "Lshark/ObjectInspector;",
            ">;",
            "Lshark/MetadataExtractor;",
            ")",
            "Lshark/HeapAnalysis;"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    const-string v3, "heapDumpFile"

    move-object/from16 v11, p1

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "graph"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "leakingObjectFinder"

    move-object/from16 v7, p3

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "referenceMatchers"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "objectInspectors"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "metadataExtractor"

    move-object/from16 v6, p7

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 138
    :try_start_0
    new-instance v5, Lshark/HeapAnalyzer$FindLeakInput;

    move/from16 v3, p5

    invoke-direct {v5, v0, v1, v3, v2}, Lshark/HeapAnalyzer$FindLeakInput;-><init>(Lshark/HeapGraph;Ljava/util/List;ZLjava/util/List;)V

    move-object v4, p0

    move-object/from16 v6, p7

    move-object/from16 v7, p3

    move-object/from16 v8, p1

    move-wide v9, v12

    .line 139
    invoke-direct/range {v4 .. v10}, Lshark/HeapAnalyzer;->analyzeGraph(Lshark/HeapAnalyzer$FindLeakInput;Lshark/MetadataExtractor;Lshark/LeakingObjectFinder;Ljava/io/File;J)Lshark/HeapAnalysisSuccess;

    move-result-object v0

    check-cast v0, Lshark/HeapAnalysis;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, p0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 143
    new-instance v1, Lshark/HeapAnalysisFailure;

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    move-object v2, p0

    .line 146
    invoke-direct {p0, v12, v13}, Lshark/HeapAnalyzer;->since(J)J

    move-result-wide v12

    .line 147
    new-instance v3, Lshark/HeapAnalysisException;

    invoke-direct {v3, v0}, Lshark/HeapAnalysisException;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x4

    const/4 v14, 0x0

    move-object v4, v1

    move-object/from16 v5, p1

    move-wide v10, v12

    move-object v12, v3

    move v13, v0

    .line 143
    invoke-direct/range {v4 .. v14}, Lshark/HeapAnalysisFailure;-><init>(Ljava/io/File;JJJLshark/HeapAnalysisException;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v1

    check-cast v0, Lshark/HeapAnalysis;

    :goto_0
    return-object v0
.end method

.method public final analyze(Ljava/io/File;Lshark/LeakingObjectFinder;Ljava/util/List;ZLjava/util/List;Lshark/MetadataExtractor;Lshark/ProguardMapping;)Lshark/HeapAnalysis;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lshark/LeakingObjectFinder;",
            "Ljava/util/List<",
            "+",
            "Lshark/ReferenceMatcher;",
            ">;Z",
            "Ljava/util/List<",
            "+",
            "Lshark/ObjectInspector;",
            ">;",
            "Lshark/MetadataExtractor;",
            "Lshark/ProguardMapping;",
            ")",
            "Lshark/HeapAnalysis;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v10, p1

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    const-string v9, ",size="

    const-string v11, ",range="

    const-string v12, ",travel="

    const-string v13, ",reads="

    const-string v14, "RandomAccess[bytes="

    const-string v2, "heapDumpFile"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "leakingObjectFinder"

    move-object/from16 v4, p2

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "referenceMatchers"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "objectInspectors"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "metadataExtractor"

    move-object/from16 v3, p6

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 85
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "File does not exist: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance v1, Lshark/HeapAnalysisFailure;

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    .line 90
    invoke-direct {v8, v6, v7}, Lshark/HeapAnalyzer;->since(J)J

    move-result-wide v15

    .line 91
    new-instance v2, Lshark/HeapAnalysisException;

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Lshark/HeapAnalysisException;-><init>(Ljava/lang/Throwable;)V

    const/16 v18, 0x4

    const/16 v19, 0x0

    move-object v9, v1

    move-object/from16 v10, p1

    move-object/from16 v17, v2

    .line 87
    invoke-direct/range {v9 .. v19}, Lshark/HeapAnalysisFailure;-><init>(Ljava/io/File;JJJLshark/HeapAnalysisException;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lshark/HeapAnalysis;

    return-object v1

    .line 96
    :cond_0
    :try_start_0
    iget-object v2, v8, Lshark/HeapAnalyzer;->listener:Lshark/OnAnalysisProgressListener;

    sget-object v5, Lshark/OnAnalysisProgressListener$Step;->PARSING_HEAP_DUMP:Lshark/OnAnalysisProgressListener$Step;

    invoke-interface {v2, v5}, Lshark/OnAnalysisProgressListener;->onAnalysisProgress(Lshark/OnAnalysisProgressListener$Step;)V

    .line 97
    new-instance v15, Lshark/ConstantMemoryMetricsDualSourceProvider;

    new-instance v2, Lshark/FileSourceProvider;

    invoke-direct {v2, v10}, Lshark/FileSourceProvider;-><init>(Ljava/io/File;)V

    check-cast v2, Lshark/DualSourceProvider;

    invoke-direct {v15, v2}, Lshark/ConstantMemoryMetricsDualSourceProvider;-><init>(Lshark/DualSourceProvider;)V

    .line 98
    sget-object v16, Lshark/HprofHeapGraph;->Companion:Lshark/HprofHeapGraph$Companion;

    move-object/from16 v17, v15

    check-cast v17, Lshark/DualSourceProvider;

    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x0

    move-object/from16 v18, p7

    invoke-static/range {v16 .. v21}, Lshark/HprofHeapGraph$Companion;->openHeapGraph$default(Lshark/HprofHeapGraph$Companion;Lshark/DualSourceProvider;Lshark/ProguardMapping;Ljava/util/Set;ILjava/lang/Object;)Lshark/CloseableHeapGraph;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/io/Closeable;

    const/4 v2, 0x0

    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    move-object/from16 v16, v5

    check-cast v16, Lshark/CloseableHeapGraph;

    .line 100
    new-instance v2, Lshark/HeapAnalyzer$FindLeakInput;

    move-object/from16 v3, v16

    check-cast v3, Lshark/HeapGraph;

    move/from16 v4, p4

    invoke-direct {v2, v3, v0, v4, v1}, Lshark/HeapAnalyzer$FindLeakInput;-><init>(Lshark/HeapGraph;Ljava/util/List;ZLjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p0

    const/4 v0, 0x0

    move-object/from16 v3, p6

    move-object/from16 v4, p2

    move-object v10, v5

    move-object/from16 v5, p1

    move-wide/from16 p2, v6

    .line 101
    :try_start_2
    invoke-direct/range {v1 .. v7}, Lshark/HeapAnalyzer;->analyzeGraph(Lshark/HeapAnalyzer$FindLeakInput;Lshark/MetadataExtractor;Lshark/LeakingObjectFinder;Ljava/io/File;J)Lshark/HeapAnalysisSuccess;

    move-result-object v17

    if-eqz v16, :cond_1

    .line 104
    check-cast v16, Lshark/HprofHeapGraph;

    invoke-virtual/range {v16 .. v16}, Lshark/HprofHeapGraph;->lruCacheStats()Ljava/lang/String;

    move-result-object v1

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v15}, Lshark/ConstantMemoryMetricsDualSourceProvider;->getRandomAccessByteReads()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v15}, Lshark/ConstantMemoryMetricsDualSourceProvider;->getRandomAccessReadCount()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v15}, Lshark/ConstantMemoryMetricsDualSourceProvider;->getRandomAccessByteTravel()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v15}, Lshark/ConstantMemoryMetricsDualSourceProvider;->getByteTravelRange()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    .line 114
    invoke-virtual/range {v17 .. v17}, Lshark/HeapAnalysisSuccess;->getMetadata()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Stats"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0xef

    const/16 v30, 0x0

    invoke-static/range {v17 .. v30}, Lshark/HeapAnalysisSuccess;->copy$default(Lshark/HeapAnalysisSuccess;Ljava/io/File;JJJLjava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lshark/HeapAnalysisSuccess;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    :try_start_3
    invoke-static {v10, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    check-cast v1, Lshark/HeapAnalysis;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    .line 104
    :cond_1
    :try_start_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type shark.HprofHeapGraph"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v10, v5

    move-wide/from16 p2, v6

    :goto_0
    move-object v1, v0

    .line 98
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_6
    invoke-static {v10, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception v0

    move-wide/from16 p2, v6

    .line 117
    :goto_1
    new-instance v1, Lshark/HeapAnalysisFailure;

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    move-wide/from16 v2, p2

    .line 120
    invoke-direct {v8, v2, v3}, Lshark/HeapAnalyzer;->since(J)J

    move-result-wide v15

    .line 121
    new-instance v2, Lshark/HeapAnalysisException;

    invoke-direct {v2, v0}, Lshark/HeapAnalysisException;-><init>(Ljava/lang/Throwable;)V

    const/16 v18, 0x4

    const/16 v19, 0x0

    move-object v9, v1

    move-object/from16 v10, p1

    move-object/from16 v17, v2

    .line 117
    invoke-direct/range {v9 .. v19}, Lshark/HeapAnalysisFailure;-><init>(Ljava/io/File;JJJLshark/HeapAnalysisException;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lshark/HeapAnalysis;

    :goto_2
    return-object v1
.end method
