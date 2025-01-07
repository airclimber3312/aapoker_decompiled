.class public abstract Lshark/HeapObject;
.super Ljava/lang/Object;
.source "HeapObject.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/HeapObject$HeapClass;,
        Lshark/HeapObject$HeapInstance;,
        Lshark/HeapObject$HeapObjectArray;,
        Lshark/HeapObject$HeapPrimitiveArray;,
        Lshark/HeapObject$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHeapObject.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeapObject.kt\nshark/HeapObject\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,659:1\n9376#2:660\n9709#2,3:661\n*E\n*S KotlinDebug\n*F\n+ 1 HeapObject.kt\nshark/HeapObject\n*L\n639#1:660\n639#1,3:661\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u00086\u0018\u0000 #2\u00020\u0001:\u0005#$%&\'B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010!\u001a\u00020\"H&R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0012\u0010\u0013\u001a\u00020\u0014X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0012\u0010\u0017\u001a\u00020\u0018X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0012\u0010\u001b\u001a\u00020\u001cX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0012\u0010\u001f\u001a\u00020\u001cX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u001e\u0082\u0001\u0004\u0004\u0008\u000c\u0010\u00a8\u0006("
    }
    d2 = {
        "Lshark/HeapObject;",
        "",
        "()V",
        "asClass",
        "Lshark/HeapObject$HeapClass;",
        "getAsClass",
        "()Lshark/HeapObject$HeapClass;",
        "asInstance",
        "Lshark/HeapObject$HeapInstance;",
        "getAsInstance",
        "()Lshark/HeapObject$HeapInstance;",
        "asObjectArray",
        "Lshark/HeapObject$HeapObjectArray;",
        "getAsObjectArray",
        "()Lshark/HeapObject$HeapObjectArray;",
        "asPrimitiveArray",
        "Lshark/HeapObject$HeapPrimitiveArray;",
        "getAsPrimitiveArray",
        "()Lshark/HeapObject$HeapPrimitiveArray;",
        "graph",
        "Lshark/HeapGraph;",
        "getGraph",
        "()Lshark/HeapGraph;",
        "objectId",
        "",
        "getObjectId",
        "()J",
        "objectIndex",
        "",
        "getObjectIndex",
        "()I",
        "recordSize",
        "getRecordSize",
        "readRecord",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;",
        "Companion",
        "HeapClass",
        "HeapInstance",
        "HeapObjectArray",
        "HeapPrimitiveArray",
        "shark-graph"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lshark/HeapObject$Companion;

.field private static final primitiveTypesByPrimitiveArrayClassName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lshark/PrimitiveType;",
            ">;"
        }
    .end annotation
.end field

.field private static final primitiveWrapperClassNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lshark/HeapObject$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lshark/HeapObject$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lshark/HeapObject;->Companion:Lshark/HeapObject$Companion;

    .line 638
    invoke-static {}, Lshark/PrimitiveType;->values()[Lshark/PrimitiveType;

    move-result-object v0

    .line 660
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 661
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 639
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lshark/PrimitiveType;->name()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Locale.US"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v7, :cond_0

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "[]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_1
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 640
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lshark/HeapObject;->primitiveTypesByPrimitiveArrayClassName:Ljava/util/Map;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 643
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Boolean::class.javaObjectType.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Char::class.javaObjectType.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 644
    const-class v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Float::class.javaObjectType.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 645
    const-class v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Double::class.javaObjectType.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Byte::class.javaObjectType.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 646
    const-class v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Short::class.javaObjectType.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 647
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Int::class.javaObjectType.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Long::class.javaObjectType.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 642
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lshark/HeapObject;->primitiveWrapperClassNames:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lshark/HeapObject;-><init>()V

    return-void
.end method

.method public static final synthetic access$getPrimitiveTypesByPrimitiveArrayClassName$cp()Ljava/util/Map;
    .locals 1

    .line 24
    sget-object v0, Lshark/HeapObject;->primitiveTypesByPrimitiveArrayClassName:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getPrimitiveWrapperClassNames$cp()Ljava/util/Set;
    .locals 1

    .line 24
    sget-object v0, Lshark/HeapObject;->primitiveWrapperClassNames:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final getAsClass()Lshark/HeapObject$HeapClass;
    .locals 1

    .line 61
    instance-of v0, p0, Lshark/HeapObject$HeapClass;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lshark/HeapObject$HeapClass;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getAsInstance()Lshark/HeapObject$HeapInstance;
    .locals 1

    .line 67
    instance-of v0, p0, Lshark/HeapObject$HeapInstance;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lshark/HeapObject$HeapInstance;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getAsObjectArray()Lshark/HeapObject$HeapObjectArray;
    .locals 1

    .line 73
    instance-of v0, p0, Lshark/HeapObject$HeapObjectArray;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lshark/HeapObject$HeapObjectArray;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getAsPrimitiveArray()Lshark/HeapObject$HeapPrimitiveArray;
    .locals 1

    .line 79
    instance-of v0, p0, Lshark/HeapObject$HeapPrimitiveArray;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lshark/HeapObject$HeapPrimitiveArray;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public abstract getGraph()Lshark/HeapGraph;
.end method

.method public abstract getObjectId()J
.end method

.method public abstract getObjectIndex()I
.end method

.method public abstract getRecordSize()I
.end method

.method public abstract readRecord()Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;
.end method
