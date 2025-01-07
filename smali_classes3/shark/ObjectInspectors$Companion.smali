.class public final Lshark/ObjectInspectors$Companion;
.super Ljava/lang/Object;
.source "ObjectInspectors.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/ObjectInspectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectInspectors.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectInspectors.kt\nshark/ObjectInspectors$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,157:1\n1418#2,9:158\n1648#2,2:167\n1427#2:169\n1366#2:170\n1435#2,3:171\n*E\n*S KotlinDebug\n*F\n+ 1 ObjectInspectors.kt\nshark/ObjectInspectors$Companion\n*L\n150#1,9:158\n150#1,2:167\n150#1:169\n151#1:170\n151#1,3:171\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00082\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000b\u00a8\u0006\u0013"
    }
    d2 = {
        "Lshark/ObjectInspectors$Companion;",
        "",
        "()V",
        "ANONYMOUS_CLASS_NAME_PATTERN",
        "",
        "ANONYMOUS_CLASS_NAME_PATTERN_REGEX",
        "Lkotlin/text/Regex;",
        "jdkDefaults",
        "",
        "Lshark/ObjectInspector;",
        "getJdkDefaults",
        "()Ljava/util/List;",
        "jdkLeakingObjectFilters",
        "Lshark/FilteringLeakingObjectFinder$LeakingObjectFilter;",
        "getJdkLeakingObjectFilters",
        "createLeakingObjectFilters",
        "inspectors",
        "",
        "Lshark/ObjectInspectors;",
        "shark"
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

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lshark/ObjectInspectors$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createLeakingObjectFilters(Ljava/util/Set;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lshark/ObjectInspectors;",
            ">;)",
            "Ljava/util/List<",
            "Lshark/FilteringLeakingObjectFinder$LeakingObjectFilter;",
            ">;"
        }
    .end annotation

    const-string v0, "inspectors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    check-cast p1, Ljava/lang/Iterable;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 167
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 166
    check-cast v1, Lshark/ObjectInspectors;

    .line 150
    invoke-virtual {v1}, Lshark/ObjectInspectors;->getLeakingObjectFilter$shark()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 166
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_1
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 170
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 171
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 172
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 152
    new-instance v2, Lshark/ObjectInspectors$Companion$createLeakingObjectFilters$2$1;

    invoke-direct {v2, v1}, Lshark/ObjectInspectors$Companion$createLeakingObjectFilters$2$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 173
    :cond_2
    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final getJdkDefaults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lshark/ObjectInspector;",
            ">;"
        }
    .end annotation

    .line 137
    invoke-static {}, Lshark/ObjectInspectors;->values()[Lshark/ObjectInspectors;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getJdkLeakingObjectFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lshark/FilteringLeakingObjectFinder$LeakingObjectFilter;",
            ">;"
        }
    .end annotation

    .line 143
    invoke-static {}, Lshark/ObjectInspectors;->access$getJdkLeakingObjectFilters$cp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
