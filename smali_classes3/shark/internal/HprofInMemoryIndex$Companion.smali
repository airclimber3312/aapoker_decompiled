.class public final Lshark/internal/HprofInMemoryIndex$Companion;
.super Ljava/lang/Object;
.source "HprofInMemoryIndex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/internal/HprofInMemoryIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHprofInMemoryIndex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HprofInMemoryIndex.kt\nshark/internal/HprofInMemoryIndex$Companion\n+ 2 OnHprofRecordTagListener.kt\nshark/OnHprofRecordTagListener$Companion\n*L\n1#1,734:1\n34#2,9:735\n*E\n*S KotlinDebug\n*F\n+ 1 HprofInMemoryIndex.kt\nshark/internal/HprofInMemoryIndex$Companion\n*L\n672#1,9:735\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J.\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lshark/internal/HprofInMemoryIndex$Companion;",
        "",
        "()V",
        "byteSizeForUnsigned",
        "",
        "maxValue",
        "",
        "indexHprof",
        "Lshark/internal/HprofInMemoryIndex;",
        "reader",
        "Lshark/StreamingHprofReader;",
        "hprofHeader",
        "Lshark/HprofHeader;",
        "proguardMapping",
        "Lshark/ProguardMapping;",
        "indexedGcRootTags",
        "",
        "Lshark/HprofRecordTag;",
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

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 640
    invoke-direct {p0}, Lshark/internal/HprofInMemoryIndex$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$byteSizeForUnsigned(Lshark/internal/HprofInMemoryIndex$Companion;J)I
    .locals 0

    .line 640
    invoke-direct {p0, p1, p2}, Lshark/internal/HprofInMemoryIndex$Companion;->byteSizeForUnsigned(J)I

    move-result p0

    return p0
.end method

