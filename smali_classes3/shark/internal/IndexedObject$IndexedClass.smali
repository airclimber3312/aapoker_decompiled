.class public final Lshark/internal/IndexedObject$IndexedClass;
.super Lshark/internal/IndexedObject;
.source "IndexedObject.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/internal/IndexedObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IndexedClass"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\tR\u0011\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0007\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lshark/internal/IndexedObject$IndexedClass;",
        "Lshark/internal/IndexedObject;",
        "position",
        "",
        "superclassId",
        "instanceSize",
        "",
        "recordSize",
        "fieldsIndex",
        "(JJIJI)V",
        "getFieldsIndex",
        "()I",
        "getInstanceSize",
        "getPosition",
        "()J",
        "getRecordSize",
        "getSuperclassId",
        "shark-graph"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final fieldsIndex:I

.field private final instanceSize:I

.field private final position:J

.field private final recordSize:J

.field private final superclassId:J


# direct methods
.method public constructor <init>(JJIJI)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lshark/internal/IndexedObject;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p1, p0, Lshark/internal/IndexedObject$IndexedClass;->position:J

    iput-wide p3, p0, Lshark/internal/IndexedObject$IndexedClass;->superclassId:J

    iput p5, p0, Lshark/internal/IndexedObject$IndexedClass;->instanceSize:I

    iput-wide p6, p0, Lshark/internal/IndexedObject$IndexedClass;->recordSize:J

    iput p8, p0, Lshark/internal/IndexedObject$IndexedClass;->fieldsIndex:I

    return-void
.end method


# virtual methods
.method public final getFieldsIndex()I
    .locals 1

    .line 14
    iget v0, p0, Lshark/internal/IndexedObject$IndexedClass;->fieldsIndex:I

    return v0
.end method

.method public final getInstanceSize()I
    .locals 1

    .line 12
    iget v0, p0, Lshark/internal/IndexedObject$IndexedClass;->instanceSize:I

    return v0
.end method

.method public getPosition()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lshark/internal/IndexedObject$IndexedClass;->position:J

    return-wide v0
.end method

.method public getRecordSize()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lshark/internal/IndexedObject$IndexedClass;->recordSize:J

    return-wide v0
.end method

.method public final getSuperclassId()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lshark/internal/IndexedObject$IndexedClass;->superclassId:J

    return-wide v0
.end method
