.class public abstract Lshark/internal/IndexedObject;
.super Ljava/lang/Object;
.source "IndexedObject.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/internal/IndexedObject$IndexedClass;,
        Lshark/internal/IndexedObject$IndexedInstance;,
        Lshark/internal/IndexedObject$IndexedObjectArray;,
        Lshark/internal/IndexedObject$IndexedPrimitiveArray;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u00002\u00020\u0001:\u0004\t\n\u000b\u000cB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0012\u0010\u0007\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0006\u0082\u0001\u0004\r\u000e\u000f\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lshark/internal/IndexedObject;",
        "",
        "()V",
        "position",
        "",
        "getPosition",
        "()J",
        "recordSize",
        "getRecordSize",
        "IndexedClass",
        "IndexedInstance",
        "IndexedObjectArray",
        "IndexedPrimitiveArray",
        "Lshark/internal/IndexedObject$IndexedClass;",
        "Lshark/internal/IndexedObject$IndexedInstance;",
        "Lshark/internal/IndexedObject$IndexedObjectArray;",
        "Lshark/internal/IndexedObject$IndexedPrimitiveArray;",
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

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lshark/internal/IndexedObject;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getPosition()J
.end method

.method public abstract getRecordSize()J
.end method
