.class public final Lshark/PrimitiveType$Companion;
.super Ljava/lang/Object;
.source "PrimitiveType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/PrimitiveType;
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001d\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\n0\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lshark/PrimitiveType$Companion;",
        "",
        "()V",
        "REFERENCE_HPROF_TYPE",
        "",
        "byteSizeByHprofType",
        "",
        "getByteSizeByHprofType",
        "()Ljava/util/Map;",
        "primitiveTypeByHprofType",
        "Lshark/PrimitiveType;",
        "getPrimitiveTypeByHprofType",
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
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lshark/PrimitiveType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getByteSizeByHprofType()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {}, Lshark/PrimitiveType;->access$getByteSizeByHprofType$cp()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getPrimitiveTypeByHprofType()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lshark/PrimitiveType;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-static {}, Lshark/PrimitiveType;->access$getPrimitiveTypeByHprofType$cp()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
