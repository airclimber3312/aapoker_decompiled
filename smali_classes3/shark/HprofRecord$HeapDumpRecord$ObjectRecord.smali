.class public abstract Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;
.super Lshark/HprofRecord$HeapDumpRecord;
.source "HprofRecord.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/HprofRecord$HeapDumpRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ObjectRecord"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;,
        Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;,
        Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;,
        Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0004\u0003\u0004\u0005\u0006B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0004\u0007\u0008\t\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;",
        "Lshark/HprofRecord$HeapDumpRecord;",
        "()V",
        "ClassDumpRecord",
        "InstanceDumpRecord",
        "ObjectArrayDumpRecord",
        "PrimitiveArrayDumpRecord",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord;",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;",
        "Lshark/HprofRecord$HeapDumpRecord$ObjectRecord$PrimitiveArrayDumpRecord;",
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
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0}, Lshark/HprofRecord$HeapDumpRecord;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lshark/HprofRecord$HeapDumpRecord$ObjectRecord;-><init>()V

    return-void
.end method
