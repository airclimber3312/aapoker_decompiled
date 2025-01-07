.class public final enum Lshark/PrimitiveType;
.super Ljava/lang/Enum;
.source "PrimitiveType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/PrimitiveType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lshark/PrimitiveType;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrimitiveType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrimitiveType.kt\nshark/PrimitiveType\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,35:1\n9376#2:36\n9709#2,3:37\n9376#2:40\n9709#2,3:41\n*E\n*S KotlinDebug\n*F\n+ 1 PrimitiveType.kt\nshark/PrimitiveType\n*L\n31#1:36\n31#1,3:37\n33#1:40\n33#1,3:41\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0008\u0086\u0001\u0018\u0000 \u00112\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0011B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lshark/PrimitiveType;",
        "",
        "hprofType",
        "",
        "byteSize",
        "(Ljava/lang/String;III)V",
        "getByteSize",
        "()I",
        "getHprofType",
        "BOOLEAN",
        "CHAR",
        "FLOAT",
        "DOUBLE",
        "BYTE",
        "SHORT",
        "INT",
        "LONG",
        "Companion",
        "shark-hprof"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lshark/PrimitiveType;

.field public static final enum BOOLEAN:Lshark/PrimitiveType;

.field public static final enum BYTE:Lshark/PrimitiveType;

.field public static final enum CHAR:Lshark/PrimitiveType;

.field public static final Companion:Lshark/PrimitiveType$Companion;

.field public static final enum DOUBLE:Lshark/PrimitiveType;

.field public static final enum FLOAT:Lshark/PrimitiveType;

.field public static final enum INT:Lshark/PrimitiveType;

.field public static final enum LONG:Lshark/PrimitiveType;

.field public static final REFERENCE_HPROF_TYPE:I = 0x2

.field public static final enum SHORT:Lshark/PrimitiveType;

.field private static final byteSizeByHprofType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final primitiveTypeByHprofType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lshark/PrimitiveType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final byteSize:I

.field private final hprofType:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x8

    new-array v1, v0, [Lshark/PrimitiveType;

    new-instance v2, Lshark/PrimitiveType;

    const-string v3, "BOOLEAN"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    .line 16
    invoke-direct {v2, v3, v4, v5, v6}, Lshark/PrimitiveType;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lshark/PrimitiveType;->BOOLEAN:Lshark/PrimitiveType;

    aput-object v2, v1, v4

    new-instance v2, Lshark/PrimitiveType;

    const-string v3, "CHAR"

    const/4 v7, 0x5

    const/4 v8, 0x2

    .line 17
    invoke-direct {v2, v3, v6, v7, v8}, Lshark/PrimitiveType;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lshark/PrimitiveType;->CHAR:Lshark/PrimitiveType;

    aput-object v2, v1, v6

    new-instance v2, Lshark/PrimitiveType;

    const-string v3, "FLOAT"

    const/4 v9, 0x6

    .line 18
    invoke-direct {v2, v3, v8, v9, v5}, Lshark/PrimitiveType;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lshark/PrimitiveType;->FLOAT:Lshark/PrimitiveType;

    aput-object v2, v1, v8

    new-instance v2, Lshark/PrimitiveType;

    const-string v3, "DOUBLE"

    const/4 v10, 0x3

    const/4 v11, 0x7

    .line 19
    invoke-direct {v2, v3, v10, v11, v0}, Lshark/PrimitiveType;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lshark/PrimitiveType;->DOUBLE:Lshark/PrimitiveType;

    aput-object v2, v1, v10

    new-instance v2, Lshark/PrimitiveType;

    const-string v3, "BYTE"

    .line 20
    invoke-direct {v2, v3, v5, v0, v6}, Lshark/PrimitiveType;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lshark/PrimitiveType;->BYTE:Lshark/PrimitiveType;

    aput-object v2, v1, v5

    new-instance v2, Lshark/PrimitiveType;

    const-string v3, "SHORT"

    const/16 v6, 0x9

    .line 21
    invoke-direct {v2, v3, v7, v6, v8}, Lshark/PrimitiveType;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lshark/PrimitiveType;->SHORT:Lshark/PrimitiveType;

    aput-object v2, v1, v7

    new-instance v2, Lshark/PrimitiveType;

    const-string v3, "INT"

    const/16 v6, 0xa

    .line 22
    invoke-direct {v2, v3, v9, v6, v5}, Lshark/PrimitiveType;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lshark/PrimitiveType;->INT:Lshark/PrimitiveType;

    aput-object v2, v1, v9

    new-instance v2, Lshark/PrimitiveType;

    const-string v3, "LONG"

    const/16 v5, 0xb

    .line 23
    invoke-direct {v2, v3, v11, v5, v0}, Lshark/PrimitiveType;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lshark/PrimitiveType;->LONG:Lshark/PrimitiveType;

    aput-object v2, v1, v11

    sput-object v1, Lshark/PrimitiveType;->$VALUES:[Lshark/PrimitiveType;

    new-instance v0, Lshark/PrimitiveType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lshark/PrimitiveType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lshark/PrimitiveType;->Companion:Lshark/PrimitiveType$Companion;

    .line 31
    invoke-static {}, Lshark/PrimitiveType;->values()[Lshark/PrimitiveType;

    move-result-object v0

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 37
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, v0, v3

    .line 31
    iget v6, v5, Lshark/PrimitiveType;->hprofType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v5, v5, Lshark/PrimitiveType;->byteSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 39
    :cond_0
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 31
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lshark/PrimitiveType;->byteSizeByHprofType:Ljava/util/Map;

    .line 33
    invoke-static {}, Lshark/PrimitiveType;->values()[Lshark/PrimitiveType;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 41
    array-length v2, v0

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v3, v0, v4

    .line 33
    iget v5, v3, Lshark/PrimitiveType;->hprofType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 43
    :cond_1
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 33
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lshark/PrimitiveType;->primitiveTypeByHprofType:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lshark/PrimitiveType;->hprofType:I

    iput p4, p0, Lshark/PrimitiveType;->byteSize:I

    return-void
.end method

.method public static final synthetic access$getByteSizeByHprofType$cp()Ljava/util/Map;
    .locals 1

    .line 6
    sget-object v0, Lshark/PrimitiveType;->byteSizeByHprofType:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getPrimitiveTypeByHprofType$cp()Ljava/util/Map;
    .locals 1

    .line 6
    sget-object v0, Lshark/PrimitiveType;->primitiveTypeByHprofType:Ljava/util/Map;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lshark/PrimitiveType;
    .locals 1

    const-class v0, Lshark/PrimitiveType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lshark/PrimitiveType;

    return-object p0
.end method

.method public static values()[Lshark/PrimitiveType;
    .locals 1

    sget-object v0, Lshark/PrimitiveType;->$VALUES:[Lshark/PrimitiveType;

    invoke-virtual {v0}, [Lshark/PrimitiveType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lshark/PrimitiveType;

    return-object v0
.end method


# virtual methods
.method public final getByteSize()I
    .locals 1

    .line 14
    iget v0, p0, Lshark/PrimitiveType;->byteSize:I

    return v0
.end method

.method public final getHprofType()I
    .locals 1

    .line 10
    iget v0, p0, Lshark/PrimitiveType;->hprofType:I

    return v0
.end method
