.class public final Lshark/HprofIndex$Companion;
.super Ljava/lang/Object;
.source "HprofIndex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/HprofIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a&\u0012\u000c\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005 \u0006*\u0012\u0012\u000c\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005\u0018\u00010\u00040\u0004J2\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\u000e\u0008\u0002\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lshark/HprofIndex$Companion;",
        "",
        "()V",
        "defaultIndexedGcRootTags",
        "Ljava/util/EnumSet;",
        "Lshark/HprofRecordTag;",
        "kotlin.jvm.PlatformType",
        "indexRecordsOf",
        "Lshark/HprofIndex;",
        "hprofSourceProvider",
        "Lshark/DualSourceProvider;",
        "hprofHeader",
        "Lshark/HprofHeader;",
        "proguardMapping",
        "Lshark/ProguardMapping;",
        "indexedGcRootTags",
        "",
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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lshark/HprofIndex$Companion;-><init>()V

    return-void
.end method

.method public static synthetic indexRecordsOf$default(Lshark/HprofIndex$Companion;Lshark/DualSourceProvider;Lshark/HprofHeader;Lshark/ProguardMapping;Ljava/util/Set;ILjava/lang/Object;)Lshark/HprofIndex;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    .line 30
    move-object p6, p3

    check-cast p6, Lshark/ProguardMapping;

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 31
    invoke-virtual {p0}, Lshark/HprofIndex$Companion;->defaultIndexedGcRootTags()Ljava/util/EnumSet;

    move-result-object p4

    const-string p5, "defaultIndexedGcRootTags()"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Ljava/util/Set;

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lshark/HprofIndex$Companion;->indexRecordsOf(Lshark/DualSourceProvider;Lshark/HprofHeader;Lshark/ProguardMapping;Ljava/util/Set;)Lshark/HprofIndex;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final defaultIndexedGcRootTags()Ljava/util/EnumSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lshark/HprofRecordTag;",
            ">;"
        }
    .end annotation

    .line 44
    sget-object v0, Lshark/HprofRecordTag;->ROOT_JNI_GLOBAL:Lshark/HprofRecordTag;

    check-cast v0, Ljava/lang/Enum;

    const/16 v1, 0x8

    new-array v1, v1, [Lshark/HprofRecordTag;

    const/4 v2, 0x0

    .line 45
    sget-object v3, Lshark/HprofRecordTag;->ROOT_JAVA_FRAME:Lshark/HprofRecordTag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 46
    sget-object v3, Lshark/HprofRecordTag;->ROOT_JNI_LOCAL:Lshark/HprofRecordTag;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 47
    sget-object v3, Lshark/HprofRecordTag;->ROOT_MONITOR_USED:Lshark/HprofRecordTag;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 48
    sget-object v3, Lshark/HprofRecordTag;->ROOT_NATIVE_STACK:Lshark/HprofRecordTag;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 49
    sget-object v3, Lshark/HprofRecordTag;->ROOT_STICKY_CLASS:Lshark/HprofRecordTag;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 50
    sget-object v3, Lshark/HprofRecordTag;->ROOT_THREAD_BLOCK:Lshark/HprofRecordTag;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 53
    sget-object v3, Lshark/HprofRecordTag;->ROOT_THREAD_OBJECT:Lshark/HprofRecordTag;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 54
    sget-object v3, Lshark/HprofRecordTag;->ROOT_JNI_MONITOR:Lshark/HprofRecordTag;

    aput-object v3, v1, v2

    .line 43
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public final indexRecordsOf(Lshark/DualSourceProvider;Lshark/HprofHeader;Lshark/ProguardMapping;Ljava/util/Set;)Lshark/HprofIndex;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshark/DualSourceProvider;",
            "Lshark/HprofHeader;",
            "Lshark/ProguardMapping;",
            "Ljava/util/Set<",
            "+",
            "Lshark/HprofRecordTag;",
            ">;)",
            "Lshark/HprofIndex;"
        }
    .end annotation

    const-string v0, "hprofSourceProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hprofHeader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indexedGcRootTags"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lshark/StreamingHprofReader;->Companion:Lshark/StreamingHprofReader$Companion;

    move-object v1, p1

    check-cast v1, Lshark/StreamingSourceProvider;

    invoke-virtual {v0, v1, p2}, Lshark/StreamingHprofReader$Companion;->readerFor(Lshark/StreamingSourceProvider;Lshark/HprofHeader;)Lshark/StreamingHprofReader;

    move-result-object v0

    .line 34
    sget-object v1, Lshark/internal/HprofInMemoryIndex;->Companion:Lshark/internal/HprofInMemoryIndex$Companion;

    invoke-virtual {v1, v0, p2, p3, p4}, Lshark/internal/HprofInMemoryIndex$Companion;->indexHprof(Lshark/StreamingHprofReader;Lshark/HprofHeader;Lshark/ProguardMapping;Ljava/util/Set;)Lshark/internal/HprofInMemoryIndex;

    move-result-object p3

    .line 40
    new-instance p4, Lshark/HprofIndex;

    check-cast p1, Lshark/RandomAccessSourceProvider;

    const/4 v0, 0x0

    invoke-direct {p4, p1, p2, p3, v0}, Lshark/HprofIndex;-><init>(Lshark/RandomAccessSourceProvider;Lshark/HprofHeader;Lshark/internal/HprofInMemoryIndex;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p4
.end method
