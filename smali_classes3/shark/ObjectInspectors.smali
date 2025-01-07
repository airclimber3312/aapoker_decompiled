.class public abstract enum Lshark/ObjectInspectors;
.super Ljava/lang/Enum;
.source "ObjectInspectors.kt"

# interfaces
.implements Lshark/ObjectInspector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/ObjectInspectors$KEYED_WEAK_REFERENCE;,
        Lshark/ObjectInspectors$CLASSLOADER;,
        Lshark/ObjectInspectors$CLASS;,
        Lshark/ObjectInspectors$ANONYMOUS_CLASS;,
        Lshark/ObjectInspectors$THREAD;,
        Lshark/ObjectInspectors$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lshark/ObjectInspectors;",
        ">;",
        "Lshark/ObjectInspector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u0000 \u00122\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0012B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003R1\u0010\u0004\u001a\u001f\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005X\u0090\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lshark/ObjectInspectors;",
        "",
        "Lshark/ObjectInspector;",
        "(Ljava/lang/String;I)V",
        "leakingObjectFilter",
        "Lkotlin/Function1;",
        "Lshark/HeapObject;",
        "Lkotlin/ParameterName;",
        "name",
        "heapObject",
        "",
        "getLeakingObjectFilter$shark",
        "()Lkotlin/jvm/functions/Function1;",
        "KEYED_WEAK_REFERENCE",
        "CLASSLOADER",
        "CLASS",
        "ANONYMOUS_CLASS",
        "THREAD",
        "Companion",
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
.field private static final synthetic $VALUES:[Lshark/ObjectInspectors;

.field public static final enum ANONYMOUS_CLASS:Lshark/ObjectInspectors;

.field private static final ANONYMOUS_CLASS_NAME_PATTERN:Ljava/lang/String; = "^.+\\$\\d+$"

.field private static final ANONYMOUS_CLASS_NAME_PATTERN_REGEX:Lkotlin/text/Regex;

.field public static final enum CLASS:Lshark/ObjectInspectors;

.field public static final enum CLASSLOADER:Lshark/ObjectInspectors;

.field public static final Companion:Lshark/ObjectInspectors$Companion;

.field public static final enum KEYED_WEAK_REFERENCE:Lshark/ObjectInspectors;

.field public static final enum THREAD:Lshark/ObjectInspectors;

.field private static final jdkLeakingObjectFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lshark/FilteringLeakingObjectFinder$LeakingObjectFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final leakingObjectFilter:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lshark/HeapObject;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lshark/ObjectInspectors;

    new-instance v1, Lshark/ObjectInspectors$KEYED_WEAK_REFERENCE;

    const-string v2, "KEYED_WEAK_REFERENCE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lshark/ObjectInspectors$KEYED_WEAK_REFERENCE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lshark/ObjectInspectors;->KEYED_WEAK_REFERENCE:Lshark/ObjectInspectors;

    aput-object v1, v0, v3

    new-instance v1, Lshark/ObjectInspectors$CLASSLOADER;

    const-string v2, "CLASSLOADER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lshark/ObjectInspectors$CLASSLOADER;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lshark/ObjectInspectors;->CLASSLOADER:Lshark/ObjectInspectors;

    aput-object v1, v0, v3

    new-instance v1, Lshark/ObjectInspectors$CLASS;

    const-string v2, "CLASS"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lshark/ObjectInspectors$CLASS;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lshark/ObjectInspectors;->CLASS:Lshark/ObjectInspectors;

    aput-object v1, v0, v3

    new-instance v1, Lshark/ObjectInspectors$ANONYMOUS_CLASS;

    const-string v2, "ANONYMOUS_CLASS"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lshark/ObjectInspectors$ANONYMOUS_CLASS;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lshark/ObjectInspectors;->ANONYMOUS_CLASS:Lshark/ObjectInspectors;

    aput-object v1, v0, v3

    new-instance v1, Lshark/ObjectInspectors$THREAD;

    const-string v2, "THREAD"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lshark/ObjectInspectors$THREAD;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lshark/ObjectInspectors;->THREAD:Lshark/ObjectInspectors;

    aput-object v1, v0, v3

    sput-object v0, Lshark/ObjectInspectors;->$VALUES:[Lshark/ObjectInspectors;

    new-instance v0, Lshark/ObjectInspectors$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lshark/ObjectInspectors$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lshark/ObjectInspectors;->Companion:Lshark/ObjectInspectors$Companion;

    .line 132
    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "^.+\\$\\d+$"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v1, Lshark/ObjectInspectors;->ANONYMOUS_CLASS_NAME_PATTERN_REGEX:Lkotlin/text/Regex;

    .line 144
    const-class v1, Lshark/ObjectInspectors;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "EnumSet.allOf(ObjectInspectors::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Set;

    invoke-virtual {v0, v1}, Lshark/ObjectInspectors$Companion;->createLeakingObjectFilters(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lshark/ObjectInspectors;->jdkLeakingObjectFilters:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lshark/ObjectInspectors;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$getANONYMOUS_CLASS_NAME_PATTERN_REGEX$cp()Lkotlin/text/Regex;
    .locals 1

    .line 26
    sget-object v0, Lshark/ObjectInspectors;->ANONYMOUS_CLASS_NAME_PATTERN_REGEX:Lkotlin/text/Regex;

    return-object v0
.end method

.method public static final synthetic access$getJdkLeakingObjectFilters$cp()Ljava/util/List;
    .locals 1

    .line 26
    sget-object v0, Lshark/ObjectInspectors;->jdkLeakingObjectFilters:Ljava/util/List;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lshark/ObjectInspectors;
    .locals 1

    const-class v0, Lshark/ObjectInspectors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lshark/ObjectInspectors;

    return-object p0
.end method

.method public static values()[Lshark/ObjectInspectors;
    .locals 1

    sget-object v0, Lshark/ObjectInspectors;->$VALUES:[Lshark/ObjectInspectors;

    invoke-virtual {v0}, [Lshark/ObjectInspectors;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lshark/ObjectInspectors;

    return-object v0
.end method


# virtual methods
.method public getLeakingObjectFilter$shark()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lshark/HeapObject;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lshark/ObjectInspectors;->leakingObjectFilter:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
