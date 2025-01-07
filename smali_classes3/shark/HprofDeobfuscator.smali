.class public final Lshark/HprofDeobfuscator;
.super Ljava/lang/Object;
.source "HprofDeobfuscator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHprofDeobfuscator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HprofDeobfuscator.kt\nshark/HprofDeobfuscator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,211:1\n1#2:212\n1366#3:213\n1435#3,3:214\n1366#3:217\n1435#3,3:218\n*E\n*S KotlinDebug\n*F\n+ 1 HprofDeobfuscator.kt\nshark/HprofDeobfuscator\n*L\n172#1:213\n172#1,3:214\n183#1:217\n183#1,3:218\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002JZ\u0010\u0003\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000e0\r2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\r2\u0006\u0010\u0010\u001a\u00020\u0007H\u0002J,\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0008\u001a\u00020\u00122\u0006\u0010\n\u001a\u00020\u000b2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000e0\rH\u0002J \u0010\u0013\u001a\u00020\u00142\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0014J:\u0010\u0017\u001a,\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\r\u0012\u0004\u0012\u00020\u00070\u00182\u0006\u0010\u0015\u001a\u00020\u0014H\u0002JP\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00142\u0006\u0010\n\u001a\u00020\u000b2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000e0\r2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\r2\u0006\u0010\u001a\u001a\u00020\u0007H\u0002\u00a8\u0006\u001b"
    }
    d2 = {
        "Lshark/HprofDeobfuscator;",
        "",
        "()V",
        "createDeobfuscatedClassDumpRecord",
        "Lkotlin/Pair;",
        "",
        "Lshark/HprofRecord;",
        "",
        "record",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;",
        "proguardMapping",
        "Lshark/ProguardMapping;",
        "hprofStringCache",
        "",
        "",
        "classNames",
        "maxId",
        "createDeobfuscatedStringRecord",
        "Lshark/HprofRecord$StringRecord;",
        "deobfuscate",
        "Ljava/io/File;",
        "inputHprofFile",
        "outputHprofFile",
        "readHprofRecords",
        "Lkotlin/Triple;",
        "writeHprofRecords",
        "firstId",
        "shark-hprof"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$createDeobfuscatedClassDumpRecord(Lshark/HprofDeobfuscator;Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;Lshark/ProguardMapping;Ljava/util/Map;Ljava/util/Map;J)Lkotlin/Pair;
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p6}, Lshark/HprofDeobfuscator;->createDeobfuscatedClassDumpRecord(Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;Lshark/ProguardMapping;Ljava/util/Map;Ljava/util/Map;J)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createDeobfuscatedStringRecord(Lshark/HprofDeobfuscator;Lshark/HprofRecord$StringRecord;Lshark/ProguardMapping;Ljava/util/Map;)Lshark/HprofRecord$StringRecord;
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lshark/HprofDeobfuscator;->createDeobfuscatedStringRecord(Lshark/HprofRecord$StringRecord;Lshark/ProguardMapping;Ljava/util/Map;)Lshark/HprofRecord$StringRecord;

    move-result-object p0

    return-object p0
.end method

