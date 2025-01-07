.class public final Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;
.super Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;
.source "HprofRecord.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassDumpRecord"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;,
        Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001:\u0002\u001d\u001eBY\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012R\u0011\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0012R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0017R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0012\u00a8\u0006\u001f"
    }
    d2 = {
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;",
        "id",
        "",
        "stackTraceSerialNumber",
        "",
        "superclassId",
        "classLoaderId",
        "signersId",
        "protectionDomainId",
        "instanceSize",
        "staticFields",
        "",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;",
        "fields",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;",
        "(JIJJJJILjava/util/List;Ljava/util/List;)V",
        "getClassLoaderId",
        "()J",
        "getFields",
        "()Ljava/util/List;",
        "getId",
        "getInstanceSize",
        "()I",
        "getProtectionDomainId",
        "getSignersId",
        "getStackTraceSerialNumber",
        "getStaticFields",
        "getSuperclassId",
        "FieldRecord",
        "StaticFieldRecord",
        "shark-hprof"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final classLoaderId:J

.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final id:J

.field private final instanceSize:I

.field private final protectionDomainId:J

.field private final signersId:J

.field private final stackTraceSerialNumber:I

.field private final staticFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final superclassId:J


# direct methods
.method public constructor <init>(JIJJJJILjava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJJJJI",
            "Ljava/util/List<",
            "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;",
            ">;",
            "Ljava/util/List<",
            "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;",
            ">;)V"
        }
    .end annotation

    const-string v0, "staticFields"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fields"

    invoke-static {p14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p1, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->id:J

    iput p3, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->stackTraceSerialNumber:I

    iput-wide p4, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->superclassId:J

    iput-wide p6, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->classLoaderId:J

    iput-wide p8, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->signersId:J

    iput-wide p10, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->protectionDomainId:J

    iput p12, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->instanceSize:I

    iput-object p13, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->staticFields:Ljava/util/List;

    iput-object p14, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->fields:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getClassLoaderId()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->classLoaderId:J

    return-wide v0
.end method

.method public final getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->fields:Ljava/util/List;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->id:J

    return-wide v0
.end method

.method public final getInstanceSize()I
    .locals 1

    .line 60
    iget v0, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->instanceSize:I

    return v0
.end method

.method public final getProtectionDomainId()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->protectionDomainId:J

    return-wide v0
.end method

.method public final getSignersId()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->signersId:J

    return-wide v0
.end method

.method public final getStackTraceSerialNumber()I
    .locals 1

    .line 55
    iget v0, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->stackTraceSerialNumber:I

    return v0
.end method

.method public final getStaticFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$StaticFieldRecord;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->staticFields:Ljava/util/List;

    return-object v0
.end method

.method public final getSuperclassId()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;->superclassId:J

    return-wide v0
.end method
