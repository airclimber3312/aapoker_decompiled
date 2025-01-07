.class final Lshark/internal/PathFinder$InstanceRefField;
.super Ljava/lang/Object;
.source "PathFinder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/internal/PathFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceRefField"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lshark/internal/PathFinder$InstanceRefField;",
        "",
        "declaringClassId",
        "",
        "refObjectId",
        "fieldName",
        "",
        "(JJLjava/lang/String;)V",
        "getDeclaringClassId",
        "()J",
        "getFieldName",
        "()Ljava/lang/String;",
        "getRefObjectId",
        "shark"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final declaringClassId:J

.field private final fieldName:Ljava/lang/String;

.field private final refObjectId:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 1

    const-string v0, "fieldName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lshark/internal/PathFinder$InstanceRefField;->declaringClassId:J

    iput-wide p3, p0, Lshark/internal/PathFinder$InstanceRefField;->refObjectId:J

    iput-object p5, p0, Lshark/internal/PathFinder$InstanceRefField;->fieldName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDeclaringClassId()J
    .locals 2

    .line 508
    iget-wide v0, p0, Lshark/internal/PathFinder$InstanceRefField;->declaringClassId:J

    return-wide v0
.end method

.method public final getFieldName()Ljava/lang/String;
    .locals 1

    .line 510
    iget-object v0, p0, Lshark/internal/PathFinder$InstanceRefField;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefObjectId()J
    .locals 2

    .line 509
    iget-wide v0, p0, Lshark/internal/PathFinder$InstanceRefField;->refObjectId:J

    return-wide v0
.end method