.method private final createDeobfuscatedClassDumpRecord(Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;Lshark/ProguardMapping;Ljava/util/Map;Ljava/util/Map;J)Lkotlin/Pair;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;",
            "Lshark/ProguardMapping;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;J)",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Lshark/HprofRecord;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 168
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 172
    invoke-virtual/range {p1 .. p1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->getFields()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 213
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 214
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide/from16 v7, p5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-wide/16 v10, 0x1

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 215
    check-cast v9, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;

    .line 173
    invoke-virtual/range {p1 .. p1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast v12, Ljava/lang/String;

    .line 174
    invoke-virtual {v9}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->getNameStringId()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    check-cast v13, Ljava/lang/String;

    .line 176
    invoke-virtual {v0, v12, v13}, Lshark/ProguardMapping;->deobfuscateFieldName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 178
    new-instance v13, Lshark/HprofRecord$StringRecord;

    add-long/2addr v10, v7

    invoke-direct {v13, v7, v8, v12}, Lshark/HprofRecord$StringRecord;-><init>(JLjava/lang/String;)V

    .line 179
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v7, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;

    invoke-virtual {v13}, Lshark/HprofRecord$StringRecord;->getId()J

    move-result-wide v12

    invoke-virtual {v9}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->getType()I

    move-result v8

    invoke-direct {v7, v12, v13, v8}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;-><init>(JI)V

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-wide v7, v10

    goto :goto_0

    .line 216
    :cond_2
    move-object/from16 v28, v5

    check-cast v28, Ljava/util/List;

    .line 183
    invoke-virtual/range {p1 .. p1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->getStaticFields()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 217
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 218
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 219
    check-cast v6, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;

    .line 184
    invoke-virtual/range {p1 .. p1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    check-cast v9, Ljava/lang/String;

    .line 185
    invoke-virtual {v6}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;->getNameStringId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    check-cast v12, Ljava/lang/String;

    .line 187
    invoke-virtual {v0, v9, v12}, Lshark/ProguardMapping;->deobfuscateFieldName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 189
    new-instance v12, Lshark/HprofRecord$StringRecord;

    add-long v13, v7, v10

    invoke-direct {v12, v7, v8, v9}, Lshark/HprofRecord$StringRecord;-><init>(JLjava/lang/String;)V

    .line 190
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v7, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;

    invoke-virtual {v12}, Lshark/HprofRecord$StringRecord;->getId()J

    move-result-wide v8

    invoke-virtual {v6}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;->getType()I

    move-result v12

    invoke-virtual {v6}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;->getValue()Lshark/ValueHolder;

    move-result-object v6

    invoke-direct {v7, v8, v9, v12, v6}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;-><init>(JILshark/ValueHolder;)V

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-wide v7, v13

    goto :goto_1

    .line 220
    :cond_5
    move-object/from16 v27, v5

    check-cast v27, Ljava/util/List;

    .line 196
    new-instance v0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;

    .line 197
    invoke-virtual/range {p1 .. p1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->getId()J

    move-result-wide v15

    .line 198
    invoke-virtual/range {p1 .. p1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->getStackTraceSerialNumber()I

    move-result v17

    .line 199
    invoke-virtual/range {p1 .. p1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->getSuperclassId()J

    move-result-wide v18

    .line 200
    invoke-virtual/range {p1 .. p1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->getClassLoaderId()J

    move-result-wide v20

    .line 201
    invoke-virtual/range {p1 .. p1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->getSignersId()J

    move-result-wide v22

    .line 202
    invoke-virtual/range {p1 .. p1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->getProtectionDomainId()J

    move-result-wide v24

    .line 203
    invoke-virtual/range {p1 .. p1}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->getInstanceSize()I

    move-result v26

    move-object v14, v0

    .line 196
    invoke-direct/range {v14 .. v28}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;-><init>(JIJJJJILjava/util/List;Ljava/util/List;)V

    .line 195
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v0, Lkotlin/Pair;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final createDeobfuscatedStringRecord(Lshark/HprofRecord$StringRecord;Lshark/ProguardMapping;Ljava/util/Map;)Lshark/HprofRecord$StringRecord;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/HprofRecord$StringRecord;",
            "Lshark/ProguardMapping;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Lshark/HprofRecord$StringRecord;"
        }
    .end annotation

    .line 149
    invoke-virtual {p1}, Lshark/HprofRecord$StringRecord;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast p3, Ljava/lang/String;

    .line 150
    new-instance v0, Lshark/HprofRecord$StringRecord;

    .line 151
    invoke-virtual {p1}, Lshark/HprofRecord$StringRecord;->getId()J

    move-result-wide v1

    invoke-virtual {p2, p3}, Lshark/ProguardMapping;->deobfuscateClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 150
    invoke-direct {v0, v1, v2, p1}, Lshark/HprofRecord$StringRecord;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public static synthetic deobfuscate$default(Lshark/HprofDeobfuscator;Lshark/ProguardMapping;Ljava/io/File;Ljava/io/File;ILjava/lang/Object;)Ljava/io/File;
    .locals 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 35
    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string p4, "inputHprofFile.name"

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ".hprof"

    const-string v2, "-deobfuscated.hprof"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 37
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    xor-int/lit8 p5, p5, 0x1

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "-deobfuscated"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 34
    :goto_0
    new-instance p5, Ljava/io/File;

    invoke-direct {p5, p3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p3, p5

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lshark/HprofDeobfuscator;->deobfuscate(Lshark/ProguardMapping;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private final readHprofRecords(Ljava/io/File;)Lkotlin/Triple;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lkotlin/Triple<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 61
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 63
    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 65
    sget-object v3, Lshark/StreamingRecordReaderAdapter;->Companion:Lshark/StreamingRecordReaderAdapter$Companion;

    sget-object v4, Lshark/StreamingHprofReader;->Companion:Lshark/StreamingHprofReader$Companion;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v4, p1, v5, v6, v5}, Lshark/StreamingHprofReader$Companion;->readerFor$default(Lshark/StreamingHprofReader$Companion;Ljava/io/File;Lshark/HprofHeader;ILjava/lang/Object;)Lshark/StreamingHprofReader;

    move-result-object p1

    invoke-virtual {v3, p1}, Lshark/StreamingRecordReaderAdapter$Companion;->asStreamingRecordReader(Lshark/StreamingHprofReader;)Lshark/StreamingRecordReaderAdapter;

    move-result-object p1

    .line 66
    const-class v3, Lshark/HprofRecord;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 67
    new-instance v4, Lshark/HprofDeobfuscator$readHprofRecords$1;

    invoke-direct {v4, v2, v0, v1}, Lshark/HprofDeobfuscator$readHprofRecords$1;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Ljava/util/Map;Ljava/util/Map;)V

    check-cast v4, Lshark/OnHprofRecordListener;

    .line 66
    invoke-virtual {p1, v3, v4}, Lshark/StreamingRecordReaderAdapter;->readRecords(Ljava/util/Set;Lshark/OnHprofRecordListener;)J

    .line 88
    new-instance p1, Lkotlin/Triple;

    iget-wide v2, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private final writeHprofRecords(Ljava/io/File;Ljava/io/File;Lshark/ProguardMapping;Ljava/util/Map;Ljava/util/Map;J)Ljava/io/File;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Lshark/ProguardMapping;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;J)",
            "Ljava/io/File;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 100
    new-instance v9, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    move-wide/from16 v2, p6

    iput-wide v2, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 102
    sget-object v2, Lshark/HprofHeader;->Companion:Lshark/HprofHeader$Companion;

    invoke-virtual {v2, v0}, Lshark/HprofHeader$Companion;->parseHeaderOf(Ljava/io/File;)Lshark/HprofHeader;

    move-result-object v2

    .line 104
    sget-object v3, Lshark/StreamingRecordReaderAdapter;->Companion:Lshark/StreamingRecordReaderAdapter$Companion;

    sget-object v4, Lshark/StreamingHprofReader;->Companion:Lshark/StreamingHprofReader$Companion;

    invoke-virtual {v4, v0, v2}, Lshark/StreamingHprofReader$Companion;->readerFor(Ljava/io/File;Lshark/HprofHeader;)Lshark/StreamingHprofReader;

    move-result-object v0

    invoke-virtual {v3, v0}, Lshark/StreamingRecordReaderAdapter$Companion;->asStreamingRecordReader(Lshark/StreamingHprofReader;)Lshark/StreamingRecordReaderAdapter;

    move-result-object v0

    .line 105
    sget-object v3, Lshark/HprofWriter;->Companion:Lshark/HprofWriter$Companion;

    .line 107
    new-instance v4, Lshark/HprofHeader;

    const-wide/16 v11, 0x0

    .line 108
    invoke-virtual {v2}, Lshark/HprofHeader;->getIdentifierByteSize()I

    move-result v14

    .line 109
    invoke-virtual {v2}, Lshark/HprofHeader;->getVersion()Lshark/HprofVersion;

    move-result-object v13

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v10, v4

    .line 107
    invoke-direct/range {v10 .. v16}, Lshark/HprofHeader;-><init>(JLshark/HprofVersion;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 105
    invoke-virtual {v3, v1, v4}, Lshark/HprofWriter$Companion;->openWriterFor(Ljava/io/File;Lshark/HprofHeader;)Lshark/HprofWriter;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/io/Closeable;

    const/4 v11, 0x0

    .line 111
    move-object v2, v11

    check-cast v2, Ljava/lang/Throwable;

    :try_start_0
    move-object v3, v10

    check-cast v3, Lshark/HprofWriter;

    .line 112
    const-class v2, Lshark/HprofRecord;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v12

    .line 113
    new-instance v13, Lshark/HprofDeobfuscator$writeHprofRecords$$inlined$use$lambda$1;

    move-object v2, v13

    move-object/from16 v4, p0

    move-object v5, v0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lshark/HprofDeobfuscator$writeHprofRecords$$inlined$use$lambda$1;-><init>(Lshark/HprofWriter;Lshark/HprofDeobfuscator;Lshark/StreamingRecordReaderAdapter;Lshark/ProguardMapping;Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/internal/Ref$LongRef;)V

    check-cast v13, Lshark/OnHprofRecordListener;

    .line 112
    invoke-virtual {v0, v12, v13}, Lshark/StreamingRecordReaderAdapter;->readRecords(Ljava/util/Set;Lshark/OnHprofRecordListener;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-static {v10, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-static {v10, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public final deobfuscate(Lshark/ProguardMapping;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 10

    const-string v0, "proguardMapping"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputHprofFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputHprofFile"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p2}, Lshark/HprofDeobfuscator;->readHprofRecords(Ljava/io/File;)Lkotlin/Triple;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/util/Map;

    invoke-virtual {v0}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/util/Map;

    invoke-virtual {v0}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long v8, v0, v2

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    .line 41
    invoke-direct/range {v2 .. v9}, Lshark/HprofDeobfuscator;->writeHprofRecords(Ljava/io/File;Ljava/io/File;Lshark/ProguardMapping;Ljava/util/Map;Ljava/util/Map;J)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
