.class public final Lshark/LeakTrace;
.super Ljava/lang/Object;
.source "LeakTrace.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/LeakTrace$GcRootType;,
        Lshark/LeakTrace$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLeakTrace.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LeakTrace.kt\nshark/LeakTrace\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,191:1\n1366#2:192\n1435#2,3:193\n706#2:196\n783#2,2:197\n1418#2,9:199\n1648#2,2:208\n1427#2:210\n1366#2:211\n1435#2,3:212\n706#2:215\n783#2,2:216\n1418#2,9:218\n1648#2,2:227\n1427#2:229\n1657#2,3:230\n*E\n*S KotlinDebug\n*F\n+ 1 LeakTrace.kt\nshark/LeakTrace\n*L\n37#1:192\n37#1,3:193\n38#1:196\n38#1,2:197\n39#1,9:199\n39#1,2:208\n39#1:210\n50#1:211\n50#1,3:212\n51#1:215\n51#1,2:216\n52#1,9:218\n52#1,2:227\n52#1:229\n106#1,3:230\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\n\u0008\u0086\u0008\u0018\u0000 -2\u00020\u0001:\u0002-.B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003J\t\u0010 \u001a\u00020\u0008H\u00c6\u0003J-\u0010!\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u00d6\u0003J\t\u0010&\u001a\u00020\u0011H\u00d6\u0001J\u0010\u0010\'\u001a\u00020\u00172\u0006\u0010(\u001a\u00020#H\u0002J\u000e\u0010)\u001a\u00020#2\u0006\u0010*\u001a\u00020\u0011J\u0006\u0010+\u001a\u00020\u0017J\u0008\u0010,\u001a\u00020\u0017H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0013R\u0011\u0010\u0016\u001a\u00020\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006/"
    }
    d2 = {
        "Lshark/LeakTrace;",
        "Ljava/io/Serializable;",
        "gcRootType",
        "Lshark/LeakTrace$GcRootType;",
        "referencePath",
        "",
        "Lshark/LeakTraceReference;",
        "leakingObject",
        "Lshark/LeakTraceObject;",
        "(Lshark/LeakTrace$GcRootType;Ljava/util/List;Lshark/LeakTraceObject;)V",
        "getGcRootType",
        "()Lshark/LeakTrace$GcRootType;",
        "getLeakingObject",
        "()Lshark/LeakTraceObject;",
        "getReferencePath",
        "()Ljava/util/List;",
        "retainedHeapByteSize",
        "",
        "getRetainedHeapByteSize",
        "()Ljava/lang/Integer;",
        "retainedObjectCount",
        "getRetainedObjectCount",
        "signature",
        "",
        "getSignature",
        "()Ljava/lang/String;",
        "suspectReferenceSubpath",
        "Lkotlin/sequences/Sequence;",
        "getSuspectReferenceSubpath",
        "()Lkotlin/sequences/Sequence;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "leakTraceAsString",
        "showLeakingStatus",
        "referencePathElementIsSuspect",
        "index",
        "toSimplePathString",
        "toString",
        "Companion",
        "GcRootType",
        "shark"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lshark/LeakTrace$Companion;

.field public static final ZERO_WIDTH_SPACE:C = '\u200b'

.field private static final serialVersionUID:J = -0x57a5f6f4e65e5ffdL


# instance fields
.field private final gcRootType:Lshark/LeakTrace$GcRootType;

.field private final leakingObject:Lshark/LeakTraceObject;

.field private final referencePath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lshark/LeakTraceReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lshark/LeakTrace$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lshark/LeakTrace$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lshark/LeakTrace;->Companion:Lshark/LeakTrace$Companion;

    return-void
.end method

.method public constructor <init>(Lshark/LeakTrace$GcRootType;Ljava/util/List;Lshark/LeakTraceObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/LeakTrace$GcRootType;",
            "Ljava/util/List<",
            "Lshark/LeakTraceReference;",
            ">;",
            "Lshark/LeakTraceObject;",
            ")V"
        }
    .end annotation

    const-string v0, "gcRootType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referencePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "leakingObject"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lshark/LeakTrace;->gcRootType:Lshark/LeakTrace$GcRootType;

    iput-object p2, p0, Lshark/LeakTrace;->referencePath:Ljava/util/List;

    iput-object p3, p0, Lshark/LeakTrace;->leakingObject:Lshark/LeakTraceObject;

    return-void
.end method

.method public static synthetic copy$default(Lshark/LeakTrace;Lshark/LeakTrace$GcRootType;Ljava/util/List;Lshark/LeakTraceObject;ILjava/lang/Object;)Lshark/LeakTrace;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lshark/LeakTrace;->gcRootType:Lshark/LeakTrace$GcRootType;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lshark/LeakTrace;->referencePath:Ljava/util/List;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lshark/LeakTrace;->leakingObject:Lshark/LeakTraceObject;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lshark/LeakTrace;->copy(Lshark/LeakTrace$GcRootType;Ljava/util/List;Lshark/LeakTraceObject;)Lshark/LeakTrace;

    move-result-object p0

    return-object p0
.end method

.method private final leakTraceAsString(Z)Ljava/lang/String;
    .locals 9

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n        \u252c\u2500\u2500\u2500\n        \u2502 GC Root: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lshark/LeakTrace;->gcRootType:Lshark/LeakTrace$GcRootType;

    invoke-virtual {v1}, Lshark/LeakTrace$GcRootType;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n        \u2502\n      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lshark/LeakTrace;->referencePath:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 231
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "\n"

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v3, Lshark/LeakTraceReference;

    .line 107
    invoke-virtual {v3}, Lshark/LeakTraceReference;->getOriginObject()Lshark/LeakTraceObject;

    move-result-object v6

    .line 108
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_1

    .line 117
    iget-object v0, p0, Lshark/LeakTrace;->gcRootType:Lshark/LeakTrace$GcRootType;

    sget-object v7, Lshark/LeakTrace$GcRootType;->JAVA_FRAME:Lshark/LeakTrace$GcRootType;

    if-ne v0, v7, :cond_1

    const-string v0, "thread"

    goto :goto_1

    .line 120
    :cond_1
    invoke-virtual {v6}, Lshark/LeakTraceObject;->getTypeName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v7, "\u251c\u2500 "

    const-string v8, "\u2502    "

    .line 109
    invoke-virtual {v6, v7, v8, p1, v0}, Lshark/LeakTraceObject;->toString$shark(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lshark/LeakTrace;->Companion:Lshark/LeakTrace$Companion;

    invoke-static {v0, p0, v3, v2, p1}, Lshark/LeakTrace$Companion;->access$getNextElementString(Lshark/LeakTrace$Companion;Lshark/LeakTrace;Lshark/LeakTraceReference;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v2, v5

    goto :goto_0

    .line 126
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lshark/LeakTrace;->leakingObject:Lshark/LeakTraceObject;

    const-string v3, "\u2570\u2192 "

    const-string v4, "\u200b     "

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move v5, p1

    invoke-static/range {v2 .. v8}, Lshark/LeakTraceObject;->toString$shark$default(Lshark/LeakTraceObject;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final component1()Lshark/LeakTrace$GcRootType;
    .locals 1

    iget-object v0, p0, Lshark/LeakTrace;->gcRootType:Lshark/LeakTrace$GcRootType;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lshark/LeakTraceReference;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lshark/LeakTrace;->referencePath:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Lshark/LeakTraceObject;
    .locals 1

    iget-object v0, p0, Lshark/LeakTrace;->leakingObject:Lshark/LeakTraceObject;

    return-object v0
.end method

.method public final copy(Lshark/LeakTrace$GcRootType;Ljava/util/List;Lshark/LeakTraceObject;)Lshark/LeakTrace;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/LeakTrace$GcRootType;",
            "Ljava/util/List<",
            "Lshark/LeakTraceReference;",
            ">;",
            "Lshark/LeakTraceObject;",
            ")",
            "Lshark/LeakTrace;"
        }
    .end annotation

    const-string v0, "gcRootType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referencePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "leakingObject"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lshark/LeakTrace;

    invoke-direct {v0, p1, p2, p3}, Lshark/LeakTrace;-><init>(Lshark/LeakTrace$GcRootType;Ljava/util/List;Lshark/LeakTraceObject;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lshark/LeakTrace;

    if-eqz v0, :cond_0

    check-cast p1, Lshark/LeakTrace;

    iget-object v0, p0, Lshark/LeakTrace;->gcRootType:Lshark/LeakTrace$GcRootType;

    iget-object v1, p1, Lshark/LeakTrace;->gcRootType:Lshark/LeakTrace$GcRootType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lshark/LeakTrace;->referencePath:Ljava/util/List;

    iget-object v1, p1, Lshark/LeakTrace;->referencePath:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lshark/LeakTrace;->leakingObject:Lshark/LeakTraceObject;

    iget-object p1, p1, Lshark/LeakTrace;->leakingObject:Lshark/LeakTraceObject;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getGcRootType()Lshark/LeakTrace$GcRootType;
    .locals 1

    .line 26
    iget-object v0, p0, Lshark/LeakTrace;->gcRootType:Lshark/LeakTrace$GcRootType;

    return-object v0
.end method

.method public final getLeakingObject()Lshark/LeakTraceObject;
    .locals 1

    .line 28
    iget-object v0, p0, Lshark/LeakTrace;->leakingObject:Lshark/LeakTraceObject;

    return-object v0
.end method

.method public final getReferencePath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lshark/LeakTraceReference;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lshark/LeakTrace;->referencePath:Ljava/util/List;

    return-object v0
.end method

.method public final getRetainedHeapByteSize()Ljava/lang/Integer;
    .locals 5

    .line 37
    iget-object v0, p0, Lshark/LeakTrace;->leakingObject:Lshark/LeakTraceObject;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lshark/LeakTrace;->referencePath:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 192
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 193
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 194
    check-cast v3, Lshark/LeakTraceReference;

    .line 37
    invoke-virtual {v3}, Lshark/LeakTraceReference;->getOriginObject()Lshark/LeakTraceObject;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    :cond_0
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 37
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Iterable;

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 197
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lshark/LeakTraceObject;

    .line 38
    invoke-virtual {v3}, Lshark/LeakTraceObject;->getLeakingStatus()Lshark/LeakTraceObject$LeakingStatus;

    move-result-object v3

    sget-object v4, Lshark/LeakTraceObject$LeakingStatus;->LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 198
    :cond_3
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 208
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 207
    check-cast v2, Lshark/LeakTraceObject;

    .line 39
    invoke-virtual {v2}, Lshark/LeakTraceObject;->getRetainedHeapByteSize()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 207
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 210
    :cond_5
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 41
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->max(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRetainedObjectCount()Ljava/lang/Integer;
    .locals 5

    .line 50
    iget-object v0, p0, Lshark/LeakTrace;->leakingObject:Lshark/LeakTraceObject;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lshark/LeakTrace;->referencePath:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 211
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 212
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 213
    check-cast v3, Lshark/LeakTraceReference;

    .line 50
    invoke-virtual {v3}, Lshark/LeakTraceReference;->getOriginObject()Lshark/LeakTraceObject;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    :cond_0
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 50
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 51
    check-cast v0, Ljava/lang/Iterable;

    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 216
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lshark/LeakTraceObject;

    .line 51
    invoke-virtual {v3}, Lshark/LeakTraceObject;->getLeakingStatus()Lshark/LeakTraceObject$LeakingStatus;

    move-result-object v3

    sget-object v4, Lshark/LeakTraceObject$LeakingStatus;->LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 217
    :cond_3
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 227
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 226
    check-cast v2, Lshark/LeakTraceObject;

    .line 52
    invoke-virtual {v2}, Lshark/LeakTraceObject;->getRetainedObjectCount()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 226
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 229
    :cond_5
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 54
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->max(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 9

    .line 74
    invoke-virtual {p0}, Lshark/LeakTrace;->getSuspectReferenceSubpath()Lkotlin/sequences/Sequence;

    move-result-object v0

    const-string v1, ""

    .line 75
    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lshark/LeakTrace$signature$1;->INSTANCE:Lshark/LeakTrace$signature$1;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/16 v7, 0x1e

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lshark/internal/StringsKt;->createSHA1Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSuspectReferenceSubpath()Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lshark/LeakTraceReference;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lshark/LeakTrace;->referencePath:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 63
    new-instance v1, Lshark/LeakTrace$suspectReferenceSubpath$1;

    invoke-direct {v1, p0}, Lshark/LeakTrace$suspectReferenceSubpath$1;-><init>(Lshark/LeakTrace;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filterIndexed(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lshark/LeakTrace;->gcRootType:Lshark/LeakTrace$GcRootType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lshark/LeakTrace;->referencePath:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lshark/LeakTrace;->leakingObject:Lshark/LeakTraceObject;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final referencePathElementIsSuspect(I)Z
    .locals 4

    .line 87
    iget-object v0, p0, Lshark/LeakTrace;->referencePath:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lshark/LeakTraceReference;

    invoke-virtual {v0}, Lshark/LeakTraceReference;->getOriginObject()Lshark/LeakTraceObject;

    move-result-object v0

    invoke-virtual {v0}, Lshark/LeakTraceObject;->getLeakingStatus()Lshark/LeakTraceObject$LeakingStatus;

    move-result-object v0

    sget-object v1, Lshark/LeakTrace$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lshark/LeakTraceObject$LeakingStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lshark/LeakTrace;->referencePath:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lshark/LeakTrace;->referencePath:Ljava/util/List;

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lshark/LeakTraceReference;

    invoke-virtual {p1}, Lshark/LeakTraceReference;->getOriginObject()Lshark/LeakTraceObject;

    move-result-object p1

    invoke-virtual {p1}, Lshark/LeakTraceObject;->getLeakingStatus()Lshark/LeakTraceObject$LeakingStatus;

    move-result-object p1

    sget-object v0, Lshark/LeakTraceObject$LeakingStatus;->NOT_LEAKING:Lshark/LeakTraceObject$LeakingStatus;

    if-eq p1, v0, :cond_0

    :cond_2
    :goto_0
    return v1
.end method

.method public final toSimplePathString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, v0}, Lshark/LeakTrace;->leakTraceAsString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 95
    invoke-direct {p0, v0}, Lshark/LeakTrace;->leakTraceAsString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