.method private final byteSizeForUnsigned(J)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    const/16 v1, 0x8

    shr-long/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public final indexHprof(Lshark/StreamingHprofReader;Lshark/HprofHeader;Lshark/ProguardMapping;Ljava/util/Set;)Lshark/internal/HprofInMemoryIndex;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/StreamingHprofReader;",
            "Lshark/HprofHeader;",
            "Lshark/ProguardMapping;",
            "Ljava/util/Set<",
            "+",
            "Lshark/HprofRecordTag;",
            ">;)",
            "Lshark/internal/HprofInMemoryIndex;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const-string v4, "reader"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "hprofHeader"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "indexedGcRootTags"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 660
    new-instance v4, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 661
    new-instance v15, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    iput-wide v5, v15, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 662
    new-instance v14, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    iput-wide v5, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 663
    new-instance v13, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    iput-wide v5, v13, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 664
    new-instance v12, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v11, 0x0

    iput v11, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 665
    new-instance v10, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v11, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 666
    new-instance v9, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v11, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 667
    new-instance v8, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v11, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 668
    new-instance v7, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v11, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 671
    sget-object v5, Lshark/HprofRecordTag;->CLASS_DUMP:Lshark/HprofRecordTag;

    check-cast v5, Ljava/lang/Enum;

    sget-object v6, Lshark/HprofRecordTag;->INSTANCE_DUMP:Lshark/HprofRecordTag;

    check-cast v6, Ljava/lang/Enum;

    sget-object v16, Lshark/HprofRecordTag;->OBJECT_ARRAY_DUMP:Lshark/HprofRecordTag;

    move-object/from16 v11, v16

    check-cast v11, Ljava/lang/Enum;

    sget-object v16, Lshark/HprofRecordTag;->PRIMITIVE_ARRAY_DUMP:Lshark/HprofRecordTag;

    move-object/from16 v18, v7

    move-object/from16 v7, v16

    check-cast v7, Ljava/lang/Enum;

    invoke-static {v5, v6, v11, v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    const-string v6, "EnumSet.of(CLASS_DUMP, I\u2026MP, PRIMITIVE_ARRAY_DUMP)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v5

    check-cast v11, Ljava/util/Set;

    .line 672
    sget-object v5, Lshark/OnHprofRecordTagListener;->Companion:Lshark/OnHprofRecordTagListener$Companion;

    .line 735
    new-instance v16, Lshark/internal/HprofInMemoryIndex$Companion$indexHprof$$inlined$invoke$1;

    move-object/from16 v5, v16

    move-object v6, v12

    move-object/from16 v19, v18

    move-object v7, v4

    move-object/from16 v18, v8

    move-object/from16 v8, v19

    move-object/from16 v20, v9

    move-object v9, v10

    move-object v2, v10

    move-object v10, v15

    move-object v3, v11

    const/16 v17, 0x0

    move-object/from16 v11, v20

    move-object/from16 v21, v2

    move-object v2, v12

    move-object v12, v14

    move-object/from16 v22, v13

    move-object/from16 v13, v18

    move-object/from16 v23, v2

    move-object v2, v14

    move-object/from16 v14, v22

    invoke-direct/range {v5 .. v14}, Lshark/internal/HprofInMemoryIndex$Companion$indexHprof$$inlined$invoke$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$LongRef;)V

    move-object/from16 v5, v16

    check-cast v5, Lshark/OnHprofRecordTagListener;

    .line 670
    invoke-virtual {v1, v3, v5}, Lshark/StreamingHprofReader;->readRecords(Ljava/util/Set;Lshark/OnHprofRecordTagListener;)J

    move-result-wide v26

    .line 702
    move-object v3, v0

    check-cast v3, Lshark/internal/HprofInMemoryIndex$Companion;

    iget-wide v3, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-direct {v0, v3, v4}, Lshark/internal/HprofInMemoryIndex$Companion;->byteSizeForUnsigned(J)I

    move-result v32

    .line 703
    iget-wide v3, v15, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-direct {v0, v3, v4}, Lshark/internal/HprofInMemoryIndex$Companion;->byteSizeForUnsigned(J)I

    move-result v33

    .line 704
    iget-wide v2, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-direct {v0, v2, v3}, Lshark/internal/HprofInMemoryIndex$Companion;->byteSizeForUnsigned(J)I

    move-result v34

    move-object/from16 v2, v22

    .line 705
    iget-wide v2, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-direct {v0, v2, v3}, Lshark/internal/HprofInMemoryIndex$Companion;->byteSizeForUnsigned(J)I

    move-result v35

    .line 707
    new-instance v2, Lshark/internal/HprofInMemoryIndex$Builder;

    .line 708
    invoke-virtual/range {p2 .. p2}, Lshark/HprofHeader;->getIdentifierByteSize()I

    move-result v3

    const/16 v4, 0x8

    const/4 v11, 0x1

    if-ne v3, v4, :cond_0

    move-object/from16 v3, v23

    const/16 v25, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v3, v23

    const/16 v25, 0x0

    .line 710
    :goto_0
    iget v3, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 v4, v21

    .line 711
    iget v4, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 v5, v20

    .line 712
    iget v5, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 v6, v18

    .line 713
    iget v6, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 v7, v19

    .line 718
    iget v7, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 v24, v2

    move/from16 v28, v3

    move/from16 v29, v4

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v36, v7

    .line 707
    invoke-direct/range {v24 .. v36}, Lshark/internal/HprofInMemoryIndex$Builder;-><init>(ZJIIIIIIIII)V

    .line 722
    sget-object v3, Lshark/HprofRecordTag;->STRING_IN_UTF8:Lshark/HprofRecordTag;

    check-cast v3, Ljava/lang/Enum;

    const/4 v4, 0x5

    new-array v4, v4, [Lshark/HprofRecordTag;

    .line 723
    sget-object v5, Lshark/HprofRecordTag;->LOAD_CLASS:Lshark/HprofRecordTag;

    aput-object v5, v4, v17

    .line 724
    sget-object v5, Lshark/HprofRecordTag;->CLASS_DUMP:Lshark/HprofRecordTag;

    aput-object v5, v4, v11

    const/4 v5, 0x2

    .line 725
    sget-object v6, Lshark/HprofRecordTag;->INSTANCE_DUMP:Lshark/HprofRecordTag;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 726
    sget-object v6, Lshark/HprofRecordTag;->OBJECT_ARRAY_DUMP:Lshark/HprofRecordTag;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 727
    sget-object v6, Lshark/HprofRecordTag;->PRIMITIVE_ARRAY_DUMP:Lshark/HprofRecordTag;

    aput-object v6, v4, v5

    .line 721
    invoke-static {v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    const-string v4, "EnumSet.of(\n        STRI\u2026MITIVE_ARRAY_DUMP\n      )"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/Set;

    .line 728
    sget-object v4, Lshark/HprofRecordTag;->Companion:Lshark/HprofRecordTag$Companion;

    invoke-virtual {v4}, Lshark/HprofRecordTag$Companion;->getRootTags()Ljava/util/EnumSet;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    move-object/from16 v5, p4

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->intersect(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v3, v4}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    .line 730
    move-object v4, v2

    check-cast v4, Lshark/OnHprofRecordTagListener;

    invoke-virtual {v1, v3, v4}, Lshark/StreamingHprofReader;->readRecords(Ljava/util/Set;Lshark/OnHprofRecordTagListener;)J

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    .line 731
    invoke-virtual {v2, v3, v1}, Lshark/internal/HprofInMemoryIndex$Builder;->buildIndex(Lshark/ProguardMapping;Lshark/HprofHeader;)Lshark/internal/HprofInMemoryIndex;

    move-result-object v1

    return-object v1
.end method
